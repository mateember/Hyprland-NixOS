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


  hyprland.extraConfig = '' 
  
  
#monitor=HDMI-A-1,1920x1080@144,0x0,1,vrr,2,bitdepth,10
monitor=DP-3,1920x1080@75,0x0,1,vrr,2

source = ~/.config/hypr/conf/keyboard.conf
source = ~/.config/hypr/conf/windowrules.conf
source = ~/.config/hypr/conf/autostart.conf
source = ~/.config/hypr/conf/looks.conf
source = ~/.config/hypr/conf/environment.conf
# See https://wiki.hyprland.org/Configuring/Keywords/ for more


#workspace=1,monitor:HDMI-A-1,default:true
b






  
  
  '';





  xdg.configFile."hypr/conf/environment.conf".source = ./conf/environment.conf;
  xdg.configFile."hypr/conf/autostart.conf".source = ./conf/autostart.conf;
  xdg.configFile."hypr/conf/keyboard.conf".source = ./conf/keyboard.conf;
  xdg.configFile."hypr/conf/looks.conf".source = ./conf/looks.conf;
  xdg.configFile."hypr/conf/windowrules.conf".source = ./conf/windowrules.conf;
  xdg.configFile."hypr/hyprestart.sh".source = ./hyprestart.sh;
  xdg.configFile."hypr/hypridle.conf".source = ./hypridle.conf;
  xdg.configFile."hypr/hyprlock.conf".source = ./hyprlock.conf;
  xdg.configFile."hypr/hyprpaper.conf".source = ./hyprpaper.conf;
  xdg.configFile."hypr/hyprshade.toml".source = ./hyprshade.toml;
  xdg.configFile."hypr/idle.sh".source = ./idle.sh;
  xdg.configFile."hypr/mocha.conf".source = ./mocha.conf;



}

  


