{ pkgs ? import <nixpkgs> {} }:

let
  customPython = pkgs.python39.buildEnv.override {
    extraLibs = with pkgs.python39Packages;
    [ flask
      requests
      ipython
    ];
  };
in

pkgs.mkShell {
  buildInputs = [ customPython ];
}
