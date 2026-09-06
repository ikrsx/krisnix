{
  description = "Flake configuration for Krisnix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs: {
    nixosConfigurations.nexo = inputs.nixpkgs.lib.nixosSystem {
      modules = [
        ./nexo/configuration.nix
      ];
    };
  };
}
