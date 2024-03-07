{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.cargo
    pkgs.stdenv.cc
    pkgs.pkg-config
    pkgs.openssl.dev
  ];
}
