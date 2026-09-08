# Github Onelight — Typora 主题

以 Typora 内置 **github** 主题为骨架，融合 **onelight**、**mdmdt**、**phycat** 三个主题中各自最顺手的部分。

仓库里有两个主题文件，装好后在 Typora 主题菜单里各占一项，可随时切换：

| 主题菜单名 | 文件 | 说明 |
| ---------- | ---- | ---- |
| Github Onelight | `github-onelight.css` + `github-onelight/` | 主题本体 |
| Github Onelight Leimi | `github-onelight-leimi.css` | `@import` 本体，再在编辑区底部铺一张《绝区零》蕾米埃尔插画（图在 `github-onelight/img/`）；样式改动自动跟随本体 |

## 各部分来源

| 部分 | 来源 | 内容 |
| ---- | ---- | ---- |
| 页面骨架 | github（Typora 内置） | 白底、Open Sans 正文、标题下划线、列表、页面宽度 |
| 代码块 | onelight | 白色卡片 + 阴影 + 8px 圆角、鼠标悬停的代码行高亮、右下角语言标签、绿色光标 |
| 引用块 / 警告框 | onelight | 白色卡片 + 左侧色条 + 阴影；`> [!NOTE]` 等五种警告框彩色描边 |
| 背景动图 | onelight | 编辑器右下角与一体化菜单的小人动图 |
| 表格 | mdmdt + onelight | mdmdt 的 8px 圆角卡片 + 斑马纹；onelight 的悬停高亮（整行浅色、当前格更深） |
| 文本行内样式 | mdmdt | 粗体、下划线、删除线、==高亮==、链接前小图标、行内代码、`<kbd>`、选区颜色、注释 |
| 数学公式块 | mdmdt | 灰色 8px 圆角卡片 |
| 圆角体系 | mdmdt | 卡片 8px / 小件 5px，覆盖菜单、按钮、输入框、快速打开、底栏 |
| 大纲 / 文件 / TOC | mdmdt | 侧栏大纲与文件树的树形连线、圆角悬停高亮；`[TOC]` 时间轴样式 |
| 图片 | phycat | 含图段落居中、12px 圆角、悬停放大 1.05 |

## 安装

**方式零：下载 Release（推荐）**

到 [Releases](https://github.com/zzixxxx/typora-theme-github-onelight/releases) 下载最新的 `github-onelight-vX.Y.Z.zip`，解压后把里面的 `github-onelight.css`、`github-onelight-leimi.css`、`github-onelight/` 放进 Typora 主题目录（`偏好设置 → 外观 → 打开主题文件夹`），重启 Typora 即可。

**方式一：脚本（Windows）**

```powershell
git clone https://github.com/zzixxxx/typora-theme-github-onelight.git
cd typora-theme-github-onelight
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

**方式二：手动**

1. 在 Typora 中打开 `偏好设置 → 外观 → 打开主题文件夹`。
2. 把 `github-onelight.css`、`github-onelight-leimi.css` 和整个 `github-onelight/` 文件夹复制进去（不要 Leimi 版就不复制它的 css）。
3. 重启 Typora，菜单 `主题 → Github Onelight` 或 `Github Onelight Leimi`。

主题自包含，不依赖 onelight / mdmdt / phycat 本体。Leimi 版依赖同目录下的本体文件。

## 目录结构

```
github-onelight.css          入口：@import 各模块 + :root 变量
github-onelight-leimi.css    叠加：@import 本体 + 编辑区底部插画
github-onelight/
├─ fonts/                    Open Sans ×4、JetBrains Mono
├─ img/                      mutou.gif / mutou2.gif（小人）、bg-art.jpg（Leimi 插画）
└─ style/
   ├─ font.css               字体声明与等宽字体应用
   ├─ base.css               正文骨架：页面宽度、标题、列表、hr（github）
   ├─ text.css               粗体 / 下划线 / 删除线 / 高亮 / 链接图标 / kbd / 选区 / 复选框（mdmdt）
   ├─ blockquote.css         引用块与五种警告框（onelight）
   ├─ table.css              表格圆角卡片 + 斑马纹（mdmdt）+ 悬停高亮（onelight）
   ├─ code.css               代码块白卡片 / 行悬停 / 语言标签（onelight）+ 行内代码（mdmdt）
   ├─ math.css               数学公式块 / HTML 块（mdmdt）
   ├─ image.css              图片样式（phycat）+ 点击放大灯箱
   ├─ background.css         编辑区背景：小人 gif + 可选插画机制（onelight）
   ├─ sidebar.css            侧栏大纲 / 文件列表 / 文件树（mdmdt）
   ├─ toc.css                [TOC] 目录（mdmdt）
   └─ ui.css                 滚动条、菜单、按钮、输入框、快速打开、底栏等界面圆角（mdmdt + github）
```

## 示例文档

`examples/` 目录下每种样式一个 md，用 Typora 打开即可对照：

| 文件 | 内容 |
| ---- | ---- |
| `00-总览.md` | 所有样式的精简合集 |
| `01-文本.md` | 粗体 / 下划线 / 删除线 / 高亮 / 链接 / kbd / 脚注 / 标题层级 |
| `02-表格.md` | 基础表格、对齐、表格内行内元素、宽表格 |
| `03-代码.md` | 行内代码、多语言代码块、diff、无语言块、Mermaid |
| `04-引用与警告框.md` | 普通引用、嵌套引用、五种 GitHub 警告框 |
| `05-数学公式.md` | 块级公式、行内公式、矩阵 |
| `06-图片.md` | 单图、多图、行内小图、限宽图、缩放图 |
| `07-目录TOC.md` | `[TOC]` 时间轴样式；打开侧栏看大纲和文件树 |
| `08-列表.md` | 无序 / 有序 / 任务列表 |

## 关于图片点击放大

早期版本尝试过纯 CSS 的点击放大灯箱（借 Typora 的 `.md-expand` 状态把图片改为 fixed 居中）。它绕不开 Typora 的光标模型：光标进入图片源码就算"选中"，点击图片旁边的空白、甚至用键盘移动光标都会触发，关闭时点击又会落到别的图片上。1.0.1 起已整体移除，图片保持 phycat 的悬停放大 1.05 效果，不再显示放大镜光标。

## 自定义

所有颜色、圆角、阴影、灯箱尺寸集中在 `github-onelight.css` 顶部的 `:root` 里，改一处即可：

| 变量 | 默认值 | 作用 |
| ---- | ------ | ---- |
| `--color-1` | `#3e69d7` | 主蓝：链接、高亮、激活态 |
| `--color-2` | `#f59102` | 橙：链接悬停、选区 |
| `--theme-color` | `var(--color-1)` | 引用块左条、表格悬停色 |
| `--bg-color2` | `#ececee` | 斑马纹、表头、公式块、侧栏悬停 |
| `--radius-small` / `--radius-xsmall` | `8px` / `5px` | 卡片 / 小件圆角 |
| `--inline-code-bg` / `--inline-code-color` | 蓝色浅底 / `#2f479f` | 行内代码 |
| `--code-bg-color` | `#fff` | 代码块底色 |

## 编辑区底部插画

主题支持在编辑区背景底部铺一张插画，右下角的小人 gif 会叠在它上面；插画上盖一层从顶部全白渐入的白纱，保证文字可读。本体默认关闭；`github-onelight-leimi.css` 就是启用了插画的现成例子。

想换成自己的图，推荐照 Leimi 的做法**另建一个叠加主题文件**，这样主题菜单里多一项，可以随时切换，也不用改本体。例如新建 `github-onelight-xxx.css`：

```css
@import url("./github-onelight.css");

:root {
    --bg-art-ratio: 0.5303;                    /* 插画 高/宽 比 */
    --bg-art-veil: rgba(255, 255, 255, .62);   /* 白纱透明度，alpha 越大插画越淡 */
}

content {
    background-image:
        url('./github-onelight/img/mutou2.gif'),
        linear-gradient(to bottom, #fff 0%, var(--bg-art-veil) 28%, var(--bg-art-veil) 100%),
        url('./github-onelight/img/xxx.jpg');   /* 你的图片，放进 github-onelight/img/ */
    background-position: 100% 100%, 50% 100%, 50% 100%;
    background-repeat: no-repeat, no-repeat, no-repeat;
    background-size: 150px auto, 100% calc(var(--bg-art-width) * var(--bg-art-ratio)), var(--bg-art-width) auto;
}
```

也可以直接改 `github-onelight/style/background.css` 里 `:root` 的 `--bg-art`，其余变量：

| 变量 | 默认值 | 作用 |
| ---- | ------ | ---- |
| `--bg-art` | `none` | 插画路径 |
| `--bg-art-width` | `100vw` | 插画宽度，建议用 vw，居中贴底 |
| `--bg-art-ratio` | `0.5303` | 插画 高/宽 比，换图时同步改，白纱高度靠它跟随 |
| `--bg-art-veil` | `rgba(255,255,255,.62)` | 白纱透明度，alpha 越大插画越淡 |

Leimi 版的插画为《绝区零》官方壁纸，版权归 miHoYo / HoYoverse，仅供个人使用，详见 THIRD_PARTY_NOTICES。自换插画请注意版权。

不想要右下角动图：在 `github-onelight/style/background.css` 里删掉 `content { ... }` 的 `mutou2.gif` 那一层和 `div#megamenu-section-open { ... }` 即可。

## 环境

在 Typora 1.14.9 / Windows 10 上开发。用到了 `:has()`、`color-mix()`、`inset`，需要较新的 Typora（1.8+）。

## 致谢与许可

本仓库自身代码采用 MIT 许可。移植的样式与资源来自以下项目，详见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)：

- [Typora 内置 github 主题](https://typora.io)
- [caolib/typora-onelight-theme](https://github.com/caolib/typora-onelight-theme)
- [cayxc/Mdmdt](https://github.com/cayxc/Mdmdt)（Apache-2.0）
- [sumruler/typora-theme-phycat](https://github.com/sumruler/typora-theme-phycat)
- 字体：[JetBrains Mono](https://www.jetbrains.com/lp/mono/)（OFL-1.1）、[Open Sans](https://fonts.google.com/specimen/Open+Sans)
