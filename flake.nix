{
  outputs = {
    nixpkgs,
    flake-parts,
    ...
  } @ args:
    flake-parts.lib.mkFlake {inputs = args;} {
      systems = ["x86_64-linux"];
      perSystem = {pkgs, ...}: {
        devShells.rust = import ./rust/flake.nix;
        devShells.node  = import ./node/flake.nix;
        devShells.dotnet = import ./dotnet/flake.nix;
      };
    };
}