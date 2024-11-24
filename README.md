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
- yay *aur helper*
- fish *shell*
- hyprland *hyprland*
- hyprcursor *cursor theme*
- hypridle *idle daemon*
- hyprlock *lock screen*
- hyprpaper *background wallpaper daemon*
- waybar *status bar*
- rofi *launcher*
- mako *notification daemon*
- kitty *terminal*
- nautilus *file manager*
- networkmanager *network manager*
- network-manager-applet *network manager applet*
- blueman *bluetooth manager*
- cliphist *clipboard manager*
- ttf-jetbrains-mono-nerd *nerd font*
- stow *directory management*
- tmux *terminal multiplexer*
- neovim *text editor*
- kakoune *text editor*
- yazi *terminal file manager*
- code *microsoft code editor*
- cursor *cursor code editor*

And these using `yay`:
- hyprpolkitagent-git *polkit agent*

These configurations will be removed:
- mako
- fish
- hypr
- kak
- kitty
- nvim
- tmux
- waybar

## Credits
- nvim config based on walthrough by ThePrimeagen (https://www.youtube.com/watch?v=w7i4amO_zaE) *needs update*