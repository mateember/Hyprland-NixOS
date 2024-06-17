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

  imports = [
    # Include the results of the hardware scan.
    ./pkgs
  ];

  programs = {
    zsh.enable = true;
    steam.enable = true;
    xfconf.enable = true;

  };

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
      appimage-
      alsa-utils

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
      curl
      libxml2
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
