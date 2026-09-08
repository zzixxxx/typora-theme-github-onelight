# 将主题安装到 Typora 主题目录（Windows）
# 用法：在仓库根目录执行  powershell -ExecutionPolicy Bypass -File .\install.ps1
#       只装本体不装 Leimi 版：       powershell -ExecutionPolicy Bypass -File .\install.ps1 -SkipLeimi

param([switch]$SkipLeimi)

$ErrorActionPreference = 'Stop'
$src = $PSScriptRoot
$dst = Join-Path $env:APPDATA 'Typora\themes'

if (-not (Test-Path $dst)) {
    Write-Host "未找到 Typora 主题目录：$dst" -ForegroundColor Red
    Write-Host "请先安装 Typora，或在 Typora 中打开 偏好设置 → 外观 → 打开主题文件夹 确认路径。"
    exit 1
}

# 主题本体：github-onelight.css + github-onelight/（fonts / img / style）
Copy-Item -Path (Join-Path $src 'github-onelight.css') -Destination $dst -Force
$assetDst = Join-Path $dst 'github-onelight'
if (Test-Path $assetDst) { Remove-Item -Path $assetDst -Recurse -Force }
Copy-Item -Path (Join-Path $src 'github-onelight') -Destination $assetDst -Recurse -Force

# Leimi 叠加版（带插画，只多一个 css，插画已在 github-onelight/img 里）
if (-not $SkipLeimi) {
    Copy-Item -Path (Join-Path $src 'github-onelight-leimi.css') -Destination $dst -Force
}

Write-Host "已安装到：$dst" -ForegroundColor Green
Write-Host "重启 Typora（或重新选择主题），在菜单 主题 → Github Onelight / Github Onelight Leimi 启用。"
