{hostname, ...}: {
  networking = {
    hostName = "${hostname}"; # Define your hostname.

    # Configure network connections interactively with nmcli or nmtui.
    networkmanager.enable = true;
		nameservers = ["77.88.8.8" "77.88.8.1" "8.8.8.8"];
  };
}
