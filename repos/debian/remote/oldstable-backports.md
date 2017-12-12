## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:cd975af9423fe972619bffb34b38381ce25ff1a6cbd2af777a0be9576cbef79d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:bd41d9d9185b2967a85dd63ec9210b725d316626e2348252de855ba85071994a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52599935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b614c9fc4adfe89165df43c168753562b1562bfbc14d766524c3709ac103121`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:42:30 GMT
ADD file:154d1e7058b24a06fd9b6d3bcb06ba54671880f45b79416531fe9f33409b6939 in / 
# Tue, 12 Dec 2017 01:42:31 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2154a16ed849aa731400f072fe0f926bf7e7d04e033ddaa9134019ea59267819`  
		Last Modified: Tue, 12 Dec 2017 01:50:23 GMT  
		Size: 52.6 MB (52599711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9706f5cbf352def23e4b5385b048d73cd456500dcf0484ce18c0c50399603f`  
		Last Modified: Tue, 12 Dec 2017 01:50:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:32af1a1ee3c0fd435e1326159c298bbbdac65d71bce2303e180c707e5f962ca7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50880154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93617e20c1b3f715d00bdb884ac35982e5b317c2d6d202fb901661db2f559f90`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:07 GMT
ADD file:f42c330b3c286659ec16846ff247e75250da5f03769c76cc890a353440bfd3cd in / 
# Mon, 09 Oct 2017 21:43:08 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:13 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:58913492a97334973dad8a6a5bd806ca55e51899fca73b7a5bc541e345ed24e6`  
		Last Modified: Mon, 09 Oct 2017 21:48:40 GMT  
		Size: 50.9 MB (50879930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d5e04bc6caac1b3edce5a219797b70aa45117f838dc1580e0c6ef567b12c3`  
		Last Modified: Mon, 09 Oct 2017 21:48:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:095940b2bc8f55d30410f1d14a045af1c44e9fc956a94e5d1f931c37c2fffa6d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e90d40dfd4d4b61ab324377e1978ad73a7b1287f0b21a985195ba3dad4f63dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:29:32 GMT
ADD file:fd9034e9d21539d1118fd3f48147143673d1aa9b8e6cc687d3f9c8273fc1284b in / 
# Tue, 12 Dec 2017 13:29:33 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 13:29:47 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:66dfa9364b5e112df18fc0d3e55786d940e512feb405d3723251e682a4221dbb`  
		Last Modified: Tue, 12 Dec 2017 13:41:23 GMT  
		Size: 48.7 MB (48691759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6af4954f0ffc0d792fb130b0cca5bf1a2815fc5fbad28436944a7c85e58dba0`  
		Last Modified: Tue, 12 Dec 2017 13:41:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:fb6217f7d4d23e960efc04c18d40ab68b18fd6f2183cddc0db7b408bd3f299b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49926892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb3115125a6ab4354da76526993c842200c4ee10db64e7cc6f04dc9023f3be5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:50 GMT
ADD file:39286e425325266f72258d06b2c122ab40268ccf0a36f03d6592265c6a997bfa in / 
# Tue, 12 Dec 2017 18:26:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:27:15 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2dc0c42b48fb3ad8d630e2d841421e9e08ae5066d2ddf224d8ba47215f8ba699`  
		Last Modified: Tue, 12 Dec 2017 18:42:15 GMT  
		Size: 49.9 MB (49926664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b261a7838ddcd7f45c666b24e891bf87a6f2f745de5d6fcd45da1d9ff15726fb`  
		Last Modified: Tue, 12 Dec 2017 18:42:53 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:f406c20f345407fde782b3cdd461325a186bb712b7ca1b70b4fb4c7cc31809b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52777621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04d0ee4027fb69738dd9d497fc4cdedcc2e6a803a721f2b8688cbaf81bf251d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:22:45 GMT
ADD file:5358e703c26f0635e76f7c66750b111044b345b1df531918f9abfd4b88891fe8 in / 
# Tue, 12 Dec 2017 14:22:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:23:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3936686f65250ddadb5acdef935802b58bc6e411f7f4adcab5cb9bd9865f289c`  
		Last Modified: Tue, 12 Dec 2017 14:55:29 GMT  
		Size: 52.8 MB (52777397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc19a19f7f176cf5361f7024df27eed9cf3111648b327319c69dae4fea41288c`  
		Last Modified: Tue, 12 Dec 2017 14:57:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:7b85d2f5804a88ddb31d88375b99cdec70e258a140fa1c012d145fa09e800999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51809245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73765bb153ff00ad4c92a2fadb627dfd08ea0dc8ed7f8143d766c75a13885a72`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:33:34 GMT
ADD file:46681159c4ae08cb2e0bb2290fe41f25f56968faab91b1613fe9a698b6224195 in / 
# Tue, 12 Dec 2017 01:33:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:33:46 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c48dfa4afa3f34d3b9b75132f70ac2335dfb200710277dcc97a4d552b66f0333`  
		Last Modified: Tue, 12 Dec 2017 01:39:29 GMT  
		Size: 51.8 MB (51809022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5705f5da0b4f6a9b0cb866120a976571493bb17ffd5148b222600445ce4096`  
		Last Modified: Tue, 12 Dec 2017 01:39:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:52f4c708ba8de18879f1fea5afe47ac4da87c0b3ca0a6f367ca86b6a18a95c5d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52790533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0b2cec474da97a0ba7dfc3d49da2045d8591470cfb1b59336216ac25f273d0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:24 GMT
ADD file:b42d4b71a5c0aab8aed465bc290c1ec0da1291a1646605143bd33ee2e9ac110d in / 
# Tue, 12 Dec 2017 06:23:24 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:23:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9cada48bc74c0c9569de85e6a2cb3aadd361d9320649b121df44edec4399203`  
		Last Modified: Tue, 12 Dec 2017 06:28:45 GMT  
		Size: 52.8 MB (52790308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09d9cf38d4e9699d39bb8de7e9331f6de69ffbb8087f99852d544e909e61cce`  
		Last Modified: Tue, 12 Dec 2017 06:28:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
