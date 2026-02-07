# Codex GPT-5.3 预设插件（独立项目）

这是一个独立的配置插件仓库，仅用于一键设置 Codex 的模型预设。
本仓库不包含交易提取项目代码，也不包含交易数据文件。

## 功能

- 设置 `model = "gpt-5.3-codex"`
- 设置 `model_reasoning_effort = "xhigh"`
- 设置 `model_verbosity = "high"`
- 自动备份原配置文件（可回滚）

## 使用步骤

1. 下载仓库或 Release 压缩包
2. 双击 `一键设置GPT53.bat`
3. 重启 VS Code / Codex

## 回滚

如需恢复，使用同目录下生成的备份文件：
- `~/.codex/config.toml.bak.YYYYMMDD_HHMMSS`

