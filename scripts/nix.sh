#!/bin/bash

# Install nix
curl https://nixos.org/nix/install | sh

# Ensure that all necessary environment variables are set
. $HOME/.nix-profile/etc/profile.d/nix.sh

# Create a simple shell that includes gcc version 5
nix run -f channel:nixos-17.09 gcc5
gcc --version
