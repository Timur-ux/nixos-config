{ pkgs, ... }:
{
  home = {
    username = "raison";
    homeDirectory = "/home/raison/";
    stateVersion = "25.11";
    packages = with pkgs; [
      # terminal
      kitty

      tree-sitter
      fd

      # tex
      texlivePackages.latexmk

      # formatters
      alejandra # nix formatter

      # lsp
      stylua
      nil # nix ls
      lua-language-server
      texlab
      clang-tools

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
      lsd
      bat
      btop
      fzf
      superfile
      ripgrep

      # text editor
      neovim
      python313Packages.pynvim

      # cli
      zoxide

      cowsay
      fortune
      power-profiles-daemon
      # dms
      fuzzel # app launcher
      matugen # themes
      cava
      khal
      fprintd

      cups-pk-helper # printes
    ];
    shell.enableBashIntegration = true;
    sessionPath = [
      "$HOME/.local/bin"
    ];
  };

  xdg.enable = true;

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      zoxide init fish | source
    '';
    plugins = [
      {
        name = "tide";
        src = pkgs.fishPlugins.tide.src;
      }
    ];
    shellAliases = {
      nxs = "sudo nixos-rebuild switch --flake ~/nix/";
      hms = "home-manager switch --flake ~/nix/";

      vi = "nvim";
      v = "nvim";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      ls = "lsd";
      ll = "lsd -l";
      la = "lsd -a";
      lla = "lsd -la";

      spf = "superfile";

      cat = "bat";

      top = "btop";
      htop = "btop";
      cd = "z";
    };
  };
}
