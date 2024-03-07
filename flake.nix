{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ {
    nixpkgs,
    flake-parts,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      perSystem = {pkgs, ...}: {
        devShells.node = import ./node {pkgs = pkgs;};
        devShells.rust = import ./rust/default.nix {pkgs = pkgs;};
        devShells.python = import ./python/default.nix {pkgs = pkgs;};
      };
    };
}
