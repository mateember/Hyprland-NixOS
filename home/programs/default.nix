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
      wl-clipboard
      cliphist
    ]);

  services.kdeconnect.enable = true;
}
