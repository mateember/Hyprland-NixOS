{config, ...}: {
  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      sessionPackages = [hyprland.packages.${pkgs.system}.hyprland];
      sddm.enable = true;
      defaultSession = "hyprland";
      sddm.theme = "sddm-theme-bluish";
      sddm.wayland.enable = true;

      autoLogin = {
        enable = false;
        user = "mate";
      };
    };
  };
}
