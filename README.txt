Codex GPT-5.3 预设小插件（可拷贝到其他电脑使用）

功能：
1) 自动修改 ~/.codex/config.toml
2) 设置：
   - model = "gpt-5.3-codex"
   - model_reasoning_effort = "xhigh"
   - model_verbosity = "high"
3) 自动备份原文件（config.toml.bak_时间戳）

使用方式（Windows）：
1. 双击：一键设置GPT53.bat
2. 成功后重启 VS Code / Codex

可选（命令行自定义）：
powershell -ExecutionPolicy Bypass -File .\install_codex_gpt53.ps1 -Model "gpt-5.3-codex" -Reasoning "xhigh" -Verbosity "high"

说明：
- 脚本会优先修改当前用户目录下的 ~/.codex/config.toml
- 如果文件不存在，会自动创建
