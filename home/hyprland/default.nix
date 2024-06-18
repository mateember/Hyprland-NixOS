{
  pkgs,
  config,
  hyprland,
  pkgs-unstable,
  ...
}: {
  

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    package = hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };


  xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;
  xdg.configFile."hypr/conf/environment.conf".source = ./conf/environment.conf;
  xdg.configFile."hypr/conf/autostart.conf".source = ./conf/autostart.conf;
  xdg.configFile."hypr/conf/keyboard.conf".source = ./conf/keyboard.conf;
  xdg.configFile."hypr/conf/looks.conf".source = ./conf/looks.conf;
  xdg.configFile."hypr/conf/windowrules.conf".source = ./conf/windowrules.conf;
  xdg.configFile."hypr/hyprestart.sh.conf".source = ./hyprestart.conf;
  xdg.configFile."hypr/hypridle.conf".source = ./hypridle.conf;
  xdg.configFile."hypr/hyprlock.conf".source = ./hyprlock.conf;
  xdg.configFile."hypr/hyprpaper.conf".source = ./hyprpaper.conf;
  xdg.configFile."hypr/hyprshade.toml".source = ./hyprshade.toml;
  xdg.configFile."hypr/idle.sh".source = ./idle.sh;
  xdg.configFile."hypr/mocha.conf".source = ./mocha.conf;



}

  


