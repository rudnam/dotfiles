#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles..."

echo "Creating directories..."
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.ssh"


echo "Creating symlinks..."
ln -sf "$DOTFILES_DIR/home/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/home/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES_DIR/home/.gitconfig" "$HOME/.gitconfig"

echo "Done!"
echo "Restart your shell or run:"
echo "source ~/.bash_profile"