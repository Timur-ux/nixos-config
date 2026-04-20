{ pkgs, inputs, ... }:
{
  programs.dank-material-shell = {
    enable = true;
    enableSystemMonitoring = true;
    dgop.package = inputs.dgop.packages.${pkgs.system}.default;
    niri = {
      enableSpawn = true;
    };
  };
}
