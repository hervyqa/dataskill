# shell.nix
{ pkgs ? import <nixpkgs> {} }:
let
  my-python-packages = p: with p; [
    mkdocs
    mkdocs-autorefs
    mkdocs-jupyter
    mkdocs-material
    mkdocs-material-extensions
    mkdocs-minify
    mkdocstrings
    mkdocstrings-python
  ];
  my-python = pkgs.python3.withPackages my-python-packages;
in my-python.env
