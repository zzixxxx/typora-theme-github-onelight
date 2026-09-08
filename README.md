# Github Onelight — Typora 主题

以 Typora 内置 **github** 主题为骨架，融合 **onelight**、**mdmdt**、**phycat** 三个主题中各自最顺手的部分，并加入纯 CSS 实现的**图片点击放大**。

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
| 图片点击放大 | 本主题 | 点击图片居中放大并压暗背景，再点击任意位置关闭 |

## 安装

**方式一：脚本（Windows）**

```powershell
git clone https://github.com/zzixxxx/typora-theme-github-onelight.git
cd typora-theme-github-onelight
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

**方式二：手动**

1. 在 Typora 中打开 `偏好设置 → 外观 → 打开主题文件夹`。
2. 把 `github-onelight.css` 和 `github-onelight/` 文件夹一起复制进去。
3. 重启 Typora，菜单 `主题 → Github Onelight`。

主题自包含，不依赖 onelight / mdmdt / phycat 本体。

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
| `06-图片.md` | 单图、多图、行内小图、限宽图、缩放图；点击放大 |
| `07-目录TOC.md` | `[TOC]` 时间轴样式；打开侧栏看大纲和文件树 |
| `08-列表.md` | 无序 / 有序 / 任务列表 |

## 图片点击放大的说明

- 点击图片：图片在窗口正中放大到最多 92vw × 92vh，背景压暗。
- 关闭：点击任意位置（包括图片本身）。
- 原理：利用 Typora 点击图片时给 `.md-image` 加 `.md-expand` 的机制，把 img 改为 `position: fixed` 居中；Typora 给 `#write` 设置了 `transform: translateZ(0)`，展开期间会临时取消。
- 已兼容 `偏好设置 → 段落首行缩进`（Typora 在该模式下有一条高特异性规则会覆盖图片定位，主题里用 `!important` 压过）。
- 用键盘把光标移进图片时也会触发放大，这是该机制的副作用。

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
| `--lightbox-backdrop` | `rgba(0,0,0,.6)` | 灯箱遮罩 |
| `--lightbox-max-width` / `--lightbox-max-height` | `92vw` / `92vh` | 灯箱最大尺寸 |

## 编辑区底部插画（可选，默认关闭）

主题支持在编辑区背景底部铺一张自己的插画，右下角的小人 gif 会叠在它上面；插画上盖一层从顶部全白渐入的白纱，保证文字可读。仓库不附带图片。

推荐做法是**另建一个叠加主题文件**，这样主题菜单里多一项，可以随时切换，也不用改本文件。例如新建 `github-onelight-xxx.css`：

```css
@import url("./github-onelight.css");

:root {
    --bg-art-ratio: 0.5303;                    /* 插画 高/宽 比 */
    --bg-art-veil: rgba(255, 255, 255, .62);   /* 白纱透明度，alpha 越大插画越淡 */
}

content {
    background-image:
        url('./github-onelight/mutou2.gif'),
        linear-gradient(to bottom, #fff 0%, var(--bg-art-veil) 28%, var(--bg-art-veil) 100%),
        url('./github-onelight-xxx/bg-art.jpg');   /* 你的图片 */
    background-position: 100% 100%, 50% 100%, 50% 100%;
    background-repeat: no-repeat, no-repeat, no-repeat;
    background-size: 150px auto, 100% calc(var(--bg-art-width) * var(--bg-art-ratio)), var(--bg-art-width) auto;
}
```

也可以直接改本文件 `content` 上方 `:root` 里的 `--bg-art`，其余变量：

| 变量 | 默认值 | 作用 |
| ---- | ------ | ---- |
| `--bg-art` | `none` | 插画路径 |
| `--bg-art-width` | `100vw` | 插画宽度，建议用 vw，居中贴底 |
| `--bg-art-ratio` | `0.5303` | 插画 高/宽 比，换图时同步改，白纱高度靠它跟随 |
| `--bg-art-veil` | `rgba(255,255,255,.62)` | 白纱透明度，alpha 越大插画越淡 |

注意插画的版权，公开分发前确认有授权。

不想要右下角动图：删掉 `content { ... }` 里 `mutou2.gif` 那一层和 `div#megamenu-section-open { ... }` 即可。

## 环境

在 Typora 1.14.9 / Windows 10 上开发。用到了 `:has()`、`color-mix()`、`inset`，需要较新的 Typora（1.8+）。

## 致谢与许可

本仓库自身代码采用 MIT 许可。移植的样式与资源来自以下项目，详见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)：

- [Typora 内置 github 主题](https://typora.io)
- [caolib/typora-onelight-theme](https://github.com/caolib/typora-onelight-theme)
- [cayxc/Mdmdt](https://github.com/cayxc/Mdmdt)（Apache-2.0）
- [sumruler/typora-theme-phycat](https://github.com/sumruler/typora-theme-phycat)
- 字体：[JetBrains Mono](https://www.jetbrains.com/lp/mono/)（OFL-1.1）、[Open Sans](https://fonts.google.com/specimen/Open+Sans)
