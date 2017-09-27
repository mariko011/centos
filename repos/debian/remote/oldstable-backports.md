## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:042fee2dbd7cc3341089ce25365383b3761ecb98a927965da150a6f6f384e368
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
$ docker pull debian@sha256:650684c837697f58ad5195ecf11f351fb3db83d499a490f7e4f038c948bb8e85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52595757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a354ff53e0502bebbf52d28673b2f9436869b96c3a99757dad598811a88173`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:08 GMT
ADD file:f42b690044a707ed2931bc839c825cabb82ae3411b2274c5796d888e3bf83623 in / 
# Wed, 13 Sep 2017 08:41:08 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:41:10 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8f79b35aceac339866391bd48d39a696115ed199f451e7288ca122eb72e43a7b`  
		Last Modified: Wed, 13 Sep 2017 08:44:41 GMT  
		Size: 52.6 MB (52595533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89efbca702a9e481612ec565d4fbf3c150086e3c9d063eb29cfaf548c586899`  
		Last Modified: Wed, 13 Sep 2017 08:44:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5d10a467f18925fcf76dd1eb1b166fa9b7361a2f44f1ac1f34d9c15f1b56148e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50880022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f17d8c2c0a1977ddc956578e3dbeecdfea36fe078341cf5dfd74499f66655b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:25:12 GMT
ADD file:b099d470dae94ac16689922c502ab3b607ba014a43e09188090c6ffcbb9008f5 in / 
# Wed, 27 Sep 2017 14:25:13 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:25:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:274a569985d254bfda1f8e570d7acf96d7d9ead3c7a8cd5cc532f67774ed409a`  
		Last Modified: Wed, 27 Sep 2017 14:29:36 GMT  
		Size: 50.9 MB (50879799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a139322675b3d934099a24b508faa91a8b1cce160098e9f0bc3f3e102260c4`  
		Last Modified: Wed, 27 Sep 2017 14:29:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:ee075cae82d5ffbb49e965aa535f2bafd24e99e602e529784afe4886a273593c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48686777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787c5ecef3460a864ca3cb8d5d06dfc668f2eabf4007c5ea74a357a21a131856`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:13:18 GMT
ADD file:4ac35bf49b93e3a5c126c80ee1528aea36711ae2695db9a4bf7b623ad00dd4ca in / 
# Wed, 27 Sep 2017 04:13:18 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:13:24 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0a42470147c9aed5b28e6494e94e6c1f6de236ddfd1723ffbe789c1d5dd118da`  
		Last Modified: Wed, 27 Sep 2017 04:18:36 GMT  
		Size: 48.7 MB (48686551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47669dd6cc838568aba4cc4ed5d051a6351d2ffb4ca31a91276045f5d0d614`  
		Last Modified: Wed, 27 Sep 2017 04:18:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:73321fb0980647f70684acc78e3ebaf4512bdaaf65d54bbea601cedcc3a8cf30
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49929669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5610adb344f46b2a7791e7051c77785bc83d06c7066bf49ee4cc39fee613164`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:57 GMT
ADD file:67a1368f22f04d1935d1babf4560345d0bb55ab2964c13654d37bc2de23b695d in / 
# Fri, 08 Sep 2017 17:24:59 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:25:10 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:690e82bcc7702101ad3ad64fae113caf7ac1d85f530129b8bb56e154b4ccd589`  
		Last Modified: Fri, 08 Sep 2017 17:37:02 GMT  
		Size: 49.9 MB (49929443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9a5635770b34bead14f434d4fb301575a75a45b25a0b57598a9325e55886d0`  
		Last Modified: Fri, 08 Sep 2017 17:37:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:becc39d3f13c4d30c1bd9ba852b2b4fafdac11d1fc49c11ab15422ec5ddbe9b9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52773367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f39d2831328561bb3cfba5a6d101486500cf6ed2f9e60f3c568b61fa3c4992e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:39 GMT
ADD file:efb3e76bd01909b826c036d05bc8e05c5de37d686ec0010fa755a1c8ac2cfda8 in / 
# Fri, 08 Sep 2017 13:18:39 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:18:43 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e6413c9f4324a9331a92916aa0bf0544212e3f4e71273ecc5055375a5d35c30e`  
		Last Modified: Fri, 08 Sep 2017 13:24:29 GMT  
		Size: 52.8 MB (52773143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf7224032721534d3ed6a39c6302215b240983d0328cd0d4f52a07c1eb394b2`  
		Last Modified: Fri, 08 Sep 2017 13:24:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:936cd455fe06b04fb31d8c3e26dfe7d11c7099beda1544070b8f30f9e69e943c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51809798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec7eee8e5fbdf7434131e533f50e6b2bebcc58c7a6282a044d4c9bcdd753cd2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:52 GMT
ADD file:5f0613c6611f6a84c8cdee4016be52ff6af10ac20ec766da33db456ad26424c7 in / 
# Fri, 08 Sep 2017 00:32:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:32:57 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:344f6efc5cd523d24af8e40c79564f9f765ba997757da3effdc4c0dfe2042b88`  
		Last Modified: Fri, 08 Sep 2017 00:38:03 GMT  
		Size: 51.8 MB (51809572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5603b2f27af77681a389d8cbc3e566f7b7b886faee8995ffc7d3a94296508ac`  
		Last Modified: Fri, 08 Sep 2017 00:38:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:968de366fd866eec1f33f3fd957a7cd413197bf6aa42d2ca2741bc4630a3bf4c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52789031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f805f4176ac465bf09ca91c8c08dd07dee822f497e65b548771192375949b909`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:03 GMT
ADD file:20820d7d09dec97f5a21c4ebeb3bb40d45319e089ab793acfb372698eab9c53e in / 
# Fri, 08 Sep 2017 05:22:04 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:22:06 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d2a499c9254b42bd5340c34b3c6bb1c266e1b41e2d0e9f4fd5beb5a61fec0ad1`  
		Last Modified: Fri, 08 Sep 2017 05:25:20 GMT  
		Size: 52.8 MB (52788807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58eb5320500f8268160ea223a2be6c9e9db8fe181a22fc175f8482287b440672`  
		Last Modified: Fri, 08 Sep 2017 05:25:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
