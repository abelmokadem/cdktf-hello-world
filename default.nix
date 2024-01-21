with import <nixpkgs> {
    config.allowUnfree = true;
};
with pkgs.python311Packages;

stdenv.mkDerivation {
    name = "pythoncdktf";

    buildInputs = [
        python311
        python311Packages.virtualenv
        python311Packages.pip
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
