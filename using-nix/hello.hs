#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghc"
#! nix-shell -i runghc

{-# LANGUAGE OverloadedStrings #-}

main :: IO ()
main = putStrLn $ "Hello, " <> show 2021
