{pkgs}:
pkgs.mkShell {
  packages = [
    pkgs.cargo
    pkgs.rustc
    pkgs.stdenv.cc
    pkgs.pkg-config
    pkgs.openssl.dev
  ];
}
