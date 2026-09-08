# 第三方组件声明 / Third-Party Notices

本主题在以下项目的基础上组合、改写而成。各部分版权归原作者所有，按其各自许可证分发；本仓库新增的代码（图片灯箱、整合与适配）采用 MIT 许可。

## Typora 内置主题 github.css

- 来源：Typora 安装包自带 `themes/github.css`
- 用途：页面骨架（正文字体、标题、列表、页面宽度、部分界面样式）
- 附带资源：`github-onelight/open-sans-*.woff2`（Open Sans 字体，Apache License 2.0 / SIL OFL 1.1，随 Typora 分发）

## onelight（caolib/typora-onelight-theme）

- 来源：https://github.com/caolib/typora-onelight-theme
- 用途：代码块卡片与代码行悬停、语言标签、引用块与 GitHub 警告框、表格悬停高亮、界面背景动图
- 附带资源：
  - `github-onelight/JetBrainsMono-Regular.woff2` — JetBrains Mono，SIL Open Font License 1.1，© 2020 The JetBrains Mono Project Authors
  - `github-onelight/mutou.gif`、`github-onelight/mutou2.gif` — 取自该主题的 `img/` 目录
- 许可：以原仓库声明为准

## Mdmdt（cayxc/Mdmdt）

- 来源：https://github.com/cayxc/Mdmdt （镜像：https://gitee.com/cayxc/mdmdt）
- 作者：cayxc，© 2024-2025
- 用途：文本行内样式（粗体 / 下划线 / 删除线 / 高亮 / 链接图标 / 行内代码 / kbd / 选区）、表格圆角卡片与斑马纹、数学公式块、圆角体系、侧栏大纲与文件树、`[TOC]` 目录、菜单 / 按钮 / 输入框等界面圆角
- 许可：Apache License 2.0

  Licensed under the Apache License, Version 2.0 (the "License"); you may not use these portions except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0. Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

  移植时的修改：颜色改为本主题变量、字号由 px 改为 em、去掉了与 github 骨架冲突的段落间距与字体设置、表格增加悬停高亮、公式块底色改为常显灰底。

## 编辑区底部插画

- 本仓库不附带插画图片，`--bg-art` 默认为 `none`
- 自行启用时请使用有授权的图片；第三方图片不在本仓库 MIT 许可范围内

## phycat（sumruler/typora-theme-phycat）

- 来源：https://github.com/sumruler/typora-theme-phycat
- 用途：图片样式（含图段落居中、圆角、悬停放大、软阴影）
- 许可：以原仓库声明为准

  移植时的修改：过渡属性由 `all` 收窄为 transform / box-shadow / filter，圆角改用本主题变量。
