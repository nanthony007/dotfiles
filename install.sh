#! bin/bash

echo "Installing build tool dependencies..."
apt install build-essential procps curl file git

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install gh ripgrep starship helix zellij exa

