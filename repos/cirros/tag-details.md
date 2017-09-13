<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cirros`

-	[`cirros:0.3.3`](#cirros033)
-	[`cirros:0.3.4`](#cirros034)
-	[`cirros:latest`](#cirroslatest)

## `cirros:0.3.3`

```console
$ docker pull cirros@sha256:32168cafb9f0ec886260d470ef8ddc0d6342b57b4410c755ee7d3e304f0f1d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:0.3.3` - linux; amd64

```console
$ docker pull cirros@sha256:85e6c1a87a7233da723f0d1cc09c4777f445a801b598e948ff952a11443e3d91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b5379ad1efc94c677e43ef25cb944a35a19810d8ed032c4f81002efdffda49`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 12 Sep 2017 23:23:39 GMT
MAINTAINER Eric Windisch <ewindisch@docker.com>
# Tue, 12 Sep 2017 23:23:39 GMT
ADD file:2046cb7ce84de433d319f2f11594677d7061ba44048b8440ea114b93b9b88433 in / 
# Tue, 12 Sep 2017 23:23:40 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 12 Sep 2017 23:23:41 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 12 Sep 2017 23:23:41 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:5ce715e1c583a04d7e0d27388a20ad2ed424e0c346d63b6dc2ab96d95a633d62`  
		Last Modified: Tue, 12 Sep 2017 23:23:58 GMT  
		Size: 3.6 MB (3624867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cf56545cc065b4ba1165976db3f7a4d66751681b3111524717523afdb45a19`  
		Last Modified: Tue, 12 Sep 2017 23:23:57 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670392842d83cbfceecd0810c5003fc5b1b300eb678ee0febc96a0a9970bbe5c`  
		Last Modified: Tue, 12 Sep 2017 23:23:57 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:0.3.4`

```console
$ docker pull cirros@sha256:059d9eb8250859c373c8893d3315cf23fbd15a5c1ee6baf4246a4eb39c7b5fdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:0.3.4` - linux; amd64

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
