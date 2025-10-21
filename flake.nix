{
  description = "krisnix flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, disko, nixpkgs, home-manager, }:
    let
    system = "x86_64-linux";
  nixlib = nixpkgs.lib;
  hmlib = home-manager.lib;
  pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    nixosConfigurations = {
      iota = nixlib.nixosSystem {
        inherit system;
        modules = [ 
          ./systems/iota/configuration.nix
          disko.nixosModules.disko 
        ];
      };
    };

    homeConfigurations = {
      "ikrsx" = hmlib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ 
          ./users/ikrsx/home.nix  
        ];
      };
    };
  };
}
