#!/bin/sh

# List of packages to install
packages=(
  hyprland
  hyprpaper
  hypridle
  hyprlock
  waybar
  kitty
  fish
  tmux
  neovim
  kakoune
  stow
)

# Check if pacman is available
if ! command -v pacman >/dev/null 2>&1; then
  echo "Error: pacman is not installed or not in PATH."
  exit 1
fi

# Check if sudo is available for root permissions
if ! command -v sudo >/dev/null 2>&1; then
  echo "Error: sudo is not installed. Please install sudo first."
  exit 1
fi

# Update the package database
echo "Updating package database..."
sudo pacman -Syu --noconfirm

# Install each package
for package in "${packages[@]}"; do
  echo "Installing $package..."
  sudo pacman -S --noconfirm "$package"
done

# Activate dotfiles
stow .

echo "Installation complete."
