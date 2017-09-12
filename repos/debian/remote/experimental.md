## `debian:experimental`

```console
$ docker pull debian@sha256:85df650349e387b16f84dacaf532f3a9b684a3da2133f37f7645873058a0f7f5
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:57dd5b345322d64daf64a3d39fa02f4b0008e114414ac07cd708b6e1368dfc78
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47754071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b982c056d18f0a36ace011b8a1daa634489e7fb395635717fcb52eb4a8549c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:28 GMT
ADD file:d0270982773408f1cdf0c8b01e5018e290d9610439ed9c7850263b89ab19b137 in / 
# Thu, 07 Sep 2017 23:08:28 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:09:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:decbfd438e8ee9760428fd8b690b778724082111bd0992789a970cf6855da1cc`  
		Last Modified: Thu, 07 Sep 2017 23:10:36 GMT  
		Size: 47.8 MB (47753857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d62e2abf6f32b02bcdd95713b824a0295ae814798292ca9af41438dac6141c4`  
		Last Modified: Thu, 07 Sep 2017 23:10:29 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:99717117c2a3e54d4bb9d44bd647b5502a322deabb10d1d2eb61468778b02594
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46232740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f499eacd977ccd1952613ef16406efa1967f5dc3d30c411d0d22149144feb7b4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:06:06 GMT
ADD file:176342c429b0199f9b874b38b49e97d92931c514bbf34a2bcc22e66f29a1945a in / 
# Fri, 08 Sep 2017 20:06:08 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:08:10 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5091383cb2a6da2cf80cdbf4c8e3ce2ca89db61f37fb7a017d015d7ef51470c3`  
		Last Modified: Fri, 08 Sep 2017 20:10:45 GMT  
		Size: 46.2 MB (46232519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424aee7868007e983145996675b17deff0b1842cb2b614be634eb1b9eb6205e9`  
		Last Modified: Fri, 08 Sep 2017 20:10:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:38ae2840e57dc393d23c7e52d0ebd72141c844ea5477fe790826f96feb6f98c8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44753645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431bf8769b4332d98ffdb46aeac5ea4cebc1d5524ee0adbdf92430aabf3678ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:46:29 GMT
ADD file:ac15ac728cd7b6348357ddcd1f1516d233f5ae5510d716befec8a7e56e8bedf5 in / 
# Sat, 09 Sep 2017 01:46:31 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:47:45 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7a9e0799fb00bd755cfa87a53f0821268e8ef3daf4dc2a84497c910179465e10`  
		Last Modified: Sat, 09 Sep 2017 01:49:44 GMT  
		Size: 44.8 MB (44753423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be9898780484f1d55d602c1b8515bff5b5def4e1413b476eb1dd62adc38c6a3`  
		Last Modified: Sat, 09 Sep 2017 01:49:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:256d5644c751b2eeede7b3477aaa40b25af47adcbdb24c1a5f56a66d9237496e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45456189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afac025b9f81fc9f7da8d5fedeaf33b001a4c0aa3a0664bc8c57928832594cce`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:30:50 GMT
ADD file:55544d6d9ad0af3f15a008e772de08d631c2b30781d3eb820720ed2b730f89ea in / 
# Fri, 08 Sep 2017 17:30:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:31:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:071b309802d1fdaf51edc0a50121ba2dd84a8c37ec191ee824e41b0979436c74`  
		Last Modified: Fri, 08 Sep 2017 17:33:59 GMT  
		Size: 45.5 MB (45455967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018bbf0524b403a36940f99ea1fb5cfb645fbc37ad9cb897fe7886ea837a083b`  
		Last Modified: Fri, 08 Sep 2017 17:33:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:45fe44b8fb443c30fa544d6350e028cb6f2471a0a4421d185bb012d69a53277c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48547967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e520cccb68d015464c2cfbd68a11a3b16d327877de6eaf19266a179ac613a2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:29 GMT
ADD file:4cd850abdf684dcb29c330f355e7f5890bf0873dedb6803b9c71d2326b78880f in / 
# Fri, 08 Sep 2017 13:20:29 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:21:03 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:31ad8490bf7dafa0c9b2b3f76499f78389b903ba4835602e3f489fa753528b25`  
		Last Modified: Fri, 08 Sep 2017 13:22:06 GMT  
		Size: 48.5 MB (48547745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d653ac3ad3ebcccc26ca2c8d533c8f07c6112f233111f5e7383257e25f8a61b3`  
		Last Modified: Fri, 08 Sep 2017 13:21:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:d18087e61771290e0bec68b8cd5a86e24a6a7099b1037978e8c0a50e6870716c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48412233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d50b7e0a4d61aafe158b3c402d3725f9b4e26d00e017970d74e066bef5c8258`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:56 GMT
ADD file:998e960c3963553db497eb9c0a05cad31636e225a8737b6f8284d5f7aba8a767 in / 
# Fri, 08 Sep 2017 00:34:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:35:10 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3d870f413e16c3071811476c537d1ec0d707956cc02b886e3d401f46d3029d9e`  
		Last Modified: Fri, 08 Sep 2017 00:36:22 GMT  
		Size: 48.4 MB (48412012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108901416a30b6d7ccde34922d644d361cd7aaa162ec4bdefd38599049ed07e2`  
		Last Modified: Fri, 08 Sep 2017 00:36:09 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:3adbc69f7ec77719fe2f293c8bf38a5c9f8416e075efa41cd36b0345e37e7552
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47521352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c1cc3d78901b43e1bf967ed3aee919d2ce39ac03bfd42ad149bc5907c36573`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:23 GMT
ADD file:afb06519dc470a4def7af997f20bd974286fe530ad131350bd3a7c43e0f5f89f in / 
# Fri, 08 Sep 2017 05:23:24 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:23:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b905c735954a8279a4dad3a6f4574ffea921aac36fa10e405e3a4dbca1465349`  
		Last Modified: Fri, 08 Sep 2017 05:24:26 GMT  
		Size: 47.5 MB (47521131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c210950753da3423576fe6bf185c499a457326bb41d02a8d9aaece3fdbc92`  
		Last Modified: Fri, 08 Sep 2017 05:24:20 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
