{
  description = "krisnix flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
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
        modules = [ ./systems/iota/configuration.nix ];
      };
    };

   homeConfigurations = {
     "ikrsx" = hmlib.homeManagerConfiguration {
       inherit pkgs;
       modules = [ ./users/ikrsx/home.nix ];
     };
   };
  };
}
