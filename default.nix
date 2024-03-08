{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.nodejs
    pkgs.yarn-berry
    pkgs.python3
  ];
}
