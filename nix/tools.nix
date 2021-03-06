{ ansible-lint
, hlint
, shellcheck
, ormolu
, hindent
, cabal-fmt
, elmPackages
, niv
, gitAndTools
, runCommand
, writeText
, writeScript
, git
, nixpkgs-fmt
, nixfmt
, callPackage
, pythonPackages
}:

{
  inherit ansible-lint hlint shellcheck ormolu hindent cabal-fmt nixpkgs-fmt nixfmt;
  inherit (elmPackages) elm-format;
  inherit (pythonPackages) yamllint;
  terraform-fmt = callPackage ./terraform-fmt {};
}
