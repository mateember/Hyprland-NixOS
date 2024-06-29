{
  config,
  pkgs,
  pkgs-unstable,
  hyprland,
  ...
}: {
  home.packages =
    (with pkgs; [
      dunst

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
      # hyprcursor
      hyprshade
      hyprshot
      hyprlock
      hypridle
      hyprpicker
      jetbrains-toolbox
    ]);

  services.kdeconnect.enable = true;
}
