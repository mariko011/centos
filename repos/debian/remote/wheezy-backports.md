## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:301f1184bc80b51c483621e97f19b23d0ef4054f0f0c062f58b18a9170f16378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:08544467ea7ab8b512c37d7f73cad8782e58fcd7dfccf155d36df8dfad2745ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2ea29d76d29d84ab486b549748874852f4030e07958fdf5689713c5c0acbac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:34:57 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100179de118f11ca3529458e356e03dffb6844096df80b8319e21358cdd4afd`  
		Last Modified: Mon, 09 Oct 2017 21:44:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:b93897457eee3ca3734f75c7c8124c219cbe1e88c8b38e72466b2be18cd8a1f8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36943091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db08decca0ccb67f21ac429646aac96f8fb583b6db3717dcd0dc7b19b89b28a9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:27:09 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Wed, 27 Sep 2017 14:27:09 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:27:13 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:91e96f80e5b8463167dad7425295c08379bb448e4048e16b1364d813b5f8169c`  
		Last Modified: Wed, 27 Sep 2017 14:32:58 GMT  
		Size: 36.9 MB (36942865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0445a3d5ebe50ab666152d1a6401ee49a4af317a108348dd6c4316db0391105`  
		Last Modified: Wed, 27 Sep 2017 14:33:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:79d7adf7b4d8895e8151d9e2a64fcea694916597c806d29b0481bcd5fee45feb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35656546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdb0c2a1eba5a2b53836e116e7e638e7f0a7eea5a78e7c476c08177c3d23e1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:52 GMT
ADD file:6fef303ff382655f8d1b02443e95419e1f9610b563e8b11e7e4a021e4feaf3cc in / 
# Wed, 27 Sep 2017 04:15:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:15:58 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4ef58d6ed384b29697e2eecab4fcac62ff529eaef9f19f5a7b6183002b94947a`  
		Last Modified: Wed, 27 Sep 2017 04:22:15 GMT  
		Size: 35.7 MB (35656317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47480aa7647726210d96f5f7e07d1b2e6267155425ee3e51fb6331345c2be2c5`  
		Last Modified: Wed, 27 Sep 2017 04:22:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:9ed897af55ebc7b005f064908811253df72cece45fdbbd0917079c6b49f18ef4
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37433490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3dbe0f073cf359ad00e4e29e138551e1a66a5607b400288cdfcc26a755f026`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:20:52 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052c7172cbc5d2a85f4ecf94534c0c43aa87f97404987e01f490876cda7a14b8`  
		Last Modified: Fri, 08 Sep 2017 13:29:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
