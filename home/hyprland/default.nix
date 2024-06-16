{ pkgs, config, ...}:
{
  imports =
  [

    ./hyprlandconf.nix

  ];



wayland.windowManager.hyprland.enable = true; 

}
