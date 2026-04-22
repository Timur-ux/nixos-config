{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home = {
    username = "raison";
    homeDirectory = "/home/raison/";
    stateVersion = "25.11";
    packages = with pkgs; [
      asciiquarium
      transmission_4-qt
      obs-studio
      unityhub
      krita

      # terminal
      kitty
      alacritty

      tree-sitter
      fd

      # tex
      texlivePackages.latexmk

      # wayland
      wl-clipboard

      # C/C++
      gdb
      cmake
      gcc
      gnumake
      bear

      # viewers
      kdePackages.okular
      zathura

      # cli
      zoxide
      lsd
      bat
      btop
      fzf
      superfile
      ripgrep

      cups-pk-helper # printes

      # customs
      sl
      cowsay
      fortune
			python313Packages.jupytext
    ];

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
