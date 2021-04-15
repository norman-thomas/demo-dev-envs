{ pkgs ? import <nixpkgs> {} }:
with pkgs.python39Packages;

buildPythonApplication {
  pname = "app";
  src = ./.;
  version = "0.0.1";
  propagatedBuildInputs = [ flask requests ];
}
