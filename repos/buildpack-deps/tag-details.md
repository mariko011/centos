<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `buildpack-deps`

-	[`buildpack-deps:artful`](#buildpack-depsartful)
-	[`buildpack-deps:artful-curl`](#buildpack-depsartful-curl)
-	[`buildpack-deps:artful-scm`](#buildpack-depsartful-scm)
-	[`buildpack-deps:buster`](#buildpack-depsbuster)
-	[`buildpack-deps:buster-curl`](#buildpack-depsbuster-curl)
-	[`buildpack-deps:buster-scm`](#buildpack-depsbuster-scm)
-	[`buildpack-deps:curl`](#buildpack-depscurl)
-	[`buildpack-deps:jessie`](#buildpack-depsjessie)
-	[`buildpack-deps:jessie-curl`](#buildpack-depsjessie-curl)
-	[`buildpack-deps:jessie-scm`](#buildpack-depsjessie-scm)
-	[`buildpack-deps:latest`](#buildpack-depslatest)
-	[`buildpack-deps:scm`](#buildpack-depsscm)
-	[`buildpack-deps:sid`](#buildpack-depssid)
-	[`buildpack-deps:sid-curl`](#buildpack-depssid-curl)
-	[`buildpack-deps:sid-scm`](#buildpack-depssid-scm)
-	[`buildpack-deps:stretch`](#buildpack-depsstretch)
-	[`buildpack-deps:stretch-curl`](#buildpack-depsstretch-curl)
-	[`buildpack-deps:stretch-scm`](#buildpack-depsstretch-scm)
-	[`buildpack-deps:trusty`](#buildpack-depstrusty)
-	[`buildpack-deps:trusty-curl`](#buildpack-depstrusty-curl)
-	[`buildpack-deps:trusty-scm`](#buildpack-depstrusty-scm)
-	[`buildpack-deps:wheezy`](#buildpack-depswheezy)
-	[`buildpack-deps:wheezy-curl`](#buildpack-depswheezy-curl)
-	[`buildpack-deps:wheezy-scm`](#buildpack-depswheezy-scm)
-	[`buildpack-deps:xenial`](#buildpack-depsxenial)
-	[`buildpack-deps:xenial-curl`](#buildpack-depsxenial-curl)
-	[`buildpack-deps:xenial-scm`](#buildpack-depsxenial-scm)
-	[`buildpack-deps:zesty`](#buildpack-depszesty)
-	[`buildpack-deps:zesty-curl`](#buildpack-depszesty-curl)
-	[`buildpack-deps:zesty-scm`](#buildpack-depszesty-scm)

## `buildpack-deps:artful`

```console
$ docker pull buildpack-deps@sha256:0a35034a68760a363e3a09f927428b5f73dcc05c047a8982d78e4bdc5869c9a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3e2bc3ef44040f39bb21f4b4c91940ecb18576ba4e8f28eecb932207d72fa814
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261587624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3028381a8f83935e28fbc5851927f53557259e2e7c8b00b73f2fc7fe93b61bc5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:44:56 GMT
ADD file:c5fd97d776dc13116460fbfe9516f1a028ba5788ea39ee71d8e9cfe7caed676f in / 
# Sat, 04 Nov 2017 09:44:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:44:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:01 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:16:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:22:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d26cfb4142faf488780cb8080f737aa1e5db91805163d83448842f64084bb724`  
		Last Modified: Thu, 19 Oct 2017 16:50:57 GMT  
		Size: 39.2 MB (39215977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9061f2867f7e61c3f5420eb574ba2fa334667501e4fff59037fff42e236126cf`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f09e6daf78c64326ce6338926259c67a94bda705094f4f5a4de7ffa760d7b`  
		Last Modified: Sat, 04 Nov 2017 09:45:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae7d54d2d8cfbed3fb28e0d50d4d1c7efc8c74cfe0a932f8de266e9ac19b18`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69eda9a0dde47b44b877d1c561a490c6f581f4185be674d0228d0000c5c9c5`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e4cf3d1d3f4191a1a4161e180a5f74966b61486552e655b5eec35c0ce21a0`  
		Last Modified: Sat, 04 Nov 2017 15:41:10 GMT  
		Size: 6.0 MB (6037253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5795a02adb91bb3d50d3a4caf7e511ec2bec283799b0f1f8268585448cb2d666`  
		Last Modified: Sat, 04 Nov 2017 15:41:38 GMT  
		Size: 45.7 MB (45698451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc19a99f7f08d92cd972dc52972d61879db6e8ec731590f64f55d77e44ffb311`  
		Last Modified: Sat, 04 Nov 2017 15:42:32 GMT  
		Size: 170.6 MB (170633690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f77c145e54e47c178a68966932aa92111b9628f4308a9b1e3da6971d6b41771a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233043925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7cb753440ce80362067326e0320fc2446e08c90c845ff67ddeed5ebbb5a6280`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:55:51 GMT
ADD file:e295a2804e9021d3aebf237c767f9f2130874c00153f74ffdeba3eaab30fbaac in / 
# Thu, 19 Oct 2017 16:55:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:55:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:55:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:55:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:55:54 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:06:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:06:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6aee42d1a16f080f5e31ecdb42ad2cd6f4a207e0a500a908cf7bfda5ff192992`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 35.1 MB (35054496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc204a5c135c178768b589f1b3ba0b7bb133676a405801d33a046bab704808cd`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875211a9caba9133760f30d72afd4d4d26c5cd02c41842e0c1c2ea3eb4b3e99c`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7239c8aa2ef420bca9bd3ad2a162ec45b8326c4445ee6a04d2bc7db21062b34`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3296b67840d45438ac734401161bf6344bbb00228c9a13cefb2d87d769fbf9f5`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9056c14ebd1e3f1737712ae8bc184cac07a2cd941a3859a14852404bc7bb9890`  
		Last Modified: Thu, 19 Oct 2017 17:17:59 GMT  
		Size: 5.1 MB (5101409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eba2b9a7968a54f18b586e32b719167016a7986e1134c77308512b490b564b6`  
		Last Modified: Fri, 03 Nov 2017 00:25:26 GMT  
		Size: 41.9 MB (41860839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc95a876d4a25ccbf88a711de0e571c90fd6de7cb5712f82ae20f2988fb04b`  
		Last Modified: Fri, 03 Nov 2017 00:26:18 GMT  
		Size: 151.0 MB (151024914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2b472fae8e5d67d8b95608598b889315cd861865890c9083395170cf9de3c879
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246236929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d70c4290d678bb91a30bbde5e8359ccae6fe9bbe29d1d0e816fbd1ef80d2ee6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:03 GMT
ADD file:910e149f9bb1b98604e675d9e071d6de38047c2a16daf5352e66c7916b8f01f2 in / 
# Thu, 19 Oct 2017 16:56:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:31:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:39:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e5b0ba60fd18373323fbf61d66aadd15f7f147f73b6d9123fda3f14ea88c83c4`  
		Last Modified: Thu, 19 Oct 2017 16:58:07 GMT  
		Size: 36.2 MB (36214016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa0e39786f334992f3365c97ca0618d3616fdb61cb35c320e38376b2ac9f3a`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b855c81f8b3ebe0829512446549542bdbfa6bf01395779ce92bd73a70c804abb`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894de6a565f29a27d72202ceff1e27c6827932cd8502734b58d0a4aca81c34e`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6facbff585a5109624d1b150e3dcd167deccf602968fdbf0f9a0e43f5fef3b0`  
		Last Modified: Thu, 19 Oct 2017 17:33:18 GMT  
		Size: 5.3 MB (5298614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e2d4686bfda58bf7a83cfa79ce30bdd80db4d37a28a36147e1fc7f8e761b29`  
		Last Modified: Fri, 03 Nov 2017 10:43:22 GMT  
		Size: 43.9 MB (43921644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8414bf315b0a4fc4dd3328fe690bcb46d1c26c6eb9e1bd79f50aebe0695e410`  
		Last Modified: Fri, 03 Nov 2017 10:44:47 GMT  
		Size: 160.8 MB (160800419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d98cc4c22aa2add9d820fe5c8cc68d82db01109c2f9c5bec729041f9135edc78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264281652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7d6564f5554f0f7063054e12c4740ca6d5f297e9a136f902507a4788206484`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:07 GMT
ADD file:076cee6466bce5b77bbc3b6b359831aa5810b3497b7ebdfbfa18b455ebd31a29 in / 
# Thu, 19 Oct 2017 16:56:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:06:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:08:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a83e1d13695f175cd2f542162df4f77ac453af29c8e6bd7eb98d7a7e7ab3828`  
		Last Modified: Thu, 19 Oct 2017 16:57:02 GMT  
		Size: 40.0 MB (40037962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb63f1ac3d814a8a905b9b349010f37e65d877d7c1282f54c1758690253b4bd`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd6cd1aef7efb5c960f2bf83aaec92bff425fc042ee74ee716e5c05f5c5dd5`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf247371706b0726dc00efbb0855246efa3d866f5d0a2260422457ef01424e0`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08155ce50231367d35326ae407be7c4493064f6baf53f29e4054caa3ed9198ec`  
		Last Modified: Thu, 19 Oct 2017 17:19:56 GMT  
		Size: 6.1 MB (6099489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2589f012033d9311c9a90a25ff9c70200985ec0d0657df3eec55b2f77e2a985`  
		Last Modified: Fri, 03 Nov 2017 00:04:39 GMT  
		Size: 47.3 MB (47290921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbffb6054ead6909f7241645ea3873d59d5af6e7d761379baf3463671745c48`  
		Last Modified: Fri, 03 Nov 2017 00:05:28 GMT  
		Size: 170.9 MB (170851025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:57cf67dd0575679db7b3834d853dfcbf5b3d84093214f7962aaf8af851ba587e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.6 MB (282639767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03d3e254eac84a5f3b02766cff732b3f012c4370bbb700c2f9f48a765a032e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:00 GMT
ADD file:b74122be4f1003f3a8afd759e1e56733eb7d8ac02698486b65556e831ffe5627 in / 
# Thu, 19 Oct 2017 16:56:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:32 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:15:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 15:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 15:48:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:02:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2337aaea32bf8cd758fe4f931358024fd68cb4d79019859326d9665a66b75cb9`  
		Last Modified: Thu, 19 Oct 2017 16:57:30 GMT  
		Size: 42.4 MB (42449498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf02bb6c20cfc307d42493dfa9d2e410a32dde821ac248ed69dd6a7df9d6562`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac491d4677a40ab6396a4d562f9bb4868bbf37be3378f57066d9ff744e373888`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccc3af7278f5db8e08c2fe132c9e86c0d39929e7831d4786ce45f0fc836a186`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee67224a68dabad14949e47b84419539dfca9cf70927d64d056c78a6069626ea`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c760aca2ed3fc46dfc8364aa48c8e4e2a922526bc410f825a61514784cd706`  
		Last Modified: Thu, 19 Oct 2017 17:49:56 GMT  
		Size: 5.9 MB (5943028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b675027b088b366164b7a8fca516ad52db46d727f61cebf78dde5d833a60040`  
		Last Modified: Thu, 02 Nov 2017 17:45:01 GMT  
		Size: 53.2 MB (53228832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c80585737e1c343c18ba0fe071fe743cee16d605c67a382f2f34dbb649069d7`  
		Last Modified: Thu, 02 Nov 2017 17:46:01 GMT  
		Size: 181.0 MB (181016148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9df344bb55b86127db44b11b10d5af75958994cf28346185e143ae5c70f3746d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247774415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067e45ab8a47a1a78bf049bea3fb3269b9d9f22ac6fe6e03e857750b00110bfe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:28 GMT
ADD file:b930922e765fe4cd0e19265f5f6c342340a5b2ee855198d99a445c0bd99a7d61 in / 
# Fri, 17 Nov 2017 22:07:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:31 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:26:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f172841ba9f7d2c1c21c31504006aab693b4dca92706d268120c9401e0e54c9c`  
		Last Modified: Fri, 17 Nov 2017 22:08:41 GMT  
		Size: 38.3 MB (38251078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b249bdeb130c08219c1ac394fd12aef2f9a9d7a318904c1adf2a6b9d1ab1ba3`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8242ed7a71bed64d2b07fd9756253c0ceb3cac059887d7c6f9a0d8874e1553f`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30778f8e8bcaf294e36e0182071a5ba7d990bc20b17343bcc64e16a9c54dafe8`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1db6aa93b0ec59c26fcf939ccd8744a113ea48a883e323e8a0f631b7c46d8e`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72469cf7519f2a03259836492b2d38e9d56c9293b75913d638d1d259dafb34e7`  
		Last Modified: Fri, 17 Nov 2017 22:34:19 GMT  
		Size: 5.7 MB (5738817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b9803128088058175dbe91db60ee91eeb9af1261e6f92d47e06770d1f66748`  
		Last Modified: Fri, 17 Nov 2017 22:34:37 GMT  
		Size: 45.6 MB (45633745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4732f25c621705f371e2bb0ec19f0ced23032c4ffaf5a1d93fbd91baa8f1af`  
		Last Modified: Fri, 17 Nov 2017 22:35:13 GMT  
		Size: 158.1 MB (158148419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:83a57be2d56c1f84f9492ef1d1b429ea99d66505760a1a35f82d6b1fc35958cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:32b2ab2633ff4e42987b9426942181619d73e60578fd27081547da9e5e6f10ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45255483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ca252b1cbbff8e50471fcb6f5e757431e95a6cf0bffe8d597b86cd75bd0e4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:44:56 GMT
ADD file:c5fd97d776dc13116460fbfe9516f1a028ba5788ea39ee71d8e9cfe7caed676f in / 
# Sat, 04 Nov 2017 09:44:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:44:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:01 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:16:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d26cfb4142faf488780cb8080f737aa1e5db91805163d83448842f64084bb724`  
		Last Modified: Thu, 19 Oct 2017 16:50:57 GMT  
		Size: 39.2 MB (39215977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9061f2867f7e61c3f5420eb574ba2fa334667501e4fff59037fff42e236126cf`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f09e6daf78c64326ce6338926259c67a94bda705094f4f5a4de7ffa760d7b`  
		Last Modified: Sat, 04 Nov 2017 09:45:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae7d54d2d8cfbed3fb28e0d50d4d1c7efc8c74cfe0a932f8de266e9ac19b18`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69eda9a0dde47b44b877d1c561a490c6f581f4185be674d0228d0000c5c9c5`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e4cf3d1d3f4191a1a4161e180a5f74966b61486552e655b5eec35c0ce21a0`  
		Last Modified: Sat, 04 Nov 2017 15:41:10 GMT  
		Size: 6.0 MB (6037253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:428ea2b99848922fd9fdfb598a0f7d458293b62b0c5386b67b50d64e1981242d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40158172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6926df8b6547866bf5b2314004f6f97ff04f7fcc93e39a762fd0d3074e36af5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:55:51 GMT
ADD file:e295a2804e9021d3aebf237c767f9f2130874c00153f74ffdeba3eaab30fbaac in / 
# Thu, 19 Oct 2017 16:55:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:55:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:55:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:55:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:55:54 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:06:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6aee42d1a16f080f5e31ecdb42ad2cd6f4a207e0a500a908cf7bfda5ff192992`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 35.1 MB (35054496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc204a5c135c178768b589f1b3ba0b7bb133676a405801d33a046bab704808cd`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875211a9caba9133760f30d72afd4d4d26c5cd02c41842e0c1c2ea3eb4b3e99c`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7239c8aa2ef420bca9bd3ad2a162ec45b8326c4445ee6a04d2bc7db21062b34`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3296b67840d45438ac734401161bf6344bbb00228c9a13cefb2d87d769fbf9f5`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9056c14ebd1e3f1737712ae8bc184cac07a2cd941a3859a14852404bc7bb9890`  
		Last Modified: Thu, 19 Oct 2017 17:17:59 GMT  
		Size: 5.1 MB (5101409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:aa6283de1de3f21ffff38931ec79c69047c36e80c02b03410493ca1bbe6fd662
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41514866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78fe10c253cb255339ee9a980304ec0d9757d045055126e7aed5d203f4890ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:03 GMT
ADD file:910e149f9bb1b98604e675d9e071d6de38047c2a16daf5352e66c7916b8f01f2 in / 
# Thu, 19 Oct 2017 16:56:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:31:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e5b0ba60fd18373323fbf61d66aadd15f7f147f73b6d9123fda3f14ea88c83c4`  
		Last Modified: Thu, 19 Oct 2017 16:58:07 GMT  
		Size: 36.2 MB (36214016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa0e39786f334992f3365c97ca0618d3616fdb61cb35c320e38376b2ac9f3a`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b855c81f8b3ebe0829512446549542bdbfa6bf01395779ce92bd73a70c804abb`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894de6a565f29a27d72202ceff1e27c6827932cd8502734b58d0a4aca81c34e`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6facbff585a5109624d1b150e3dcd167deccf602968fdbf0f9a0e43f5fef3b0`  
		Last Modified: Thu, 19 Oct 2017 17:33:18 GMT  
		Size: 5.3 MB (5298614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0eb5a607037cd71ad7bef9e57c32796ce19b745a7e49837e7b9bce219af8e914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46139706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae5ae18e370d721174ac891464fa4ddfc33472d57f9530583a0fb6af04125bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:07 GMT
ADD file:076cee6466bce5b77bbc3b6b359831aa5810b3497b7ebdfbfa18b455ebd31a29 in / 
# Thu, 19 Oct 2017 16:56:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:06:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5a83e1d13695f175cd2f542162df4f77ac453af29c8e6bd7eb98d7a7e7ab3828`  
		Last Modified: Thu, 19 Oct 2017 16:57:02 GMT  
		Size: 40.0 MB (40037962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb63f1ac3d814a8a905b9b349010f37e65d877d7c1282f54c1758690253b4bd`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd6cd1aef7efb5c960f2bf83aaec92bff425fc042ee74ee716e5c05f5c5dd5`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf247371706b0726dc00efbb0855246efa3d866f5d0a2260422457ef01424e0`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08155ce50231367d35326ae407be7c4493064f6baf53f29e4054caa3ed9198ec`  
		Last Modified: Thu, 19 Oct 2017 17:19:56 GMT  
		Size: 6.1 MB (6099489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4370d595e07d3eb0608b0db0596cda1b21663d7cfb7d17191023e8ce6b4193ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48394787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac69f2be2c121a89af9942ff20b6d124e391adbcbc27c9caf706aa57bece169`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:00 GMT
ADD file:b74122be4f1003f3a8afd759e1e56733eb7d8ac02698486b65556e831ffe5627 in / 
# Thu, 19 Oct 2017 16:56:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:32 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:15:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 15:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2337aaea32bf8cd758fe4f931358024fd68cb4d79019859326d9665a66b75cb9`  
		Last Modified: Thu, 19 Oct 2017 16:57:30 GMT  
		Size: 42.4 MB (42449498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf02bb6c20cfc307d42493dfa9d2e410a32dde821ac248ed69dd6a7df9d6562`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac491d4677a40ab6396a4d562f9bb4868bbf37be3378f57066d9ff744e373888`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccc3af7278f5db8e08c2fe132c9e86c0d39929e7831d4786ce45f0fc836a186`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee67224a68dabad14949e47b84419539dfca9cf70927d64d056c78a6069626ea`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c760aca2ed3fc46dfc8364aa48c8e4e2a922526bc410f825a61514784cd706`  
		Last Modified: Thu, 19 Oct 2017 17:49:56 GMT  
		Size: 5.9 MB (5943028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2392f30179524f3e0bd2b0a70e68f1a79889fb90df0fde538528a8d7580f4aca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43992251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3cfb18cb1f115ba04ccc9f0b418ebdd5f5f84d1f7dc248427543bf2362cc82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:28 GMT
ADD file:b930922e765fe4cd0e19265f5f6c342340a5b2ee855198d99a445c0bd99a7d61 in / 
# Fri, 17 Nov 2017 22:07:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:31 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:26:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f172841ba9f7d2c1c21c31504006aab693b4dca92706d268120c9401e0e54c9c`  
		Last Modified: Fri, 17 Nov 2017 22:08:41 GMT  
		Size: 38.3 MB (38251078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b249bdeb130c08219c1ac394fd12aef2f9a9d7a318904c1adf2a6b9d1ab1ba3`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8242ed7a71bed64d2b07fd9756253c0ceb3cac059887d7c6f9a0d8874e1553f`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30778f8e8bcaf294e36e0182071a5ba7d990bc20b17343bcc64e16a9c54dafe8`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1db6aa93b0ec59c26fcf939ccd8744a113ea48a883e323e8a0f631b7c46d8e`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72469cf7519f2a03259836492b2d38e9d56c9293b75913d638d1d259dafb34e7`  
		Last Modified: Fri, 17 Nov 2017 22:34:19 GMT  
		Size: 5.7 MB (5738817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:artful-scm`

```console
$ docker pull buildpack-deps@sha256:62e32ca94fb6107aa9de945b8ef8b91e4f18df3ea3a2e47f32c8fba8c4ed9d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:52eaef2fa7316654ab6046909855c4e5f886a877579af54618214f07cb892b4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90953934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e8e478ce1e6f1898762650727c374a3f0efa4b4bac032117a4f2b727489f36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:44:56 GMT
ADD file:c5fd97d776dc13116460fbfe9516f1a028ba5788ea39ee71d8e9cfe7caed676f in / 
# Sat, 04 Nov 2017 09:44:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:44:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:01 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:16:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d26cfb4142faf488780cb8080f737aa1e5db91805163d83448842f64084bb724`  
		Last Modified: Thu, 19 Oct 2017 16:50:57 GMT  
		Size: 39.2 MB (39215977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9061f2867f7e61c3f5420eb574ba2fa334667501e4fff59037fff42e236126cf`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f09e6daf78c64326ce6338926259c67a94bda705094f4f5a4de7ffa760d7b`  
		Last Modified: Sat, 04 Nov 2017 09:45:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae7d54d2d8cfbed3fb28e0d50d4d1c7efc8c74cfe0a932f8de266e9ac19b18`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69eda9a0dde47b44b877d1c561a490c6f581f4185be674d0228d0000c5c9c5`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e4cf3d1d3f4191a1a4161e180a5f74966b61486552e655b5eec35c0ce21a0`  
		Last Modified: Sat, 04 Nov 2017 15:41:10 GMT  
		Size: 6.0 MB (6037253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5795a02adb91bb3d50d3a4caf7e511ec2bec283799b0f1f8268585448cb2d666`  
		Last Modified: Sat, 04 Nov 2017 15:41:38 GMT  
		Size: 45.7 MB (45698451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7b9b459a64c5db6c3a53b2242e6361cd2289208931c8513b5735d0d283503634
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82019011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d551d32a0f058040ad8ab7a11e9ff97b91ab168a8b3cef6c626daa16cdea1d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:55:51 GMT
ADD file:e295a2804e9021d3aebf237c767f9f2130874c00153f74ffdeba3eaab30fbaac in / 
# Thu, 19 Oct 2017 16:55:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:55:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:55:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:55:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:55:54 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:06:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:06:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6aee42d1a16f080f5e31ecdb42ad2cd6f4a207e0a500a908cf7bfda5ff192992`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 35.1 MB (35054496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc204a5c135c178768b589f1b3ba0b7bb133676a405801d33a046bab704808cd`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875211a9caba9133760f30d72afd4d4d26c5cd02c41842e0c1c2ea3eb4b3e99c`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7239c8aa2ef420bca9bd3ad2a162ec45b8326c4445ee6a04d2bc7db21062b34`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3296b67840d45438ac734401161bf6344bbb00228c9a13cefb2d87d769fbf9f5`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9056c14ebd1e3f1737712ae8bc184cac07a2cd941a3859a14852404bc7bb9890`  
		Last Modified: Thu, 19 Oct 2017 17:17:59 GMT  
		Size: 5.1 MB (5101409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eba2b9a7968a54f18b586e32b719167016a7986e1134c77308512b490b564b6`  
		Last Modified: Fri, 03 Nov 2017 00:25:26 GMT  
		Size: 41.9 MB (41860839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d0f796c029db773ade19f35c99833af018bdef084c9bdf517c955004449da9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85436510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50c374e5bd827be5b520af1c8766ad52eea3f0e0cb2e77126abc15e87479819`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:03 GMT
ADD file:910e149f9bb1b98604e675d9e071d6de38047c2a16daf5352e66c7916b8f01f2 in / 
# Thu, 19 Oct 2017 16:56:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:31:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e5b0ba60fd18373323fbf61d66aadd15f7f147f73b6d9123fda3f14ea88c83c4`  
		Last Modified: Thu, 19 Oct 2017 16:58:07 GMT  
		Size: 36.2 MB (36214016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa0e39786f334992f3365c97ca0618d3616fdb61cb35c320e38376b2ac9f3a`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b855c81f8b3ebe0829512446549542bdbfa6bf01395779ce92bd73a70c804abb`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894de6a565f29a27d72202ceff1e27c6827932cd8502734b58d0a4aca81c34e`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6facbff585a5109624d1b150e3dcd167deccf602968fdbf0f9a0e43f5fef3b0`  
		Last Modified: Thu, 19 Oct 2017 17:33:18 GMT  
		Size: 5.3 MB (5298614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e2d4686bfda58bf7a83cfa79ce30bdd80db4d37a28a36147e1fc7f8e761b29`  
		Last Modified: Fri, 03 Nov 2017 10:43:22 GMT  
		Size: 43.9 MB (43921644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5d4c197986ef8033e7366a6a55ac820ce1baa9da59cf3421404bbc480ae33fb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93430627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19282c94ddac14c7a522e0e6a9b0398e54fe9b00054fe2d04f8e76d6f29a454f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:07 GMT
ADD file:076cee6466bce5b77bbc3b6b359831aa5810b3497b7ebdfbfa18b455ebd31a29 in / 
# Thu, 19 Oct 2017 16:56:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:06:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a83e1d13695f175cd2f542162df4f77ac453af29c8e6bd7eb98d7a7e7ab3828`  
		Last Modified: Thu, 19 Oct 2017 16:57:02 GMT  
		Size: 40.0 MB (40037962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb63f1ac3d814a8a905b9b349010f37e65d877d7c1282f54c1758690253b4bd`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd6cd1aef7efb5c960f2bf83aaec92bff425fc042ee74ee716e5c05f5c5dd5`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf247371706b0726dc00efbb0855246efa3d866f5d0a2260422457ef01424e0`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08155ce50231367d35326ae407be7c4493064f6baf53f29e4054caa3ed9198ec`  
		Last Modified: Thu, 19 Oct 2017 17:19:56 GMT  
		Size: 6.1 MB (6099489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2589f012033d9311c9a90a25ff9c70200985ec0d0657df3eec55b2f77e2a985`  
		Last Modified: Fri, 03 Nov 2017 00:04:39 GMT  
		Size: 47.3 MB (47290921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8120068b386cdd7571b3a1ed9e97ce20701ac9ad0603536c4a13530424c7b29d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101623619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962ebe220ae703d9c04993472a1343fb0d71bc2bfebdc6c77364ddc5ccbd7c94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:00 GMT
ADD file:b74122be4f1003f3a8afd759e1e56733eb7d8ac02698486b65556e831ffe5627 in / 
# Thu, 19 Oct 2017 16:56:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:32 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:15:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 15:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 15:48:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2337aaea32bf8cd758fe4f931358024fd68cb4d79019859326d9665a66b75cb9`  
		Last Modified: Thu, 19 Oct 2017 16:57:30 GMT  
		Size: 42.4 MB (42449498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf02bb6c20cfc307d42493dfa9d2e410a32dde821ac248ed69dd6a7df9d6562`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac491d4677a40ab6396a4d562f9bb4868bbf37be3378f57066d9ff744e373888`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccc3af7278f5db8e08c2fe132c9e86c0d39929e7831d4786ce45f0fc836a186`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee67224a68dabad14949e47b84419539dfca9cf70927d64d056c78a6069626ea`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c760aca2ed3fc46dfc8364aa48c8e4e2a922526bc410f825a61514784cd706`  
		Last Modified: Thu, 19 Oct 2017 17:49:56 GMT  
		Size: 5.9 MB (5943028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b675027b088b366164b7a8fca516ad52db46d727f61cebf78dde5d833a60040`  
		Last Modified: Thu, 02 Nov 2017 17:45:01 GMT  
		Size: 53.2 MB (53228832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:77e4ebf6503e0e62a4f3f1be6ff6d5137234fbc10ae2a8a18aa64c41fc7f6373
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89625996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1c1f383ec59101de91d9bde3477a5e51cef932b4fd27cc90b917e4afe9f4a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:28 GMT
ADD file:b930922e765fe4cd0e19265f5f6c342340a5b2ee855198d99a445c0bd99a7d61 in / 
# Fri, 17 Nov 2017 22:07:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:31 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:26:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f172841ba9f7d2c1c21c31504006aab693b4dca92706d268120c9401e0e54c9c`  
		Last Modified: Fri, 17 Nov 2017 22:08:41 GMT  
		Size: 38.3 MB (38251078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b249bdeb130c08219c1ac394fd12aef2f9a9d7a318904c1adf2a6b9d1ab1ba3`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8242ed7a71bed64d2b07fd9756253c0ceb3cac059887d7c6f9a0d8874e1553f`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30778f8e8bcaf294e36e0182071a5ba7d990bc20b17343bcc64e16a9c54dafe8`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1db6aa93b0ec59c26fcf939ccd8744a113ea48a883e323e8a0f631b7c46d8e`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72469cf7519f2a03259836492b2d38e9d56c9293b75913d638d1d259dafb34e7`  
		Last Modified: Fri, 17 Nov 2017 22:34:19 GMT  
		Size: 5.7 MB (5738817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b9803128088058175dbe91db60ee91eeb9af1261e6f92d47e06770d1f66748`  
		Last Modified: Fri, 17 Nov 2017 22:34:37 GMT  
		Size: 45.6 MB (45633745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:e50c5e6169144bb85ef78503f22b0d790276530f0bbafb467dfd21602e2077cc
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

### `buildpack-deps:buster` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:fd36ce3d685a9df56ddc1bb375cfee18806b537c074d3f52caf2e52532550a46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329097689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315267ef6177e1533d1f16252835fad90d0f49698fc95317904df22bee3c4977`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:19:49 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Sat, 04 Nov 2017 05:19:49 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:22:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:24:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfd7ab6b991f19c3a2ba2a3b7e0932aea9b99d87ddf3be7ebe5f0fd5771b227`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 8.6 MB (8607048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b2a69c63e23f56af94778fe5c620eead6d228bc16d219bf88b027875ec4cdc`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 9.5 MB (9512672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1a6a4c312f228c267c100b64c20da82486cde5a131a0d64d584fae4965d1ea`  
		Last Modified: Sat, 04 Nov 2017 15:43:15 GMT  
		Size: 49.7 MB (49725957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4886e5b2f97dd6d731199a9d1161f55b54d6c3e7aed8cac31c6b711e8bf95c`  
		Last Modified: Sat, 04 Nov 2017 15:44:21 GMT  
		Size: 213.7 MB (213724720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c496ac9ce8f0c67d24f5ef91005fd9684fa7f72eed538e7c10074c45c888eb65
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.0 MB (313036909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4787e72b32c809e2bfa33c258accac1a7e252d72086f5a560f848f00dace19`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:42 GMT
ADD file:c36a09a9d10e3a94cb120b7379c90035a914005754376b50b29120b6d07e8954 in / 
# Mon, 09 Oct 2017 21:41:42 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:45:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:45:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:47:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ebe411eaa35474a74312d1934e1ad886999e87126d30684dc987c5cf5f97750a`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 46.0 MB (46010486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58db4071fac4d5b6ad6cdb685996755c84e5fe9eeb6897258553fd9c330682d8`  
		Last Modified: Mon, 09 Oct 2017 22:22:42 GMT  
		Size: 7.7 MB (7735222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d61d3994718f9c5bd4dd5c2354bc471d8c884675587737204cdf3eef6451a`  
		Last Modified: Fri, 03 Nov 2017 07:58:26 GMT  
		Size: 9.2 MB (9232259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc28169b7ac6df5496a113ad202f0f7cd9af343186e152f412d55c8351783ac`  
		Last Modified: Fri, 03 Nov 2017 07:58:50 GMT  
		Size: 47.6 MB (47603474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ff0d69456181fc84aeb85da513bd5857dd9bf770b089b26bdb6a66aeb06d21`  
		Last Modified: Fri, 03 Nov 2017 07:59:51 GMT  
		Size: 202.5 MB (202455468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ed01713e4e864a82811292959c750f4311aef1645acec653d96c5c6b475c4c83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.1 MB (301096392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4ce8cc7227a9f6a28c169fd48264a2a52dbfc65475b6bf6979aa4757c889fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:48 GMT
ADD file:914df13f485ca2450fb56b86a878e6de5900d2eeefff703961224ded1fd8a4f0 in / 
# Mon, 09 Oct 2017 21:41:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:08:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:09:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83b1be493c5443d6106171cbdb285bcd9dbfdcc8ed8725c1f9a6ab669443030b`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 44.2 MB (44197764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e5035c7c5b5a56f978ba924fb09126904039f0f080027b23bf07b27e3eaf57`  
		Last Modified: Mon, 09 Oct 2017 22:29:46 GMT  
		Size: 7.6 MB (7565175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800aea9cd3a671383469fc5e66d28a96401f0bb1db52d6c50476b4840d157261`  
		Last Modified: Fri, 03 Nov 2017 00:26:32 GMT  
		Size: 8.9 MB (8934801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6d406e551111c822ba047d8959d2c1115e01915676427693f2f3af854ac797`  
		Last Modified: Fri, 03 Nov 2017 00:26:57 GMT  
		Size: 45.7 MB (45720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8366a415256fca5487eb6a6062b27d62e913c48b48d56393bd6acd950d8df659`  
		Last Modified: Fri, 03 Nov 2017 00:27:59 GMT  
		Size: 194.7 MB (194678041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:acbc3a8af8f0a1ad693ba1f2f7fbfbc61218549acfb9c4bec35b1872a2066a5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.4 MB (315390680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59a7f091bd3e99fadaae3f9c7ede7542b4fc5fe301e2550b5e35ef4b7406461`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:21 GMT
ADD file:8e748955d241f3105855e5231d2d45912b276a952142c9d87a952b4cc2d3ec2b in / 
# Mon, 09 Oct 2017 21:42:22 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:40:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:41:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32d5116850be76972a94e0a525163639f772bf28592ed74b86c6591abb3d5f17`  
		Last Modified: Mon, 09 Oct 2017 21:50:42 GMT  
		Size: 45.3 MB (45287334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f106bcb651e760220a41dbf62ebf97c6ad96d8bd709325126df2b735ddd6300`  
		Last Modified: Mon, 09 Oct 2017 23:25:50 GMT  
		Size: 7.7 MB (7719695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de3d86080d410e7206286488b763b78894c61d4738121c6f826f19d69fed682`  
		Last Modified: Fri, 03 Nov 2017 10:45:11 GMT  
		Size: 9.2 MB (9222014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa31bad56567537a9138970d7ba05049088a018370f077ffb38f980ddc1ce23`  
		Last Modified: Fri, 03 Nov 2017 10:45:47 GMT  
		Size: 47.9 MB (47943803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2187cefc880233d707ec4fcb6b434bc9e8c631a71e9efeddda35b6582f8c1036`  
		Last Modified: Fri, 03 Nov 2017 10:48:34 GMT  
		Size: 205.2 MB (205217834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c0aab5970354af7a64146b1a3ffbc19f5673eef9719a546b28f884bd4ea9e9dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.5 MB (337535581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755c64ae7eb310f53eab8dba4e48df3350b064eb1373a4c0751f7621f5bd8906`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:52 GMT
ADD file:59ad2d5327b88c3c6218734bfb8511728d73895b7a3a36e4144aa8369dd14e0c in / 
# Mon, 09 Oct 2017 21:41:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:13:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:14:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:17:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b34134ea236e04b8a5bddde6d9e9fb629795f52a7d9a6547ab9a447d4a48e4a8`  
		Last Modified: Mon, 09 Oct 2017 21:47:26 GMT  
		Size: 48.4 MB (48351703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625f365c9bd980a38619c609c0167d948e051b484d17a4f760683b552e3e853c`  
		Last Modified: Mon, 09 Oct 2017 23:31:13 GMT  
		Size: 8.5 MB (8522393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3473eda8a25289c8a72a8c7468c24815bff79c43eb3693cecbe5a3e11d38e8f`  
		Last Modified: Fri, 03 Nov 2017 00:07:50 GMT  
		Size: 9.8 MB (9805482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4b859707f4045c3e7b44bca431a254e65aa5ca726cd1c1e0ed9eb69a4fd3d8`  
		Last Modified: Fri, 03 Nov 2017 00:08:16 GMT  
		Size: 51.5 MB (51482573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28538959847d13aa250bc239b57e96669ea9395537da68121a4ff9c9274bc0c5`  
		Last Modified: Fri, 03 Nov 2017 00:09:10 GMT  
		Size: 219.4 MB (219373430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9840db71c4054d51e20115e5588be116d83230766664f61e8a53f2a2e83b9960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332868422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103cc3e3ea36aba503b70bc0ccff5cee5bd078c36f50aa48d1e2e0babed9c047`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:957f7bbfc5ce84166d318fbb0023280452c7892ea997b8980e3c0ac7edd4de74 in / 
# Mon, 09 Oct 2017 21:42:18 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:03:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0796f6395f48ad88301fc7f12668dd1e1d3a6089ac952bdfe2841294a185a267`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 48.5 MB (48486033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7533dea6bc2f039e722b0ca924e7db1d466e236fcf422368dbfd38466ced7`  
		Last Modified: Tue, 10 Oct 2017 00:51:51 GMT  
		Size: 8.0 MB (7978705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e02121847325db11b114737d252f6111d91cc3089391b408644d4795304752`  
		Last Modified: Thu, 02 Nov 2017 17:46:16 GMT  
		Size: 9.7 MB (9742245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6971705a10983835e09c9741c0a0c65df4afbc1f0209141fc31dc380066ab0c`  
		Last Modified: Thu, 02 Nov 2017 17:46:47 GMT  
		Size: 50.3 MB (50339439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892d1d95385d704abef68548ce1f1b37d68f70dcbe91e9f94e01fcc5f2110ced`  
		Last Modified: Thu, 02 Nov 2017 17:47:53 GMT  
		Size: 216.3 MB (216322000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:30a9468101a3a29e4bc67455cd6bbe2f4794cc89d8d4b37a68c0cef42237bcc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.9 MB (315933431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29919b0b623afeaa721184e086df449e4c8fdff17b507e466f39c99094e5ebe5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:58 GMT
ADD file:f5cd9700bdff68908fb00b754407889252d920305d09cec78811374584fb8695 in / 
# Mon, 09 Oct 2017 21:41:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:37:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c82a15eb88f9d3cde6dc5abe5948ddc69e6639bb7c370656899f7804a5883473`  
		Last Modified: Mon, 09 Oct 2017 21:45:56 GMT  
		Size: 47.3 MB (47271622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f871d0e05f9ae9309b5810a8ebeb36a7e7809262960f18746c829c4b34d4dde0`  
		Last Modified: Mon, 09 Oct 2017 22:18:43 GMT  
		Size: 8.1 MB (8093185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb0eaa0391aca08e2533ef4b49948e6a3ed20bf8395aa87b4b36146ca8348f`  
		Last Modified: Thu, 02 Nov 2017 16:53:07 GMT  
		Size: 9.5 MB (9477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64f44dd71780d02b64ff45e34cd5eb101de65c9f9c1b2810824652f6d96700d`  
		Last Modified: Thu, 02 Nov 2017 16:53:25 GMT  
		Size: 47.8 MB (47777597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f359fd748acf5919d8c269979b61c53e10c1e08c11c24b416339aafb3a5f3e3`  
		Last Modified: Thu, 02 Nov 2017 16:54:12 GMT  
		Size: 203.3 MB (203313308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:e2e27df502729b9f6fec57ef2f14bb4f389359eb252c5d16a72d580478381856
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

### `buildpack-deps:buster-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:040bbb09896f71e782cf95cafcd02257cf2990dc87c8dd58aff7220957fd606f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65647012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3c825a62fd4f3a59c9136ac19269c02ceefd02711096259041cd6731ad3844`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:19:49 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Sat, 04 Nov 2017 05:19:49 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:22:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfd7ab6b991f19c3a2ba2a3b7e0932aea9b99d87ddf3be7ebe5f0fd5771b227`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 8.6 MB (8607048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b2a69c63e23f56af94778fe5c620eead6d228bc16d219bf88b027875ec4cdc`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 9.5 MB (9512672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:14cb0576f8115d4ba351de5b05988be11ce706f14298c396f6b74e043a90261f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62977967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d00aad523009930fad52541f4a28648eed852c8d192881dc1a1c318a310ca7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:42 GMT
ADD file:c36a09a9d10e3a94cb120b7379c90035a914005754376b50b29120b6d07e8954 in / 
# Mon, 09 Oct 2017 21:41:42 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:45:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ebe411eaa35474a74312d1934e1ad886999e87126d30684dc987c5cf5f97750a`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 46.0 MB (46010486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58db4071fac4d5b6ad6cdb685996755c84e5fe9eeb6897258553fd9c330682d8`  
		Last Modified: Mon, 09 Oct 2017 22:22:42 GMT  
		Size: 7.7 MB (7735222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d61d3994718f9c5bd4dd5c2354bc471d8c884675587737204cdf3eef6451a`  
		Last Modified: Fri, 03 Nov 2017 07:58:26 GMT  
		Size: 9.2 MB (9232259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5ecd4beff36a7801b9c74115fb1e211db3c92dd367f782b34bb69229bba57903
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60697740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e6d50095849a97daf0fe61bff4db0d0b3c08666db583c215063c847da9bb93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:48 GMT
ADD file:914df13f485ca2450fb56b86a878e6de5900d2eeefff703961224ded1fd8a4f0 in / 
# Mon, 09 Oct 2017 21:41:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:08:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:83b1be493c5443d6106171cbdb285bcd9dbfdcc8ed8725c1f9a6ab669443030b`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 44.2 MB (44197764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e5035c7c5b5a56f978ba924fb09126904039f0f080027b23bf07b27e3eaf57`  
		Last Modified: Mon, 09 Oct 2017 22:29:46 GMT  
		Size: 7.6 MB (7565175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800aea9cd3a671383469fc5e66d28a96401f0bb1db52d6c50476b4840d157261`  
		Last Modified: Fri, 03 Nov 2017 00:26:32 GMT  
		Size: 8.9 MB (8934801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c4a73d09b52287c5c0a21c200cf9fe633771612b05b253962f08d013a6fe9598
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62229043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570b604675a969ad97d5bc046fbbf5de7a9ec3d5a2a433a41ce13edcc5abdd21`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:21 GMT
ADD file:8e748955d241f3105855e5231d2d45912b276a952142c9d87a952b4cc2d3ec2b in / 
# Mon, 09 Oct 2017 21:42:22 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:40:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:32d5116850be76972a94e0a525163639f772bf28592ed74b86c6591abb3d5f17`  
		Last Modified: Mon, 09 Oct 2017 21:50:42 GMT  
		Size: 45.3 MB (45287334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f106bcb651e760220a41dbf62ebf97c6ad96d8bd709325126df2b735ddd6300`  
		Last Modified: Mon, 09 Oct 2017 23:25:50 GMT  
		Size: 7.7 MB (7719695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de3d86080d410e7206286488b763b78894c61d4738121c6f826f19d69fed682`  
		Last Modified: Fri, 03 Nov 2017 10:45:11 GMT  
		Size: 9.2 MB (9222014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:40a55f047f8358d11e75ce5d5a86cddb3dea6382bb399d9128709739daf237fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66679578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238b175dc76a8d05a0357b0c6c77c8c80d5367608dcb503fd45c71abede52123`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:52 GMT
ADD file:59ad2d5327b88c3c6218734bfb8511728d73895b7a3a36e4144aa8369dd14e0c in / 
# Mon, 09 Oct 2017 21:41:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:13:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b34134ea236e04b8a5bddde6d9e9fb629795f52a7d9a6547ab9a447d4a48e4a8`  
		Last Modified: Mon, 09 Oct 2017 21:47:26 GMT  
		Size: 48.4 MB (48351703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625f365c9bd980a38619c609c0167d948e051b484d17a4f760683b552e3e853c`  
		Last Modified: Mon, 09 Oct 2017 23:31:13 GMT  
		Size: 8.5 MB (8522393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3473eda8a25289c8a72a8c7468c24815bff79c43eb3693cecbe5a3e11d38e8f`  
		Last Modified: Fri, 03 Nov 2017 00:07:50 GMT  
		Size: 9.8 MB (9805482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6feed2911fcfaf0ccdba79b4e93d923bd5f6528117a90efae3dc9b7493884255
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66206983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d088c05ed4576223ec066b8d117239310d41dbaeeb2dbac864cc44c286c985`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:957f7bbfc5ce84166d318fbb0023280452c7892ea997b8980e3c0ac7edd4de74 in / 
# Mon, 09 Oct 2017 21:42:18 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:03:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0796f6395f48ad88301fc7f12668dd1e1d3a6089ac952bdfe2841294a185a267`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 48.5 MB (48486033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7533dea6bc2f039e722b0ca924e7db1d466e236fcf422368dbfd38466ced7`  
		Last Modified: Tue, 10 Oct 2017 00:51:51 GMT  
		Size: 8.0 MB (7978705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e02121847325db11b114737d252f6111d91cc3089391b408644d4795304752`  
		Last Modified: Thu, 02 Nov 2017 17:46:16 GMT  
		Size: 9.7 MB (9742245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3dc6ca052e48b579baeb68cf260b3f2cd679b6638ac517d5a685493a6066789e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64842526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e6e0586303b35aaf764a5a8a4001d0b3e8555cbd1ca267acfcc05a32ad33e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:58 GMT
ADD file:f5cd9700bdff68908fb00b754407889252d920305d09cec78811374584fb8695 in / 
# Mon, 09 Oct 2017 21:41:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:37:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c82a15eb88f9d3cde6dc5abe5948ddc69e6639bb7c370656899f7804a5883473`  
		Last Modified: Mon, 09 Oct 2017 21:45:56 GMT  
		Size: 47.3 MB (47271622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f871d0e05f9ae9309b5810a8ebeb36a7e7809262960f18746c829c4b34d4dde0`  
		Last Modified: Mon, 09 Oct 2017 22:18:43 GMT  
		Size: 8.1 MB (8093185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb0eaa0391aca08e2533ef4b49948e6a3ed20bf8395aa87b4b36146ca8348f`  
		Last Modified: Thu, 02 Nov 2017 16:53:07 GMT  
		Size: 9.5 MB (9477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:buster-scm`

```console
$ docker pull buildpack-deps@sha256:2f582d8e06bf89f1f4338535fc7952fad164c88362a77596084d0158af3839b3
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

### `buildpack-deps:buster-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f4f8deb0add0c62935bffe60d309a8bc95ab56d31173857649c1f7550c36c4c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115372969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99981e44c9979585a23dc2ea773117a86ebd122120b0416f461e6e24871a50ae`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:19:49 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Sat, 04 Nov 2017 05:19:49 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:22:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfd7ab6b991f19c3a2ba2a3b7e0932aea9b99d87ddf3be7ebe5f0fd5771b227`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 8.6 MB (8607048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b2a69c63e23f56af94778fe5c620eead6d228bc16d219bf88b027875ec4cdc`  
		Last Modified: Sat, 04 Nov 2017 15:42:45 GMT  
		Size: 9.5 MB (9512672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1a6a4c312f228c267c100b64c20da82486cde5a131a0d64d584fae4965d1ea`  
		Last Modified: Sat, 04 Nov 2017 15:43:15 GMT  
		Size: 49.7 MB (49725957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f4d2b19f5c69b12c58280971ef9ee7bd77f8ace46c658a35279fca2aa289b164
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110581441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1280531cc804303fd3f3e656f12d9d52aa81e92db58e07dfc1334dd9592e9d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:42 GMT
ADD file:c36a09a9d10e3a94cb120b7379c90035a914005754376b50b29120b6d07e8954 in / 
# Mon, 09 Oct 2017 21:41:42 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:45:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:45:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ebe411eaa35474a74312d1934e1ad886999e87126d30684dc987c5cf5f97750a`  
		Last Modified: Mon, 09 Oct 2017 21:46:40 GMT  
		Size: 46.0 MB (46010486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58db4071fac4d5b6ad6cdb685996755c84e5fe9eeb6897258553fd9c330682d8`  
		Last Modified: Mon, 09 Oct 2017 22:22:42 GMT  
		Size: 7.7 MB (7735222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819d61d3994718f9c5bd4dd5c2354bc471d8c884675587737204cdf3eef6451a`  
		Last Modified: Fri, 03 Nov 2017 07:58:26 GMT  
		Size: 9.2 MB (9232259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc28169b7ac6df5496a113ad202f0f7cd9af343186e152f412d55c8351783ac`  
		Last Modified: Fri, 03 Nov 2017 07:58:50 GMT  
		Size: 47.6 MB (47603474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:371a4302f87e1363de7a14851e57b6e0cc03a253364e3d80f8f227e4db6dff5c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106418351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d12ebcc6ea2174873bfd132c036e2f58eaa4c6e33d997ba8ddca339ca9012e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:48 GMT
ADD file:914df13f485ca2450fb56b86a878e6de5900d2eeefff703961224ded1fd8a4f0 in / 
# Mon, 09 Oct 2017 21:41:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:08:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:09:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83b1be493c5443d6106171cbdb285bcd9dbfdcc8ed8725c1f9a6ab669443030b`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 44.2 MB (44197764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e5035c7c5b5a56f978ba924fb09126904039f0f080027b23bf07b27e3eaf57`  
		Last Modified: Mon, 09 Oct 2017 22:29:46 GMT  
		Size: 7.6 MB (7565175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800aea9cd3a671383469fc5e66d28a96401f0bb1db52d6c50476b4840d157261`  
		Last Modified: Fri, 03 Nov 2017 00:26:32 GMT  
		Size: 8.9 MB (8934801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6d406e551111c822ba047d8959d2c1115e01915676427693f2f3af854ac797`  
		Last Modified: Fri, 03 Nov 2017 00:26:57 GMT  
		Size: 45.7 MB (45720611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0607c7b034f16302d078532d3635969e1c3f6b712772c9f88c2161475c307848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110172846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d079d17fbd050a503468eff4fdc546ead7ee6bf1871c8e169fcb1b54c7d019a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:21 GMT
ADD file:8e748955d241f3105855e5231d2d45912b276a952142c9d87a952b4cc2d3ec2b in / 
# Mon, 09 Oct 2017 21:42:22 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:40:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:41:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32d5116850be76972a94e0a525163639f772bf28592ed74b86c6591abb3d5f17`  
		Last Modified: Mon, 09 Oct 2017 21:50:42 GMT  
		Size: 45.3 MB (45287334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f106bcb651e760220a41dbf62ebf97c6ad96d8bd709325126df2b735ddd6300`  
		Last Modified: Mon, 09 Oct 2017 23:25:50 GMT  
		Size: 7.7 MB (7719695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de3d86080d410e7206286488b763b78894c61d4738121c6f826f19d69fed682`  
		Last Modified: Fri, 03 Nov 2017 10:45:11 GMT  
		Size: 9.2 MB (9222014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa31bad56567537a9138970d7ba05049088a018370f077ffb38f980ddc1ce23`  
		Last Modified: Fri, 03 Nov 2017 10:45:47 GMT  
		Size: 47.9 MB (47943803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3a1c6c7c8714b2d58b2aa1e0fabcd5fd5c62a66b45f149866e071c04c7643678
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118162151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ea665c30e1d5f79ea57f5a07ce0a55ae6b88d13b234403826d5cc7f0ab668d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:52 GMT
ADD file:59ad2d5327b88c3c6218734bfb8511728d73895b7a3a36e4144aa8369dd14e0c in / 
# Mon, 09 Oct 2017 21:41:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:13:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:14:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b34134ea236e04b8a5bddde6d9e9fb629795f52a7d9a6547ab9a447d4a48e4a8`  
		Last Modified: Mon, 09 Oct 2017 21:47:26 GMT  
		Size: 48.4 MB (48351703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625f365c9bd980a38619c609c0167d948e051b484d17a4f760683b552e3e853c`  
		Last Modified: Mon, 09 Oct 2017 23:31:13 GMT  
		Size: 8.5 MB (8522393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3473eda8a25289c8a72a8c7468c24815bff79c43eb3693cecbe5a3e11d38e8f`  
		Last Modified: Fri, 03 Nov 2017 00:07:50 GMT  
		Size: 9.8 MB (9805482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4b859707f4045c3e7b44bca431a254e65aa5ca726cd1c1e0ed9eb69a4fd3d8`  
		Last Modified: Fri, 03 Nov 2017 00:08:16 GMT  
		Size: 51.5 MB (51482573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a22779b5b0f012c5d3b797c7b2bdd196ab588fc22d597b93fe099578dce35b12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116546422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72fa511cd2138a5385f3a33cdb6a174f0f976becea55acb22e4427eb3012aa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:957f7bbfc5ce84166d318fbb0023280452c7892ea997b8980e3c0ac7edd4de74 in / 
# Mon, 09 Oct 2017 21:42:18 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:03:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0796f6395f48ad88301fc7f12668dd1e1d3a6089ac952bdfe2841294a185a267`  
		Last Modified: Mon, 09 Oct 2017 21:48:03 GMT  
		Size: 48.5 MB (48486033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c7533dea6bc2f039e722b0ca924e7db1d466e236fcf422368dbfd38466ced7`  
		Last Modified: Tue, 10 Oct 2017 00:51:51 GMT  
		Size: 8.0 MB (7978705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e02121847325db11b114737d252f6111d91cc3089391b408644d4795304752`  
		Last Modified: Thu, 02 Nov 2017 17:46:16 GMT  
		Size: 9.7 MB (9742245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6971705a10983835e09c9741c0a0c65df4afbc1f0209141fc31dc380066ab0c`  
		Last Modified: Thu, 02 Nov 2017 17:46:47 GMT  
		Size: 50.3 MB (50339439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2fd44efce480a4d06d6b7f98a203fd5db9b51298b3b83baad98c41cecaa20dab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112620123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949d3ffe12f6048ce77b073599d418fdaa2cf9caffa778286b4a0bf30630ba31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:58 GMT
ADD file:f5cd9700bdff68908fb00b754407889252d920305d09cec78811374584fb8695 in / 
# Mon, 09 Oct 2017 21:41:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:37:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c82a15eb88f9d3cde6dc5abe5948ddc69e6639bb7c370656899f7804a5883473`  
		Last Modified: Mon, 09 Oct 2017 21:45:56 GMT  
		Size: 47.3 MB (47271622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f871d0e05f9ae9309b5810a8ebeb36a7e7809262960f18746c829c4b34d4dde0`  
		Last Modified: Mon, 09 Oct 2017 22:18:43 GMT  
		Size: 8.1 MB (8093185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeb0eaa0391aca08e2533ef4b49948e6a3ed20bf8395aa87b4b36146ca8348f`  
		Last Modified: Thu, 02 Nov 2017 16:53:07 GMT  
		Size: 9.5 MB (9477719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64f44dd71780d02b64ff45e34cd5eb101de65c9f9c1b2810824652f6d96700d`  
		Last Modified: Thu, 02 Nov 2017 16:53:25 GMT  
		Size: 47.8 MB (47777597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:fc341cf74876ee6af5f4ea24f998a716cb3694749c610a324ac4aada3db74798
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

### `buildpack-deps:curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:37a359131d08f739c2e5abf6589d1498d43c5159cb59ce1827f4b14c2a5166f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60571323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603cec965d64db4a4dc8e1d92524be0ea4042cfb074fcdcd420bc6d1b75d0e38`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:8470a2c363c4495ab27dcbda7c817230403d83f7e9ef239ba6c12b2f1fcf8cc4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58173818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67744ba02991289fa5f3536050271c61b6b44f66f5aba92d7bed96e9440e0641`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:dd56c63fb2c799afe54fdf80bc3e66b88a1d3825022848ca4afc19634c266795
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55578045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb0632c4675926f4ffe6e6b3126488b7396d6813311a390621ddcd31b8e88e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ca23feaa262e301319276cc1214ab5f10a3971f50628aeba3598dce73bac6932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57065763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe305a3d265292d784a5b0bfc360a96f368e10d91cd30b09383239b656ded3b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c5199d2384b095b0c24dd01273f3ede9340096060dfd138876b9e013bdbce5dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61537783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74073243f25ddf08e23ef07403b93e2e7a0cdbcd73db04616d77b5c396e1c0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:052a9d8fe0274c313d3271961ceede78326212b9eb4b7d0d4baa378386e059b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60006514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81af47c5e99ac145c35c591f9b46f9654c4d0ca09519275e93fa72bad09c1576`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:37396ee58a7ca86ce5caaa083847fa0965073c2b38037064fca2db952e68bab8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60006456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06863d06656913501a6f477b40a98ddcb5962ac688430e083e9f2d621485785`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:dd86dced7c9cd2a724e779730f0a53f93b7ef42228d4344b25ce9a42a1486251
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

### `buildpack-deps:jessie` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e78e0ad264d0ec3014aa8fc1ca543023be02860163d2087de16b514b5e0efb02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (250017552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb92533ca5cc26b3e36c11b6007fb838a8d2ea73a24faf738084c57ce193b944`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:27:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cc0ed96dc3a88c79f26dc97950ec81a5c35699f48f07662f99c97412af6e95`  
		Last Modified: Sat, 04 Nov 2017 15:45:48 GMT  
		Size: 134.9 MB (134929549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7e2627928c816297dd734ce3ed490cfe3d8e1fcfbbf467225da6e9119510d08c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226794932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8797c78e3b708a95d537fc0a86f24b554ef13cddd1bd1cc3168e36ae6bbd4fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:48:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:50:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffbd68139d082d5462baf2dcc79e9164c03c8aa02e40c979170c408d744c80b`  
		Last Modified: Mon, 09 Oct 2017 22:24:37 GMT  
		Size: 18.7 MB (18654351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67413b538ee39b6ca8eb4271f4206189eea93cc81ac13afe21d0b4c34e114cfe`  
		Last Modified: Fri, 03 Nov 2017 08:00:21 GMT  
		Size: 41.1 MB (41072145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a0f4edececd7b4748d78c5c53d045cde60edc186deddbfa031ae0151cf9ce`  
		Last Modified: Fri, 03 Nov 2017 08:00:58 GMT  
		Size: 116.2 MB (116188542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2a1536f3cd66240c9265e8af65b10e54f44010f056a5a8353828cc9688f2ed58
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221146518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4737bc754636127323c47e38e203a1ecedebfec3e2b978d9c0adf149db8523c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:13:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4284e173e9bce8ed8b43c6744e98d30ea5da563719dcf431bbca74a990d5ba5`  
		Last Modified: Fri, 03 Nov 2017 00:29:07 GMT  
		Size: 114.5 MB (114493046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:43c22429abfe53e790b7a642b19ca86117f43df21afe3a0249a13eb0646edc9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.0 MB (226034670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d360edd49b9d40b24dfb6bb31e6158650e93a314cc05c6b11455a9d656e127`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:59:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de79b1b0f6b9ebe9ed0b57067daafb27a1bd6fe0efcf4172d2a0f108383ee97`  
		Last Modified: Sat, 04 Nov 2017 09:34:14 GMT  
		Size: 116.4 MB (116377281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4e09544e796d5b95a665f04c843fba215cb04556f2810965488dd8b9eef30ae6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253887494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495230dfc82c00997437a339a22c84396b9f89a2d7302a724edf183932b64ccd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:25:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ca1792f5a4fd3ba559486d5c4abd10b98da6df752100345877a4f933f8acf2`  
		Last Modified: Fri, 03 Nov 2017 00:12:26 GMT  
		Size: 135.6 MB (135638282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f993f5cdaf00ae74d3a12e48ac0c5301fdfa366c9b40f57fc07659d125e2e996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237225215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7ff5204daea1f006dd998fbb4546c8bace764ce28594de2c7a3576ef0c4c54`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:34:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5946b4ef12c43d048f355ef3678f3562553f8553ba421b30dc952aa16ce4c`  
		Last Modified: Thu, 02 Nov 2017 17:49:25 GMT  
		Size: 123.5 MB (123483719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b31fc492ad0a0331950730f45c2a2c1f35ac03f2d236dfc387fece8c4a4bd04f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232321955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0236353396efce03211408c208e6f90f31e7636682fa01f5eb4e38bbf571d6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:42:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a7f5b3ccfc68c08cb3dddaf31b45a2cc1833364d630676b1caadac073b35ab`  
		Last Modified: Thu, 02 Nov 2017 16:55:02 GMT  
		Size: 116.7 MB (116698980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-curl`

```console
$ docker pull buildpack-deps@sha256:55c4a7f6200ea98bad04d781cbb06e430bc2102489144a502dedf197ef147452
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

### `buildpack-deps:jessie-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:cdd20856c94ef631187182e4fa555270fe55e2dbae707c610474a540667ecb37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71859806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec5e8f488913b928a0d584e6b41849343ad922c34ab2889ac7e1f104028e2e6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:9fdecdc0c5141647ab76ad1d74a9784f5a20f3db2874230fc88830b9d3aba269
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69534245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa389f12c7fc7067a0f26a23ec9860f2ebdff7a34ecd61accbe311dc7a03341`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:48:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffbd68139d082d5462baf2dcc79e9164c03c8aa02e40c979170c408d744c80b`  
		Last Modified: Mon, 09 Oct 2017 22:24:37 GMT  
		Size: 18.7 MB (18654351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c265f48b172128781d7ff062a0e0e2a15be699954b0ebca860aad440171eafe3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66949052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2a7e417b2318d13cf3fb06b3df17be44a209fd68329c744d0a4eee39cada26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0b6990a3f9793871abc5f01d56d002357f98646c70f3b4ab1f6af69218c0860c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68667368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11910af84d494fbb28cfb395e18d8287ff80fea32b462fd56158da07e77471e5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:eb541660b190d88d8caf1e15c7ce56f88b231716a330749543668aa04e940693
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74368718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bc296eb556acd6cabfcc085cb663dcf1389608f0b187e2f4aafce17cc6d688`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6ca0692ffd9bbaa3886578878f99d06eb7008f7a371995dbc0e4f8c567218631
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71010759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4112510b726c5d9469b743f8e1f224e750c094539be0804df710b58bf50dcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b2f431ac837dc10c620193123a3a0890fd3b31fb8da23326c669fe81e037c21a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.3 MB (72259646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f2ac57071d5a89173b2aa3523c76e626c26334b3ef0f422602fccd77dcb5c4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:9a1fe1ffa7b091035d69630f50fb463692523abbe4009a8f3f82f6bd41f1cc55
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

### `buildpack-deps:jessie-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:d294cf8f8874baee3cc563a96fce66943d4a93e5a9a6166e65872dcae45390f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115088003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd21bb51cce3a75d4ceac90baf9f45e5ad9606984045bdc03ac61ad624b1c41`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:817f6f82836e7be07de3bb5b7a52d887e04240dc359dc5d1992657e2703ca98c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110606390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d1a0f52fee8000e8b30fb3a0270589422ea7c7e7540754fb9159d483e195bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:48:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffbd68139d082d5462baf2dcc79e9164c03c8aa02e40c979170c408d744c80b`  
		Last Modified: Mon, 09 Oct 2017 22:24:37 GMT  
		Size: 18.7 MB (18654351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67413b538ee39b6ca8eb4271f4206189eea93cc81ac13afe21d0b4c34e114cfe`  
		Last Modified: Fri, 03 Nov 2017 08:00:21 GMT  
		Size: 41.1 MB (41072145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3d6c601e566b98556b6291d2c7ba648f4a9a6354309753eb11c76ff5bf48d6bc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106653472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3341d005ab0d7cdcc18bf6a673a0c4fb13f2379910466f2ff59ac6d1a61e0e0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:10:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:11:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7f3d3c242c5c32ebca96ff0585d5c4a69396ff61b65045a636b1b3368b15b2`  
		Last Modified: Fri, 03 Nov 2017 00:28:32 GMT  
		Size: 39.7 MB (39704420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f77f785151a193c2b231253779e9cba3a3575229e8d7f1df46074b2f4b8bd2df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109657389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b646d1cbd79d2cdbe70e5b586406b46576a3c3c5e63184a8eff1f702f12ad5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:51:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020c643c8c46d0bb474c096cd8b1d55972db5425a18b0f2bf6cb26d5690b9f47`  
		Last Modified: Fri, 03 Nov 2017 10:49:32 GMT  
		Size: 41.0 MB (40990021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:dcf2bf883540c19ffe60785b1ab26a94c934bbfb2f1219d99aa88649d59b6e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118249212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fefadeb605d00f59aa0b1ab99f99600f3d842b1e95348e145bf959e0cf97d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:22:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:23:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8fb3b38011f25ce0ec5107fd54f417d6ee1e616150484f80244db339b8545`  
		Last Modified: Fri, 03 Nov 2017 00:11:48 GMT  
		Size: 43.9 MB (43880494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8c801e3daa649041f16a434a176e1c4a0e6c8d25cb869300c52e49f6e290ca1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113741496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1f2ee960b6d1a071e1f2f080d5a46493b2a962f7569c538afa3fc0314101d3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jessie-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:92ca25e192e1e0390711ddaeac351977b7cb3bd199421ef883dfbd69bd014f2d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115622975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f2b995a07963d3c8a1bba4f654e9e27c1e6768f6951d1448faf066a58ee3cb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:e2520ede7164550818b6a3a86167a41e901f35160c4e96dabcce0beec1c39ab3
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

### `buildpack-deps:latest` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bd5ea4d8eda706a5c441db2f3a0ef07b683a12190d30b6352900403315f90dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.7 MB (323662248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094baccb5c470166cf5c8b0e33864df874a7b03172f488d9051a3050e4143dfc`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:31:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e31c1862427cfb8d8a464c7a91b059e914f511a2901cbf26ed269d0154ed6c`  
		Last Modified: Sat, 04 Nov 2017 15:48:47 GMT  
		Size: 213.1 MB (213069838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:latest` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:78ab30f14277d317c5549b98f87b211c70435992c52706322493324c314ad88b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308312034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530486ff31a606dffe981c58cbcb3314789819f85c77b94b77bda02066323f38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:54:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:56:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157821da2b1d94165cd84d05d8d6f26e59234c0589b05e7b1c097124b88ce084`  
		Last Modified: Fri, 03 Nov 2017 08:03:16 GMT  
		Size: 48.2 MB (48225517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6a6c3e4de3a590972ffd636e9de457189c35b1a2e85c30dd37d01645fe6ffa`  
		Last Modified: Fri, 03 Nov 2017 08:04:22 GMT  
		Size: 201.9 MB (201912699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:latest` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9932769f43b4c0e74d9c3f217001592f419d14276542f3e6481356a6df6054ee
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0b938e69eec1cb2b61959ec9988195b6eb517cc905d1c6456c3bee6377690b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:17:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07515028f7d65298f59634c7ecdd274ae013c563d9e5fc02a409e95e3f6ac2e`  
		Last Modified: Fri, 03 Nov 2017 00:32:35 GMT  
		Size: 194.4 MB (194412951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:latest` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e575ef4cedda7473f26bc5128cf18ce78e85744bd6c2a1be40cfe7a7704d1a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306105862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495d557abd848b4acad000c7ba3bfd0b907e5d6ee178dd3a820cfe61dbd09198`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:20:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd3f56e36b72b1fc7534469a1d8e970edd8777ed7b167ad1b55cc48e7b4498a`  
		Last Modified: Fri, 03 Nov 2017 10:56:05 GMT  
		Size: 201.1 MB (201065925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:latest` - linux; 386

```console
$ docker pull buildpack-deps@sha256:576887f4de78a47c92e5e946923444f4b60ea090801eacd469727e06dca77fb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331838746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6d4f5c8f5682edb328abc6febd68727409a1947143e8f9070bc9a803bb3c78`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bcf2add3efe5f93156a5ece54f198a6e3ede52c9a89eafae1b5ac7132812fa`  
		Last Modified: Fri, 03 Nov 2017 00:22:58 GMT  
		Size: 218.8 MB (218752716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:latest` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ffe42beeb4dfb3799aaca2d2f1acb9f0ab53b407ad790cf2d1aa7d307798b308
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319352544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a426edfaaeacac7ceb6a6e03c01db224aff65177c9d04a0ff0ee7bb3f9323fc2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:10:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da01a909c551e09b6c6719f2c59ee957c542349d74ffb60c4135c5ba14ef47a8`  
		Last Modified: Thu, 02 Nov 2017 17:53:11 GMT  
		Size: 209.3 MB (209320988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:latest` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:799a1255c548473c8bfa715ac384c39e52431e1ae1167fd5f402374403d9bb9a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316139557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a55666965247842e6a6a328952f4c4104f393f5fd35d274754984d155caa2f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:47:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba76b10e3278b771126c424c6bb8e88f1f4cf32d93106c1736762cf664ea8e57`  
		Last Modified: Thu, 02 Nov 2017 16:57:37 GMT  
		Size: 205.7 MB (205691983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:9169ce0ee3ff80d03a5389d516303dd9e11d892526f49b5bc79b3962e5e12210
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

### `buildpack-deps:scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8649d3f2e8a3705444c717700630ea71e977c46429f9c15148c6f34fefddd378
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110592410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a19d42c0c0c4e999eea671bcc1987a96a036b474c161896f8c0e93763721c5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c65a812e13200bd9df4d94bd3965c101bb4f340abf5a241e3e836b57bcf63178
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106399335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950f3aa0bcca5550052b324aaa4d64089206afedd4e738cee22942ab64f0b1eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:54:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157821da2b1d94165cd84d05d8d6f26e59234c0589b05e7b1c097124b88ce084`  
		Last Modified: Fri, 03 Nov 2017 08:03:16 GMT  
		Size: 48.2 MB (48225517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6bae1b961e14c5b33249a0b82286fb94e22d0fe46e67180788700a5115083922
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101920851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf92ee4f872d0704c53d9bef0170f6a262fad6ba0b2cb563a56fc6ea3bc7e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c533b98d69741528e4a35dcf0e0412a450eeff04c69f8f66572854c3b32e9ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105039937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322437529ca168cafdc1ed8ffc73c78eabc6ab181db7f1bac0ae425095ea7102`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3079f83f2d91b96d530c848abb1c0bb12725f412bc912eb7d7fdfca17b4e8409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113086030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a9d71b81f38a9859771439e5498d2b6da86c6bc208fcc9c3f5b3d6b412524d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e2ad74efc5a83dfd1f3713ffda4c488b5ef97a1ff7ae02abcce3f950b1918fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110031556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a75c73797caf1b3fb8da7879ae90af1598c41378e4ae6e8e338bc7fa308e5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:344afb4b03f5ca3b1b831ac413723aa86e762c85c2ce88bd1bbff852eb61147d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110447574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cccc89deea84c7572b456aa87b57cc7de14a17b0b07230cc7e7bb397e8a518`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:d2c1fb8454b6551353f34e482310e6594d4b87b684d2c7f3bd0cc0d782a29034
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

### `buildpack-deps:sid` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f3b1c853ce007ea602be1a5ffe42841aff2ac3f6c6a4c99c3bc985675f372412
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329316834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e98ef9d02a5ce953574413a624eb021f7a47008a2ba5d1b6ef3ff3e15435ec4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:29:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b7995e681833c3d84c968418853a917689b0042028abec3fe207e5faccd49`  
		Last Modified: Sat, 04 Nov 2017 15:46:24 GMT  
		Size: 50.3 MB (50348398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a2224cf14f5f2ff1a2fb73a2c8b89d7445d8ab6d6d6226f082ea425ccfe725`  
		Last Modified: Sat, 04 Nov 2017 15:47:13 GMT  
		Size: 213.3 MB (213263555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5241e65c42079ed8299a8179c971bae220803416c7baf82a29849a78e95ebc4d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.6 MB (314550284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34d35d623f5bf7b1dbe762a9cf57acaf6229e4b2a3e97736ca8c321343ef14b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:38 GMT
ADD file:ed4faefd58667ec248b15ae9b227fc04967695ab4002e9f3a65e8e53b3f73cc6 in / 
# Mon, 09 Oct 2017 21:43:39 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:51:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:45a6221cafba09e06352fbe396f5863616e79d7ab2b9481c3016ee02a2fc322d`  
		Last Modified: Mon, 09 Oct 2017 21:49:19 GMT  
		Size: 46.0 MB (46010091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a71f239a0573ab2b5a38f8e4787b24e0ed366e436a7165e9ff81a4ea2645db`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 7.7 MB (7735486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0081db03c6e7f4630bd9fd81942272f85f8d8ee868106b37440abf9da70f035f`  
		Last Modified: Fri, 03 Nov 2017 08:01:12 GMT  
		Size: 9.2 MB (9232575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eb060acda12d4bda94a545cab7ff7db8335a18eeafa98f3a107fa37a3f63c8`  
		Last Modified: Fri, 03 Nov 2017 08:01:35 GMT  
		Size: 48.2 MB (48181760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b94ca0ee0dca6bcf0e9154cf5cb4efd4016e0ff726c6a66db7d57e7e41bbf9d`  
		Last Modified: Fri, 03 Nov 2017 08:02:38 GMT  
		Size: 203.4 MB (203390372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:034d83a2e21fb0c22ac5ad1e68374e753e7a1181820899427e8c2c7a165c5856
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301862966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa244cf37d5c6ae76a3e7004fd850821cd2085fa8dd03940de990de8e3edaabf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:14 GMT
ADD file:8310e9969f49ad8da22c8531636a505f796ae2e5ab255104280bbe27bd312eb2 in / 
# Mon, 09 Oct 2017 21:44:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:13:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:15:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73d8f8e11b2d23be25158f1c637fa52a156601fa88a99dae20e4e90c9f8094e`  
		Last Modified: Mon, 09 Oct 2017 21:50:57 GMT  
		Size: 44.2 MB (44221149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f095d6eb4fb7112eed5df1d4ec6df80dba73c8cf89cb23d2b882b20b26a990db`  
		Last Modified: Mon, 09 Oct 2017 22:32:26 GMT  
		Size: 7.6 MB (7565479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968719ebcab7e8ff1fdf9a4c6674d9d6297c6e6aa3f2943d967a6197574aad3`  
		Last Modified: Fri, 03 Nov 2017 00:29:20 GMT  
		Size: 8.9 MB (8934960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3aaebcb207894178d9de2f611b7cd94dc0b046bd590a39228ded1239ccf17`  
		Last Modified: Fri, 03 Nov 2017 00:29:44 GMT  
		Size: 46.3 MB (46271269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591c90a6046f3d7e6d502785bc069a28c486e56be49a49577cc8857706fa2fb7`  
		Last Modified: Fri, 03 Nov 2017 00:30:43 GMT  
		Size: 194.9 MB (194870109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8998d71f448b853ab0ae13ebdeeeb0d0edb5c346444448520c479a4268c05203
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.9 MB (316937571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38bec1d6b206e7d676b08d56c797154713228dfbba8fc5ef67ce99e7eb635d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:00:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:10:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e81325a6af85f75a75f466627b0f3e722d22ef0a99868726a293425fa3678d30`  
		Last Modified: Mon, 09 Oct 2017 21:57:27 GMT  
		Size: 45.3 MB (45334165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b15acc099095e5b3dae6d84d900fe23c7d7fdf62fa46ad2bf73cd1939322b`  
		Last Modified: Mon, 09 Oct 2017 23:29:57 GMT  
		Size: 7.7 MB (7719898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4498a4fb63cad7de63f11fac1e366250a2d44ef615c578b8613a2e156d949f5c`  
		Last Modified: Fri, 03 Nov 2017 10:49:53 GMT  
		Size: 9.2 MB (9222133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af5551f0a38f4b7d27e5b13a9a9370036a8d848317e6e9947a57b3fd054165`  
		Last Modified: Fri, 03 Nov 2017 10:50:45 GMT  
		Size: 48.5 MB (48487553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee27067f7c82b1ce7e314d92f56817e9a04784e89322665ce099580ebd62c7a`  
		Last Modified: Fri, 03 Nov 2017 10:52:14 GMT  
		Size: 206.2 MB (206173822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:40f60d0e1e629640db7e641d1b71891cfa18f9d2632a78fb0e9332c02ae84fd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.3 MB (340312574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:796b402f2c3e326a2378b42a5f10ac199b526f63cf3afc9fcba1244b8631e3e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:26:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c4f0ba6c109e4a20a92a03d7e3ed54b584598a77c79e7891221658b1b505c8d3`  
		Last Modified: Mon, 09 Oct 2017 21:50:58 GMT  
		Size: 48.4 MB (48397299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b294cfff7eb8dcc3dafb8c0e7697c3a7d4be20ea1cffb502417ad7ef4a81c`  
		Last Modified: Mon, 09 Oct 2017 23:38:45 GMT  
		Size: 8.5 MB (8522414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa574558b4cb00ba838337e7a215b8c5b8278384e951eba7da0e1f7003f859d`  
		Last Modified: Fri, 03 Nov 2017 00:12:49 GMT  
		Size: 9.8 MB (9805839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0058d6363566b60235f127c91f5be0067506016293df32efe5c99e4dc83f6b31`  
		Last Modified: Fri, 03 Nov 2017 00:13:16 GMT  
		Size: 52.2 MB (52154229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd243dd46cf8b3cfcc719be82db3bf7edd1f970a86479073c7454964094fcfd1`  
		Last Modified: Fri, 03 Nov 2017 00:16:45 GMT  
		Size: 221.4 MB (221432793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:817c33169df40120856a3a37e2b3eaeed52af7c043615de8d1bf88144d5d8920
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336145480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b781a843e4ce07b0ba33a1572f2de0d6862f75e45e779bb38cb7bf451348578`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:35:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:51:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:11a0304e8c893e4d955264c2d8a8a0c4dd84908eba9876476623a4a364a7c48e`  
		Last Modified: Mon, 09 Oct 2017 21:50:45 GMT  
		Size: 48.7 MB (48723592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee00dbe27034f9638c9023274ecf0166a5b554572eb473a7ffc2b3c764737c`  
		Last Modified: Tue, 10 Oct 2017 00:56:04 GMT  
		Size: 8.0 MB (7978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c04e765611a9cec3c8d273fb944b688101979527677b6d1673ff23fb276b98`  
		Last Modified: Thu, 02 Nov 2017 17:49:42 GMT  
		Size: 9.7 MB (9742580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe1500256ae537b470925ccd468679c4dd7a02f82d153c9280a8e4dcde7f1ff`  
		Last Modified: Thu, 02 Nov 2017 17:50:16 GMT  
		Size: 53.0 MB (52953586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca476207eac66b4f018278dc50c9ac25c9b1f278f5220e534bfca3ce33d8780e`  
		Last Modified: Thu, 02 Nov 2017 17:51:20 GMT  
		Size: 216.7 MB (216746857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d66f98d0b291443324af8281cb89b5d44d11e0bb5d793723abe79ee0c526800f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.9 MB (318902376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c113dd59ef08a253cab1f82c67d8fbf80cfa10f2c1b581a884de75efd09ebb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:44:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:387500139c6151d781fe62dbc679af96a9ac79dc2049d4b57d00beb6515f3617`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 47.3 MB (47292875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2bf7517ce1b767b32d484c45cdbde2774795f97aa23cbd2ca4f9aa57e0907e`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 8.1 MB (8093416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf6e9bec5e8ebc238611abf06601adf9ff50529f0f19c63cbfaa10a33c32121`  
		Last Modified: Thu, 02 Nov 2017 16:55:12 GMT  
		Size: 9.5 MB (9478048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc27c91df378d34d3fe35fa5f2a0c2b27d326e071ec06354215b99bd258e2e4`  
		Last Modified: Thu, 02 Nov 2017 16:55:31 GMT  
		Size: 50.3 MB (50321473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f18c8646aefc43534c3417e6c10a2096429b8cd38bc15b40b25b15e7823a12`  
		Last Modified: Thu, 02 Nov 2017 16:56:14 GMT  
		Size: 203.7 MB (203716564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:52b4645b1b70524cac3e694f0b260055c871fbf422b6f689e6dc2fdd41f47fe3
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a72d689529ca10ff10fba864681b2f01dd65abc86f94c0faa0c94b3a7657b10c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65704881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c925b9915a5410e19d5ae15674779c64968d8e614cf740549b4221179cb359b0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:3b46cb431864523757e1239ae82a07b795b0c14af90ce876d728761b0a2d077f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62978152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956b93b063eb22339835f0099643709cfa05c573714676f82e6f3ee242b91116`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:38 GMT
ADD file:ed4faefd58667ec248b15ae9b227fc04967695ab4002e9f3a65e8e53b3f73cc6 in / 
# Mon, 09 Oct 2017 21:43:39 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:45a6221cafba09e06352fbe396f5863616e79d7ab2b9481c3016ee02a2fc322d`  
		Last Modified: Mon, 09 Oct 2017 21:49:19 GMT  
		Size: 46.0 MB (46010091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a71f239a0573ab2b5a38f8e4787b24e0ed366e436a7165e9ff81a4ea2645db`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 7.7 MB (7735486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0081db03c6e7f4630bd9fd81942272f85f8d8ee868106b37440abf9da70f035f`  
		Last Modified: Fri, 03 Nov 2017 08:01:12 GMT  
		Size: 9.2 MB (9232575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:45d3e55fe83bed067a684aa3644458d010fe111b742b1ff849e04bd831d90f93
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60721588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e271b593d25f847343ec355ee054e8c50c810e1807ed05004455e76b340a6994`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:14 GMT
ADD file:8310e9969f49ad8da22c8531636a505f796ae2e5ab255104280bbe27bd312eb2 in / 
# Mon, 09 Oct 2017 21:44:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:13:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c73d8f8e11b2d23be25158f1c637fa52a156601fa88a99dae20e4e90c9f8094e`  
		Last Modified: Mon, 09 Oct 2017 21:50:57 GMT  
		Size: 44.2 MB (44221149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f095d6eb4fb7112eed5df1d4ec6df80dba73c8cf89cb23d2b882b20b26a990db`  
		Last Modified: Mon, 09 Oct 2017 22:32:26 GMT  
		Size: 7.6 MB (7565479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968719ebcab7e8ff1fdf9a4c6674d9d6297c6e6aa3f2943d967a6197574aad3`  
		Last Modified: Fri, 03 Nov 2017 00:29:20 GMT  
		Size: 8.9 MB (8934960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e9055ec9b3d9a64e6b44f7d2ae45426fc0e8ac7e764b6e75e32fc0aad1088e88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62276196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6bfd13e76ee9c1aca3bc983a12903db220d9e009d046ed37ab2b91cb0e4dd31`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:00:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e81325a6af85f75a75f466627b0f3e722d22ef0a99868726a293425fa3678d30`  
		Last Modified: Mon, 09 Oct 2017 21:57:27 GMT  
		Size: 45.3 MB (45334165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b15acc099095e5b3dae6d84d900fe23c7d7fdf62fa46ad2bf73cd1939322b`  
		Last Modified: Mon, 09 Oct 2017 23:29:57 GMT  
		Size: 7.7 MB (7719898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4498a4fb63cad7de63f11fac1e366250a2d44ef615c578b8613a2e156d949f5c`  
		Last Modified: Fri, 03 Nov 2017 10:49:53 GMT  
		Size: 9.2 MB (9222133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:27c04df1b2fe4214e1f4cb28649240359d16a735d2a5f9694c53e5bb7ffdf5db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66725552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b94faaf5c89438a0e4c91de3759ce646b0623a855dba233c426209e595ccdbb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:26:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c4f0ba6c109e4a20a92a03d7e3ed54b584598a77c79e7891221658b1b505c8d3`  
		Last Modified: Mon, 09 Oct 2017 21:50:58 GMT  
		Size: 48.4 MB (48397299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b294cfff7eb8dcc3dafb8c0e7697c3a7d4be20ea1cffb502417ad7ef4a81c`  
		Last Modified: Mon, 09 Oct 2017 23:38:45 GMT  
		Size: 8.5 MB (8522414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa574558b4cb00ba838337e7a215b8c5b8278384e951eba7da0e1f7003f859d`  
		Last Modified: Fri, 03 Nov 2017 00:12:49 GMT  
		Size: 9.8 MB (9805839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4b374a758bdd4e9a9c08609fac450069d4ccc97f5186a7af21eebe3c2db7362f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66445037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836888c0431f1027501b71288a4bca61388f8b660ddd0a5e194d59307bab7fb1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:35:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:11a0304e8c893e4d955264c2d8a8a0c4dd84908eba9876476623a4a364a7c48e`  
		Last Modified: Mon, 09 Oct 2017 21:50:45 GMT  
		Size: 48.7 MB (48723592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee00dbe27034f9638c9023274ecf0166a5b554572eb473a7ffc2b3c764737c`  
		Last Modified: Tue, 10 Oct 2017 00:56:04 GMT  
		Size: 8.0 MB (7978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c04e765611a9cec3c8d273fb944b688101979527677b6d1673ff23fb276b98`  
		Last Modified: Thu, 02 Nov 2017 17:49:42 GMT  
		Size: 9.7 MB (9742580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4cf365fc73e69c4f518316f0b89caf4c2d5282c6478219da673077127f8bea3a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64864339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a767b6f1c8d42d1d2e7758737e143a3b7e905f742c1770fb9420596e7e81fe98`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:387500139c6151d781fe62dbc679af96a9ac79dc2049d4b57d00beb6515f3617`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 47.3 MB (47292875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2bf7517ce1b767b32d484c45cdbde2774795f97aa23cbd2ca4f9aa57e0907e`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 8.1 MB (8093416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf6e9bec5e8ebc238611abf06601adf9ff50529f0f19c63cbfaa10a33c32121`  
		Last Modified: Thu, 02 Nov 2017 16:55:12 GMT  
		Size: 9.5 MB (9478048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:88155b8321ba790740cecaf9f5d40ebf5805c22b28752fc91ae74586e5844276
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bf8fc322627ae399e89cdca91a905629c4e057f60a271d6ec1d9e911c60088c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116053279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e324556af6eb8544b3d22f74599b6adda8798a7b5634cc7863ee552e2b567a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b7995e681833c3d84c968418853a917689b0042028abec3fe207e5faccd49`  
		Last Modified: Sat, 04 Nov 2017 15:46:24 GMT  
		Size: 50.3 MB (50348398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5fb39cf5a02d34305a18579860c52b32d14f86f652316b4908e4d600cf5ea944
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111159912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b0a14954345cd49c6010c9a29c1320fafd361d518b2719667c59cf081e4f92`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:38 GMT
ADD file:ed4faefd58667ec248b15ae9b227fc04967695ab4002e9f3a65e8e53b3f73cc6 in / 
# Mon, 09 Oct 2017 21:43:39 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:51:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:45a6221cafba09e06352fbe396f5863616e79d7ab2b9481c3016ee02a2fc322d`  
		Last Modified: Mon, 09 Oct 2017 21:49:19 GMT  
		Size: 46.0 MB (46010091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a71f239a0573ab2b5a38f8e4787b24e0ed366e436a7165e9ff81a4ea2645db`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 7.7 MB (7735486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0081db03c6e7f4630bd9fd81942272f85f8d8ee868106b37440abf9da70f035f`  
		Last Modified: Fri, 03 Nov 2017 08:01:12 GMT  
		Size: 9.2 MB (9232575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eb060acda12d4bda94a545cab7ff7db8335a18eeafa98f3a107fa37a3f63c8`  
		Last Modified: Fri, 03 Nov 2017 08:01:35 GMT  
		Size: 48.2 MB (48181760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f01009169da4c2fc5f70c23176ebc43e89e0eabf66b966ea89d7d45d9dbab35f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (106992857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c336d5fb4c1bb7a97fe6aeab618ec51dd4a9919e140ed69dd41ae74dda9484b5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:14 GMT
ADD file:8310e9969f49ad8da22c8531636a505f796ae2e5ab255104280bbe27bd312eb2 in / 
# Mon, 09 Oct 2017 21:44:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:13:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73d8f8e11b2d23be25158f1c637fa52a156601fa88a99dae20e4e90c9f8094e`  
		Last Modified: Mon, 09 Oct 2017 21:50:57 GMT  
		Size: 44.2 MB (44221149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f095d6eb4fb7112eed5df1d4ec6df80dba73c8cf89cb23d2b882b20b26a990db`  
		Last Modified: Mon, 09 Oct 2017 22:32:26 GMT  
		Size: 7.6 MB (7565479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968719ebcab7e8ff1fdf9a4c6674d9d6297c6e6aa3f2943d967a6197574aad3`  
		Last Modified: Fri, 03 Nov 2017 00:29:20 GMT  
		Size: 8.9 MB (8934960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3aaebcb207894178d9de2f611b7cd94dc0b046bd590a39228ded1239ccf17`  
		Last Modified: Fri, 03 Nov 2017 00:29:44 GMT  
		Size: 46.3 MB (46271269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b12028e36862a9e34e0025b550e257fb859d09ee1d001a20659f79f0f18e1544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110763749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42cd460f4a43f8cea14862cbb6f1a7242337b190e2d3cc640b027f1585a35919`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:00:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e81325a6af85f75a75f466627b0f3e722d22ef0a99868726a293425fa3678d30`  
		Last Modified: Mon, 09 Oct 2017 21:57:27 GMT  
		Size: 45.3 MB (45334165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b15acc099095e5b3dae6d84d900fe23c7d7fdf62fa46ad2bf73cd1939322b`  
		Last Modified: Mon, 09 Oct 2017 23:29:57 GMT  
		Size: 7.7 MB (7719898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4498a4fb63cad7de63f11fac1e366250a2d44ef615c578b8613a2e156d949f5c`  
		Last Modified: Fri, 03 Nov 2017 10:49:53 GMT  
		Size: 9.2 MB (9222133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af5551f0a38f4b7d27e5b13a9a9370036a8d848317e6e9947a57b3fd054165`  
		Last Modified: Fri, 03 Nov 2017 10:50:45 GMT  
		Size: 48.5 MB (48487553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4dcfed513564fae813638b7f6421d70f2b949ed5bf29639dafd87d9571d31a5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118879781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fded56a07d59deea813f3e95db6505623f011dcf1346d476e1cfbf57610a2c1a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:26:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c4f0ba6c109e4a20a92a03d7e3ed54b584598a77c79e7891221658b1b505c8d3`  
		Last Modified: Mon, 09 Oct 2017 21:50:58 GMT  
		Size: 48.4 MB (48397299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b294cfff7eb8dcc3dafb8c0e7697c3a7d4be20ea1cffb502417ad7ef4a81c`  
		Last Modified: Mon, 09 Oct 2017 23:38:45 GMT  
		Size: 8.5 MB (8522414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa574558b4cb00ba838337e7a215b8c5b8278384e951eba7da0e1f7003f859d`  
		Last Modified: Fri, 03 Nov 2017 00:12:49 GMT  
		Size: 9.8 MB (9805839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0058d6363566b60235f127c91f5be0067506016293df32efe5c99e4dc83f6b31`  
		Last Modified: Fri, 03 Nov 2017 00:13:16 GMT  
		Size: 52.2 MB (52154229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d77033e10b0eefab1a0b5df5bde40ae0949f071b3bbb13154b1bf2615b46e3cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119398623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8799091f9a38ed815a959a3ca1f4eb4200e997d77c7cd0ccff77ca1dc392a157`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:35:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:11a0304e8c893e4d955264c2d8a8a0c4dd84908eba9876476623a4a364a7c48e`  
		Last Modified: Mon, 09 Oct 2017 21:50:45 GMT  
		Size: 48.7 MB (48723592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee00dbe27034f9638c9023274ecf0166a5b554572eb473a7ffc2b3c764737c`  
		Last Modified: Tue, 10 Oct 2017 00:56:04 GMT  
		Size: 8.0 MB (7978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c04e765611a9cec3c8d273fb944b688101979527677b6d1673ff23fb276b98`  
		Last Modified: Thu, 02 Nov 2017 17:49:42 GMT  
		Size: 9.7 MB (9742580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe1500256ae537b470925ccd468679c4dd7a02f82d153c9280a8e4dcde7f1ff`  
		Last Modified: Thu, 02 Nov 2017 17:50:16 GMT  
		Size: 53.0 MB (52953586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:84e68abe312551dff18a52418544193ee771f6c07aeeda2717f2a9f3a06cc4e5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115185812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06bfe941d79810361c1a9b2edd055fd3030abef50067f4b829f01fbfcc3194d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:387500139c6151d781fe62dbc679af96a9ac79dc2049d4b57d00beb6515f3617`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 47.3 MB (47292875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2bf7517ce1b767b32d484c45cdbde2774795f97aa23cbd2ca4f9aa57e0907e`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 8.1 MB (8093416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf6e9bec5e8ebc238611abf06601adf9ff50529f0f19c63cbfaa10a33c32121`  
		Last Modified: Thu, 02 Nov 2017 16:55:12 GMT  
		Size: 9.5 MB (9478048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc27c91df378d34d3fe35fa5f2a0c2b27d326e071ec06354215b99bd258e2e4`  
		Last Modified: Thu, 02 Nov 2017 16:55:31 GMT  
		Size: 50.3 MB (50321473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:e2520ede7164550818b6a3a86167a41e901f35160c4e96dabcce0beec1c39ab3
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

### `buildpack-deps:stretch` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bd5ea4d8eda706a5c441db2f3a0ef07b683a12190d30b6352900403315f90dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.7 MB (323662248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094baccb5c470166cf5c8b0e33864df874a7b03172f488d9051a3050e4143dfc`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:31:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e31c1862427cfb8d8a464c7a91b059e914f511a2901cbf26ed269d0154ed6c`  
		Last Modified: Sat, 04 Nov 2017 15:48:47 GMT  
		Size: 213.1 MB (213069838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:78ab30f14277d317c5549b98f87b211c70435992c52706322493324c314ad88b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308312034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530486ff31a606dffe981c58cbcb3314789819f85c77b94b77bda02066323f38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:54:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:56:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157821da2b1d94165cd84d05d8d6f26e59234c0589b05e7b1c097124b88ce084`  
		Last Modified: Fri, 03 Nov 2017 08:03:16 GMT  
		Size: 48.2 MB (48225517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6a6c3e4de3a590972ffd636e9de457189c35b1a2e85c30dd37d01645fe6ffa`  
		Last Modified: Fri, 03 Nov 2017 08:04:22 GMT  
		Size: 201.9 MB (201912699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9932769f43b4c0e74d9c3f217001592f419d14276542f3e6481356a6df6054ee
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0b938e69eec1cb2b61959ec9988195b6eb517cc905d1c6456c3bee6377690b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:17:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07515028f7d65298f59634c7ecdd274ae013c563d9e5fc02a409e95e3f6ac2e`  
		Last Modified: Fri, 03 Nov 2017 00:32:35 GMT  
		Size: 194.4 MB (194412951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e575ef4cedda7473f26bc5128cf18ce78e85744bd6c2a1be40cfe7a7704d1a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306105862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495d557abd848b4acad000c7ba3bfd0b907e5d6ee178dd3a820cfe61dbd09198`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:20:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd3f56e36b72b1fc7534469a1d8e970edd8777ed7b167ad1b55cc48e7b4498a`  
		Last Modified: Fri, 03 Nov 2017 10:56:05 GMT  
		Size: 201.1 MB (201065925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; 386

```console
$ docker pull buildpack-deps@sha256:576887f4de78a47c92e5e946923444f4b60ea090801eacd469727e06dca77fb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.8 MB (331838746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6d4f5c8f5682edb328abc6febd68727409a1947143e8f9070bc9a803bb3c78`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bcf2add3efe5f93156a5ece54f198a6e3ede52c9a89eafae1b5ac7132812fa`  
		Last Modified: Fri, 03 Nov 2017 00:22:58 GMT  
		Size: 218.8 MB (218752716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ffe42beeb4dfb3799aaca2d2f1acb9f0ab53b407ad790cf2d1aa7d307798b308
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319352544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a426edfaaeacac7ceb6a6e03c01db224aff65177c9d04a0ff0ee7bb3f9323fc2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:10:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da01a909c551e09b6c6719f2c59ee957c542349d74ffb60c4135c5ba14ef47a8`  
		Last Modified: Thu, 02 Nov 2017 17:53:11 GMT  
		Size: 209.3 MB (209320988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:799a1255c548473c8bfa715ac384c39e52431e1ae1167fd5f402374403d9bb9a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316139557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a55666965247842e6a6a328952f4c4104f393f5fd35d274754984d155caa2f0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:47:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba76b10e3278b771126c424c6bb8e88f1f4cf32d93106c1736762cf664ea8e57`  
		Last Modified: Thu, 02 Nov 2017 16:57:37 GMT  
		Size: 205.7 MB (205691983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:fc341cf74876ee6af5f4ea24f998a716cb3694749c610a324ac4aada3db74798
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

### `buildpack-deps:stretch-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:37a359131d08f739c2e5abf6589d1498d43c5159cb59ce1827f4b14c2a5166f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60571323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603cec965d64db4a4dc8e1d92524be0ea4042cfb074fcdcd420bc6d1b75d0e38`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:8470a2c363c4495ab27dcbda7c817230403d83f7e9ef239ba6c12b2f1fcf8cc4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58173818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67744ba02991289fa5f3536050271c61b6b44f66f5aba92d7bed96e9440e0641`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:dd56c63fb2c799afe54fdf80bc3e66b88a1d3825022848ca4afc19634c266795
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55578045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb0632c4675926f4ffe6e6b3126488b7396d6813311a390621ddcd31b8e88e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ca23feaa262e301319276cc1214ab5f10a3971f50628aeba3598dce73bac6932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57065763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe305a3d265292d784a5b0bfc360a96f368e10d91cd30b09383239b656ded3b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c5199d2384b095b0c24dd01273f3ede9340096060dfd138876b9e013bdbce5dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61537783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74073243f25ddf08e23ef07403b93e2e7a0cdbcd73db04616d77b5c396e1c0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:052a9d8fe0274c313d3271961ceede78326212b9eb4b7d0d4baa378386e059b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60006514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81af47c5e99ac145c35c591f9b46f9654c4d0ca09519275e93fa72bad09c1576`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:37396ee58a7ca86ce5caaa083847fa0965073c2b38037064fca2db952e68bab8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60006456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06863d06656913501a6f477b40a98ddcb5962ac688430e083e9f2d621485785`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:9169ce0ee3ff80d03a5389d516303dd9e11d892526f49b5bc79b3962e5e12210
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

### `buildpack-deps:stretch-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8649d3f2e8a3705444c717700630ea71e977c46429f9c15148c6f34fefddd378
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110592410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a19d42c0c0c4e999eea671bcc1987a96a036b474c161896f8c0e93763721c5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c65a812e13200bd9df4d94bd3965c101bb4f340abf5a241e3e836b57bcf63178
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106399335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950f3aa0bcca5550052b324aaa4d64089206afedd4e738cee22942ab64f0b1eb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:54:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157821da2b1d94165cd84d05d8d6f26e59234c0589b05e7b1c097124b88ce084`  
		Last Modified: Fri, 03 Nov 2017 08:03:16 GMT  
		Size: 48.2 MB (48225517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6bae1b961e14c5b33249a0b82286fb94e22d0fe46e67180788700a5115083922
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101920851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cf92ee4f872d0704c53d9bef0170f6a262fad6ba0b2cb563a56fc6ea3bc7e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcf33376673dd229512c0a1ced2820e4f1dab7ff86f82999ceee3c3241ac022`  
		Last Modified: Fri, 03 Nov 2017 00:31:28 GMT  
		Size: 46.3 MB (46342806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c533b98d69741528e4a35dcf0e0412a450eeff04c69f8f66572854c3b32e9ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105039937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322437529ca168cafdc1ed8ffc73c78eabc6ab181db7f1bac0ae425095ea7102`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117170723ac362b5d0b9257abea6072b2490b68cf72bcd542f12747d2bdbb326`  
		Last Modified: Fri, 03 Nov 2017 10:53:56 GMT  
		Size: 48.0 MB (47974174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3079f83f2d91b96d530c848abb1c0bb12725f412bc912eb7d7fdfca17b4e8409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113086030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a9d71b81f38a9859771439e5498d2b6da86c6bc208fcc9c3f5b3d6b412524d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:35:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c32f013f29ebc903c18ca7bd122e38eb61248a8727c36deae7c8ea012941105`  
		Last Modified: Fri, 03 Nov 2017 00:17:52 GMT  
		Size: 51.5 MB (51548247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e2ad74efc5a83dfd1f3713ffda4c488b5ef97a1ff7ae02abcce3f950b1918fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110031556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a75c73797caf1b3fb8da7879ae90af1598c41378e4ae6e8e338bc7fa308e5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:55:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc9f6b353cea3301a90226a39843149f133aa585c3e7dd923210ac52b8130b`  
		Last Modified: Thu, 02 Nov 2017 17:52:05 GMT  
		Size: 50.0 MB (50025042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:344afb4b03f5ca3b1b831ac413723aa86e762c85c2ce88bd1bbff852eb61147d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110447574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cccc89deea84c7572b456aa87b57cc7de14a17b0b07230cc7e7bb397e8a518`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:45:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d4544e2091d06812f86168c7f538f3b467ab2c631c38235c2791ecb7e3a6f5`  
		Last Modified: Thu, 02 Nov 2017 16:56:47 GMT  
		Size: 50.4 MB (50441118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:fab1e2412146538bf66eb6c9ba783c3d18a8ccef0390fa26156a2b4aaed4d1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5691bc7944ec4d2457b58ab158aa3ed2a042089b3b32ae52e17a689130e0e418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208038550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c64a08bccc54150d18643856d1f90f117c990b6feb9df7f72c6cb22b25958691`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:32:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:32:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:34:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8258645c3588f93cacf24aa317e8d92b946f95c25f9a73efe806638c2980ce`  
		Last Modified: Sat, 04 Nov 2017 15:49:04 GMT  
		Size: 4.7 MB (4657486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dfae93b6e98876d2d10a571a6cf3e0757dcfbd9f448e606e416bb2b9d2dc55`  
		Last Modified: Sat, 04 Nov 2017 15:49:21 GMT  
		Size: 29.6 MB (29556361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e3136487b154418a53730fae4ceffb6c85ce07666214bac4ea11c8e0d48e47`  
		Last Modified: Sat, 04 Nov 2017 15:50:51 GMT  
		Size: 106.6 MB (106635769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3dab00c6f9008b539197cd5bc9f6cfc9e670e5d49ca0ad9345ea7682db96564d
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.1 MB (178053583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3018b62389f642367f5120c5f5b9ead471f5eec9e7e76e43dac37df8f6d938b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:55:15 GMT
ADD file:42d4be095fa4e2e1b4beff35dc16fc9e1f499fa1ba461dc55e2dd5aec1b57de8 in / 
# Fri, 21 Jul 2017 13:55:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:55:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:55:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:55:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:55:26 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 17:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:58:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 18:00:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:08:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca99d9b89b12502d127ad3d3b62950e66a195158b8391a00e0b0f7351681bc8f`  
		Last Modified: Fri, 21 Jul 2017 13:58:58 GMT  
		Size: 61.5 MB (61450949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6da4f85c34172cfeb265a4d4e2d8b1cd170f35e42c6991dde9288e3f535361b`  
		Last Modified: Fri, 21 Jul 2017 13:58:11 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef84fab4d47e92ca3932211745d9d77498bec7bc17b5964f59003a5ac6b3313`  
		Last Modified: Fri, 21 Jul 2017 13:58:12 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b5b84ec03ed3bbf6ae87f16efd0b1035c651f95f8adf48160ed89502b93fe2`  
		Last Modified: Fri, 21 Jul 2017 13:58:12 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998af34c3fb9c1029c1b9ec544c8cfc850b7849caa90ee0719490d9fecf4f3a`  
		Last Modified: Fri, 21 Jul 2017 13:58:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebe0971d916c097fa02f43e5e38070a9a6b43e8726e78111a3c7169f169a7c0`  
		Last Modified: Fri, 11 Aug 2017 18:59:07 GMT  
		Size: 4.3 MB (4290929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407cfe5385db367cf48f4bc6ea6a5b12a82c8aaac033b3ee29d49959ae1fa4b2`  
		Last Modified: Fri, 11 Aug 2017 18:59:34 GMT  
		Size: 27.1 MB (27079260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f7299c719b2987e0d32aac22c327a2dba1046c5a7d24d6322422265febe8e6`  
		Last Modified: Fri, 11 Aug 2017 19:00:37 GMT  
		Size: 85.2 MB (85154477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:c10c87d372e9e98c17fbb387a208240d855a484e60c5b4a99f84b39c65844e3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182955954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fbb87224915a7d6729cf541a0216b7b7ad65dd2d2c0ef3f3cce2b0837c01124`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 14:50:43 GMT
ADD file:eebc3253d06c63597c97d133109fe69008297a2468752f337dd7a747538d4f4e in / 
# Fri, 21 Jul 2017 14:50:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 14:50:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 14:50:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 14:50:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 14:50:59 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 16:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:16:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 16:18:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:26:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2398fda8248680a3ae6588216803cd6b0590d22aec0b2c3b2c204549a2b632ed`  
		Last Modified: Fri, 21 Jul 2017 14:53:54 GMT  
		Size: 63.2 MB (63163404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16313f4a4a7dc59a1c543b51acb480aa1e882b5988d756ebeaa936b6213e7099`  
		Last Modified: Fri, 21 Jul 2017 14:53:06 GMT  
		Size: 59.1 KB (59092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17739c6f982324546b722100eb3faff25c58b6f8a3ea91996ab7af1d11d604`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b157bcbc462583c0fbd53e919cfeabe52015e66057e3b206a0283640d7416a`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfc2717de44767970d1ba5ef69d1043a63be34cef36d17a4906820197a73c6`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49db51590aec9499c9bf45fba557fd20159c008c89ba73a35aa134a8d1b4ff0c`  
		Last Modified: Fri, 21 Jul 2017 16:54:38 GMT  
		Size: 4.4 MB (4416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa37e26e76b315c82e02f1324e4269a8c6b2cc0da517dd08987ecae5028032d`  
		Last Modified: Fri, 21 Jul 2017 16:55:09 GMT  
		Size: 28.0 MB (27967286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a7d038c963566ef40ce9eb9b17c88d22abb6cb3fce0110fcc19b3354322793`  
		Last Modified: Fri, 21 Jul 2017 16:56:18 GMT  
		Size: 87.3 MB (87348085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; 386

```console
$ docker pull buildpack-deps@sha256:075d1caa84fed9906d49ff688a1fe8e846aae53c332e1681f12223ac5e30c2c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203028675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd29ec1f9f8597d06a318de14d0a8179672c9182a4635a6c59d018718ed3e4b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:25 GMT
ADD file:5ea4259718526648d5d282e8d9d1c2584e856b39c0f4b8594de9aa9f9985218b in / 
# Wed, 13 Sep 2017 23:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:45:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:48:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f783391c63c08ef35d2d6263d1009541806f2358ba987368c7abf8729cf5d577`  
		Last Modified: Wed, 06 Sep 2017 09:36:00 GMT  
		Size: 64.8 MB (64832640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a47d2c69876192779226a84caa6f71f9c15cf4151b85c06c3f6289423c5259`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 64.9 KB (64851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cd5494581ef496db53eae6ef74ee4589a5d2f2d53faede541254b65eee6a0`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f705fb93233929d4f280117ab56b4fa4666a06a975de96a8279bd985bd3f1e`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd11b43477b7c801f64151e30c383653655af3332787fed6204add3ab092753`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b60577d3b6e582c311747b12608d3492fd91a92781184e471c20f44c036649`  
		Last Modified: Thu, 14 Sep 2017 00:03:57 GMT  
		Size: 4.7 MB (4692709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f6e42008660bf00c2484ee1959fa7d7f96cdee863b3a9e7478878ef7c7f60f`  
		Last Modified: Fri, 03 Nov 2017 00:23:41 GMT  
		Size: 29.2 MB (29182089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4753118b79f12fa04181ecad25e9a4e42e36bfebd3fe88b77ca2408c8a436b03`  
		Last Modified: Fri, 03 Nov 2017 00:24:18 GMT  
		Size: 104.3 MB (104255014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:296442965cc4e1393a643a1f84b1471830c33edea6165b490d98fd5889ba973f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208081783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e01cf139abf6f68f56efb276f90b8e100dfcbe4b1b04ff83d0e2a9fb29f545`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 02:39:38 GMT
ADD file:4ecd0733e076def530f4ba6ca020b32abefd00323a9a7fc54dc6f358d4f911dd in / 
# Fri, 21 Jul 2017 02:39:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 02:39:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 02:39:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 02:39:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 02:39:41 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 03:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:13:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 03:13:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:15:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:63d210d044abcdd3f1b0ef25057d8ed3e8811eee21960076f38984bbfee525fe`  
		Last Modified: Fri, 21 Jul 2017 02:40:57 GMT  
		Size: 69.7 MB (69652828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb10013e10c7b4a2cf7a885843fe1569c50975c832e66a4999f0fc52772d446`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 63.4 KB (63415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b65929fc0417c90cbab667eb0ba280df21990cc911de56ccca52ef3a870848`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed100fb16f7d1490fd322fb5bd054763652a34a8eba7842f00b8f4b3c0bf6a`  
		Last Modified: Fri, 21 Jul 2017 02:40:36 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840d29ee575d493ebe998bfea94141895c6c1f8d2ee5fb084b5972806ed483f`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955e399e2ead317f29ca01ca6bc27b786126f0866d9c0210e7b487357b05d13`  
		Last Modified: Fri, 21 Jul 2017 03:29:28 GMT  
		Size: 4.8 MB (4759216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4636241e3b4d80e26488f15c35c652be7167392b9ae80dfc827332aa3a2b40`  
		Last Modified: Fri, 21 Jul 2017 03:29:44 GMT  
		Size: 32.0 MB (31955235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba94c2441ae59d27b01be19713d675a14c3011f919232c91e007494a9401323`  
		Last Modified: Fri, 21 Jul 2017 03:30:19 GMT  
		Size: 101.6 MB (101649863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:b1bcf7cc44bb21999f2ae7b0debcb6f6044d1677fb28fa58f18901de9bd8bd66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:328e7c309525856994e73f7b446ef2d82c9a1f3e0977aa6bc56660a23cd3f6bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71846420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc643e33cf16cdba4a029fd29a3685207e5c21f473edf08b04de9098a089d3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:32:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:32:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8258645c3588f93cacf24aa317e8d92b946f95c25f9a73efe806638c2980ce`  
		Last Modified: Sat, 04 Nov 2017 15:49:04 GMT  
		Size: 4.7 MB (4657486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e3242eb59ffe26b97156cc0f4bb9b0b004637f9362d3f8456bb1b33e85eeeff7
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65819846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb17ecad8e04a29a7b07e7b73e5184cdcb4e1ac637e2dfc00d1db65025a1136`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:55:15 GMT
ADD file:42d4be095fa4e2e1b4beff35dc16fc9e1f499fa1ba461dc55e2dd5aec1b57de8 in / 
# Fri, 21 Jul 2017 13:55:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:55:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:55:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:55:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:55:26 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 17:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:58:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ca99d9b89b12502d127ad3d3b62950e66a195158b8391a00e0b0f7351681bc8f`  
		Last Modified: Fri, 21 Jul 2017 13:58:58 GMT  
		Size: 61.5 MB (61450949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6da4f85c34172cfeb265a4d4e2d8b1cd170f35e42c6991dde9288e3f535361b`  
		Last Modified: Fri, 21 Jul 2017 13:58:11 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef84fab4d47e92ca3932211745d9d77498bec7bc17b5964f59003a5ac6b3313`  
		Last Modified: Fri, 21 Jul 2017 13:58:12 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b5b84ec03ed3bbf6ae87f16efd0b1035c651f95f8adf48160ed89502b93fe2`  
		Last Modified: Fri, 21 Jul 2017 13:58:12 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998af34c3fb9c1029c1b9ec544c8cfc850b7849caa90ee0719490d9fecf4f3a`  
		Last Modified: Fri, 21 Jul 2017 13:58:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebe0971d916c097fa02f43e5e38070a9a6b43e8726e78111a3c7169f169a7c0`  
		Last Modified: Fri, 11 Aug 2017 18:59:07 GMT  
		Size: 4.3 MB (4290929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:042456367462723e2507e012405e9d6b3274ed06d0980a991d31c82d0fadb586
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67640583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b7f1ecf29b5e65ba7eca6d4038081c2545436dc61422e4d5029ad643ace419`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 14:50:43 GMT
ADD file:eebc3253d06c63597c97d133109fe69008297a2468752f337dd7a747538d4f4e in / 
# Fri, 21 Jul 2017 14:50:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 14:50:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 14:50:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 14:50:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 14:50:59 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 16:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:16:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:2398fda8248680a3ae6588216803cd6b0590d22aec0b2c3b2c204549a2b632ed`  
		Last Modified: Fri, 21 Jul 2017 14:53:54 GMT  
		Size: 63.2 MB (63163404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16313f4a4a7dc59a1c543b51acb480aa1e882b5988d756ebeaa936b6213e7099`  
		Last Modified: Fri, 21 Jul 2017 14:53:06 GMT  
		Size: 59.1 KB (59092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17739c6f982324546b722100eb3faff25c58b6f8a3ea91996ab7af1d11d604`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b157bcbc462583c0fbd53e919cfeabe52015e66057e3b206a0283640d7416a`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfc2717de44767970d1ba5ef69d1043a63be34cef36d17a4906820197a73c6`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49db51590aec9499c9bf45fba557fd20159c008c89ba73a35aa134a8d1b4ff0c`  
		Last Modified: Fri, 21 Jul 2017 16:54:38 GMT  
		Size: 4.4 MB (4416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:58647d03f68fba9d89e5b9de3d957fdf90e1861be0709b7442d8c57049411540
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69591572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dff2aaf6208a147cf4177f36292f3bbdd193f14148cc97414cea31b6a927e45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:25 GMT
ADD file:5ea4259718526648d5d282e8d9d1c2584e856b39c0f4b8594de9aa9f9985218b in / 
# Wed, 13 Sep 2017 23:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:45:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f783391c63c08ef35d2d6263d1009541806f2358ba987368c7abf8729cf5d577`  
		Last Modified: Wed, 06 Sep 2017 09:36:00 GMT  
		Size: 64.8 MB (64832640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a47d2c69876192779226a84caa6f71f9c15cf4151b85c06c3f6289423c5259`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 64.9 KB (64851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cd5494581ef496db53eae6ef74ee4589a5d2f2d53faede541254b65eee6a0`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f705fb93233929d4f280117ab56b4fa4666a06a975de96a8279bd985bd3f1e`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd11b43477b7c801f64151e30c383653655af3332787fed6204add3ab092753`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b60577d3b6e582c311747b12608d3492fd91a92781184e471c20f44c036649`  
		Last Modified: Thu, 14 Sep 2017 00:03:57 GMT  
		Size: 4.7 MB (4692709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a4de09d3ab7968ac411dfc30cf3f15c67f29c3292a5df865fc5274810eb892d7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74476685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26d66fac6b5611eb6ba43bafa75e68824d448658a1d2cea981d885c9ea12ef6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 02:39:38 GMT
ADD file:4ecd0733e076def530f4ba6ca020b32abefd00323a9a7fc54dc6f358d4f911dd in / 
# Fri, 21 Jul 2017 02:39:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 02:39:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 02:39:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 02:39:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 02:39:41 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 03:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:13:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:63d210d044abcdd3f1b0ef25057d8ed3e8811eee21960076f38984bbfee525fe`  
		Last Modified: Fri, 21 Jul 2017 02:40:57 GMT  
		Size: 69.7 MB (69652828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb10013e10c7b4a2cf7a885843fe1569c50975c832e66a4999f0fc52772d446`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 63.4 KB (63415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b65929fc0417c90cbab667eb0ba280df21990cc911de56ccca52ef3a870848`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed100fb16f7d1490fd322fb5bd054763652a34a8eba7842f00b8f4b3c0bf6a`  
		Last Modified: Fri, 21 Jul 2017 02:40:36 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840d29ee575d493ebe998bfea94141895c6c1f8d2ee5fb084b5972806ed483f`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955e399e2ead317f29ca01ca6bc27b786126f0866d9c0210e7b487357b05d13`  
		Last Modified: Fri, 21 Jul 2017 03:29:28 GMT  
		Size: 4.8 MB (4759216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:814f13fb4886872bf95acbb611f60569927959af92bf72bd04a8cd5573aec44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9b275420f315dbe3d3106253c9e7637794ba12f7ec6f3897a83bc21e148c906a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101402781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db094502a3cf6066ae168e2b2a01787110404be2d959dc527cb71d48aeb4bc1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:32:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:32:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:32:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8258645c3588f93cacf24aa317e8d92b946f95c25f9a73efe806638c2980ce`  
		Last Modified: Sat, 04 Nov 2017 15:49:04 GMT  
		Size: 4.7 MB (4657486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dfae93b6e98876d2d10a571a6cf3e0757dcfbd9f448e606e416bb2b9d2dc55`  
		Last Modified: Sat, 04 Nov 2017 15:49:21 GMT  
		Size: 29.6 MB (29556361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f3c1c4fcea204919534c9e5f00ff5f9ffa31fa93f599b7b3ca284ae46cd3fe7d
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92899106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745b5503d03a238a5cb2b82a00bb111b0007af5b742c4b8d64558ad3899f6750`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:55:15 GMT
ADD file:42d4be095fa4e2e1b4beff35dc16fc9e1f499fa1ba461dc55e2dd5aec1b57de8 in / 
# Fri, 21 Jul 2017 13:55:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:55:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:55:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:55:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:55:26 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 17:58:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:58:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 18:00:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca99d9b89b12502d127ad3d3b62950e66a195158b8391a00e0b0f7351681bc8f`  
		Last Modified: Fri, 21 Jul 2017 13:58:58 GMT  
		Size: 61.5 MB (61450949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6da4f85c34172cfeb265a4d4e2d8b1cd170f35e42c6991dde9288e3f535361b`  
		Last Modified: Fri, 21 Jul 2017 13:58:11 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef84fab4d47e92ca3932211745d9d77498bec7bc17b5964f59003a5ac6b3313`  
		Last Modified: Fri, 21 Jul 2017 13:58:12 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b5b84ec03ed3bbf6ae87f16efd0b1035c651f95f8adf48160ed89502b93fe2`  
		Last Modified: Fri, 21 Jul 2017 13:58:12 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998af34c3fb9c1029c1b9ec544c8cfc850b7849caa90ee0719490d9fecf4f3a`  
		Last Modified: Fri, 21 Jul 2017 13:58:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebe0971d916c097fa02f43e5e38070a9a6b43e8726e78111a3c7169f169a7c0`  
		Last Modified: Fri, 11 Aug 2017 18:59:07 GMT  
		Size: 4.3 MB (4290929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407cfe5385db367cf48f4bc6ea6a5b12a82c8aaac033b3ee29d49959ae1fa4b2`  
		Last Modified: Fri, 11 Aug 2017 18:59:34 GMT  
		Size: 27.1 MB (27079260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:877e2d7b5c1931b387a2d16997f3eacf666e18c13c03c7b0cc05c0fb6a326800
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95607869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac082a83143084114da1254728f494f19c6c6ba22b6360c3156d4beb7b2918f4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 14:50:43 GMT
ADD file:eebc3253d06c63597c97d133109fe69008297a2468752f337dd7a747538d4f4e in / 
# Fri, 21 Jul 2017 14:50:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 14:50:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 14:50:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 14:50:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 14:50:59 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 16:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:16:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 16:18:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2398fda8248680a3ae6588216803cd6b0590d22aec0b2c3b2c204549a2b632ed`  
		Last Modified: Fri, 21 Jul 2017 14:53:54 GMT  
		Size: 63.2 MB (63163404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16313f4a4a7dc59a1c543b51acb480aa1e882b5988d756ebeaa936b6213e7099`  
		Last Modified: Fri, 21 Jul 2017 14:53:06 GMT  
		Size: 59.1 KB (59092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c17739c6f982324546b722100eb3faff25c58b6f8a3ea91996ab7af1d11d604`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b157bcbc462583c0fbd53e919cfeabe52015e66057e3b206a0283640d7416a`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfc2717de44767970d1ba5ef69d1043a63be34cef36d17a4906820197a73c6`  
		Last Modified: Fri, 21 Jul 2017 14:53:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49db51590aec9499c9bf45fba557fd20159c008c89ba73a35aa134a8d1b4ff0c`  
		Last Modified: Fri, 21 Jul 2017 16:54:38 GMT  
		Size: 4.4 MB (4416884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa37e26e76b315c82e02f1324e4269a8c6b2cc0da517dd08987ecae5028032d`  
		Last Modified: Fri, 21 Jul 2017 16:55:09 GMT  
		Size: 28.0 MB (27967286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:48be1dad3b6392ff8f8e5cf15a9166f2e4a30c29b4f7d73f4c18b4214dc31b47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98773661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600e69314314ada53c2bbaf3fda52247ba8d5e7eb8f4b0022ebe28ce651f0fdc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:25 GMT
ADD file:5ea4259718526648d5d282e8d9d1c2584e856b39c0f4b8594de9aa9f9985218b in / 
# Wed, 13 Sep 2017 23:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:27 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:45:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f783391c63c08ef35d2d6263d1009541806f2358ba987368c7abf8729cf5d577`  
		Last Modified: Wed, 06 Sep 2017 09:36:00 GMT  
		Size: 64.8 MB (64832640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a47d2c69876192779226a84caa6f71f9c15cf4151b85c06c3f6289423c5259`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 64.9 KB (64851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cd5494581ef496db53eae6ef74ee4589a5d2f2d53faede541254b65eee6a0`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f705fb93233929d4f280117ab56b4fa4666a06a975de96a8279bd985bd3f1e`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd11b43477b7c801f64151e30c383653655af3332787fed6204add3ab092753`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b60577d3b6e582c311747b12608d3492fd91a92781184e471c20f44c036649`  
		Last Modified: Thu, 14 Sep 2017 00:03:57 GMT  
		Size: 4.7 MB (4692709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f6e42008660bf00c2484ee1959fa7d7f96cdee863b3a9e7478878ef7c7f60f`  
		Last Modified: Fri, 03 Nov 2017 00:23:41 GMT  
		Size: 29.2 MB (29182089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ac92350b77076aeedd54c9f11c3c7ce6c04a9e8dc6e31100ea6581a213e72d82
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106431920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc517b447016250f31473c1a398a8fdd3a240125e87f5ca0d8e696602ae6c4c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 02:39:38 GMT
ADD file:4ecd0733e076def530f4ba6ca020b32abefd00323a9a7fc54dc6f358d4f911dd in / 
# Fri, 21 Jul 2017 02:39:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 02:39:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 02:39:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 02:39:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 02:39:41 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 03:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:13:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 03:13:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:63d210d044abcdd3f1b0ef25057d8ed3e8811eee21960076f38984bbfee525fe`  
		Last Modified: Fri, 21 Jul 2017 02:40:57 GMT  
		Size: 69.7 MB (69652828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb10013e10c7b4a2cf7a885843fe1569c50975c832e66a4999f0fc52772d446`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 63.4 KB (63415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b65929fc0417c90cbab667eb0ba280df21990cc911de56ccca52ef3a870848`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ed100fb16f7d1490fd322fb5bd054763652a34a8eba7842f00b8f4b3c0bf6a`  
		Last Modified: Fri, 21 Jul 2017 02:40:36 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840d29ee575d493ebe998bfea94141895c6c1f8d2ee5fb084b5972806ed483f`  
		Last Modified: Fri, 21 Jul 2017 02:40:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c955e399e2ead317f29ca01ca6bc27b786126f0866d9c0210e7b487357b05d13`  
		Last Modified: Fri, 21 Jul 2017 03:29:28 GMT  
		Size: 4.8 MB (4759216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4636241e3b4d80e26488f15c35c652be7167392b9ae80dfc827332aa3a2b40`  
		Last Modified: Fri, 21 Jul 2017 03:29:44 GMT  
		Size: 32.0 MB (31955235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:f082b3370ab17a7a94d695ae8e006d03a848ac509c68b0ea204c1b2ab0b62bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ad291f135fe74ed919266d4c8e10306ddf5ab19d22ab0c042932b6b1cdec871f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183349417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bf801021422fe9ed51f88c77b8d8c20a62678b6e8183bfffb82f96ce2c36a0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:34:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:36:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcf6d11aba7d0aa60a9787dff108d0994df0ab3283694ef1964a8029269d1a6`  
		Last Modified: Sat, 04 Nov 2017 15:51:03 GMT  
		Size: 7.0 MB (6950426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eea2fcee306d43d5c61b0a39d3f3cabf11125e6df1f7f7c6762a9e0e3ba4d8`  
		Last Modified: Sat, 04 Nov 2017 15:51:27 GMT  
		Size: 38.0 MB (37957417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e110fe359419185e2efb9ce4e421fc9cb72c52df50a75f4b490b3c10f14e7f33`  
		Last Modified: Sat, 04 Nov 2017 15:51:58 GMT  
		Size: 100.3 MB (100338447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:b4d337bb05ae7dd1a2297c015e1cea763e3d3e42a68cff6b20dbf23e2136ebe0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170379477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0c5b47a002756a243fa0cca0dba5e2bf5dfbab91f4a7c1fa6542c8eeb2b7b7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:56:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9e1de2c5739e65047ff13389bd7f41bab4fb8e2a7728dd670046879169bc1203`  
		Last Modified: Mon, 09 Oct 2017 21:52:21 GMT  
		Size: 36.9 MB (36942751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a138d42f981eeb87f54bf95eca66edc18763600c1cc025f4e463832c9c239e`  
		Last Modified: Tue, 10 Oct 2017 07:46:51 GMT  
		Size: 6.6 MB (6587512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b546e325ff403b445a170a6b34dc41c420181859013a7b5b361708bd6ca98e`  
		Last Modified: Fri, 03 Nov 2017 08:04:54 GMT  
		Size: 35.9 MB (35894335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eaf1c871fa93a0a6589db02b94c04ec34b5eaad45370af0fff090b5a07f216`  
		Last Modified: Fri, 03 Nov 2017 08:05:33 GMT  
		Size: 91.0 MB (90954879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c64fde7090c608b70e89baa8e9a5523a8b6db2240d250026839c10afe8507ca9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163828374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd616c7c6d8cea3a76fb7a93150720cf613a8f590c49bd7d84a74b2cb626546f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:19:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:20:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679838a0a749ea0785d0f8039d2042aca768db22f895eb4ffa36e604923e1adc`  
		Last Modified: Mon, 09 Oct 2017 22:35:45 GMT  
		Size: 6.4 MB (6369994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4622d1756c6a4386c1c74a8046f302ae5435e30d1a0ee3d76ff07c09480bb1d7`  
		Last Modified: Fri, 03 Nov 2017 00:33:17 GMT  
		Size: 34.9 MB (34873164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af08390898b6afe680e303bd3ff147df2dad952ebb5425078a55d01b66d4c33b`  
		Last Modified: Fri, 03 Nov 2017 00:33:48 GMT  
		Size: 86.9 MB (86928809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c7c088c104d80121d925fe6d280d9b52d4ffcc0537584c5582290ee3f95d8db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185097604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c0198c6a2d43898f50a10177e4aada5925c01f52593bdd006b8923d8de01e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:48:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:48:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:50:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a3324c4605a2fc66e984c15cd1dbadcb3d28ce2f7f2309acdff43f81042a93`  
		Last Modified: Mon, 09 Oct 2017 23:48:13 GMT  
		Size: 8.8 MB (8799377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231df82f0773ae01dfddf2b793334a1a662d41c1aa18fb2c11ee672b3535ffb1`  
		Last Modified: Fri, 03 Nov 2017 00:27:03 GMT  
		Size: 37.1 MB (37057312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbb90847403569c60ce85f6bfaad544853851db85fd2d95c4eeef60f4369082`  
		Last Modified: Fri, 03 Nov 2017 00:27:37 GMT  
		Size: 101.8 MB (101807667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:cbbf8967cf04ef7af0a32ab27d04d5d7168d4e7fa6f6cd9d545245cced3df7f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:3d5889097c5f52ada0a8349886946c84b3e377ccff5f40bfaa78b82820b70181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45053553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defb010a3d20fe057bff85e919389ed062a3a69183eb7355711d70bd87da19cf`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:34:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcf6d11aba7d0aa60a9787dff108d0994df0ab3283694ef1964a8029269d1a6`  
		Last Modified: Sat, 04 Nov 2017 15:51:03 GMT  
		Size: 7.0 MB (6950426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c68a3094cca1bc006f99e7e01a6a87b49be3cb379b24b3b3e2b0f3cb617ed148
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43530263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcfc1e49db97010f07d15c3368e7e937a9e0b8fe00c4142ba7b7d5160f1c4941`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:56:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:9e1de2c5739e65047ff13389bd7f41bab4fb8e2a7728dd670046879169bc1203`  
		Last Modified: Mon, 09 Oct 2017 21:52:21 GMT  
		Size: 36.9 MB (36942751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a138d42f981eeb87f54bf95eca66edc18763600c1cc025f4e463832c9c239e`  
		Last Modified: Tue, 10 Oct 2017 07:46:51 GMT  
		Size: 6.6 MB (6587512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:02929717329dfe6fbb0b711979e1e6e7142fca1a4eabdb0c3c2de5fdb5376cd0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (42026401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98434177ca9beb6a89908d7b315d419b346b96df4bffc15a436071964300d841`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:19:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679838a0a749ea0785d0f8039d2042aca768db22f895eb4ffa36e604923e1adc`  
		Last Modified: Mon, 09 Oct 2017 22:35:45 GMT  
		Size: 6.4 MB (6369994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:92793a2614ad8e26bcec7a8a139d7db543ad93b124119ae388b35a5b959c1e56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46232625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878024be34fe9e69b135ed1bba64c018316c0b4481ced6034bfa43729519cc8f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:48:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a3324c4605a2fc66e984c15cd1dbadcb3d28ce2f7f2309acdff43f81042a93`  
		Last Modified: Mon, 09 Oct 2017 23:48:13 GMT  
		Size: 8.8 MB (8799377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:faf374d705488a2b73534062a64e47ded7aeee0c3d23f13530a89a420866d074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8d6a04fca3cb840090fa837bc240c44a891b674d1c898d282c19467b1da00916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83010970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9e303222a1d8ae49290e31450e388005cf955f32467bc7ea4c06c2542bcc62`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:34:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcf6d11aba7d0aa60a9787dff108d0994df0ab3283694ef1964a8029269d1a6`  
		Last Modified: Sat, 04 Nov 2017 15:51:03 GMT  
		Size: 7.0 MB (6950426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eea2fcee306d43d5c61b0a39d3f3cabf11125e6df1f7f7c6762a9e0e3ba4d8`  
		Last Modified: Sat, 04 Nov 2017 15:51:27 GMT  
		Size: 38.0 MB (37957417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f72bf32d1f9cb85a09b4127e0adf35bcd3fbadf66a939f32ee886d7d29940db6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4277768ec22edc5f796507801f8773088a1821dee5546b48fcd4fa44b202f58`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:56:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9e1de2c5739e65047ff13389bd7f41bab4fb8e2a7728dd670046879169bc1203`  
		Last Modified: Mon, 09 Oct 2017 21:52:21 GMT  
		Size: 36.9 MB (36942751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a138d42f981eeb87f54bf95eca66edc18763600c1cc025f4e463832c9c239e`  
		Last Modified: Tue, 10 Oct 2017 07:46:51 GMT  
		Size: 6.6 MB (6587512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b546e325ff403b445a170a6b34dc41c420181859013a7b5b361708bd6ca98e`  
		Last Modified: Fri, 03 Nov 2017 08:04:54 GMT  
		Size: 35.9 MB (35894335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3679850060eb0f1dfc00300cd56e0f4c6ca9c2c7c1a1aae971cd4fa573cc12c6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76899565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6e7aa1a498dc156c992c32bbdf5a0bd1852c84b7d5849ba7d8a46bf4a41ea3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:19:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679838a0a749ea0785d0f8039d2042aca768db22f895eb4ffa36e604923e1adc`  
		Last Modified: Mon, 09 Oct 2017 22:35:45 GMT  
		Size: 6.4 MB (6369994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4622d1756c6a4386c1c74a8046f302ae5435e30d1a0ee3d76ff07c09480bb1d7`  
		Last Modified: Fri, 03 Nov 2017 00:33:17 GMT  
		Size: 34.9 MB (34873164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6ecaca033e9a84ba5172d66b2181536cdc3d4d4f53485063382399f9005c6b23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83289937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640cf8ec2ac50b247578dbc923f45339cd6f05d46f38d5e230c9a691aaaacc86`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:48:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:48:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a3324c4605a2fc66e984c15cd1dbadcb3d28ce2f7f2309acdff43f81042a93`  
		Last Modified: Mon, 09 Oct 2017 23:48:13 GMT  
		Size: 8.8 MB (8799377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231df82f0773ae01dfddf2b793334a1a662d41c1aa18fb2c11ee672b3535ffb1`  
		Last Modified: Fri, 03 Nov 2017 00:27:03 GMT  
		Size: 37.1 MB (37057312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:9f1a4b1d2bdb1fdd273795fb9a382bd1c190d5252ce64c8c5b43a0371ba9548c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:xenial` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:eb8b0166cb5187a37f00ab41778251224f87a4b0c801be3310db06479c6f6cc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (236966130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b6a8abd1c8ae05aa6136d111457dc7308cdfec7dd14b2f61b7a1cb3af7423`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:36:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:36:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:38:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17ca507f3ed1c771892f8e7b875c2a01482d6f51314819f2149973f1257c2bd`  
		Last Modified: Sat, 04 Nov 2017 15:52:10 GMT  
		Size: 7.3 MB (7316091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4be0120408ddce6e0fc5b8340907b2ded42b5f535bef1b1b6fa64e3a6f635e`  
		Last Modified: Sat, 04 Nov 2017 15:52:32 GMT  
		Size: 41.8 MB (41819258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba6a8de8d3f15dcf12384375c6b1639cd505d88847473826d201453c2c8c779`  
		Last Modified: Sat, 04 Nov 2017 15:53:08 GMT  
		Size: 140.2 MB (140211162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:af21775bffdb1fb4e2761915e3a1306ca9c564fb517660f05026095da9e9e2a0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204125504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebcd37e80ecbb3ed544d44c7791c8c7de33115ff2d3337a2ce24f4d6f1b43b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:13:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:21:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:22:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4a52577c838b92bfc89b2b13599eab5dd264437d3a5c35af37777699ca5a7a`  
		Last Modified: Wed, 11 Oct 2017 13:17:03 GMT  
		Size: 6.2 MB (6162612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f755b777f45aefe9780136ac46695dbf3f64f92c742ac66478980aa5995472a7`  
		Last Modified: Fri, 03 Nov 2017 00:34:20 GMT  
		Size: 38.1 MB (38145289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e79840cc1bec65647134dd28c637701ea20d12a48f902eddf1267e3552d706`  
		Last Modified: Fri, 03 Nov 2017 00:34:59 GMT  
		Size: 117.4 MB (117370543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6abaff582cf841e7ce5617555776b0f2c1d0b07318bead79f153b543a8b7fa9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211763296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8ee4d447d31b3353581e509e25445cd24b5387d681aa9b6a983c7e1a48b968`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:22:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:31:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da8af9231b34c56307026db7d215ffaa4b6827c005892b37a6cb24df10ed639`  
		Last Modified: Wed, 11 Oct 2017 14:57:21 GMT  
		Size: 6.4 MB (6370809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7dc78e855ab4cd0147f5bae092b7c6ca1346e433e429aba9d782b23c02a4ff`  
		Last Modified: Fri, 03 Nov 2017 10:56:56 GMT  
		Size: 39.7 MB (39702152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d11c439e0905d65feb7f77f52f1e6b5bcf4ec0177484368575eb925eb30707`  
		Last Modified: Fri, 03 Nov 2017 10:57:55 GMT  
		Size: 122.3 MB (122261524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; 386

```console
$ docker pull buildpack-deps@sha256:61949ad23064a341304bc262998a06cb23f5e3f516b0afffd9af47eef94532ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238202603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcc6dfc63f46695a7b90c11b027fafc574e065f6da3b3ac5a8a06b5709ef3f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 04:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:52:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:52:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:54:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2cf3556e8d6140b41fcf75fe6ca620ddf6e8c087e18ae5c16112776e4b09ac`  
		Last Modified: Wed, 11 Oct 2017 04:27:49 GMT  
		Size: 7.5 MB (7455744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f12a51183ffef2dff4a2f791362377fe5fb80ed508d714ff02900440bd4e98`  
		Last Modified: Fri, 03 Nov 2017 00:28:13 GMT  
		Size: 42.9 MB (42866243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5024201ad5fadac117ddfe2c134be54d54dca54fe514301d780f657204aa2a`  
		Last Modified: Fri, 03 Nov 2017 00:28:50 GMT  
		Size: 140.0 MB (140003755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:69daf6afc9e2b0f8e2085979910ce9425e6aa38d4b7650d944a687938edd9320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247256874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2362e338048116e87b5c925559cab78e53b9da90566231944edd1dc93829f3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 03:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:11:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 17:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:27:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4893297f4b27b143957ae2c29ebd9e8be67454886feebcf0c767056ce4808e`  
		Last Modified: Wed, 11 Oct 2017 04:18:40 GMT  
		Size: 7.2 MB (7217734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26409740dc6ee60831e6e035913b82ea5b734dadb2036a0e68bb9a7d852301b0`  
		Last Modified: Thu, 02 Nov 2017 17:53:53 GMT  
		Size: 45.1 MB (45089832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b89ee8902c5c8a94e535fd2200624dab88ae6d23058a489655d1afbd2bd5125`  
		Last Modified: Thu, 02 Nov 2017 17:54:39 GMT  
		Size: 145.3 MB (145316910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ba6852c3eea3f4d42f35d21a927aa306ac868dfd5566f6b214367f9d319e7275
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.7 MB (222700254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab16b07c120773eb2cd24b0bb8bb5cb669b4f828362c6c4f4455543af470a260`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:30:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:30:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:31:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029761318c9fd692f649e7ef6813fcbde74c2225e694611a44d60ae230870c2e`  
		Last Modified: Fri, 17 Nov 2017 22:35:23 GMT  
		Size: 7.1 MB (7051725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ad8f1149da58b46ad262282d0ea9056be2fe37318ddb65dc72309f879882ff`  
		Last Modified: Fri, 17 Nov 2017 22:35:40 GMT  
		Size: 42.6 MB (42583749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45307cf63e3721f0a78662924cfc7548d6979a9eae65fdf009a079b9d5a3b9f7`  
		Last Modified: Fri, 17 Nov 2017 22:36:07 GMT  
		Size: 126.6 MB (126641742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:f6b46fb95b98becf2aacfe11b6a5d1636622699499c2db300998e7c143ebc446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:xenial-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4969651a9a69eef92ac5ca6c057b19b4ab8cf86b82fcb31e52ec08ae3f2f29ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54935710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00cda8f083f084c9e34e80aa08aae0d089e2857cd5e6f0f979efb193ec354108`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:36:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:36:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17ca507f3ed1c771892f8e7b875c2a01482d6f51314819f2149973f1257c2bd`  
		Last Modified: Sat, 04 Nov 2017 15:52:10 GMT  
		Size: 7.3 MB (7316091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:07cf57010b9f1f792b76481f0f867f7a8abda430b9db2f042b4486e333567a55
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48609672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b92e85c9615df82406b47584f778a94c817d86129156979fc2e07ce863af53`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:13:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4a52577c838b92bfc89b2b13599eab5dd264437d3a5c35af37777699ca5a7a`  
		Last Modified: Wed, 11 Oct 2017 13:17:03 GMT  
		Size: 6.2 MB (6162612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2f0e82ae4fbb81ea53e63d703c8ca8194116ab335bd1831b67d728ac96bb1151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49799620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb53a1aa6d5ab30d89563ed8e6394a330afba6d954ca21e723d1efe618a900fa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:22:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da8af9231b34c56307026db7d215ffaa4b6827c005892b37a6cb24df10ed639`  
		Last Modified: Wed, 11 Oct 2017 14:57:21 GMT  
		Size: 6.4 MB (6370809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:755d4d3f0a9af88a15583563e436360ffd2e6795172408aef0dc79233d338246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55332605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a6c963de6f5524cc636d10d9c58e1106cd82554bf47d8fd34a485340cb002c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 04:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:52:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2cf3556e8d6140b41fcf75fe6ca620ddf6e8c087e18ae5c16112776e4b09ac`  
		Last Modified: Wed, 11 Oct 2017 04:27:49 GMT  
		Size: 7.5 MB (7455744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:042910ee3a33f410bc5c8bfa4788d3694224c4d72eab47192b1bdee665227980
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56850132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad24dd3844daa0b515d5be234244d7c8d8c8084ccf2b20c7cc36f66160f7eb27`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 03:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:11:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4893297f4b27b143957ae2c29ebd9e8be67454886feebcf0c767056ce4808e`  
		Last Modified: Wed, 11 Oct 2017 04:18:40 GMT  
		Size: 7.2 MB (7217734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7f6ed14083ecefd86e7e91e45073190ad25de761be8c57535021098e9c7d555f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53474763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8c6067a4c65db5a4090a96961022e1b4178d416646f2c0773870863ad425bc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:30:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029761318c9fd692f649e7ef6813fcbde74c2225e694611a44d60ae230870c2e`  
		Last Modified: Fri, 17 Nov 2017 22:35:23 GMT  
		Size: 7.1 MB (7051725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:d8bec152e96450f0076b50afc947f2864d731f6a657f610858ebd4043b7f408a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:xenial-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9439810f943bcc8a9219bfa53f0a41e9677771401f762a7eeeb33531157fd7b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.8 MB (96754968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa01cbe4ee0809918fd44941075e996e63aef9d4f07416fbb285354035efbf1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:36:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:36:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:36:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17ca507f3ed1c771892f8e7b875c2a01482d6f51314819f2149973f1257c2bd`  
		Last Modified: Sat, 04 Nov 2017 15:52:10 GMT  
		Size: 7.3 MB (7316091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4be0120408ddce6e0fc5b8340907b2ded42b5f535bef1b1b6fa64e3a6f635e`  
		Last Modified: Sat, 04 Nov 2017 15:52:32 GMT  
		Size: 41.8 MB (41819258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cf59e9f3963b3aefa8a21a7f192b01470f9c9c8fd40e59a4c7e02531a3545d78
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86754961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d320f6beee9a1dbac3e1ac3abd6ef11a891be31cd342bd3f039a88bc0eaba0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:13:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:21:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4a52577c838b92bfc89b2b13599eab5dd264437d3a5c35af37777699ca5a7a`  
		Last Modified: Wed, 11 Oct 2017 13:17:03 GMT  
		Size: 6.2 MB (6162612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f755b777f45aefe9780136ac46695dbf3f64f92c742ac66478980aa5995472a7`  
		Last Modified: Fri, 03 Nov 2017 00:34:20 GMT  
		Size: 38.1 MB (38145289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e3277f99bfb03631bc5e3b60c0a8d8863828c1459a2a7640a5c86d11d26c425d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89501772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4554f375298b25ee9d8619e8bed0b8b3c7fe6b06db7d8648cd62fba1df2deb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:22:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da8af9231b34c56307026db7d215ffaa4b6827c005892b37a6cb24df10ed639`  
		Last Modified: Wed, 11 Oct 2017 14:57:21 GMT  
		Size: 6.4 MB (6370809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7dc78e855ab4cd0147f5bae092b7c6ca1346e433e429aba9d782b23c02a4ff`  
		Last Modified: Fri, 03 Nov 2017 10:56:56 GMT  
		Size: 39.7 MB (39702152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2cc65c01a4e4543637a318ee2d37111847e035e01a2ae1ee97d3dd84131b2ec1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98198848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935626b2a95a9b63020e1ba3c8ccc155750d95ad15a41bebfc0986c92ce117fa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 04:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:52:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:52:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2cf3556e8d6140b41fcf75fe6ca620ddf6e8c087e18ae5c16112776e4b09ac`  
		Last Modified: Wed, 11 Oct 2017 04:27:49 GMT  
		Size: 7.5 MB (7455744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f12a51183ffef2dff4a2f791362377fe5fb80ed508d714ff02900440bd4e98`  
		Last Modified: Fri, 03 Nov 2017 00:28:13 GMT  
		Size: 42.9 MB (42866243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b4efa74c8fd517c689ceeefc2b55f50036270fec12a0c508ec0482ccd599154e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101939964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870788db9cc4ab7dcf21ca573093f7dd503f3bcad1b563b52d9839be7429cb63`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 03:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:11:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 17:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4893297f4b27b143957ae2c29ebd9e8be67454886feebcf0c767056ce4808e`  
		Last Modified: Wed, 11 Oct 2017 04:18:40 GMT  
		Size: 7.2 MB (7217734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26409740dc6ee60831e6e035913b82ea5b734dadb2036a0e68bb9a7d852301b0`  
		Last Modified: Thu, 02 Nov 2017 17:53:53 GMT  
		Size: 45.1 MB (45089832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5f58bfb58649e3bcae617680ca898e599ed94012021ad4cf96695c7334131b2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96058512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6817ea29d29a9b69c2fa095e05c1ebd250852585da7666668f45255cf6dd2999`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:30:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:30:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029761318c9fd692f649e7ef6813fcbde74c2225e694611a44d60ae230870c2e`  
		Last Modified: Fri, 17 Nov 2017 22:35:23 GMT  
		Size: 7.1 MB (7051725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ad8f1149da58b46ad262282d0ea9056be2fe37318ddb65dc72309f879882ff`  
		Last Modified: Fri, 17 Nov 2017 22:35:40 GMT  
		Size: 42.6 MB (42583749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:c09bdd669f46ba8f99fa5f73f240bf0357a0d86ec077f215500b973b161111bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:95f929b311d6b030db1d094990c1e50bb1a66e332c75333dbd579d99ebb1350d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261443499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809a6fa19faaa80e70a0e1f215f2e4f66284551076badc9c35a479c5cdbc5ffa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:40:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4751e7142ff74186cf19be27a53293ed27e1eaa43eddaadf479be40a8513f78f`  
		Last Modified: Sat, 04 Nov 2017 15:53:21 GMT  
		Size: 7.5 MB (7521461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e73068e3def3ab2905c8609e02f5c4bbc8c09491778bc4b8437479d1bdf2f80`  
		Last Modified: Sat, 04 Nov 2017 15:53:42 GMT  
		Size: 44.0 MB (43958096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53eb05fee0c07bf29c8ef1bb40cff6b8c53600ccd4e146881a6648f54d55604`  
		Last Modified: Sat, 04 Nov 2017 15:54:28 GMT  
		Size: 171.5 MB (171523618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d37f9bfb3152044870d7b511002cc756d508aabb8ba1c8c322eceeb7db2b54a2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.0 MB (231975586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c068afd44a2b47234e70018823479111750c09769e1670833f468b6d464c80`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:22:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:23:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:24:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76450412846489ed6aad7c756d579d848fb954dd3d5140f4a42c217108dc708`  
		Last Modified: Wed, 27 Sep 2017 05:03:49 GMT  
		Size: 6.5 MB (6493282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731459f987dcfcca74f432757d45e7be7f907ccebb88527cd6b863351ff34e9e`  
		Last Modified: Fri, 03 Nov 2017 00:35:31 GMT  
		Size: 39.6 MB (39555511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc1ce9a5bc6e81e3dab4c8d662849ebc5c18af685c1c4ac31c4535b68fdd89`  
		Last Modified: Fri, 03 Nov 2017 00:36:23 GMT  
		Size: 151.4 MB (151410439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b7fd417e18ea7678e365edee1c1a87e6991f8746d1128ea81cf928ba7d8549a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.1 MB (243114023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380ea612d6aaafd980edfc6e089df17adfdaa682406ade211cbd664708f6ed1d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:21:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:31:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:32:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:42:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304bb63ea9a4f470e122bf53ef4ef5012283341708383a25d5c01d24d3380573`  
		Last Modified: Tue, 19 Sep 2017 00:36:19 GMT  
		Size: 6.7 MB (6683536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6194e4a08e925988d9c0d37277a0c00dbcda00b7a0b3f83c0c7af4dac20ae0`  
		Last Modified: Fri, 03 Nov 2017 10:58:47 GMT  
		Size: 41.6 MB (41645848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f0a025c3cf797ea6de859eeb2c4ad6d42f593fd89a989c77598f98cbccf86b`  
		Last Modified: Fri, 03 Nov 2017 11:00:06 GMT  
		Size: 159.2 MB (159165671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; 386

```console
$ docker pull buildpack-deps@sha256:a49668a09a56c8383d7164e2abf1699b5a0e075a79e989449d7f148bce2cf6fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261583795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f86a9885946e38f186cb0ab0485df7a77889eb0335532e5ae4690a48c3b46d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:13:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:58:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:00:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324fc9f61234c05a96870c9346ec2961e2393278b82dcb5b00c9b5fc4dc5b91c`  
		Last Modified: Tue, 19 Sep 2017 00:23:37 GMT  
		Size: 7.7 MB (7711318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6fa46b2fc5805bb1ce639ac091414945b33986cbf62aea88fe1ad75d18c7e`  
		Last Modified: Fri, 03 Nov 2017 00:30:35 GMT  
		Size: 44.5 MB (44545256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c99fb963d765ecbcd401888cbadec8f796accbbb6cc73facfe141b029f21d9`  
		Last Modified: Fri, 03 Nov 2017 00:31:27 GMT  
		Size: 170.5 MB (170499620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1b17474ecca29a19a1351f5710223d2c7c2e00f43dfbd0bf4f1d9e70b3b9bcac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269839353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde8c7064af6a7a978463ab94a602197c1ef3f5836bb918785eb9928a3bd172a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 01:01:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 17:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:44:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cd428c391210932c1faf3e1814c6daef1b88d7626a6b418d0dcdff2b3f5611`  
		Last Modified: Tue, 19 Sep 2017 01:18:24 GMT  
		Size: 7.4 MB (7445205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602f95028252373dc5907449692a5e8f643c19d28981723302292c2ffac5b5e9`  
		Last Modified: Thu, 02 Nov 2017 17:55:18 GMT  
		Size: 47.4 MB (47381785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb1c1b8bbd729ce87ae5f27b346f0ca241a4f4e23cc5d5cf1fef13f3f382a5`  
		Last Modified: Thu, 02 Nov 2017 17:56:19 GMT  
		Size: 174.6 MB (174565977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3ea0e609b7c0a4584ec010bd15b309b394f1a0606bc3af7985304a7c18c4ec07
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250975619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4625213f1c8a9e6237182c952f74e895b74b91f53e8cb86a26e910010424743b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:19 GMT
ADD file:bd0530ffe05e5b8895b429294bfa8215d5c68d05a86bb9f6baf49cf9356d7a35 in / 
# Fri, 17 Nov 2017 22:08:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:22 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:32:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:33:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac8ad71fbdcfb2be3d4e77a4f61bf0f64b7aaa3ff6389efa86c9da3be16d12d6`  
		Last Modified: Fri, 17 Nov 2017 22:10:03 GMT  
		Size: 37.7 MB (37748431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa13fb5549772378f13240dc36709d10c193f96a611317f32cc00dfc546215d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5974a03854806c29abad29d7b50b6244bd4a732b39d55fcbc89738143b2cbac0`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c435cc189750f739a3f77db25246ab02d23f86f3c2803cd98a8daf211de4d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb198739e5e34c35735375fae5b00c549f17b0b6c75aa22950030bb7cf64dce`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645edcec4a656407e332bb4432859e2b02896cb07ec510043c44d089834ac648`  
		Last Modified: Fri, 17 Nov 2017 22:36:17 GMT  
		Size: 7.2 MB (7204561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18292a2ad16da718601c02529165ba9da1730584292d676c9c0ea26e0f1259a6`  
		Last Modified: Fri, 17 Nov 2017 22:36:35 GMT  
		Size: 44.1 MB (44127422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a796680bf62894b62da3b71f0c803936dbbeddeb57411c32aa312729fa6ae88`  
		Last Modified: Fri, 17 Nov 2017 22:37:10 GMT  
		Size: 161.9 MB (161892803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:279734f28030a93f7cebcf3abe1a435d82e1333ebf35930967be0a925e8a63a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:417e49ce2e0abe78beb3ea0197438fb5b1e9ab200a659fc7e36669af7dbf7b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45961785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd01a8f520a78f6122f55b9b1d82b55f7d27fce7fbf24390b13fcd1887b16394`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4751e7142ff74186cf19be27a53293ed27e1eaa43eddaadf479be40a8513f78f`  
		Last Modified: Sat, 04 Nov 2017 15:53:21 GMT  
		Size: 7.5 MB (7521461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:59af27350a512f4ad1caa2dd586aba02ec45ed467d1f82f2a3ac49936599dcb1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41009636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d995b180de7ff9febbc0ceb91d5c328aceaf93a2be11e5c56fc26679b3ebd384`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:22:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76450412846489ed6aad7c756d579d848fb954dd3d5140f4a42c217108dc708`  
		Last Modified: Wed, 27 Sep 2017 05:03:49 GMT  
		Size: 6.5 MB (6493282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:943c2079e8d01891028f5a4f57abfc927e005c3699fc1c9a3811cab517777fdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42302504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b041f9e31b35e45f362c62b5813646922e2ee820644106571d297e7b441ca38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:21:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:31:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304bb63ea9a4f470e122bf53ef4ef5012283341708383a25d5c01d24d3380573`  
		Last Modified: Tue, 19 Sep 2017 00:36:19 GMT  
		Size: 6.7 MB (6683536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3cb14c02ba565ec7ac24583ecb79fa2a3ab8f1928d1351b08117366165213e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46538919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77fb090e984ca00fad43904cac729d6096f7e4ad17ac316b821d12ee4f7f0b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:13:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:58:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324fc9f61234c05a96870c9346ec2961e2393278b82dcb5b00c9b5fc4dc5b91c`  
		Last Modified: Tue, 19 Sep 2017 00:23:37 GMT  
		Size: 7.7 MB (7711318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:cfe4dbeaf62d7d845c7dbeed35366ac292f08fd32768bb8273213718d749deca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47891591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d888eb8bcf0600ccbc41f28642a86d7f3197c8d3db4be889ae091708d246d930`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 01:01:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cd428c391210932c1faf3e1814c6daef1b88d7626a6b418d0dcdff2b3f5611`  
		Last Modified: Tue, 19 Sep 2017 01:18:24 GMT  
		Size: 7.4 MB (7445205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1c15c4972b734d7ba0852fa28498590ed320d48539bb65bc2112dad448c99ea6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44955394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a560886f62f80e309b2a162477acab561fc21c2544ce19100d2a2ed6c411507`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:19 GMT
ADD file:bd0530ffe05e5b8895b429294bfa8215d5c68d05a86bb9f6baf49cf9356d7a35 in / 
# Fri, 17 Nov 2017 22:08:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:22 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:32:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ac8ad71fbdcfb2be3d4e77a4f61bf0f64b7aaa3ff6389efa86c9da3be16d12d6`  
		Last Modified: Fri, 17 Nov 2017 22:10:03 GMT  
		Size: 37.7 MB (37748431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa13fb5549772378f13240dc36709d10c193f96a611317f32cc00dfc546215d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5974a03854806c29abad29d7b50b6244bd4a732b39d55fcbc89738143b2cbac0`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c435cc189750f739a3f77db25246ab02d23f86f3c2803cd98a8daf211de4d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb198739e5e34c35735375fae5b00c549f17b0b6c75aa22950030bb7cf64dce`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645edcec4a656407e332bb4432859e2b02896cb07ec510043c44d089834ac648`  
		Last Modified: Fri, 17 Nov 2017 22:36:17 GMT  
		Size: 7.2 MB (7204561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:40bee3d1dffbd93f283af6eae78e0425bb7180046492694eb269917a54ba7100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:37cb071d567fa3507a2ab05138d9beb1e5e5181910a77bd70a801de130c46d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89919881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7c99550a5ecc335effc28f0553cb46f1101d4222100ce62c25428868db9e10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4751e7142ff74186cf19be27a53293ed27e1eaa43eddaadf479be40a8513f78f`  
		Last Modified: Sat, 04 Nov 2017 15:53:21 GMT  
		Size: 7.5 MB (7521461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e73068e3def3ab2905c8609e02f5c4bbc8c09491778bc4b8437479d1bdf2f80`  
		Last Modified: Sat, 04 Nov 2017 15:53:42 GMT  
		Size: 44.0 MB (43958096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fd362319b5720b9bfd21439fb9cee571abf18deb72f7556e696652541a78df07
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80565147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063bc46755f70c897daa82549436ab233594b580a3b63ff62f58915d476b0e08`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:22:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:23:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76450412846489ed6aad7c756d579d848fb954dd3d5140f4a42c217108dc708`  
		Last Modified: Wed, 27 Sep 2017 05:03:49 GMT  
		Size: 6.5 MB (6493282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731459f987dcfcca74f432757d45e7be7f907ccebb88527cd6b863351ff34e9e`  
		Last Modified: Fri, 03 Nov 2017 00:35:31 GMT  
		Size: 39.6 MB (39555511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:79d55e16661fc6ab1500d81b1d69a07a838eb7480e3312ada8ec0decca538f88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83948352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2be898ee3150bb5e6167fd4e0b57515007cadf5f39dac5e02e1e89bbd1824e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:21:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:31:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:32:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304bb63ea9a4f470e122bf53ef4ef5012283341708383a25d5c01d24d3380573`  
		Last Modified: Tue, 19 Sep 2017 00:36:19 GMT  
		Size: 6.7 MB (6683536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6194e4a08e925988d9c0d37277a0c00dbcda00b7a0b3f83c0c7af4dac20ae0`  
		Last Modified: Fri, 03 Nov 2017 10:58:47 GMT  
		Size: 41.6 MB (41645848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c9137fcdee76ccd83795f854bc519d73a378c308fcf7646ba2ba8b5c869c327d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91084175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f99d6ee69133166d02abbd7f1dfb1a9dec4e4db7b064ba60e38fc4ff9abfd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:13:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:58:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324fc9f61234c05a96870c9346ec2961e2393278b82dcb5b00c9b5fc4dc5b91c`  
		Last Modified: Tue, 19 Sep 2017 00:23:37 GMT  
		Size: 7.7 MB (7711318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6fa46b2fc5805bb1ce639ac091414945b33986cbf62aea88fe1ad75d18c7e`  
		Last Modified: Fri, 03 Nov 2017 00:30:35 GMT  
		Size: 44.5 MB (44545256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f105322beee813832552ef394b47a385f912714fdc904a2d43faccb71d972de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95273376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e2b483fee38114bb0918cff4f8bbd9a0df05e988b6c6dba7627ac9f42da7a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 01:01:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 17:30:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cd428c391210932c1faf3e1814c6daef1b88d7626a6b418d0dcdff2b3f5611`  
		Last Modified: Tue, 19 Sep 2017 01:18:24 GMT  
		Size: 7.4 MB (7445205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602f95028252373dc5907449692a5e8f643c19d28981723302292c2ffac5b5e9`  
		Last Modified: Thu, 02 Nov 2017 17:55:18 GMT  
		Size: 47.4 MB (47381785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:dcbf31aad80382827f8cd352e85efcaf82809b77c8b9c9e2c86ac8af8a307a3a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89082816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac124a63ece721e49d596435c6ed0ad850d4ab6730b1d42ea9ef4859a77ad83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:19 GMT
ADD file:bd0530ffe05e5b8895b429294bfa8215d5c68d05a86bb9f6baf49cf9356d7a35 in / 
# Fri, 17 Nov 2017 22:08:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:22 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:32:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac8ad71fbdcfb2be3d4e77a4f61bf0f64b7aaa3ff6389efa86c9da3be16d12d6`  
		Last Modified: Fri, 17 Nov 2017 22:10:03 GMT  
		Size: 37.7 MB (37748431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa13fb5549772378f13240dc36709d10c193f96a611317f32cc00dfc546215d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5974a03854806c29abad29d7b50b6244bd4a732b39d55fcbc89738143b2cbac0`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c435cc189750f739a3f77db25246ab02d23f86f3c2803cd98a8daf211de4d`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb198739e5e34c35735375fae5b00c549f17b0b6c75aa22950030bb7cf64dce`  
		Last Modified: Fri, 17 Nov 2017 22:09:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645edcec4a656407e332bb4432859e2b02896cb07ec510043c44d089834ac648`  
		Last Modified: Fri, 17 Nov 2017 22:36:17 GMT  
		Size: 7.2 MB (7204561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18292a2ad16da718601c02529165ba9da1730584292d676c9c0ea26e0f1259a6`  
		Last Modified: Fri, 17 Nov 2017 22:36:35 GMT  
		Size: 44.1 MB (44127422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
