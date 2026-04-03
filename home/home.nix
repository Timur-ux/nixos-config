{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home = {
    username = "raison";
    homeDirectory = "/home/raison/";
    stateVersion = "25.11";
    packages = with pkgs; [
      obs-studio
      unityhub
      # terminal
      # kitty
      alacritty

      tree-sitter
      fd

      # tex
      texlivePackages.latexmk

      # formatters
      alejandra # nix formatter

      # lsp
      stylua
      nil
      lua-language-server
      texlab
      clang-tools
      omnisharp-roslyn

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

      # text editor
      neovim
      python313Packages.pynvim

      # cli
      zoxide
      lsd
      bat
      btop
      fzf
      superfile
      ripgrep

			# ui(dms features)
      power-profiles-daemon
      fuzzel # app launcher
      cava
      khal
      fprintd

      cups-pk-helper # printes

      # customs
      sl 
      cowsay
      fortune
    ];

    shell.enableFishIntegration = true;
    sessionPath = [
      "$HOME/.local/bin"
    ];
  };

  imports = [
    ./modules
  ];
}
