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
        devShells.rust = import ./rust {pkgs = pkgs;};
        devShells.dotnet = import ./dotnet {pkgs = pkgs;};
        devShells.python = import ./python {pkgs = pkgs;};
        devShells.c = import ./c {pkgs = pkgs;};
        devShells.php = import ./php {pkgs = pkgs;};
        devShells.postgresql = import ./postgresql {pkgs = pkgs;};
        devShells.docker = import ./docker {pkgs = pkgs;};
      };
    };
}
