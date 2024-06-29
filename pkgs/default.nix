{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (callPackage ./sddm-bluish {}).sddm-bluish
    (callPackage ./sddm-sugarcandy {}).sddm-sugarcandy
    (callPackage ./xone {}).xone
  ];

  nixpkgs.overlays = [
    #(import ./overlays/xone.nix)
  ];
}
