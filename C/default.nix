{pkgs}:
pkgs.mkShell {
  packages = [
    cmake
    stdenv.cc
    openssl.dev
    zlib.dev
  ];
}
