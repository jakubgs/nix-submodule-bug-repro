{
  description = "nix-submodule-bug-repro";

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-24.11;

  outputs = { self, nixpkgs }: let
        pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
      packages."x86_64-linux".default = pkgs.stdenv.mkDerivation {
        name = "nix-submodule-bug-repro";
        builder = ./builder.sh;
      };
    };
}
