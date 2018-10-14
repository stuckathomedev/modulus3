# SPDX-License-Identifier: AGPL-3.0+

# Simple Nix shell derivation for a basic development environment using Node
# and yarn.
# (see https://nixos.org/nix/)

with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "modulus3";
    buildInputs = [
        nodejs-8_x yarn
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}
