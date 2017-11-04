## `debian:rc-buggy`

```console
$ docker pull debian@sha256:5666872fed042335b8d9ab238a5d82b6f1faf8ad6d1c45f230011f280c3b7c4a
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
$ docker pull debian@sha256:827b0be8430a5bd6d838dee5cd0ad42b1c9d990f61c7dcd382224df65ef0ce97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ee2b40b521afabd4b0bc51e2214e1c095ee43e0355e35b45258d0848b3e0fe`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:27:40 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea3e4b3bfa412186704ceae114f9ac9be9ec15b40616074f7972e6a18f1467a`  
		Last Modified: Sat, 04 Nov 2017 05:33:33 GMT  
		Size: 226.0 B  
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
$ docker pull debian@sha256:a46eec8363aff54763c99bae725008e5d8623f81759dcff42511528b7b9c4386
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48723818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2197a90d0b8f3e87ff325c16aeeb4e9ad6117b63a6ae633784af9820e311605`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:47:28 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:11a0304e8c893e4d955264c2d8a8a0c4dd84908eba9876476623a4a364a7c48e`  
		Last Modified: Mon, 09 Oct 2017 21:50:45 GMT  
		Size: 48.7 MB (48723592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fe0c3fd819dcf8b7e6380ea4b9c7eff5fc0540b4d61f029c542e327a9c702d`  
		Last Modified: Mon, 09 Oct 2017 21:56:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:b32b84b3e08e7b313a46141f2ed28e8be298e07fb374a7bb196b04a7b1f10f3a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47293101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319ce2613de10389fa423b4ca7013be113ac9443c9e576aa6dbdccf06c2e2468`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 21:45:34 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:387500139c6151d781fe62dbc679af96a9ac79dc2049d4b57d00beb6515f3617`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 47.3 MB (47292875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a7dd175d871dc1da76c1ebd0837a650ddb503d6469e850f93d2a7ea9a81e4b`  
		Last Modified: Mon, 09 Oct 2017 21:50:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
