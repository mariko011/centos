## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:16771b9b04efd3a4a6fb2df403722492362cebc65c1b2cdcfe5b022182c2c6be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ee4f98eb0bdb5e7aa902adecf90730694d840aa72b53c24995b141d77c4ef24f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45053057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e15a0d145e37e5ded1ee57558ae5039e08149f942ad7dfabebf41cff5e3e419`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:41:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d764e03a215333db8170acb0685d3ba179bb4286392cf97457e43a5d7d7f534`  
		Last Modified: Wed, 13 Sep 2017 13:00:25 GMT  
		Size: 6.9 MB (6949930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:af3940f67683f2240c401c629f2c77ebf96a153c51fd1e74944ce5ec5941fb89
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43532412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d98ab1c043120c28e419ac4ee581ca3ce7c3c3271cc3c962e9b06deae4fc250`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:07:17 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Fri, 08 Sep 2017 20:07:18 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 03:51:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 03:51:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:29e65e191a6c3d91d7ae2bd899e20d1bad6428e467dde869fa02dba34c275b4a`  
		Last Modified: Fri, 08 Sep 2017 20:24:29 GMT  
		Size: 36.9 MB (36945037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79fec58295ab928e8d6c95f4ab2cf3c98d5ee139069db34c75384a74366a75`  
		Last Modified: Tue, 12 Sep 2017 04:25:48 GMT  
		Size: 6.6 MB (6587375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6027850b22dc9b26a31cc719ecce14f2557a6b7f63cfab473acf69f73984153e
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (42025161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19edd180fca9a80a95c76a6379259944f3b07bb2ea7b0feeb6b0f8c3de1ad9c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 18:14:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931ec72c8732d6f74931a7086e7f2fe329cf03fa2b247dc18bce5b1201fb974a`  
		Last Modified: Fri, 11 Aug 2017 19:00:50 GMT  
		Size: 6.4 MB (6369136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f0d1ec60b6f82bbf6a70a331eac194c6249378a8033aaa891e41f412c945aadd
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46232375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38414e37a33b3cd698b8dfd6e82e6e6e6cf761cfde1f9a8cf76270e75e93d33f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:52:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e19235ec8912002a9f320de08671905f5729502dc642eb94047db21c0467e`  
		Last Modified: Sat, 09 Sep 2017 14:08:40 GMT  
		Size: 8.8 MB (8799111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
