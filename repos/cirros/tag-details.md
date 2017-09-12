<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cirros`

-	[`cirros:latest`](#cirroslatest)
-	[`cirros:0.3.4`](#cirros034)
-	[`cirros:0.3.3`](#cirros033)

## `cirros:latest`

```console
$ docker pull cirros@sha256:f3f87bf125fbf54419e934c9fc22a5b7c39792d5f7facaf76a7ee7a6b2a98f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:latest` - linux; amd64

```console
$ docker pull cirros@sha256:767d8d415de54913bd3ec0c5c2ba3bb338071e043842ead780a31b767c46bd7f
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1170a6f142772756295edeb6d319b74d9869a76e9b50bf50d238f3c9820b3fdb`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 30 Aug 2016 00:23:24 GMT
MAINTAINER Eric Windisch <eric@windisch.us>
# Tue, 30 Aug 2016 00:23:25 GMT
ADD file:b71b05427feac8757afddf826eb2e3379eaa7508eafccfd5cfee745937d15fba in / 
# Tue, 30 Aug 2016 00:23:26 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 30 Aug 2016 00:23:26 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 30 Aug 2016 00:23:27 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:2a8153bda3b9e685fc985b680fefcfa35150c37c521389fd15cc13c46baa9fd4`  
		Last Modified: Wed, 12 Apr 2017 00:29:26 GMT  
		Size: 3.6 MB (3636920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5cb05180546bc1aea102f03ff0d818a39a83c4da22e9a5a86ecca8413b5e5f`  
		Last Modified: Tue, 13 Jun 2017 21:23:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8225db6b0eb015a4c3ccd49dd3089a51c4dadcfe1f81743bacbed1e9f033a22`  
		Last Modified: Tue, 13 Jun 2017 21:23:16 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:0.3.4`

```console
$ docker pull cirros@sha256:f3f87bf125fbf54419e934c9fc22a5b7c39792d5f7facaf76a7ee7a6b2a98f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:0.3.4` - linux; amd64

```console
$ docker pull cirros@sha256:767d8d415de54913bd3ec0c5c2ba3bb338071e043842ead780a31b767c46bd7f
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1170a6f142772756295edeb6d319b74d9869a76e9b50bf50d238f3c9820b3fdb`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 30 Aug 2016 00:23:24 GMT
MAINTAINER Eric Windisch <eric@windisch.us>
# Tue, 30 Aug 2016 00:23:25 GMT
ADD file:b71b05427feac8757afddf826eb2e3379eaa7508eafccfd5cfee745937d15fba in / 
# Tue, 30 Aug 2016 00:23:26 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 30 Aug 2016 00:23:26 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 30 Aug 2016 00:23:27 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:2a8153bda3b9e685fc985b680fefcfa35150c37c521389fd15cc13c46baa9fd4`  
		Last Modified: Wed, 12 Apr 2017 00:29:26 GMT  
		Size: 3.6 MB (3636920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5cb05180546bc1aea102f03ff0d818a39a83c4da22e9a5a86ecca8413b5e5f`  
		Last Modified: Tue, 13 Jun 2017 21:23:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8225db6b0eb015a4c3ccd49dd3089a51c4dadcfe1f81743bacbed1e9f033a22`  
		Last Modified: Tue, 13 Jun 2017 21:23:16 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:0.3.3`

```console
$ docker pull cirros@sha256:d0fbc3e0817c365211c0f08d8b7eecc1b6a09e67c9feb107758718f5c6ab8967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:0.3.3` - linux; amd64

```console
$ docker pull cirros@sha256:cf926183180401b2e4375f04d64167b0df92e0ecb4e3160c584e2f0021d19e4b
```

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151228e759d0496f5010fbcb33baaa4bcce664b7f8b5c6d64dcfd56cdeb96787`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 30 Aug 2016 00:23:27 GMT
MAINTAINER Eric Windisch <ewindisch@docker.com>
# Tue, 30 Aug 2016 00:23:28 GMT
ADD file:2046cb7ce84de433d319f2f11594677d7061ba44048b8440ea114b93b9b88433 in / 
# Tue, 30 Aug 2016 00:23:28 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 30 Aug 2016 00:23:29 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 30 Aug 2016 00:23:29 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:17ea0765f30296ad239b80839e4fee36ffaf5ea111d7a5ffa2a41c6706f420ef`  
		Last Modified: Tue, 13 Jun 2017 21:25:10 GMT  
		Size: 3.6 MB (3624867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90fe4bc55c9ec36f1608de3413749bef289323fad1d9300b3075f314530ef404`  
		Last Modified: Tue, 13 Jun 2017 21:25:10 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388d555e8085f51539a057f1749852402cafbf87c92ce4700180ba9f81842aaa`  
		Last Modified: Tue, 13 Jun 2017 21:25:09 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
