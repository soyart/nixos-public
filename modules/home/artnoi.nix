{ pkgs, ... }:

let
  unix = pkgs.callPackage ../../packages/drvs/unix  {};

in {
    home.file.".config/helix" = {
      source = "${unix}/dotfiles/pkg/helix/.config/helix";
      recursive = true;
    };

    home.stateVersion = "24.05";
}