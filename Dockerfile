FROM nixos/nix:2.19.3

RUN nix-channel --update

COPY default.nix .

RUN nix-build

