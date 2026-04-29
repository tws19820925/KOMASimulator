[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"
$Root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

function Assert-File {
    param([Parameter(Mandatory = $true)][string]$RelativePath)

    $Path = Join-Path $Root $RelativePath
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw "Missing file: $RelativePath"
    }
}

function Assert-Contains {
    param(
        [Parameter(Mandatory = $true)][string]$Content,
        [Parameter(Mandatory = $true)][string]$Needle
    )

    if (-not $Content.Contains($Needle)) {
        throw "Expected text was not found: $Needle"
    }
}

$RequiredFiles = @(
    "index.html",
    "privacy_policy.html",
    "privacy.html",
    "404.html",
    "robots.txt",
    "sitemap.xml",
    "site.webmanifest",
    ".nojekyll",
    "assets/promo/komasim-hero-background.png",
    "assets/promo/komasim-logo-mark.png",
    "assets/screenshots/field-overview-360dp.png",
    "assets/screenshots/input-overview-360dp.png"
)

foreach ($File in $RequiredFiles) {
    Assert-File $File
}

$PolicyPath = Join-Path $Root "privacy_policy.html"
$Policy = Get-Content -LiteralPath $PolicyPath -Encoding UTF8 -Raw
$PolicyRequiredText = @(
    "KomaSim",
    'id="policy-3"',
    'id="policy-4"',
    'id="policy-5"',
    "drifix.fishingseatadvisor@gmail.com",
    "skip-link"
)

foreach ($Text in $PolicyRequiredText) {
    Assert-Contains -Content $Policy -Needle $Text
}

if ($Policy -match "clamp\(" -or $Policy -match "\d+vw") {
    throw "Viewport-scaled font sizing was found in privacy_policy.html."
}

$ManifestPath = Join-Path $Root "site.webmanifest"
$Manifest = Get-Content -LiteralPath $ManifestPath -Encoding UTF8 -Raw | ConvertFrom-Json
if ($Manifest.name -ne "KomaSim") {
    throw "Unexpected manifest name: $($Manifest.name)"
}

$SitemapPath = Join-Path $Root "sitemap.xml"
$Sitemap = [xml](Get-Content -LiteralPath $SitemapPath -Encoding UTF8 -Raw)
if ($Sitemap.urlset.url.Count -lt 2) {
    throw "Sitemap should contain the root page and privacy policy page."
}

$HtmlFiles = @("index.html", "privacy_policy.html", "privacy.html", "404.html")
$LinkPattern = "(?:src|href)=[""']([^""']+)[""']"

foreach ($HtmlFile in $HtmlFiles) {
    $HtmlPath = Join-Path $Root $HtmlFile
    $Html = Get-Content -LiteralPath $HtmlPath -Encoding UTF8 -Raw
    $Matches = [regex]::Matches($Html, $LinkPattern)

    foreach ($Match in $Matches) {
        $Link = $Match.Groups[1].Value

        if ($Link.StartsWith("#") -or
            $Link.StartsWith("mailto:") -or
            $Link.StartsWith("http://") -or
            $Link.StartsWith("https://")) {
            continue
        }

        if ($Link.StartsWith("/KOMASimulator/")) {
            $Link = $Link.Substring("/KOMASimulator/".Length)
        } elseif ($Link.StartsWith("/")) {
            throw "Unexpected root-relative link in ${HtmlFile}: $Link"
        }

        $LocalPath = ($Link -split "[?#]", 2)[0]
        if ([string]::IsNullOrWhiteSpace($LocalPath)) {
            continue
        }

        Assert-File $LocalPath
    }
}

Write-Host "Static site validation passed."
