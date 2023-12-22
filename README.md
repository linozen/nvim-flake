# Lino's Neovim Configuration

This repository contains my personal Neovim configuration based on NixVim. It
is designed to be portable, immutable, and self-contained.

## Configuring

To start configuring, simply add or modify the Nix files in the `./config`
directory. If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file.

## Testing your new configuration

To test your configuration, simply run the following command:

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
    inputs.nixvim.packages.${system}.default
  ];
}
```

### For Nix profile users

If you are using Nix profiles, you can install the flake to your user profile
with the following command:

```
nix profile install github:linozen/nvim-flake
```
