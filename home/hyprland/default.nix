{ pkgs, config, hyprland, pkgs-unstable, ...}:
{
  imports =
  [

    ./hyprlandconf.nix

  ];



wayland.windowManager.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.system}.hyprland;
	xwayland.enable = true;
  	};

}
