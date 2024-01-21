let
  pkgs = import <nixpkgs> {
    config.allowUnfree = true;
  };

  python-env = pkgs.python311.withPackages (pp: with pp; [ pip wheel cython ]);
in
pkgs.mkShell {

  buildInputs = [
    python-env
  ];

  packages = [
    pkgs."nodejs_20"
    pkgs.nodePackages."cdktf-cli"
    pkgs.terraform
  ];

  shellHook = ''
    [[ -d .venv ]] || python -m venv .venv
    source .venv/bin/activate
  '';
}