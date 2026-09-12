{
  description = "Flake configuration for Krisnix";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: {
    nixosConfigurations.nexo = inputs.nixpkgs.lib.nixosSystem {
      modules = [
        ./nexo/configuration.nix
        inputs.disko.nixosModules.disko
      ];
    };
  };
}
