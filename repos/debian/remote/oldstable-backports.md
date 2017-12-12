## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:8ff15679a6825aacdccf662f088f78c3375fd44f57677034f67dc743cc763cb8
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
$ docker pull debian@sha256:48ab9545537eef9a7fe83db4a40eff8743f91295935ffec55fca6087f9b15ea1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48686530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bda48251ccc4797cba9f6a58fa8299184156ce110e65d67410d15e907354383d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:35 GMT
ADD file:ae2a453c013dbf3dc2b9dc68245e35eef2ba0287a44c410699595302737a7904 in / 
# Mon, 09 Oct 2017 21:43:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8ee465e778f333d88069f9043b1c82a7e08afd42583faf4e770cb7af443a2ddf`  
		Last Modified: Mon, 09 Oct 2017 21:50:13 GMT  
		Size: 48.7 MB (48686307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48107817361e471f85fe5a5a1ef404448687e72a5b8bf93b11a69caf8eac9337`  
		Last Modified: Mon, 09 Oct 2017 21:50:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:9f4c916203ee82dda2ec13bf79387102c1c82cae6bad16b9d99def9eae6e8225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49929548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f746be1d3e7b0edfab085cb94b40e7141c9c3128c8119b52672d14e3396e115`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:20 GMT
ADD file:25f42ef6e9bbd99cdc3af6b1b094bb4e71fd699b775d78ca98f7d71184369e24 in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:44:34 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:99219b1ab0010c7202a6971621d5b9a489d584afcbf69874b4f53626c46fe98d`  
		Last Modified: Mon, 09 Oct 2017 21:54:19 GMT  
		Size: 49.9 MB (49929323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dc02065b1a3014bf22e4cc65fe662c0802e5d6fbd6955749d6246fa99d9365`  
		Last Modified: Mon, 09 Oct 2017 21:54:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:64a5deaa18b7ffc077dcaf1b86fabe56aa6d02322dfe560fc0da72ccd2df5574
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52774054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee268fd5e79914a9fe222edb8136d80da4fd4a099ecdc46d062327b10ad543be`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:11 GMT
ADD file:82a56ae8cb33c9fbdd9c19b80980b0bbb643722df2b28bfeab72c9221dc63453 in / 
# Mon, 09 Oct 2017 21:43:11 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:44:04 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d863880c6fea3f7f8843db4279bb45f6224c6f33e8565e875e029b91faab3342`  
		Last Modified: Mon, 09 Oct 2017 21:50:05 GMT  
		Size: 52.8 MB (52773831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9522b346e3df03dbebcb1dc8d518defedb53bf3685ea9416f45851a33d24ca24`  
		Last Modified: Mon, 09 Oct 2017 21:50:21 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:49f78c422e4bc63ac4b0e77cf51d387578682d8bdb7978cae204d857454e4b37
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52789125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc39e63b5d417848bfb6cd88fb201f51fab5d4c12bc0434e2740e14ecc7671e2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:54 GMT
ADD file:d343b0a785fd52aae05e8077c0d7301e66d1ed0d505dd5732887f0b9a8d1ba53 in / 
# Mon, 09 Oct 2017 21:42:56 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9724ba77bdb61c277eb6c924081e89d27768a6cad2fa9efe484a1b5d667eb6ab`  
		Last Modified: Mon, 09 Oct 2017 21:47:06 GMT  
		Size: 52.8 MB (52788902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf46a62e5a46c49e93a6a88567c4ab551a6bcd67d6e0e2d184bcae8f3d0f21c1`  
		Last Modified: Mon, 09 Oct 2017 21:47:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
