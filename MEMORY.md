# 私域运营SOP系统 - 项目记忆

## 项目概述
私域运营自动化SOP话术管理系统，单文件 HTML，按课程期数/天数自动匹配话术。

## 部署
- **GitHub Pages**: https://wabaoyi.github.io/sop-huasu/
- 仓库: https://github.com/wabaoyi/sop-huasu
- 分支: main，根目录部署
- 方式: GitHub Contents API 推送（git push 因沙箱限制不可用）

## 数据源
- 金山文档多维表格 file_id: `27knf8ZcHxMLkTqte6b3rxSCd8Qj467z1`
- Sheet1 = 话术数据（fields: 标题/话术内容/归属板块/归属人/是否标准话术/创建时间/标签/排序号/提交者）⚠️ 主数据源
- Sheet5 = 课程日期配置（fields: 期数/开始日期/第一天~第四天）⚠️ 稳定，一般不刷新
- Sheet6 = 每日任务（fields: 天数/任务内容）⚠️ 稳定，一般不刷新
- 页面加载 JSON：data.json + course_dates.json + daily_tasks.json

## 刷新流程（简化版）
说 "刷新数据并部署" → 拉取 Sheet1 话术数据 → build_data.py 生成 data.json → Contents API → GitHub Pages + CloudStudio
**重要**: 默认只刷新 Sheet1！Sheet5/Sheet6 不频繁变动，不刷新。除非用户明确要求。

## 部署平台
- GitHub Pages（主站）
- CloudStudio（备用）：https://f8f4c765d4aa4b02bbf6cc532165c3d6.app.codebuddy.work

## 长期任务
### SOP流程的建设
- 文件路径: `2026-06-18-21-15-08/`
- 状态: 进行中
- 说明: 涉及私域运营SOP话术管理系统的流程建设，包括话术匹配逻辑、课程日期配置、部署流程优化等
- 约定: 不使用自动化部署，手动触发「刷新数据并部署」

## 关键约定
- 股票/金融类：涨红跌绿（中国习惯），货币默认 ¥
- 中文回答
- 部署需手动触发，不使用自动化
