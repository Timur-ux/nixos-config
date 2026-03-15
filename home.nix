{ config, pkgs, ... } : {
	home = {
		username = "raison";
		homeDirectory = "/home/raison/";
		stateVersion = "25.11";
    packages = with pkgs; [
      tree
      neovim
      sunsetr
      python313Packages.pynvim
      alacritty
      cowsay
      fortune
      fuzzel
      skim
			power-profiles-daemon
			bash
    ];
	};

	
	programs.autojump.enable = true;
	programs.bash = {
		enable = true;
		enableVteIntegration = true;
		enableCompletion = true;
		shellAliases = {
			rebuild = "sudo nixos-rebuild switch";
			vi = "nvim";
			v =  "nvim";
		};
	};
}
