{pkgs}:
pkgs.mkShell {
  name = "dotnet-env";
  packages = [
    (with pkgs.dotnetCorePackages;
      combinePackages [
        sdk_6_0
        sdk_7_0
      ])
  ];
}
