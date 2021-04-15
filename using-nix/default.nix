{ pkgs ? import <nixpkgs> {} }:

pkgs.python39Packages.buildPythonApplication {
  pname = "nix_app";
  src = ./.;
  version = "0.0.1";
  propagatedBuildInputs = [ pkgs.python39Packages.flask ];
}
