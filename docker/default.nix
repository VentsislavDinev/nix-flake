{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.php
  ];
}
