{
  description = "Minimal GDExtension C++ with Nix project template";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=25.05";
    flake-utils.url = "github:numtide/flake-utils";
    gdextension-cpp-nix-tools.url = "github:hamham240/gdextension-cpp-nix-tools";
  };

  outputs = { self, nixpkgs, flake-utils, gdextension-cpp-nix-tools }: 
    flake-utils.lib.eachDefaultSystem (system: 
      let
        pkgs = import nixpkgs { inherit system; };
      in 
      rec {
        devShells.default = gdextension-cpp-nix-tools.devShells.${system}.default;
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
