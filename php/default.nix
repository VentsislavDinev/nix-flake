{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.docker
  ];
}
