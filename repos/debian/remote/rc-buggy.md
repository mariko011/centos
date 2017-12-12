## `debian:rc-buggy`

```console
$ docker pull debian@sha256:12cd7a2f31877a86e2e47aed371383bb6013303f4f3847ba5e773383bdcbdf4f
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:89ae6f7024829928a04ad9ad6ee691e563a0ffaf10395c160da5c7f498593c92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48429288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2ebd55a9ef24c84b3c82f79df9659f0d8c89f1056e3730a08e14ca034b5e93`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:09 GMT
ADD file:f4f0ede88e0b0edf8235b2a5ff46ab7d8de71d56720cb7dc3032bca0e1872695 in / 
# Tue, 12 Dec 2017 01:43:10 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:46:42 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a8797cd0c76e8b1532d95708a0a38554c89e6fa0cdd856dbede8555225cdea00`  
		Last Modified: Tue, 12 Dec 2017 01:51:30 GMT  
		Size: 48.4 MB (48429060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547db2b6c98d5836bf9b2a8adaf865ceed36c7021e39ad859d7afb9c8aa1ba7c`  
		Last Modified: Tue, 12 Dec 2017 02:01:14 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:142e242eb889fc7d2738fc98e6297ef4ad678f097860ec7f5b8de3dca7f11b27
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46010318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902c0a466f08052357595ff5307fec02e939dadf1c48b369995389c7dd802a2a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:38 GMT
ADD file:ed4faefd58667ec248b15ae9b227fc04967695ab4002e9f3a65e8e53b3f73cc6 in / 
# Mon, 09 Oct 2017 21:43:39 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:46:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:45a6221cafba09e06352fbe396f5863616e79d7ab2b9481c3016ee02a2fc322d`  
		Last Modified: Mon, 09 Oct 2017 21:49:19 GMT  
		Size: 46.0 MB (46010091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d6897355c9419be6e72af86733f211dedaf7d50b2faff2e524780f3316288a`  
		Last Modified: Mon, 09 Oct 2017 21:53:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:087712cfb6f878f9f6e78a90fcd4b3137f15434ba139f12db131a723f0562676
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44221372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb090bdeee9291b7cba69abc92b5afec7177b8a934261ab370aba1af377dad00`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:14 GMT
ADD file:8310e9969f49ad8da22c8531636a505f796ae2e5ab255104280bbe27bd312eb2 in / 
# Mon, 09 Oct 2017 21:44:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:47:36 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c73d8f8e11b2d23be25158f1c637fa52a156601fa88a99dae20e4e90c9f8094e`  
		Last Modified: Mon, 09 Oct 2017 21:50:57 GMT  
		Size: 44.2 MB (44221149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce742cf1630bebe0257ef5d748008e36c3fb4cc9b3c4a5090a0b611b89126e6a`  
		Last Modified: Mon, 09 Oct 2017 21:57:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:2bfb7e55219484dd59c80fb60b15f9af9cb18ef8eab37fdd395190b3e63a4ddf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45334390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2159971e55133ec6c66eb84561954014af9c541dfd9659a5d058df9927f064eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:50:05 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e81325a6af85f75a75f466627b0f3e722d22ef0a99868726a293425fa3678d30`  
		Last Modified: Mon, 09 Oct 2017 21:57:27 GMT  
		Size: 45.3 MB (45334165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22343051293012418f1c9157bd6398a190b66638bdfea46e063563418cea7bd2`  
		Last Modified: Mon, 09 Oct 2017 22:06:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:7b8b272ceee4d8245c8df22b206709c2f03e7e22b428da3c526ca93af09cb898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48397525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33c15cb6270049773678ac41b347e41cfe7d8968788cced0ae5ee64de48a7db`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:47:00 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c4f0ba6c109e4a20a92a03d7e3ed54b584598a77c79e7891221658b1b505c8d3`  
		Last Modified: Mon, 09 Oct 2017 21:50:58 GMT  
		Size: 48.4 MB (48397299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb44109a6b2ba034bd2d5a38385123d90758b2ede8a92750710452b36c08ac29`  
		Last Modified: Mon, 09 Oct 2017 22:01:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:db39caaf6cf860b85a6fd5a5399930a84e3d92afd1d6286f85f27e8f53f80122
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49652241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026fdae2df701f0d1394552b09de7f50e527d0a9c5341d3d5176cc11ac6e05c1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:15 GMT
ADD file:7904a0f79cc86767c6e3ac367f0df06aa262c6639e79e39652eac766c3faf4b6 in / 
# Tue, 12 Dec 2017 01:34:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:36:56 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:21b73404fd38d2445a6ecbcf148b2dd5047623273b33ea9546ddf6796601ec9b`  
		Last Modified: Tue, 12 Dec 2017 01:40:28 GMT  
		Size: 49.7 MB (49652013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec75bcf4f321d7ba9691f66a21626827650b7324e82969bf0cc87637efb7a4c`  
		Last Modified: Tue, 12 Dec 2017 01:45:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:e7a39ee65ac0a79d47a550f1fbaff696e8c71adea856d730e9d19841d291798c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48137514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f59f871a46e90b342a61c8900331d935e165c98b217ca553ddde5c2e5d28d2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:24:08 GMT
ADD file:8ee198fa6df35cac591aebbfa42175a2cab73b8096a422f1a8f995252c8883e8 in / 
# Tue, 12 Dec 2017 06:24:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:27:08 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2556c296741d957f26b83c22fed075dd4d9d0b7075925e7992bc685a3a29eb16`  
		Last Modified: Tue, 12 Dec 2017 06:29:30 GMT  
		Size: 48.1 MB (48137286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a600664ccaa86f6e975e4091d0622b6b74945db9fce0ecda11419f281bb129d`  
		Last Modified: Tue, 12 Dec 2017 06:32:50 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
