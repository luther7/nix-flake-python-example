{
  description = "My Python application";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    mach-nix = {
      url = "github:DavHau/mach-nix/3.3.0";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pypi-deps-db.follows = "pypi-deps-db";
    };
    pypi-deps-db = {
      url = "github:DavHau/mach-nix/3.3.0";
    };
  };
  outputs = { self, nixpkgs, flake-utils, mach-nix, pypi-deps-db }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        python = "python39";
        inherit (nixpkgs.lib) concatStringsSep;
        pkgs = import nixpkgs { inherit system; };
        mach = import mach-nix {
          inherit pkgs python;
        };
        requirements = builtins.readFile ./requirements.txt;
        devRequirements = concatStringsSep "\n" [
          (builtins.readFile ./requirements.txt)
          (builtins.readFile ./requirements-dev.txt)
        ];
        devPython = mach.mkPython { requirements = devRequirements; };
      in
      rec {
        packages.prod = mach.buildPythonPackage {
          src = ./.;
          requirements = requirements;
        };
        defaultPackage = packages.prod;
        devShell = pkgs.mkShell {
          PYTHONPATH = ".";
          nativeBuildInputs = [
            devPython
            pkgs.fd
          ];
          shellHook = ''
            set -oue pipefail
            PATH=bin:$PATH
          '';
        };
      });
}
