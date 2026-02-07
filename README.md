# Codex GPT-5.3 Preset Plugin

A standalone Windows plugin that updates `~/.codex/config.toml` for a GPT-5.3 Codex preset.

## What this plugin changes

- `model = "gpt-5.3-codex"`
- `model_reasoning_effort = "xhigh"`
- `model_verbosity = "high"`

## Files

- `install_codex_gpt53.ps1`: main installer script
- `一键设置GPT53.bat`: double-click launcher
- `README.txt`: quick local usage note (Chinese)

## Usage (Windows)

1. Download this repository or the release zip.
2. Double-click `一键设置GPT53.bat`.
3. Restart VS Code / Codex.

## Safety & rollback

- The script creates a backup before editing:
  - `~/.codex/config.toml.bak.YYYYMMDD_HHMMSS`
- If config does not exist, it creates one.

## Release

- Latest release: `v1.0.0`
- Asset: `codex_gpt53_preset_plugin.zip`
- Release page: `https://github.com/frankhuang1111/codex-gpt53-preset-plugin/releases/tag/v1.0.0`

## License

For personal/internal use. Add your preferred license if needed.
