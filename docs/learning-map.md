# React/Next + WebGIS + Agent 前端就业学习地图

> 版本：v1  
> 创建日期：2026-06-30  
> 目标：用 6 个月跑完第一轮前端就业闭环，为 2027 实习和秋招提前准备。

## 0. 核心定位

你的目标不是“泛泛学计算机”，而是先形成一个能求职、能展示、能面试深挖的前端工程闭环。

最终求职标签：

```text
React/Next/TypeScript 前端工程师
  + Node 能做全栈闭环
  + Python/GIS 能做数据处理
  + Agent 能做智能化交互与自动分析
```

战略判断：

- 通用前端路线来自行业共识：HTML/CSS/JS、TypeScript、React、工程化、接口联调、测试、性能。
- 差异化路线来自你的个人背景：GIS、Python、数据处理、审美、可视化。
- Agent 不是简历上写“熟悉 AI”，而是落在具体功能：自然语言空间查询、自动分析摘要、报告草稿生成。

一句话标准：

> 6 个月后，你至少要能拿出一个在线可演示的 WebGIS + Agent 主项目，并且能把 JS/TS、React、HTTP、Node API、地图渲染、空间分析和 AI 功能边界讲清楚。

## 1. 证据链

这条路线不是凭感觉拼出来的，而是由“官方文档 + 成熟课程 + 技术趋势 + 个人背景”交叉验证。

| 模块 | 为什么学 | 认可度较高的来源 |
| --- | --- | --- |
| 前端基础 | HTML/CSS/JS 是前端入口，不能跳 | [MDN Learn Web Development](https://developer.mozilla.org/en-US/docs/Learn_web_development) |
| 路线结构 | 防止遗漏 Git、响应式、REST、测试、性能、TypeScript | [roadmap.sh Frontend](https://roadmap.sh/frontend) |
| React | 生态大、岗位多、适合复杂前端项目 | [React Learn](https://react.dev/learn) |
| TypeScript | AI 写代码时代更需要类型系统兜底 | [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html) |
| Next.js | 前端全栈闭环、服务端渲染、API、部署 | [Next.js Docs](https://nextjs.org/docs) |
| Node 全栈 | 让前端项目具备后端接口和数据能力 | [Node.js Learn](https://nodejs.org/learn) |
| 全栈课程 | 用 React + Node + TypeScript 建立完整工程链路 | [Full Stack Open](https://fullstackopen.com/en/) |
| 工程工具 | Shell、Git、调试、打包、代码质量是求职底盘 | [MIT Missing Semester](https://missing.csail.mit.edu/) |
| WebGIS | 你的 GIS 背景可以转化为前端差异化 | [Mapbox GL JS](https://docs.mapbox.com/mapbox-gl-js/guides/)、[Leaflet](https://leafletjs.com/reference.html)、[Turf.js](https://turfjs.org/docs/getting-started) |
| Agent/Codex | 用 AI 做代码审查、任务拆解、智能查询和报告生成 | [OpenAI Codex Docs](https://developers.openai.com/codex/)、[Codex Best Practices](https://developers.openai.com/codex/learn/best-practices) |

## 2. 总学习地图

```text
阶段 0：工具底座
Shell / Git / VS Code / Chrome DevTools / npm / pnpm
        |
        v
阶段 1：前端基础
HTML / CSS / JavaScript / 浏览器 / HTTP / DOM / Fetch
        |
        v
阶段 2：类型与框架
TypeScript / React / 状态管理 / 表单 / 路由 / 组件设计
        |
        v
阶段 3：全栈闭环
Next.js / Node API / 数据库 / 鉴权 / 部署 / 日志 / 错误处理
        |
        v
阶段 4：WebGIS 主项目
Mapbox 或 Leaflet / GeoJSON / 图层 / 空间统计 / 图表联动
        |
        v
阶段 5：Agent 增强
自然语言查询 / 自动空间分析摘要 / 自动报告 / Codex 辅助开发
        |
        v
阶段 6：求职化
简历 / README / Demo / 面试题 / 算法 / 项目深挖
```

## 3. 6 个月路线

### 第 1 月：JS/TS 基础修复

目标：把零散的 JavaScript 和 TypeScript 知识变成可解释、可手写、可调试的基础能力。

学习资料：

- MDN JavaScript Guide
- JavaScript.info 作为中文/英文辅助
- TypeScript Handbook

必须掌握：

- 作用域、闭包、原型、this、模块化
- Promise、async/await、事件循环
- DOM、事件、Fetch、错误处理
- TypeScript 基础类型、联合类型、类型收窄、泛型、接口、类型别名

产物：

- 30 个 JS/TS 小练习
- 1 份 `js-ts-notes.md`
- 1 份 `js-ts-mistakes.md`，记录自己踩过的坑

验收：

- 能不用 AI 解释 Promise、闭包、事件循环、泛型、联合类型和类型收窄。
- 能把一个弱类型 JS 函数改造成类型安全的 TS 函数。

### 第 2 月：React 主线

目标：能独立完成一个中等复杂度 React 项目，理解组件拆分和状态流动。

学习资料：

- React Learn
- React Router 文档
- TanStack Query 或 SWR 文档，二选一即可

必须掌握：

- 组件、props、state、事件
- 条件渲染、列表渲染、表单
- useState、useEffect、useMemo、useCallback
- 组件拆分、状态提升、请求状态、错误状态
- 路由、页面组织、基础性能意识

产物：

- React 数据看板小项目
- 功能包括筛选、排序、搜索、图表、加载状态、错误状态
- README 说明组件结构和状态设计

验收：

- 能讲清状态为什么放在这个组件。
- 能讲清一次用户点击如何触发状态变化、请求、渲染更新。
- 能解释 useEffect 的依赖数组为什么这样写。

### 第 3 月：Next + Node 全栈闭环

目标：从前端页面一路打通 API、数据库、鉴权、部署。

学习资料：

- Next.js Docs
- Node.js Learn
- Full Stack Open 的 React、Node、TypeScript 部分

必须掌握：

- Next.js 路由、布局、服务端/客户端组件基本区别
- API Route 或 Route Handler
- REST API 设计
- 数据库 CRUD
- 表单校验、错误处理、环境变量、部署

产物：

- Next.js 全栈 CRUD 项目
- 建议主题：学习任务管理器或资料收藏系统
- 功能包括登录、列表、新增、编辑、删除、筛选、部署

验收：

- 能从页面组件讲到 API 请求、服务端处理、数据库写入、错误返回。
- 能说明哪些逻辑放前端，哪些逻辑放后端。
- 能部署并提供在线访问地址。

### 第 4-5 月：WebGIS 核心项目

目标：做出第一版主项目，让你的 GIS 背景真正进入简历。

项目名称建议：

```text
GeoInsight Agent：WebGIS 空间数据分析平台
```

技术建议：

- 前端：React / Next.js / TypeScript
- 地图：Mapbox GL JS 或 Leaflet
- 空间分析：Turf.js
- 后端：Node API
- 数据处理：Python 脚本
- 图表：ECharts 或 Recharts

核心功能：

- 地图底图展示
- GeoJSON 上传和预览
- 图层开关和样式切换
- 属性筛选
- 空间统计
- 图表联动
- 结果导出

数据主题建议：

- 南京城市 POI 分布
- 景区/商圈空间格局
- 通勤或交通可达性
- 城市公共服务设施覆盖

验收：

- 项目能在线演示。
- README 能讲清数据来源、数据流、地图渲染、空间分析方法。
- 面试时能解释 GeoJSON、图层、空间查询、缓冲区、点面关系。

### 第 6 月：Agent + 求职化

目标：把主项目从“地图展示”升级成“智能空间分析工具”。

Agent 功能不要做成普通聊天框，要服务于 GIS 任务。

推荐功能：

- 自然语言查询：例如“帮我找出商业设施密集但公园较少的区域”
- 自动分析摘要：根据当前地图筛选结果生成空间格局描述
- 自动报告草稿：输出一段可放进课程论文或项目报告的分析文本
- 自动制图建议：根据数据字段推荐颜色、分级方式、图层样式

验收：

- 简历、README、架构图、Demo、面试讲稿全部完成。
- 能说明 Agent 能做什么、不能做什么、如何避免胡编空间结论。
- 简历不写“熟悉 AI”，而写“实现自然语言空间查询、地图筛选解释和空间分析摘要生成”。

## 4. 24 周执行表

| 周次 | 主知识点 | 项目任务 | 算法任务 | 周验收 |
| --- | --- | --- | --- | --- |
| W01 | JS 基础、作用域、闭包 | 10 个 JS 小练习 | 数组、字符串 | 能手写闭包例子并解释变量生命周期 |
| W02 | this、原型、模块化 | 10 个对象/模块练习 | 哈希表 | 能解释原型链和模块导入导出 |
| W03 | Promise、async/await、事件循环 | 异步请求练习 | 双指针、滑动窗口 | 能画出一次异步任务执行顺序 |
| W04 | TS 类型、泛型、类型收窄 | 10 个 TS 类型练习 | 栈、队列 | 能把 JS 函数改成类型安全 TS |
| W05 | React 组件和 props/state | 数据看板项目初始化 | 链表 | 完成基础页面和组件拆分 |
| W06 | React 表单、列表、条件渲染 | 完成筛选、排序、搜索 | 二叉树基础 | 能讲清状态流向 |
| W07 | useEffect、请求、错误状态 | 接入真实或模拟 API | 二叉树遍历 | 能解释 useEffect 依赖 |
| W08 | 路由、图表、组件复盘 | React 数据看板完成 README | 递归、回溯入门 | 项目可演示 |
| W09 | Next.js 路由和布局 | Next 项目初始化 | 排序、二分 | 完成页面结构 |
| W10 | Node API、REST | 完成 CRUD API | 堆、优先队列 | 能讲清 API 设计 |
| W11 | 数据库、表单校验 | 接数据库和表单 | 图基础 | 完成数据闭环 |
| W12 | 鉴权、部署、错误处理 | Next 全栈项目部署 | BFS/DFS | 项目可在线访问 |
| W13 | WebGIS 基础、GeoJSON | 地图项目初始化 | 并查集入门 | 地图能加载 GeoJSON |
| W14 | 图层控制、样式系统 | 图层开关和样式切换 | 图遍历 | 能解释图层结构 |
| W15 | 属性筛选、交互设计 | 地图筛选和高亮 | 贪心 | 完成筛选联动 |
| W16 | Turf.js 空间分析 | 缓冲区、范围统计 | 动态规划入门 | 能解释空间分析逻辑 |
| W17 | 图表联动 | 地图 + 图表联动 | DP 常见题 | 能讲清数据流 |
| W18 | WebGIS 一期收尾 | README、部署、演示视频 | 综合复习 | 主项目一期可展示 |
| W19 | Agent 需求设计 | 设计自然语言查询接口 | 高频题复盘 | 写清 Agent 边界 |
| W20 | OpenAI API / Agent 流程 | 实现查询解释或摘要生成 | 面试高频数组/树 | 完成第一个 AI 功能 |
| W21 | Agent 与地图状态联动 | 当前视图生成分析摘要 | 面试高频图/DP | AI 输出和地图状态相关 |
| W22 | 报告草稿生成 | 导出分析结果 | 模拟笔试 | 完成 Agent 增强版 |
| W23 | 简历化、README、架构图 | 整理项目材料 | 模拟面试 1 | 能讲 10 分钟项目 |
| W24 | 总复盘、投递准备 | 修 bug、补测试、部署稳定 | 模拟面试 2 | 简历和项目进入可投状态 |

## 5. 项目矩阵

| 项目 | 目的 | 技术栈 | 简历价值 |
| --- | --- | --- | --- |
| React 数据看板 | 训练组件、状态、请求、图表 | React、TypeScript、ECharts/Recharts | 证明前端基础工程能力 |
| Next 全栈 CRUD | 训练前后端闭环 | Next.js、Node、数据库、部署 | 证明你不是只会写页面 |
| WebGIS + Agent 主项目 | 打差异化 | Next、TypeScript、Mapbox/Leaflet、Turf、Node、Python、OpenAI API | 证明 GIS + 前端 + AI 复合能力 |

主项目最小可行版本：

```text
上传 GeoJSON
  -> 地图展示
  -> 属性筛选
  -> 空间统计
  -> 图表联动
  -> Agent 生成分析摘要
```

不要一开始就追求“大而全”。先把最小闭环做出来，再加高级功能。

## 6. 每周工作流

每周只允许三类任务：

```text
1 个主知识点
1 个项目功能
1 组算法题
```

每周复盘只回答四个问题：

```text
本周学了什么？
本周做出了什么？
本周卡在哪里？
下周删掉什么低 ROI 任务？
```

如果你发现自己又在收藏课程、切换路线、比较框架，而没有写代码和产出，请立刻问自己：

> 你是不是又陷入了无目标的开放式焦虑？

然后把任务缩小成 30 分钟内能完成的体力劳动式动作：

- 写 1 个函数
- 修 1 个 bug
- 读 1 页官方文档
- 做 1 道算法题
- 写 1 段 README
- 提交 1 次 commit

## 7. Codex 使用规则

Codex 的定位不是代写机器，而是教练、评审、测试员和面试官。

禁止这样用：

```text
帮我写一个完整前端项目。
```

推荐这样用：

```text
我正在学习 React 的状态管理。
请先解释这个概念的本质，再给一个最小例子。
然后给我一个练习题。
等我写完代码后，你再做严格 code review。
```

代码评审模板：

```text
请严格审查下面这段代码。
重点看：
1. 是否有隐藏 bug
2. 类型设计是否合理
3. 边界条件是否缺失
4. 是否存在不必要的复杂度
5. 如果面试官追问，最可能问什么

请先肯定合理部分，再指出问题，最后给出更优写法。
```

项目拆解模板：

```text
我的目标是实现：[具体功能]
当前技术栈是：[React/Next/TypeScript/...]
请把任务拆成 30-60 分钟一块的微任务。
每个任务必须包含：
1. 修改哪些文件
2. 完成标准
3. 怎么验证
4. 可能踩坑
```

面试模拟模板：

```text
请你扮演严格面试官，围绕我的项目追问。
项目是 WebGIS + Agent 空间数据分析平台。
请从 JS/TS、React、HTTP、Node、地图渲染、空间分析、AI 边界 7 个方向提问。
每次只问一个问题，等我回答后再评价。
```

## 8. 算法策略

你选择的是“大厂强化”，但不能让算法吞掉项目。

算法时间建议：

```text
每周 5-8 小时
每天 1-2 题
周末做一次复盘
```

优先级：

1. 数组、字符串、哈希表
2. 双指针、滑动窗口
3. 栈、队列、链表
4. 二叉树、递归、回溯
5. 图、BFS、DFS、并查集
6. 动态规划基础
7. 高频综合题

算法验收不是“看懂答案”，而是：

- 能独立写出第一版。
- 能解释时间复杂度和空间复杂度。
- 能说出卡在哪里。
- 能在 3 天后复写。

## 9. 求职化材料

第 6 个月必须沉淀以下材料：

- 一页中文简历
- 一页项目英文/中文 README
- 在线 Demo 链接
- 项目架构图
- 核心功能截图
- 3 分钟项目介绍稿
- 10 分钟项目深挖稿
- 常见面试问答文档

项目介绍稿结构：

```text
1. 我解决了什么问题
2. 为什么选择这个技术栈
3. 数据从哪里来
4. 地图如何渲染
5. 空间分析怎么做
6. Agent 如何接入
7. 如何控制 AI 输出边界
8. 我做过哪些性能或体验优化
```

## 10. 当前推荐的第一步

今天不要再比较课程。

今天只做三件事：

```text
1. 建一个 learning-log.md，写下本周目标。
2. 用 TypeScript 写 3 个小练习：数组统计、对象转换、异步请求封装。
3. 把代码交给 Codex 做一次严格 review。
```

这就是启动动作。不是最完美，但 ROI 最高。

