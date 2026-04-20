{
  programs.niri.settings = {
    input = import ./input.nix;
    outputs = import ./outputs.nix;
    binds = import ./binds.nix;
    workspaces = import ./workspaces.nix;
		window-rules = import ./window-rules.nix;
		spawn-at-startup = import ./startup.nix;
		hotkey-overlay.skip-at-startup = true;
  };
}
