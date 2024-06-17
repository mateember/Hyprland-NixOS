{ config, pkgs, pkgs-unstable, ... }:
{

    home.packages =
    (with pkgs;[

    fastfetch
    swww
    waybar
    dunst
    hyprpaper
    hyprshade
    hyprshot
    hyprlock
    hypridle
    hyprpicker
    hyprcursor
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    git-credential-oauth
    ranger
    glxinfo
    #kdePackages.kdeconnect-kde
    blueman
    rofi-wayland
    wlogout
    trash-cli
    qt5ct
    qt6ct
    nwg-look
    neovim
    distrobox
    pyenv
    speedtest-cli	
#    vscode
])
++
(with pkgs-unstable;[
    vscode
]);

services.kdeconnect.enable = true;




}
