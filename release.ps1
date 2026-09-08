# 打包 Release zip：解压到 Typora 主题目录即可使用
# 用法：powershell -ExecutionPolicy Bypass -File .\release.ps1 -Version 1.0.0
#       产物：dist\github-onelight-v1.0.0.zip，内含
#         github-onelight.css / github-onelight-leimi.css / github-onelight\（fonts、img、style）

param([Parameter(Mandatory = $true)][string]$Version)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$dist = Join-Path $root 'dist'
if (-not (Test-Path $dist)) { New-Item -ItemType Directory -Path $dist | Out-Null }

$zip = Join-Path $dist ("github-onelight-v{0}.zip" -f $Version)
if (Test-Path $zip) { Remove-Item $zip -Force }

$items = @(
    (Join-Path $root 'github-onelight.css'),
    (Join-Path $root 'github-onelight-leimi.css'),
    (Join-Path $root 'github-onelight')
)
Compress-Archive -Path $items -DestinationPath $zip -CompressionLevel Optimal

$size = [math]::Round((Get-Item $zip).Length / 1KB)
Write-Host "已生成：$zip（$size KB）" -ForegroundColor Green
Write-Host "使用：解压后把 github-onelight.css、github-onelight-leimi.css、github-onelight\ 放进 Typora 主题目录。"
