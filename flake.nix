{
  description = "BuryOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    bury-quickshell = {
      url = "github:bury-os/bury-quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    bury-hyprland = {
      url = "github:bury-os/bury-hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    bury-swaylock = {
      url = "github:bury-os/bury-swaylock";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    bury-rofi = {
      url = "github:bury-os/bury-rofi";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    bury-quickshell,
    bury-hyprland,
    bury-swaylock,
    bury-rofi,
    ... }: {

    nixosModules.default = { pkgs, ... }: {
      imports = [
        bury-quickshell.nixosModules.default
        bury-hyprland.nixosModules.default
        bury-swaylock.nixosModules.default
        bury-rofi.nixosModules.default
      ];
    };

    # Home-manager support (HOME configs)
    homeManagerModules.default = { pkgs, ... }: {
      imports = [
        bury-quickshell.homeManagerModules.default
        bury-hyprland.homeManagerModules.default
        bury-swaylock.homeManagerModules.default
        bury-rofi.homeManagerModules.default
      ];
    };
  };
}
