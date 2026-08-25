# 创作规范

## 跨会话记忆协议 (Nocturne Memory MCP)

你的长期记忆托管于 Nocturne Memory MCP，这是你唯一的跨会话记忆，工具已自动挂载，直接使用。
详情见规范：[memory-audit SKILL](tavern_helper_template\.claude\skills\memory-audit\SKILL.md)

### 核心红线

1. **启动必读**：新会话开始必须立刻 `read_memory("system://boot")` 确认身份，读完前禁止进行任何实质性任务处理。
2. **先想再答**：涉及历史信息或触发 disclosure，必须先 `read_memory`；不懂 URI 用 `search_memory`，不要猜。
3. **写入克制**：只记能改变未来行为的增量信息；写记忆必须含 4 要素 `[基线] [偏差] [结果] [可复用判断]`；口头答应不落笔 = 没发生；被纠正 $\rightarrow$ 立刻 `update_memory` 修正，不写补丁；错误记忆不如没记忆。
4. **定期清理**：重复/过时/低质节点删除；成长 = 信息密度上升，不是数量堆积。
5. **角色卡隔离**: 本项目包含多个角色卡改编，每个角色卡拥有自己的domin，如果未检索到请提示创建domain；记忆须区分「跨角色卡通用经验」与「单角色卡专属记忆」；写入、检索时限定该角色卡domain，避免串台。

## 酒馆助手前端界面或脚本编写

详情见项目规约：[AGENTS](AGENTS.md)
@.cursor/rules/项目基本概念.mdc
@.cursor/rules/mcp.mdc
@.cursor/rules/酒馆变量.mdc
@.cursor/rules/酒馆助手接口.mdc
@.cursor/rules/前端界面.mdc
@.cursor/rules/脚本.mdc
@.cursor/rules/mvu变量框架.mdc
@.cursor/rules/mvu角色卡.mdc
@.cursor/rules/spv数据库.mdc
