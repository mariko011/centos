## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:81a8b6ce9f1e23ba9b398d54ef6a638e316fca65dbf422ecb5a2c4fddae6d329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:9abc12f655bee39b57c523ddac64d13df294ca5cf88544672ab2ba1e5d9707fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38103353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7667cc02994cbffcf61666cb87141e7afef8704d33437ec1d51123c96cbdc4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:42:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3169b59ff2e7e3e750dc9498cc6c92b11b1f9fc6bb3c15cf9565f81494fdc8c2`  
		Last Modified: Wed, 13 Sep 2017 08:48:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:0cc5b0d9721141ad41c6cbf91dc8d3d797631aaa12b762bcdeb87474185e2b96
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36945263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1226e693fa9064b43fcb7b6d82c3f40fd219b0a0b2a135fb460024d405acb36e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:07:17 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Fri, 08 Sep 2017 20:07:18 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:07:35 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:29e65e191a6c3d91d7ae2bd899e20d1bad6428e467dde869fa02dba34c275b4a`  
		Last Modified: Fri, 08 Sep 2017 20:24:29 GMT  
		Size: 36.9 MB (36945037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617a6605a6e8f19b07d1efd63b696f61900ee298e2178a6eada5667baa3630ac`  
		Last Modified: Fri, 08 Sep 2017 20:25:13 GMT  
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
