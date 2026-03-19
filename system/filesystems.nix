{
  # There placed my custom mount points
  # blobs
  fileSystems."/mnt/storage" = {
    device = "/dev/disk/by-uuid/72e155fe-9a80-4c63-a184-54d9510e6466";
    fsType = "ext4";
    options = ["defaults" "noatime" "nofail"];
  };

  # arch os
  fileSystems."/mnt/arch" = {
    device = "/dev/disk/by-uuid/023a2be4-a552-491d-9372-e0ac5f5582da";
    fsType = "ext4";
    options = ["defaults" "noatime" "nofail"];
  };

  # ubuntu os
  fileSystems."/mnt/ubuntu" = {
    device = "/dev/disk/by-uuid/f93dadcf-d572-426f-9357-fe8e2cb2c075";
    fsType = "ext4";
    options = ["defaults" "noatime" "nofail"];
  };
}
