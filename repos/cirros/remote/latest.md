## `cirros:latest`

```console
$ docker pull cirros@sha256:059d9eb8250859c373c8893d3315cf23fbd15a5c1ee6baf4246a4eb39c7b5fdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:latest` - linux; amd64

```console
$ docker pull cirros@sha256:b36d36b6c08bce070f1372e8e5b6c7b8c1b1b8a3d3115a1b7107a730e077bf58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4b61908c4ee1afa02da7ea3be04fcff3b1a1368234342c4fee30147643c18f`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 12 Sep 2017 23:23:36 GMT
MAINTAINER Eric Windisch <eric@windisch.us>
# Tue, 12 Sep 2017 23:23:37 GMT
ADD file:b71b05427feac8757afddf826eb2e3379eaa7508eafccfd5cfee745937d15fba in / 
# Tue, 12 Sep 2017 23:23:37 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 12 Sep 2017 23:23:38 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 12 Sep 2017 23:23:38 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:480d57c7bf4db097694bef53ce2ca20031bfebca0c23905dfdbf73cf20e65f4d`  
		Last Modified: Tue, 12 Sep 2017 23:23:47 GMT  
		Size: 3.6 MB (3636920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ec730efe40f46a621a92f18c9e0f737185966fe9508d177f4670babd6f295`  
		Last Modified: Tue, 12 Sep 2017 23:23:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4027f82c922dca97e252a6b377e66bbef439abdf3718124a7bb589854a742d2`  
		Last Modified: Tue, 12 Sep 2017 23:23:47 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
