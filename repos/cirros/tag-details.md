<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cirros`

-	[`cirros:0.3.3`](#cirros033)
-	[`cirros:0.3.4`](#cirros034)
-	[`cirros:latest`](#cirroslatest)

## `cirros:0.3.3`

```console
$ docker pull cirros@sha256:583196ea1ca89f35f104734a0a50c93a0a0a0cafce6556998c9faa90bf46ce8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:0.3.3` - linux; amd64

```console
$ docker pull cirros@sha256:9a6ce8e57e36ddad14def060a59fa9aa0bd1cd51183483c0b1861d3b7b57a98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231974f01f06befaa720909c29baadb586d6e6708e386190873a0d4cc5af033a`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Fri, 03 Nov 2017 22:50:38 GMT
MAINTAINER Eric Windisch <ewindisch@docker.com>
# Fri, 03 Nov 2017 22:50:38 GMT
ADD file:2046cb7ce84de433d319f2f11594677d7061ba44048b8440ea114b93b9b88433 in / 
# Fri, 03 Nov 2017 22:50:39 GMT
RUN rm /etc/rc3.d/S40-network
# Fri, 03 Nov 2017 22:50:40 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Fri, 03 Nov 2017 22:50:40 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:5ce715e1c583a04d7e0d27388a20ad2ed424e0c346d63b6dc2ab96d95a633d62`  
		Last Modified: Tue, 12 Sep 2017 23:23:58 GMT  
		Size: 3.6 MB (3624867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5240393af70d6245463d410a4e175d79ce9c41137c46907c75e33e53ef63f378`  
		Last Modified: Fri, 03 Nov 2017 22:50:57 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db781f23465496cc419a4c1575f4cfcffd9561af7c71b59bde902119828f839c`  
		Last Modified: Fri, 03 Nov 2017 22:50:54 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:0.3.4`

```console
$ docker pull cirros@sha256:e67f6f4a0521e326ba2dd697950046aba5ce836edda79cb818d45a56841c7ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:0.3.4` - linux; amd64

```console
$ docker pull cirros@sha256:3fd64cb391e075e9e7335392aaa89d18029aafe5ca24cc123545c7b8c9c1d59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e21e1957b6efd3fe5d9a5bf044ef22a80b70f07b95f3e00f6d07ba8c6b90f5`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Fri, 03 Nov 2017 22:50:35 GMT
MAINTAINER Eric Windisch <eric@windisch.us>
# Fri, 03 Nov 2017 22:50:35 GMT
ADD file:b71b05427feac8757afddf826eb2e3379eaa7508eafccfd5cfee745937d15fba in / 
# Fri, 03 Nov 2017 22:50:36 GMT
RUN rm /etc/rc3.d/S40-network
# Fri, 03 Nov 2017 22:50:36 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Fri, 03 Nov 2017 22:50:36 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:480d57c7bf4db097694bef53ce2ca20031bfebca0c23905dfdbf73cf20e65f4d`  
		Last Modified: Tue, 12 Sep 2017 23:23:47 GMT  
		Size: 3.6 MB (3636920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f45bfe9a8051b05cf0dacd26588941e9485f4a682f81e024e48175f50a06839`  
		Last Modified: Fri, 03 Nov 2017 22:50:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa6c26e64dcc6f56214ba8bb3bd05329a25783727696559e4f9837cbd646cb7`  
		Last Modified: Fri, 03 Nov 2017 22:50:45 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:latest`

```console
$ docker pull cirros@sha256:e67f6f4a0521e326ba2dd697950046aba5ce836edda79cb818d45a56841c7ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `cirros:latest` - linux; amd64

```console
$ docker pull cirros@sha256:3fd64cb391e075e9e7335392aaa89d18029aafe5ca24cc123545c7b8c9c1d59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e21e1957b6efd3fe5d9a5bf044ef22a80b70f07b95f3e00f6d07ba8c6b90f5`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Fri, 03 Nov 2017 22:50:35 GMT
MAINTAINER Eric Windisch <eric@windisch.us>
# Fri, 03 Nov 2017 22:50:35 GMT
ADD file:b71b05427feac8757afddf826eb2e3379eaa7508eafccfd5cfee745937d15fba in / 
# Fri, 03 Nov 2017 22:50:36 GMT
RUN rm /etc/rc3.d/S40-network
# Fri, 03 Nov 2017 22:50:36 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Fri, 03 Nov 2017 22:50:36 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:480d57c7bf4db097694bef53ce2ca20031bfebca0c23905dfdbf73cf20e65f4d`  
		Last Modified: Tue, 12 Sep 2017 23:23:47 GMT  
		Size: 3.6 MB (3636920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f45bfe9a8051b05cf0dacd26588941e9485f4a682f81e024e48175f50a06839`  
		Last Modified: Fri, 03 Nov 2017 22:50:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa6c26e64dcc6f56214ba8bb3bd05329a25783727696559e4f9837cbd646cb7`  
		Last Modified: Fri, 03 Nov 2017 22:50:45 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
