{
  pkgs,
  username,
  ...
}: {
  users = {
    defaultUserShell = pkgs.bash;
    users.${username} = {
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager" "docker"];
    };
  };
}
