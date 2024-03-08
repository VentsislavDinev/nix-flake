{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.ruby
  ];
}
