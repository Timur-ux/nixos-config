{ pkgs, ... }:
{
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
      gd = "git diff";
      gb = "git branch";

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
