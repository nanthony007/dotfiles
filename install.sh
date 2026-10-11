#! /usr/bin/env bash

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# rustup for rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# brew CLI apps
brew install \
  uv \
  wget \
  go \
  fish \
  eza \
  btop \
  tokei \
  glow \
  dust \
  bat \
  htop \
  jq \
  neovim \
  lazygit \
  gh \
  just \
  fzf \
  ripgrep \
  hyperfine \
  tmux

brew install --cask wezterm
brew install --cask visual-studio-code
brew install --cask font-fira-code

# set fish as default shell
chsh -s "$(which fish)"

# move config files
mkdir -p ~/.config
cp -r nvim ~/.config/nvim
cp -r fish ~/.config/fish
cp .tmux.conf ~/.tmux.conf
cp .wezterm.lua ~/.wezterm.lua
