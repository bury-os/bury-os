{
  description = "BuryOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    ... }: {

    nixosModules.default = { pkgs, ... }: {
    };

    # Home-manager support (HOME configs)
    homeManagerModules.default = { pkgs, ... }: {
    };
  };
}
