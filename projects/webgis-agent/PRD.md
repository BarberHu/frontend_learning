# GeoInsight Agent PRD

> 项目定位：WebGIS + Agent 空间数据分析平台  
> 版本：MVP v0.1  
> 目标：作为前端求职主项目，体现 React/Next/TypeScript、WebGIS、Node、Python/GIS 和 Agent 的复合能力。

## 1. 用户与场景

目标用户：

- GIS/城市空间分析学生
- 需要快速查看 GeoJSON 数据的研究者
- 需要把空间统计结果写成报告草稿的前端/GIS 复合型用户

核心场景：

```text
用户上传或选择一份空间数据
  -> 在地图中查看
  -> 按属性筛选
  -> 生成空间统计和图表
  -> 让 Agent 解释当前空间格局
  -> 导出摘要或报告草稿
```

## 2. MVP 功能

### 必做

- 地图底图展示
- GeoJSON 上传和预览
- 图层开关
- 属性筛选
- 基础空间统计
- 图表联动
- Agent 生成当前视图分析摘要
- README、架构图、部署地址

### 暂不做

- 多用户协作
- 大规模矢量瓦片服务
- 复杂空间数据库
- 付费系统
- 完整 GIS 桌面软件能力

## 3. 技术栈默认选择

- 前端：React / Next.js / TypeScript
- 地图：Mapbox GL JS 或 Leaflet，MVP 只选一个
- 空间分析：Turf.js
- 后端：Node API
- 数据预处理：Python
- 图表：ECharts 或 Recharts
- Agent：OpenAI API 或 Codex 辅助流程

## 4. 数据流

```text
GeoJSON 数据
  -> 前端解析
  -> 地图图层渲染
  -> 属性筛选
  -> Turf.js 空间统计
  -> 图表展示
  -> 当前地图状态传给 Agent
  -> 生成分析摘要
```

## 5. Agent 边界

Agent 只允许基于当前数据和统计结果生成解释，不允许凭空编造结论。

Agent 输入应包含：

- 数据字段说明
- 当前筛选条件
- 地图范围
- 统计结果
- 用户问题

Agent 输出应包含：

- 空间格局描述
- 可能原因，但必须标注“不确定”
- 可视化建议
- 后续分析建议

## 6. 验收标准

- 用户能上传或选择 GeoJSON 并在地图中查看。
- 用户能筛选属性并看到地图与图表变化。
- 用户能生成一段基于当前数据的空间分析摘要。
- README 能讲清项目目标、技术栈、数据流、Agent 边界。
- 面试时能讲清地图渲染、状态管理、空间统计、AI 输出约束。

