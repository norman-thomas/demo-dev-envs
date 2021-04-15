from setuptools import setup

setup(
    name="nix_app",
    version="0.0.1",
    py_modules=["nix_app"],
    entry_points={"console_scripts": ["nix_app=nix_app:run"]},
)
