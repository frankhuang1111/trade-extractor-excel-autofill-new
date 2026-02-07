# Codex GPT-5.3 Preset Plugin

Portable Windows plugin to configure Codex defaults in `~/.codex/config.toml`.

## What it sets

- `model = "gpt-5.3-codex"`
- `model_reasoning_effort = "xhigh"`
- `model_verbosity = "high"`

## Usage

1. Download this repo (or release zip).
2. Run `????GPT53.bat`.
3. Restart VS Code / Codex.

## Safety

- Automatically creates a backup file like `config.toml.bak.YYYYMMDD_HHMMSS`.
- If config does not exist, it creates one.
