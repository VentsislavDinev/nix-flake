{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.ghc
    pkgs.python3
  ];
}
