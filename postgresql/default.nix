{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.postgresql
  ];
}
