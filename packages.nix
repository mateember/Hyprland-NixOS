{
  config,
  lib,
  pkgs,
  pkgs-unstable,
  hyprland,
  ...
}: {

  #Chaotic AUR
  chaotic.mesa-git.enable = true;

/*  programs.hyprland = {
    enable = true;
    #systemd.enable = true;
    package = hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };
*/
  # System packages
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages =
    (with pkgs; [
      vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
      wget
      nano
      firefox
      tree
      starship
      zoxide
      (callPackage ./customPackages/sddm-bluish.nix {}).sddm-bluish
      (callPackage ./customPackages/sddm-sugarcandy.nix {}).sddm-sugarcandy
      #(callPackage ./customPackages/HyprlandDesktop/default.nix { }).hyprland-desktop
      kdePackages.qtstyleplugin-kvantum
      kdePackages.kdecoration
      fuse
      sshfs-fuse
      killall
      btop
      fzf
      podman-tui
      dive
      podman-compose
      kdePackages.extra-cmake-modules
      pavucontrol
      sddm-kcm

      #Development packages
      llvm
      clang
      git
      cmake
      gcc
      gnumake
      flex
      bison
      lld
      elfutils
      nix-prefetch-git
    ])
    ++ (with pkgs-unstable; [
      bat
      lact
      kdePackages.polkit-kde-agent-1
      kdePackages.kirigami
      polkit_gnome
      kitty
      alacritty
      github-desktop
    ]);
}
