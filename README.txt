Codex GPT-5.3 预设小插件（独立仓库）

功能：
1) 自动修改 ~/.codex/config.toml
2) 设置：
   - model = "gpt-5.3-codex"
   - model_reasoning_effort = "xhigh"
   - model_verbosity = "high"
3) 自动备份原文件（config.toml.bak.时间戳）

使用方式（Windows）：
1. 双击：一键设置GPT53.bat
2. 成功后重启 VS Code / Codex

说明：
- 脚本优先修改当前用户目录下的 ~/.codex/config.toml
- 如果文件不存在，会自动创建
- 本仓库不包含交易数据
