{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.docker
    pkgs.ghc
    pkgs.python3
  ];
}
