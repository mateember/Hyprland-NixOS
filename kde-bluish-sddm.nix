{ stdenv, fetchFromGitHub }:
{
  sddm-theme-bluish= stdenv.mkDerivation rec {
    pname = "sddm-theme-bluish";
    version = "53f81e3";
    dontBuild = true;
    installPhase = ''
      mkdir -p $out/share/sddm/themes
      cp -aR $src $out/share/sddm/themes/sddm-theme-bluish
    '';
    src = fetchFromGitHub
    {
    owner = "mateember";
    repo = "Bluish-Plasma-Themes";
    rev = "95cf8297b1f88725700ee48c6a2e575f426b6ec3";
    hash = "sha256-o2eM5bDDyI6C+1W9sBiglq7o/jMOND2w5A2SOtYPPpA=";
    };
  };
}
