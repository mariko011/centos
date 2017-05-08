<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `buildpack-deps`

-	[`buildpack-deps:jessie-curl`](#buildpack-depsjessie-curl)
-	[`buildpack-deps:curl`](#buildpack-depscurl)
-	[`buildpack-deps:jessie-scm`](#buildpack-depsjessie-scm)
-	[`buildpack-deps:scm`](#buildpack-depsscm)
-	[`buildpack-deps:jessie`](#buildpack-depsjessie)
-	[`buildpack-deps:latest`](#buildpack-depslatest)
-	[`buildpack-deps:sid-curl`](#buildpack-depssid-curl)
-	[`buildpack-deps:sid-scm`](#buildpack-depssid-scm)
-	[`buildpack-deps:sid`](#buildpack-depssid)
-	[`buildpack-deps:stretch-curl`](#buildpack-depsstretch-curl)
-	[`buildpack-deps:stretch-scm`](#buildpack-depsstretch-scm)
-	[`buildpack-deps:stretch`](#buildpack-depsstretch)
-	[`buildpack-deps:trusty-curl`](#buildpack-depstrusty-curl)
-	[`buildpack-deps:trusty-scm`](#buildpack-depstrusty-scm)
-	[`buildpack-deps:trusty`](#buildpack-depstrusty)
-	[`buildpack-deps:wheezy-curl`](#buildpack-depswheezy-curl)
-	[`buildpack-deps:wheezy-scm`](#buildpack-depswheezy-scm)
-	[`buildpack-deps:wheezy`](#buildpack-depswheezy)
-	[`buildpack-deps:xenial-curl`](#buildpack-depsxenial-curl)
-	[`buildpack-deps:xenial-scm`](#buildpack-depsxenial-scm)
-	[`buildpack-deps:xenial`](#buildpack-depsxenial)
-	[`buildpack-deps:yakkety-curl`](#buildpack-depsyakkety-curl)
-	[`buildpack-deps:yakkety-scm`](#buildpack-depsyakkety-scm)
-	[`buildpack-deps:yakkety`](#buildpack-depsyakkety)
-	[`buildpack-deps:zesty-curl`](#buildpack-depszesty-curl)
-	[`buildpack-deps:zesty-scm`](#buildpack-depszesty-scm)
-	[`buildpack-deps:zesty`](#buildpack-depszesty)

## `buildpack-deps:jessie-curl`

```console
$ docker pull buildpack-deps@sha256:53dd5b1f78a0bac38a52150d0712cce8abd9800ce10a3753f501c9aa39f036e9
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71816501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620c030af013fccb023eba972ffead22c20451639d83147e3538561b414aa57b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:53dd5b1f78a0bac38a52150d0712cce8abd9800ce10a3753f501c9aa39f036e9
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71816501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620c030af013fccb023eba972ffead22c20451639d83147e3538561b414aa57b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:956522af659e64b9c497d96af6d433a615d296cbfced9e0238bb014e2d4766d4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115047816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a189c5cdde56e5b2834942ab241d88f738ffa0957f8d053effc731c8338501`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:956522af659e64b9c497d96af6d433a615d296cbfced9e0238bb014e2d4766d4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115047816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a189c5cdde56e5b2834942ab241d88f738ffa0957f8d053effc731c8338501`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:8810fb08c7a1561c01d85597eddef1b378997e76c6cbddf096ab8b1afaff584a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246841541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488552b6880f699dce2e9402f62e705e52d10647847b228246f16b85d0595870`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:8810fb08c7a1561c01d85597eddef1b378997e76c6cbddf096ab8b1afaff584a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246841541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488552b6880f699dce2e9402f62e705e52d10647847b228246f16b85d0595870`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:05008d2696027554c7003c2d8bce6f0a06b7e8a103081870d804495cc4f06928
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66647035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb6dfc82fccc068c0ad4513bfa5791b09f0da74e1d578f90d45f58a21135288`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:23:43 GMT
ADD file:c473955c7b4205ed3e562fd42f0e8a0dc2b73d83a951d1302c5934bccd4595e1 in / 
# Mon, 24 Apr 2017 19:23:44 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a841bbfc2677931730fc87f2ae744411bafc92235b68ca88a21443c2a9adaa55`  
		Last Modified: Mon, 24 Apr 2017 19:35:43 GMT  
		Size: 45.2 MB (45249494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c09827328edda71795dc28781e627950f1a5bbec385201080f5aed329daba`  
		Last Modified: Mon, 24 Apr 2017 22:23:11 GMT  
		Size: 21.4 MB (21397541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:7bc77c157007753ed81ef7ba584b17da95ad6fa5baa07c417bfb69ee6fe45526
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107456363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e109cfd5b359dde13884645efa04f9a9aad7cb5afaf772a7b92bf7f2292a4618`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:23:43 GMT
ADD file:c473955c7b4205ed3e562fd42f0e8a0dc2b73d83a951d1302c5934bccd4595e1 in / 
# Mon, 24 Apr 2017 19:23:44 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a841bbfc2677931730fc87f2ae744411bafc92235b68ca88a21443c2a9adaa55`  
		Last Modified: Mon, 24 Apr 2017 19:35:43 GMT  
		Size: 45.2 MB (45249494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c09827328edda71795dc28781e627950f1a5bbec385201080f5aed329daba`  
		Last Modified: Mon, 24 Apr 2017 22:23:11 GMT  
		Size: 21.4 MB (21397541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754a5e86a8a3d961b9f6ca710d35659c604e2ae767f15a82fe0dc8b41aa04e43`  
		Last Modified: Mon, 24 Apr 2017 22:23:44 GMT  
		Size: 40.8 MB (40809328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:0d051f86614bbb1de7c8c4937c50d641041508585a106df47f16b254a33754cd
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318460309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9b51c99334ec2e2ce6f905694e7b13111ac7d7fc966647efd85171e9811d95`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:23:43 GMT
ADD file:c473955c7b4205ed3e562fd42f0e8a0dc2b73d83a951d1302c5934bccd4595e1 in / 
# Mon, 24 Apr 2017 19:23:44 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a841bbfc2677931730fc87f2ae744411bafc92235b68ca88a21443c2a9adaa55`  
		Last Modified: Mon, 24 Apr 2017 19:35:43 GMT  
		Size: 45.2 MB (45249494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c09827328edda71795dc28781e627950f1a5bbec385201080f5aed329daba`  
		Last Modified: Mon, 24 Apr 2017 22:23:11 GMT  
		Size: 21.4 MB (21397541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754a5e86a8a3d961b9f6ca710d35659c604e2ae767f15a82fe0dc8b41aa04e43`  
		Last Modified: Mon, 24 Apr 2017 22:23:44 GMT  
		Size: 40.8 MB (40809328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e28b05602188de6d95f1af6d5502d14d4b85b89c3c04fa7edcdcdce4caf9c95`  
		Last Modified: Mon, 24 Apr 2017 22:25:01 GMT  
		Size: 211.0 MB (211003946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:e13614555d2ed6588230f152ae9df336789fa29fe7d3e835bd755c17ecdb6b2b
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66337601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8cdc064b22e5398ea4c47e590ced243d0cde151595e7670ba9199adeaae6d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:5e789f3878a1a99457b327afaabdab0ee13447682256649815a2d6b2738b5456
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107145699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e1145c0216e372bff2aed8468f313ab4f7078c1a40a6e3355827ab10b8c667`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:f9c6c35221d2b2c270f1c4bc2db4695fa738a947d36feee90c07bc508bed32a1
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318131301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316af82765adc3bb593eb824a8cd9257372b31326cf39a49c31c60aa1d12b06f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:26:26 GMT
ADD file:3e87e8bcd3e576dad7c7632c32d053dc2ac10103d8db164567bc44f3a212d8bb in / 
# Mon, 24 Apr 2017 19:26:27 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:17:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:76c33172ab4c3bfe88cef473b7fb807a0d06740604b3b5966c22e499609074e6`  
		Last Modified: Mon, 24 Apr 2017 19:38:06 GMT  
		Size: 45.1 MB (45070239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd034a0d94e626b5e864ffb2294eb1a1f65c9afc0ad41a4096851e0b7ff115bc`  
		Last Modified: Mon, 24 Apr 2017 22:25:35 GMT  
		Size: 21.3 MB (21267362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dda99b7f3a1996508cb7df0efa84a7009a081e44ffac6f8b74acedb879d26`  
		Last Modified: Mon, 24 Apr 2017 22:26:20 GMT  
		Size: 40.8 MB (40808098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51143e7c4f3e4f9f589fe9af1b95352ab2adc72b71c69a8f82ba955b1b034ef9`  
		Last Modified: Mon, 24 Apr 2017 22:27:31 GMT  
		Size: 211.0 MB (210985602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:abb44a8249e76c797aceaf040fe070244eccde4e878616e218389bc7241c45b5
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70376302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e757548c3c43c6005e812964dfcc149a805b2a0eee3007d48cf3db273cb476`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e7154138c72cb322c393eabd699cfd7ba899875697623ef91f1fc5400c3296`  
		Last Modified: Wed, 12 Apr 2017 22:08:38 GMT  
		Size: 4.6 MB (4600124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:a12da4afc02bb39215ad9836fe6b4cb9bfcca7b9cf3213e5097580ec597123ab
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99380616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3e968d73c81401d109ba4cd773ab9bb2c88be0966d2bec52b8699a7e8bdc66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e7154138c72cb322c393eabd699cfd7ba899875697623ef91f1fc5400c3296`  
		Last Modified: Wed, 12 Apr 2017 22:08:38 GMT  
		Size: 4.6 MB (4600124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d476a023136488cdbaef7f079743b09988c47e3215e342153f85d69b28408c`  
		Last Modified: Wed, 12 Apr 2017 22:09:23 GMT  
		Size: 29.0 MB (29004314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:3a330a7312c0e38e359d4b6d78bb897537d7bf7d85a4ffffd7947eca522ee3e9
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199224369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4cc15b1a46eaf511c343fa8d2ef1cc74129090b4eeed185bb67e4a6ab75dda`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:49:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e7154138c72cb322c393eabd699cfd7ba899875697623ef91f1fc5400c3296`  
		Last Modified: Wed, 12 Apr 2017 22:08:38 GMT  
		Size: 4.6 MB (4600124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d476a023136488cdbaef7f079743b09988c47e3215e342153f85d69b28408c`  
		Last Modified: Wed, 12 Apr 2017 22:09:23 GMT  
		Size: 29.0 MB (29004314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea0cf9a9849fd950edaef3b4b16b2a3a392fb4a499eac72187ad4ff991c44e6`  
		Last Modified: Wed, 12 Apr 2017 22:10:43 GMT  
		Size: 99.8 MB (99843753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:bc4c069e40f5193877144750befb48764cdb5635869a197529382971f62b7b7c
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45070986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8279fd2369255c20bc9e0d73a0b57eaad20659c21b8fc3537f323bededa758`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:7864c230b5b9a1184b3492655cb14b78a6b0b18d89e536c15eed6bba6658e4f4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83013492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44626b15eb12f3aa9965305a2b7b722589dc7ca5c4350dc53e86d8232f999f11`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:00:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d844091a3ba3d7bd7708b0f781a9fcae97c8d5ebfa2b8d04a2296ea91ff73eed`  
		Last Modified: Mon, 24 Apr 2017 22:29:33 GMT  
		Size: 37.9 MB (37942506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:784bb478993b83cb48e52aa24bfffca9b0d74447ddfb570953726b7fcefbac83
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179933160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c397e8c7922f7780b8aa7df1143de75305c7df63f9795b2e10443b6d0b1346`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:00:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:19:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d844091a3ba3d7bd7708b0f781a9fcae97c8d5ebfa2b8d04a2296ea91ff73eed`  
		Last Modified: Mon, 24 Apr 2017 22:29:33 GMT  
		Size: 37.9 MB (37942506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c0bd28e42599b16836ea6ef61d0807afd71c0fa78e6c2e347d591db20d41a1`  
		Last Modified: Mon, 24 Apr 2017 22:30:22 GMT  
		Size: 96.9 MB (96919668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:7dc3ee0bd67b4b66864c71379bb0997555a679f800d7036bdea6dbc1dd4cd887
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54153476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f971f1e9cd163d58ad30bae92cc3440735f8eafc5936912ea2243a36a78247ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:56:51 GMT
ADD file:141408db9037263a47322d1d78006be6a93927ac912bf14cd85100aa91da0421 in / 
# Mon, 24 Apr 2017 22:57:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:10 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aafe6b5e13de557451e1781fe7276620275625f970015cbd10036ab7d8ae27c0`  
		Last Modified: Thu, 20 Apr 2017 10:34:07 GMT  
		Size: 46.8 MB (46792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2b43a726608d3835aa027bbe181624789130c212eb191baa481f1d788a0676`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bdd1e546d21240bd4c3e4e29032a38f18102d780a78686508d40fe01c60158`  
		Last Modified: Mon, 24 Apr 2017 23:02:16 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198342c3e05101bb56b0a585dc34e39346ece39ee5d39287cda24b1fb445fed`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56970a44fd409805e3872cac236d29f5eed1a45e189bb765bcd2163c915f384`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b8521ce03e5a482d11563609f6658bb3bc2e2f8c416a83f2a7d42368e819a0`  
		Last Modified: Mon, 24 Apr 2017 23:32:33 GMT  
		Size: 7.4 MB (7358234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:0a231a1ac73d98ceecca6d87a8a1ad3c754517e7e83bfa85629b0aab22cfc797
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95972053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2e984bcb636cd24f4d676696258335f38ae80b8ae8371eb5e19c1d0b0cfee8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:56:51 GMT
ADD file:141408db9037263a47322d1d78006be6a93927ac912bf14cd85100aa91da0421 in / 
# Mon, 24 Apr 2017 22:57:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:10 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:15:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aafe6b5e13de557451e1781fe7276620275625f970015cbd10036ab7d8ae27c0`  
		Last Modified: Thu, 20 Apr 2017 10:34:07 GMT  
		Size: 46.8 MB (46792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2b43a726608d3835aa027bbe181624789130c212eb191baa481f1d788a0676`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bdd1e546d21240bd4c3e4e29032a38f18102d780a78686508d40fe01c60158`  
		Last Modified: Mon, 24 Apr 2017 23:02:16 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198342c3e05101bb56b0a585dc34e39346ece39ee5d39287cda24b1fb445fed`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56970a44fd409805e3872cac236d29f5eed1a45e189bb765bcd2163c915f384`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b8521ce03e5a482d11563609f6658bb3bc2e2f8c416a83f2a7d42368e819a0`  
		Last Modified: Mon, 24 Apr 2017 23:32:33 GMT  
		Size: 7.4 MB (7358234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e2bb8d22add4a713f20924d4cf657a4d27dfaba87ee46d61849c01b62f760e`  
		Last Modified: Mon, 24 Apr 2017 23:33:19 GMT  
		Size: 41.8 MB (41818577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:8721125418b3408a3f00a53ec0b86bef13ca9bb2a570e08c8db08dd821444a6a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235702922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2fb4c049ee32878988d701dec44328698d88c4c8ce53b6e971aeaeda7a4604d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:56:51 GMT
ADD file:141408db9037263a47322d1d78006be6a93927ac912bf14cd85100aa91da0421 in / 
# Mon, 24 Apr 2017 22:57:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:10 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:15:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:17:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aafe6b5e13de557451e1781fe7276620275625f970015cbd10036ab7d8ae27c0`  
		Last Modified: Thu, 20 Apr 2017 10:34:07 GMT  
		Size: 46.8 MB (46792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2b43a726608d3835aa027bbe181624789130c212eb191baa481f1d788a0676`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bdd1e546d21240bd4c3e4e29032a38f18102d780a78686508d40fe01c60158`  
		Last Modified: Mon, 24 Apr 2017 23:02:16 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8198342c3e05101bb56b0a585dc34e39346ece39ee5d39287cda24b1fb445fed`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56970a44fd409805e3872cac236d29f5eed1a45e189bb765bcd2163c915f384`  
		Last Modified: Mon, 24 Apr 2017 23:02:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b8521ce03e5a482d11563609f6658bb3bc2e2f8c416a83f2a7d42368e819a0`  
		Last Modified: Mon, 24 Apr 2017 23:32:33 GMT  
		Size: 7.4 MB (7358234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e2bb8d22add4a713f20924d4cf657a4d27dfaba87ee46d61849c01b62f760e`  
		Last Modified: Mon, 24 Apr 2017 23:33:19 GMT  
		Size: 41.8 MB (41818577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed5b2327eee6ef2fdbe063b34a296efa42c7f85b789e9b49bd833b8282bcfbe`  
		Last Modified: Mon, 24 Apr 2017 23:34:23 GMT  
		Size: 139.7 MB (139730869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:be854bf45a546b3c061349b401f411cb5765e20ee9a64002828170abbf35093d
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49548875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e729b7a56c7c0d06a345bcfc70206bea7d66fd860add43a981e102f6e16b94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:57:48 GMT
ADD file:06609423c35881998d648352702e91a90aac71a764d875e8548774906d24447c in / 
# Mon, 24 Apr 2017 22:57:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:59 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:17:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c33899b2bc22cb5fa3fd6762134c9ae61a02d82c40e4e505b2217a7128fecf85`  
		Last Modified: Mon, 24 Apr 2017 23:03:52 GMT  
		Size: 42.5 MB (42504878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c357a45506793dea5b84d4ba9f5f2ae1702d8d8cc684189ab4983a338b5369`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9ad21462d47b4dce2d58dfdcea2b0a91e07eed747909103a2880354f7dd882`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53272eb5cbaf78e89734e2b4467fea5d631b426042ca7349ecf22b5162d2880`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367354b20baabf1bd0e5336b500585eb5d53978297469bcd7c6a5854394a6de`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d5021fc7109ca00adce3df5d58f7a1673aad9e090ae4cabbf1b4b3644600d9`  
		Last Modified: Mon, 24 Apr 2017 23:35:00 GMT  
		Size: 7.0 MB (7041649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:106909bbe965637c9c62b14399c9ca296d5049804163cceb772c3d0f14be54f1
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92657367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914738b2edb56e6feff250e61dcf15233a6f6318e728e08925e3cdddd88e0aac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:57:48 GMT
ADD file:06609423c35881998d648352702e91a90aac71a764d875e8548774906d24447c in / 
# Mon, 24 Apr 2017 22:57:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:59 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:17:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:18:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c33899b2bc22cb5fa3fd6762134c9ae61a02d82c40e4e505b2217a7128fecf85`  
		Last Modified: Mon, 24 Apr 2017 23:03:52 GMT  
		Size: 42.5 MB (42504878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c357a45506793dea5b84d4ba9f5f2ae1702d8d8cc684189ab4983a338b5369`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9ad21462d47b4dce2d58dfdcea2b0a91e07eed747909103a2880354f7dd882`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53272eb5cbaf78e89734e2b4467fea5d631b426042ca7349ecf22b5162d2880`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367354b20baabf1bd0e5336b500585eb5d53978297469bcd7c6a5854394a6de`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d5021fc7109ca00adce3df5d58f7a1673aad9e090ae4cabbf1b4b3644600d9`  
		Last Modified: Mon, 24 Apr 2017 23:35:00 GMT  
		Size: 7.0 MB (7041649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133eb957a2c06252eb651a169a1af2270fcdc02a43c5d5144e9a2c8eb378ba9`  
		Last Modified: Mon, 24 Apr 2017 23:35:40 GMT  
		Size: 43.1 MB (43108492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:b56092dde89ab2729eec49ad6d990dd98002050167646f539a861474f94f18a7
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262925631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c819faed7ec3f186d030b736ef2ea669778c4d6de732a75cfab215d82108b167`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:57:48 GMT
ADD file:06609423c35881998d648352702e91a90aac71a764d875e8548774906d24447c in / 
# Mon, 24 Apr 2017 22:57:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:59 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:17:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:18:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:20:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c33899b2bc22cb5fa3fd6762134c9ae61a02d82c40e4e505b2217a7128fecf85`  
		Last Modified: Mon, 24 Apr 2017 23:03:52 GMT  
		Size: 42.5 MB (42504878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c357a45506793dea5b84d4ba9f5f2ae1702d8d8cc684189ab4983a338b5369`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9ad21462d47b4dce2d58dfdcea2b0a91e07eed747909103a2880354f7dd882`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53272eb5cbaf78e89734e2b4467fea5d631b426042ca7349ecf22b5162d2880`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367354b20baabf1bd0e5336b500585eb5d53978297469bcd7c6a5854394a6de`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d5021fc7109ca00adce3df5d58f7a1673aad9e090ae4cabbf1b4b3644600d9`  
		Last Modified: Mon, 24 Apr 2017 23:35:00 GMT  
		Size: 7.0 MB (7041649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133eb957a2c06252eb651a169a1af2270fcdc02a43c5d5144e9a2c8eb378ba9`  
		Last Modified: Mon, 24 Apr 2017 23:35:40 GMT  
		Size: 43.1 MB (43108492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018a0605164f5eba65da5ed960c33a847d23e3b11a3fd03bdbf46ccac3b7a668`  
		Last Modified: Mon, 24 Apr 2017 23:37:09 GMT  
		Size: 170.3 MB (170268264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:e56bc8b4d3b2d7960d6cac72980d3b8fcae8df9bd79af88b1fc5272a97106fa2
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-curl` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45041548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f9aefc8a6224bc4464f09f5fa9ee6ad99dade04ba8b459cb0b159e8aa5d3c21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:58:36 GMT
ADD file:0580427668b7fda8b57b8191d117f8bbda00acd9e921beef670800838c9e57c1 in / 
# Mon, 24 Apr 2017 22:58:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:58:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:58:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:58:58 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a5614abc69121e3be2e6f070ee104cf18e716d860d5ac8dc7f5d4b0b45d4eeb`  
		Last Modified: Mon, 24 Apr 2017 23:04:56 GMT  
		Size: 37.5 MB (37469402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4d067130d8e89de718726a2c26184b3906f191139887e034bc53fa2b2a0323`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831c7598833c1494ca1cf9f342daefdfd37f1dabff9518ef579b09fa643c3aa2`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a410fc1d3bfe19c7c29a947bcdcd46a44bc2e2756d977ae7a6f154bc22fa92a`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3271f041ee12253944506a40ac433c9642778b8f13d54fa782f19dc1f5ee160c`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08079e3ac12445fd00928811ce8fe19f2fc552acd95ddfaaaed4420bb518d1af`  
		Last Modified: Mon, 24 Apr 2017 23:37:48 GMT  
		Size: 7.6 MB (7569871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:c639908c13e9a79eed993df6122ed20f91824a40a8dd5919d38186094d77c433
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-scm` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88997081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a096e5d3cb45f390bfb8a7cd423dcd8115434d397145d77533e69e1e3374679`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:58:36 GMT
ADD file:0580427668b7fda8b57b8191d117f8bbda00acd9e921beef670800838c9e57c1 in / 
# Mon, 24 Apr 2017 22:58:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:58:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:58:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:58:58 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:22:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a5614abc69121e3be2e6f070ee104cf18e716d860d5ac8dc7f5d4b0b45d4eeb`  
		Last Modified: Mon, 24 Apr 2017 23:04:56 GMT  
		Size: 37.5 MB (37469402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4d067130d8e89de718726a2c26184b3906f191139887e034bc53fa2b2a0323`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831c7598833c1494ca1cf9f342daefdfd37f1dabff9518ef579b09fa643c3aa2`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a410fc1d3bfe19c7c29a947bcdcd46a44bc2e2756d977ae7a6f154bc22fa92a`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3271f041ee12253944506a40ac433c9642778b8f13d54fa782f19dc1f5ee160c`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08079e3ac12445fd00928811ce8fe19f2fc552acd95ddfaaaed4420bb518d1af`  
		Last Modified: Mon, 24 Apr 2017 23:37:48 GMT  
		Size: 7.6 MB (7569871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552e4243cac1260b9a042ca293f67f57811f28156b995d6995de212822d297ae`  
		Last Modified: Mon, 24 Apr 2017 23:38:34 GMT  
		Size: 44.0 MB (43955533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:f634f12bb68938be6879eb0a5272f5cafed6b164e42d32ae54ec720396005431
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260098397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6124b2802a6848ce8bc2a58c48d6153d17610d35c9d3b387866a3db1a82fe44`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:58:36 GMT
ADD file:0580427668b7fda8b57b8191d117f8bbda00acd9e921beef670800838c9e57c1 in / 
# Mon, 24 Apr 2017 22:58:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:58:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:58:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:58:58 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:22:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:24:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a5614abc69121e3be2e6f070ee104cf18e716d860d5ac8dc7f5d4b0b45d4eeb`  
		Last Modified: Mon, 24 Apr 2017 23:04:56 GMT  
		Size: 37.5 MB (37469402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4d067130d8e89de718726a2c26184b3906f191139887e034bc53fa2b2a0323`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831c7598833c1494ca1cf9f342daefdfd37f1dabff9518ef579b09fa643c3aa2`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a410fc1d3bfe19c7c29a947bcdcd46a44bc2e2756d977ae7a6f154bc22fa92a`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3271f041ee12253944506a40ac433c9642778b8f13d54fa782f19dc1f5ee160c`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08079e3ac12445fd00928811ce8fe19f2fc552acd95ddfaaaed4420bb518d1af`  
		Last Modified: Mon, 24 Apr 2017 23:37:48 GMT  
		Size: 7.6 MB (7569871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552e4243cac1260b9a042ca293f67f57811f28156b995d6995de212822d297ae`  
		Last Modified: Mon, 24 Apr 2017 23:38:34 GMT  
		Size: 44.0 MB (43955533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55801a59defa5d7ffab5fc4c030b3ddd68f84db0b24de5a5a39d94a0885dc40d`  
		Last Modified: Mon, 24 Apr 2017 23:39:41 GMT  
		Size: 171.1 MB (171101316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
