{
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  # OR
  # Use GRUB2 EFI boot loader
  # boot.loader.grub = {
  # 	enable = true;
  # 	useOSProber = true;
  # 	efiSupport = true;
  # 	device = "nodev";
  # 	 # efiInstallAsRemovable = true;
  # };
}
