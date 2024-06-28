final: prev: {
  xone = prev.xone.overrideAttrs (oldAttrs: {
    nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [final.gcc];

    makeFlags =
      oldAttrs.makeFlags
      ++ [
        "CC=${final.gcc}/bin/gcc"
      ];
  });
}
