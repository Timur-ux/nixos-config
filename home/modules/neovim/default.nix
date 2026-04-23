{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      imagemagick

      # formatters
      alejandra # nix formatter
      tex-fmt

      # lsp
      stylua
      nil
      lua-language-server
      texlab
      clang-tools
      omnisharp-roslyn
    ];
    extraPython3Packages =
      ps: with ps; [
        pynvim
        jupyter-client
    ipython
        cairosvg
        pyperclip
      ];
  };
}
