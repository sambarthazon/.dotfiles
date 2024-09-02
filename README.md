# Dotfiles

These are my personal dotfiles.
This is mainly based on the configuration of [Josean Martinez](https://www.youtube.com/channel/UC_NZ6qLS9oJgsMKQhqAkg-w)

This configuration has been made on MacOS with HomeBrew as package manager and for WezTerm terminal (not mandatory).

# 1. Configuration

Before setting up the environment, make sure that you have the required things on your machine.
You need to install :
* homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
> You need to add to path homebrew :
> `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile` & `source ~/.zprofile`
* wezterm `brew install --cask wezterm` (not mandatory)
* neovim `brew install neovim`
* git `brew install git`
* zsh relative plugin `brew install zsh-autosuggestions` & `brew install zsh-synthax-highlighting`
* eza `brew install eza` (better ls)
* zoxide `brew install zoxide` (better cd)
* tmux `brew install tmux`
* font `brew install font-meslo-lg-nerd-font` (recommended)
* stow `brew install stow`

# 2. Setup

Be careful to delete the `.zshrc` before symlink the files.
This commands required to be in the `.dotfiles` repository.

```bash
mkdir -p ~/.config/nvim && stow -t ~/.config/nvim nvim
stow wezterm
stow zsh
stow tmux
```
