{
  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, chaotic, hyprland, ... }:
    let

      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};

      #pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
      pkgs-unstable = import nixpkgs-unstable {
        config.allowUnfree = true;
        localSystem = { inherit system; };

      };






    in
    {



      nixosConfigurations = {
        matenix = lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
            chaotic.nixosModules.default

            #chaotic.homeManagerModules.default
            home-manager.nixosModules.home-manager
              {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;

                # TODO replace ryan with your own username
                home-manager.users.mate = import ./home;
                home-manager.backupFileExtension = "nixbk";
                home-manager.extraSpecialArgs = { inherit pkgs; inherit pkgs-unstable; };



              }

          ];


        specialArgs = {
          inherit pkgs-unstable;
          inherit hyprland;
        };

        };
      };


    };


}
