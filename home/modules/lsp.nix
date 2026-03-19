{ pkgs, ... } :
{
	packages = with pkgs; [
		stylua
		nil # nix ls
		lua-language-server
		texlab
		clang-tools
	];
}
