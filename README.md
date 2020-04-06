# log-wakatime-fish

WakaTime terminal logger for Fish shell.

Based on [`fish-wakatime.sh`](https://wakatime.com/terminal#install-fish). Modified to log the project name taken from `git config --local remote.origin.url` if the current folder is in a git repo.

## Installation

1. Make sure your [API key](https://wakatime.com/settings/api-key) is in your [`~/.wakatime.cfg`](https://github.com/wakatime/wakatime#configuring) file.
1. Copy `log-wakatime.fish` to `~/.config/fish/functions/`.
1. Add `log-wakatime` to `~/.config/fish/functions/fish_prompt.fish`. If the file doesn't exist, create it.
