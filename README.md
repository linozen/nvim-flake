# Lino's Neovim Configuration

This repository contains my personal Neovim configuration based on NixVim. It
is designed to be portable, immutable, and self-contained.

This template gives you a good starting point for configuring nixvim standalone.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

## Installation

### For NixOS users

If you are using NixOS and manage your system with
`/etc/nixos/configuration.nix`, you can include this flake in your system
configuration:

```nix
{
  inputs.nixvim.url = "github:linozen/nvim-flake";

  # ... rest of your configuration ...

  environment.systemPackages = with pkgs; [
    # ... other packages ...
    inputs.nixvim.defaultPackage.${system}
  ];
}
```

### For Nix profile users

If you are using Nix profiles, you can install the flake to your user profile
with the following command:

```
nix profile install github:linozen/nvim-flake
```

### Integrating into your own flake

To integrate this flake into your own flake, add it to your flake's inputs and
then use it in your outputs as needed:

```nix
{
  inputs = {
    # ... other inputs ...
    nixvim.url = "github:linozen/nvim-flake";
  };

  outputs = { self, nixpkgs, nixvim, ... } @ inputs: {
    # ... your outputs ...
  };
}
```
