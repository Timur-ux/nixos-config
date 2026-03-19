{ pkgs, ... }:
{
	packages = with pkgs; [
		alejandra # nix formatter
	];
}
