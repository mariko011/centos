## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:044edd976bf433317b946455245272696e2acb4ea9d98bce162687df7be8c24d
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
$ docker pull debian@sha256:6fed8f68a5491baa5bcc07fb789f572a998242be1441868a42861edcbec8ef30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52595342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d051bb0acafc0e90e04eee26783a83f66f84197ea5be66884200b59dcba746`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:24:15 GMT
ADD file:c368414c2e7806333e0a17277bf77c0d2f4d90109ac0c4c917adc6db339016fc in / 
# Sat, 04 Nov 2017 05:24:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:25:04 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2ac26a76d6aeb64e9cd56e47264ddc6f7b28aad4a6d7c82b0a5379a3816bd896`  
		Last Modified: Mon, 09 Oct 2017 21:38:54 GMT  
		Size: 52.6 MB (52595114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323427479dfe323b5d6676179d9ab9ea1eb35aee94073b27a14d789c50693233`  
		Last Modified: Sat, 04 Nov 2017 05:29:49 GMT  
		Size: 228.0 B  
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
$ docker pull debian@sha256:5b946036de9b33e58c8a31829321dbb4bbb9bfb4507eaa2e2cd79954e5b5d969
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51809956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50d91abcadac1ef884e24fc5913bb26f255315765f3e4597f33d813e234fba1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:35 GMT
ADD file:d5b388a671a9d6c4490dc43d8b26fd1777182fa2d14e6a7724f45524a03e47e6 in / 
# Mon, 09 Oct 2017 21:43:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:43:51 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d036994d6a84712870a217a6f08182114458d4012d9c15238fac4b587ccf5423`  
		Last Modified: Mon, 09 Oct 2017 21:49:51 GMT  
		Size: 51.8 MB (51809731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4321cda6fb9ab1f228e67b822a161ba511c424ec28d252be9e3b73d49cb0bb7`  
		Last Modified: Mon, 09 Oct 2017 21:50:05 GMT  
		Size: 225.0 B  
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
