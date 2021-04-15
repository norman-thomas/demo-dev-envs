{ pkgs ? import <nixpkgs> {} }:

let
  customPython = pkgs.python37.buildEnv.override {
    extraLibs = with pkgs.python37Packages;
    [ flask
      requests
      ipython
    ];
  };
in

pkgs.mkShell {
  buildInputs = [ customPython ];
}
