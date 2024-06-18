{
  config,
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.packages =
    (with pkgs; [
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
      pyenv
      speedtest-cli
      #    vscode
    ])
    ++ (with pkgs-unstable; [
      vscode
      neovim
      fastfetch
      swww
      waybar
      distrobox
      cliphist
    ]);

  services.kdeconnect.enable = true;
}
