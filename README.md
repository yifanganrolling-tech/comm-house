# /comm-house · 科学传播 Communication House 生成器

将硬核科学依据转化为有张力的品牌传播内容。输入三要素，输出结构化的 Communication House——一份包含核心传播点、差异化策略、科学地基和传播金句的完整文档。

---

## 安装

### Claude Code

需要 [Claude Code](https://claude.ai/code)。

```bash
git clone https://github.com/yifanganrolling-tech/comm-house.git ~/.claude/skills/comm-house
```

### OpenClaw

需要 [OpenClaw](https://github.com/openclaw/openclaw)。

```bash
# 通过命令安装（推荐）
openclaw skills install comm-house

# 或手动克隆到 skills 目录
git clone https://github.com/yifanganrolling-tech/comm-house.git ~/.openclaw/skills/comm-house
```

---

## 使用

在任意项目中输入：

```
/comm-house
```

skill 会通过向导式问答收集三个输入，然后生成完整 Communication House。

---

## 向导流程

### 第一步：贴入科学依据

将你想传播的原始科学材料粘贴进来——实验数据、成分机理原文、临床结论、专利描述均可。无需整理，越原始越好。

### 第二步：选择目标受众（最多3个）

从抖音八大人群中选择，支持多选：

| 人群 | 特征 |
|------|------|
| 新锐白领 | 22-35岁，一二线城市，成分发烧友，追求高效 |
| 资深中产 | 35-50岁，稳定收入，品质优先，有较强鉴别力 |
| 精致妈妈 | 25-40岁，安全焦虑，信赖 KOL，时间碎片化 |
| 小镇青年 | 18-35岁，三四线城市，跟风型，价格敏感 |
| Z世代 | 18-27岁，成分党趋势，好奇尝鲜，信息碎片化 |
| 都市银发 | 55岁+，依赖权威背书，保守型消费 |
| 都市蓝领 | 25-45岁，实用主义，极度价格敏感 |
| 小镇中老年 | 40-65岁，信国产老品牌，健康需求强 |

### 第三步：选择传播策略

先选大类（7选1），再选子方法（3选1）：

| 大类 | 核心问题 | 子方法 |
|------|---------|--------|
| 关联锚定 | 怎么用已知解释未知？ | 极致类比 / 概念迁移 / 逆向定义 |
| 视觉解构 | 怎么让看不见的东西可见？ | 视觉拆解 / 尺度对比 / 流程图谱化 |
| 认知冲突 | 什么违反了他们的直觉？ | 反直觉揭秘 / 悖论设置 / 危机驱动 |
| 叙事情感 | 谁是这个故事的主角？ | 英雄之旅 / 历史考古 / 情绪共振 |
| 具身认知 | 用户如何用身体感受到它？ | 触觉反馈 / 交互式实验 / 场景化带入 |
| 社会化验证 | 谁已经相信了？ | 权威降维 / 同类口碑 / 仪式感创造 |
| 效用驱动 | 用数字证明值得？ | 获得感量化 / 成本替代 / 场景捷径 |

---

## 输出格式

```
# Communication House · [成分/产品名]

## 🏠 屋顶 · Mission Statement    ← 核心传播点，≤30字
## 🏛️ 支柱 · Key Messaging Pillars ← 每个受众一个支柱，含传播张力+数据支撑+生活化暗喻
## 🧱 地基 · Payload               ← 直接引用的科学数据，至少3条
## ✨ 门窗 · Gold Sentences         ← 传播金句，每条≤20字
## 📋 策略师备注                    ← 暗喻来源、降维检验、注意事项
```

---

## 快速示例

```
/comm-house --example
```

使用预设的华熙生物透明质酸数据 + 关联锚定类·极致类比 + 新晋宝妈，直接运行全流程。

---

## 品牌背景支持

如果你在传播**润百颜（BIOHYALUX）/ 华熙生物 / ECM 相关内容**，skill 会自动加载 `brand-context/biohyalux.md` 作为冲突检查底线，确保输出不与品牌已有定位和公开数据矛盾。

如需为其他品牌添加背景文件，在 `brand-context/` 目录下创建对应的 `.md` 文件，并在 `SKILL.md.tmpl` 中添加触发关键词即可。

---

## 文件结构

```
comm-house/
├── SKILL.md              # 技能主文件
├── brand-context/
│   └── biohyalux.md      # 润百颜/华熙生物品牌背景
└── README.md
```
