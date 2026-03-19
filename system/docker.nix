{
	virtualisation = {
		docker = {
			enable = true;
			daemon.settings = {
				data-root = "/mnt/storage/docker";
			};
			extraOptions = ''
				--containerd=/run/containerd/containerd.sock
				'';
		};
		# containers = {
		# 	enable = true;
		# 	
		# };
		containerd = {
			enable = true;
			settings = {
				root = "/mnt/storage/lib/containerd";
			};
		};
	};
}
