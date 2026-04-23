{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home = {
    username = "raison";
    homeDirectory = "/home/raison/";
    stateVersion = "25.11";
    packages = (import ./packages pkgs);

    shell.enableFishIntegration = true;
    sessionPath = [
      "$HOME/.local/bin"
    ];
  };

  imports = [
    ./modules
    inputs.dms.homeModules.dank-material-shell
    inputs.dms.homeModules.niri
    inputs.niri.homeModules.niri
  ];
}
