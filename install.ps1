# 将主题安装到 Typora 主题目录（Windows）
# 用法：在仓库根目录执行  powershell -ExecutionPolicy Bypass -File .\install.ps1

$ErrorActionPreference = 'Stop'
$src = $PSScriptRoot
$dst = Join-Path $env:APPDATA 'Typora\themes'

if (-not (Test-Path $dst)) {
    Write-Host "未找到 Typora 主题目录：$dst" -ForegroundColor Red
    Write-Host "请先安装 Typora，或在 Typora 中打开 偏好设置 → 外观 → 打开主题文件夹 确认路径。"
    exit 1
}

Copy-Item -Path (Join-Path $src 'github-onelight.css') -Destination $dst -Force
$assetDst = Join-Path $dst 'github-onelight'
if (-not (Test-Path $assetDst)) { New-Item -ItemType Directory -Path $assetDst | Out-Null }
Copy-Item -Path (Join-Path $src 'github-onelight\*') -Destination $assetDst -Force

Write-Host "已安装到：$dst" -ForegroundColor Green
Write-Host "重启 Typora（或重新选择主题），在菜单 主题 → Github Onelight 启用。"
