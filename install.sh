#! /usr/bin/env bash

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# uv for python
curl -LsSf https://astral.sh/uv/install.sh | sh

# rustup for rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# brew CLI apps
brew install \
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

# set fish as default shell
chsh -s "$(which fish)"

# move config files
mkdir -p ~/.config
cp -r neovim ~/.config/nvim
cp -r fish ~/.config/fish
cp .tmux.conf ~/.tmux.conf
