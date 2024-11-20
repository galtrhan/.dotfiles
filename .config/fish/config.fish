source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

function sail
    if test -f sail
        sh sail $argv
    else
        sh vendor/bin/sail $argv
    end
end

function enpw
    bash cat ~/.enpass | xsel --clipboard
end

set -gx BROWSER thorium-browser
set -gx TERM kitty
set -gx QT_QPA_PLATFORMTHEME qt5ct
set -gx PATH ~/.config/herd-lite/bin $PATH
set -gx PHP_INI_SCAN_DIR ~/.config/herd-lite/bin $PHP_INI_SCAN_DIR
