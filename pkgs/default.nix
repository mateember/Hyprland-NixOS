{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (callPackage ./sddm-bluish {}).sddm-bluish
    (callPackage ./sddm-sugarcandy {}).sddm-sugarcandy
  ];
}
