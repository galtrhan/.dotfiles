# ~/.dotfiles                                                        

**Requires:** `git`

Before install you should install timeshift and make snapshot:
```
sudo pacman -S timeshift
sudo timeshift --create --comments "Before installing .dotfiles"
```

To install:

```
git clone --recurse-submodules https://github.com/galtrhan/.dotfiles ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```

This install script will install the following packages using `pacman`:
- yay
- fish
- hyprland
- hyprcursor
- hypridle
- hyprlock
- hyprpaper
- waybar
- wofi
- dunst
- kitty
- nautilus
- networkmanager
- network-manager-applet
- blueman
- cliphist
- ttf-jetbrains-mono-nerd
- stow
- tmux
- neovim
- kakoune
- yazi
- code

And these using `yay`:
- hyprpolkitagent-git

These configurations will be removed:
- dunst
- fish
- hypr
- kak
- kitty
- nvim
- tmux
- waybar
- wlogout

## Credits
- nvim config based on walthrough by ThePrimeagen (https://www.youtube.com/watch?v=w7i4amO_zaE) *needs update*