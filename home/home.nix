{ config, pkgs, ... } : {
	home = {
		username = "raison";
		homeDirectory = "/home/raison/";
		stateVersion = "25.11";
    packages = with pkgs; [
			wl-clipboard
			gdb
			cmake
			clang-tools
			kdePackages.okular
			zathura
			gnumake
			gcc
			bear
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
			starship
			matugen
			cups-pk-helper
			cava
			khal
			fprintd
			ripgrep
    ];
		shell.enableBashIntegration = true;
		sessionPath = [
			"$HOME/.local/bin"
		];
	};

	xdg.enable = true;

	programs.starship = {
		enable = true;
		enableBashIntegration = true;
	};
	programs.autojump.enable = true;
	programs.bash = {
		enable = true;
		enableVteIntegration = true;
		enableCompletion = true;
		shellAliases = {
			nxs = "sudo nixos-rebuild switch --flake ~/nix/";
			hms = "home-manager switch --flake ~/nix/";

			vi = "nvim";
			v =  "nvim";

			gs = "git status";
			ga = "git add";
			gc = "git commit";
			gp = "git push";

		
		};
	};
}
