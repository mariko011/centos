<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `buildpack-deps`

-	[`buildpack-deps:jessie-curl`](#buildpack-depsjessie-curl)
-	[`buildpack-deps:curl`](#buildpack-depscurl)
-	[`buildpack-deps:jessie-scm`](#buildpack-depsjessie-scm)
-	[`buildpack-deps:scm`](#buildpack-depsscm)
-	[`buildpack-deps:jessie`](#buildpack-depsjessie)
-	[`buildpack-deps:latest`](#buildpack-depslatest)
-	[`buildpack-deps:precise-curl`](#buildpack-depsprecise-curl)
-	[`buildpack-deps:precise-scm`](#buildpack-depsprecise-scm)
-	[`buildpack-deps:precise`](#buildpack-depsprecise)
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
$ docker pull buildpack-deps@sha256:8815decea0c01c565a46169a6bdb8d0b7f539352811499cc9ba90cc760ea90c5
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70044955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7307f02494c10aff61bf4a2fc5a88933eba45bcb3b9c520ea1f96a5203cb0ca0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:8815decea0c01c565a46169a6bdb8d0b7f539352811499cc9ba90cc760ea90c5
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70044955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7307f02494c10aff61bf4a2fc5a88933eba45bcb3b9c520ea1f96a5203cb0ca0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:ea11526dc5918b792e2b14f5dbe14c62acf2a69a1829e5d5654af617cf8e48a8
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112616758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5080871cfb194029f59201e7b2491d392df40824fe6c8c65ed272de50c1d475c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:ea11526dc5918b792e2b14f5dbe14c62acf2a69a1829e5d5654af617cf8e48a8
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112616758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5080871cfb194029f59201e7b2491d392df40824fe6c8c65ed272de50c1d475c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:85b379ec16065e4fe4127eb1c5fb1bcc03c559bd36dbb2e22ff496de55925fa6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242551091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b16be4dcdff8b6398e8302928d2287e40f6cf7dea22655691da364432a5f92`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:85b379ec16065e4fe4127eb1c5fb1bcc03c559bd36dbb2e22ff496de55925fa6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242551091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b16be4dcdff8b6398e8302928d2287e40f6cf7dea22655691da364432a5f92`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise-curl`

```console
$ docker pull buildpack-deps@sha256:98c52dd7ae84bb2d059f0044e0d79a58a5cbf5a9e34f7eef328b5038819edea6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44269500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d0e36eb6f969b1c176cab94f82ae124aed1533111b200ae48035587e91fa3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67060e273368fe9b214b93ab174e55133b0da94c247c0c9e197f9a290d69e95`  
		Last Modified: Wed, 12 Apr 2017 22:04:08 GMT  
		Size: 5.1 MB (5113376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise-scm`

```console
$ docker pull buildpack-deps@sha256:388ff1b5be33dba2130e1be69eb986f2f7834415c45a564174c56b9dad6176df
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75115214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0c677d3964452e6a100a27d2796362f5915f5fc9bb0d2a13c9685d954e327a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67060e273368fe9b214b93ab174e55133b0da94c247c0c9e197f9a290d69e95`  
		Last Modified: Wed, 12 Apr 2017 22:04:08 GMT  
		Size: 5.1 MB (5113376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdd0d85abf8efdb8d77471494cc7ef6f5274823dea9bfba4939e272c347cc4f`  
		Last Modified: Wed, 12 Apr 2017 22:04:52 GMT  
		Size: 30.8 MB (30845714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise`

```console
$ docker pull buildpack-deps@sha256:d7d3e4c2c8eb877f042a976664c8b30b439c01417a92010b983c6b93a0300dfb
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157302773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8527adb9ed911650719664caa87a04281becf6c10cfb5490fe8b2434d7e3148`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:24 GMT
ADD file:6f12126281dd0028de93ca678c7a77561c8f4f7625315097fbd03a80f1d6020a in / 
# Wed, 12 Apr 2017 21:05:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:05:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:05:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:05:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:05:30 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:46:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8868e50ac4c7104d2200d42f432b661b2da8c1e417ccfae217e6a1e04bb9295`  
		Last Modified: Mon, 03 Apr 2017 14:22:02 GMT  
		Size: 39.1 MB (39096921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83251ac64627fc331584f6c498b3aba5badc01574e2c70b2499af3af16630eed`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 57.9 KB (57938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589bba2f1b36ae56f0152c246e2541c5aa604b058febfcf2be32e9a304fec610`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62ecaceda3964b735cdd2af613d6bb136a52c1da0838b2ff4b4dab4212bcb1c`  
		Last Modified: Wed, 12 Apr 2017 21:08:09 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93b41cfc6bf0d2522b7cf61588de4cd045065b36c52bd3aec2ba0622b2b22b`  
		Last Modified: Wed, 12 Apr 2017 21:08:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67060e273368fe9b214b93ab174e55133b0da94c247c0c9e197f9a290d69e95`  
		Last Modified: Wed, 12 Apr 2017 22:04:08 GMT  
		Size: 5.1 MB (5113376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdd0d85abf8efdb8d77471494cc7ef6f5274823dea9bfba4939e272c347cc4f`  
		Last Modified: Wed, 12 Apr 2017 22:04:52 GMT  
		Size: 30.8 MB (30845714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0c57980144587fbe5bd46c2aba4e19b1a1025efc5a35fe0534981246a99042`  
		Last Modified: Wed, 12 Apr 2017 22:06:07 GMT  
		Size: 82.2 MB (82187559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:03e9647a88d48b7c04ec236c369a968551209fc84c53ba027dcd1edef9c5fabe
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65419309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f98e73323a7a0edc5e86978a1cd98df46e7463302fab3c2a1947cc2976011244`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:2b7f280061dea2475303980081508274a64cbe09954b0f384b7bf58dd4d699fd
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105468678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0958812bdff6747f459f200f91f15b909b084168704821f9ead1fd9bf0cb82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fbfa5a51b31a9bd473e3d51a02d9d26c6e3681624b5fe0526e3de7ba6b7eac`  
		Last Modified: Tue, 21 Mar 2017 20:03:47 GMT  
		Size: 40.0 MB (40049369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:43b4e8836de9160fd08eaa1b93a48d872ad2ec80f9104a989b33aae2905232af
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.6 MB (312635865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a53d7a536caa2411311131b970911c81e4343e5e683b1cddd8db725f19bd12`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fbfa5a51b31a9bd473e3d51a02d9d26c6e3681624b5fe0526e3de7ba6b7eac`  
		Last Modified: Tue, 21 Mar 2017 20:03:47 GMT  
		Size: 40.0 MB (40049369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce76eda87b67ebe04cde338fb1c0d9fbe4dfed56fcd476456b708caa68e36f99`  
		Last Modified: Tue, 21 Mar 2017 20:05:16 GMT  
		Size: 207.2 MB (207167187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:048aa04cf7741a8d5e28597eaae8c056a6aab527f67e78a0ae6dd34ac23085f2
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65106922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c348e260a0583a1f049b3eefb7ae8fddcd9919da5d1306ee11d887ead3f29c6b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:f75f29b0e851f8eef1d59024c3502b4da8fdce5a96ccb06ab8f3713c29587764
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105155399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e54bb8b790805714e244a0eee3a539a267f023cef0e7ef6eb34c30ee586b1c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:fb5981b4d43b9201cd6479c88a3c323bf2caca63f1c1bea95104445e96e9d9f0
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312082986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231afedd88a8b4737dc4f9aa2142c666a028fa0fdfc349764764f3a22565c003`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:33:45 GMT
ADD file:b784c500074cf93203f92498cb90882e098a854589ab7274432b376198176dfa in / 
# Tue, 21 Mar 2017 18:33:46 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:56:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:012cbff939ac501cbf2ec74788932aec11774e5a1cf3aa98e83fc0770331d7b0`  
		Last Modified: Tue, 21 Mar 2017 18:48:04 GMT  
		Size: 44.1 MB (44088731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351ea4253a6d4de9934229b0a3a79fa8ca81eff1ee23a632fcf3df109baf83a2`  
		Last Modified: Tue, 21 Mar 2017 20:05:51 GMT  
		Size: 21.0 MB (21018191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0f95e0817298dbe40ba7e33e4d322b95edf2e04418eb34316da813e79f4008`  
		Last Modified: Tue, 21 Mar 2017 20:06:36 GMT  
		Size: 40.0 MB (40048477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f1a7b439fc0298d1756ec7972a30799f6154f194c322772293ed44a6a40a33`  
		Last Modified: Tue, 21 Mar 2017 20:08:17 GMT  
		Size: 206.9 MB (206927587 bytes)  
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
$ docker pull buildpack-deps@sha256:e1629bb4b62f37e022e464fbb0f4681d0f618f1fd05e5af94be4ca4d3853af62
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44096205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebae07c8dffccacd1c60b2d073d161697e88db158ab8dfa431550487663d4858`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:e2b5d7d72ee844e08cb52c99d03c34c3b6e7c99abdc972e39cf3c398c2082222
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81538704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7c13bfdaf5c8d299203972d7b4ec423c7e992408d4e32d14414632a17cc885`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:e45892a77f34999b7c283aff20360ed9ddd92e46b6b1e0c5c9802c3404297ee6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176948490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0f9f158091540a4b1edf9e98eb2980090eb602510e70e2c81ef151136dabaf4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:57:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:58:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd07181070a737cb357be3bea64f2aa58df705e14b1fce01b2b99cb4811f69b8`  
		Last Modified: Tue, 21 Mar 2017 20:10:33 GMT  
		Size: 37.4 MB (37442499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8750db8db04d2739634c5b74f813c6a57c80097cb876a8f9316d44e3cba9e04`  
		Last Modified: Tue, 21 Mar 2017 20:11:34 GMT  
		Size: 95.4 MB (95409786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:de1fb93507502ba6982b5f5374d084a92c1c4db176cea6dc3fb5ee0fc94de147
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52735591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2452cccd57549ea7f11a90c4ee55e14e3a9a5eea06f5dd61de3365f0426cc306`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:06:34 GMT
ADD file:b8a2c16d65e533a2bcb5820d2bae70f5a80bd2d8c982c93d9a6cdbf22f8f8ee8 in / 
# Wed, 12 Apr 2017 21:06:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:42 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:49:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c62795f78da9ad31d9669cb4feb4e8fba995a299a0b2bd0f05b10fdc05b1f35e`  
		Last Modified: Wed, 12 Apr 2017 21:11:37 GMT  
		Size: 45.6 MB (45562642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fceeeb758e5103c39daf44c73404bf476ef6fd6b7a9a11e2260fcc1797c806`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9125a401ae0cf5a5b4128633e7a4e84230d3eb4c541c661618a70e5d29aeff`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0062f774e9942f61d13928855ab8111adc27def6f41bd6f7902c329ec836882b`  
		Last Modified: Wed, 12 Apr 2017 21:11:23 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b33fd031facf4d7dd97afeea8a93260c2f15c3e795eeccd8969198a3d52678d`  
		Last Modified: Wed, 12 Apr 2017 21:11:26 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733bba938e4c6473ddf7435c729b34f12a7a0d7c34dbe121a2a9e92c0596230e`  
		Last Modified: Wed, 12 Apr 2017 22:12:13 GMT  
		Size: 7.2 MB (7170591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:5f20a2ad83e21ca90768d3767a241597c7b2045552cc98840a2a859aab6eb4f7
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93883739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e138d14326eead496a31501996cf007c98add17e67bbed8f994d402c0111015d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:06:34 GMT
ADD file:b8a2c16d65e533a2bcb5820d2bae70f5a80bd2d8c982c93d9a6cdbf22f8f8ee8 in / 
# Wed, 12 Apr 2017 21:06:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:42 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:49:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:50:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c62795f78da9ad31d9669cb4feb4e8fba995a299a0b2bd0f05b10fdc05b1f35e`  
		Last Modified: Wed, 12 Apr 2017 21:11:37 GMT  
		Size: 45.6 MB (45562642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fceeeb758e5103c39daf44c73404bf476ef6fd6b7a9a11e2260fcc1797c806`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9125a401ae0cf5a5b4128633e7a4e84230d3eb4c541c661618a70e5d29aeff`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0062f774e9942f61d13928855ab8111adc27def6f41bd6f7902c329ec836882b`  
		Last Modified: Wed, 12 Apr 2017 21:11:23 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b33fd031facf4d7dd97afeea8a93260c2f15c3e795eeccd8969198a3d52678d`  
		Last Modified: Wed, 12 Apr 2017 21:11:26 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733bba938e4c6473ddf7435c729b34f12a7a0d7c34dbe121a2a9e92c0596230e`  
		Last Modified: Wed, 12 Apr 2017 22:12:13 GMT  
		Size: 7.2 MB (7170591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bb8a4dccd81c1bfc20e52c8d387a2f75e1d1f7f1889ad4647e0bc0e1676005`  
		Last Modified: Wed, 12 Apr 2017 22:13:07 GMT  
		Size: 41.1 MB (41148148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:f2c6520d8e24c5e58eae0b75076286088b5203fb7ff8b192fd5621ad6191df73
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230084547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a42bfe09d063e1ac86e341ec7e7e34376ce1a687690f79b3246bcceab6ae7b1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:06:34 GMT
ADD file:b8a2c16d65e533a2bcb5820d2bae70f5a80bd2d8c982c93d9a6cdbf22f8f8ee8 in / 
# Wed, 12 Apr 2017 21:06:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:42 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:49:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:50:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:52:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c62795f78da9ad31d9669cb4feb4e8fba995a299a0b2bd0f05b10fdc05b1f35e`  
		Last Modified: Wed, 12 Apr 2017 21:11:37 GMT  
		Size: 45.6 MB (45562642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fceeeb758e5103c39daf44c73404bf476ef6fd6b7a9a11e2260fcc1797c806`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9125a401ae0cf5a5b4128633e7a4e84230d3eb4c541c661618a70e5d29aeff`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0062f774e9942f61d13928855ab8111adc27def6f41bd6f7902c329ec836882b`  
		Last Modified: Wed, 12 Apr 2017 21:11:23 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b33fd031facf4d7dd97afeea8a93260c2f15c3e795eeccd8969198a3d52678d`  
		Last Modified: Wed, 12 Apr 2017 21:11:26 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733bba938e4c6473ddf7435c729b34f12a7a0d7c34dbe121a2a9e92c0596230e`  
		Last Modified: Wed, 12 Apr 2017 22:12:13 GMT  
		Size: 7.2 MB (7170591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bb8a4dccd81c1bfc20e52c8d387a2f75e1d1f7f1889ad4647e0bc0e1676005`  
		Last Modified: Wed, 12 Apr 2017 22:13:07 GMT  
		Size: 41.1 MB (41148148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d54daed0f15c2cc1b0287882d630c186b81446d0e7a73ab06b69ace32b11834`  
		Last Modified: Wed, 12 Apr 2017 22:14:46 GMT  
		Size: 136.2 MB (136200808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:b751dad65109f6b4fa1c6645fa73f2acc4a01edfd89960cec3c4df9e44db3ca1
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48167769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f90b5fee1c83cdc53c4f1c64211efdeeb5838d031c52c22723940fe9d5c897`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:06 GMT
ADD file:4afa503afe7779330611bc54340d54372943bc9fd939c00e0a6edb04046298f8 in / 
# Wed, 12 Apr 2017 21:07:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:13 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:30179d74c3a2da80004c9ff946c16dd00c186fb3b0ce8e29860730e37a708395`  
		Last Modified: Mon, 27 Mar 2017 16:24:09 GMT  
		Size: 41.3 MB (41298281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eedd999b59eec479b3b34cb8f46979d2aa318b500f31d801c186247af5cb4f`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 827.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155740d76144b4c90ec30a18e4653d5d73eb3316154bb2b648ef4f3adea65ace`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1b1466d64c1a346efd40bd6b9860ec94da89af209573de350d7eb39a1a5581`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01af7eecc784109c1f0e92c092f273a32fea14b9897bf8a54e2311f750432a45`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840365c0e29f7e2b5e15d33037f0626359179b794225344076a79ab8eba14e92`  
		Last Modified: Wed, 12 Apr 2017 22:15:16 GMT  
		Size: 6.9 MB (6867116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:5edbdd87f2abf0b6e4f886de2f9c74dc4ed646df4ef1a343d9918b32fe6d56bf
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90564338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf67beba0ad329f9969af723af79ce879f5ec1660f6bcf6e94bc56c9470b197d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:06 GMT
ADD file:4afa503afe7779330611bc54340d54372943bc9fd939c00e0a6edb04046298f8 in / 
# Wed, 12 Apr 2017 21:07:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:13 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:53:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:30179d74c3a2da80004c9ff946c16dd00c186fb3b0ce8e29860730e37a708395`  
		Last Modified: Mon, 27 Mar 2017 16:24:09 GMT  
		Size: 41.3 MB (41298281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eedd999b59eec479b3b34cb8f46979d2aa318b500f31d801c186247af5cb4f`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 827.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155740d76144b4c90ec30a18e4653d5d73eb3316154bb2b648ef4f3adea65ace`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1b1466d64c1a346efd40bd6b9860ec94da89af209573de350d7eb39a1a5581`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01af7eecc784109c1f0e92c092f273a32fea14b9897bf8a54e2311f750432a45`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840365c0e29f7e2b5e15d33037f0626359179b794225344076a79ab8eba14e92`  
		Last Modified: Wed, 12 Apr 2017 22:15:16 GMT  
		Size: 6.9 MB (6867116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0943babc68731b57b32058245860fb6d0440968904b76cff94f48b9a6c60cb44`  
		Last Modified: Wed, 12 Apr 2017 22:16:48 GMT  
		Size: 42.4 MB (42396569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:873c2c7278fa51577a2c57df01ca77a745a704764ed51e9b75648cb09f1ce68d
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257322094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f150e5859be4e7e4c1e7ea1d0761f7ef33f359097ce4ffe8a7d2e9878be6f19d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:06 GMT
ADD file:4afa503afe7779330611bc54340d54372943bc9fd939c00e0a6edb04046298f8 in / 
# Wed, 12 Apr 2017 21:07:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:13 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:53:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:56:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:30179d74c3a2da80004c9ff946c16dd00c186fb3b0ce8e29860730e37a708395`  
		Last Modified: Mon, 27 Mar 2017 16:24:09 GMT  
		Size: 41.3 MB (41298281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eedd999b59eec479b3b34cb8f46979d2aa318b500f31d801c186247af5cb4f`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 827.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155740d76144b4c90ec30a18e4653d5d73eb3316154bb2b648ef4f3adea65ace`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1b1466d64c1a346efd40bd6b9860ec94da89af209573de350d7eb39a1a5581`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01af7eecc784109c1f0e92c092f273a32fea14b9897bf8a54e2311f750432a45`  
		Last Modified: Wed, 12 Apr 2017 21:13:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840365c0e29f7e2b5e15d33037f0626359179b794225344076a79ab8eba14e92`  
		Last Modified: Wed, 12 Apr 2017 22:15:16 GMT  
		Size: 6.9 MB (6867116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0943babc68731b57b32058245860fb6d0440968904b76cff94f48b9a6c60cb44`  
		Last Modified: Wed, 12 Apr 2017 22:16:48 GMT  
		Size: 42.4 MB (42396569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5e92b25ab6727f621484d6f76125c3e2cdda6e4ca82fe5037be4dc464a2113`  
		Last Modified: Wed, 12 Apr 2017 22:19:54 GMT  
		Size: 166.8 MB (166757756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:38219504b3d5a419a07fb05c45f93b6cb9adfaa32ab1d325c4d994022ce28d5a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43801931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7af0c82b1d4b289d12ae6be64eb30a68d2df7fd4f42258d120977e100708c22`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:37 GMT
ADD file:b4fae90db905f0b1d13915ca9dd8481eeb9113102703cde8f061cd9a34531100 in / 
# Wed, 12 Apr 2017 21:07:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:44 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c425a4293a54b2339b8c163b2667bd243dce235c7a4819b52676c8dc9bc2ed2b`  
		Last Modified: Wed, 12 Apr 2017 21:14:47 GMT  
		Size: 36.4 MB (36406351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d07380b513ebe880c4f7f1b95d5d0fe904c3684feb6faf4255299eaad5153c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1780e996999e062e7fe3d3be9c3054c91aa9e45855e3266973dfab814a769c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287ab591ade7e8546f8bd13703c3f5eb57cd088ffc99ca4fcef70b1452e34acc`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af23e064d341946147e3042919b2c9bccf10e3f76c13577ab77a9fbe1a9115`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d14c6ff6a9a5fc3bb23f12686b1c809d8bc2749a21f61e7424180e215e2f45c`  
		Last Modified: Wed, 12 Apr 2017 22:20:29 GMT  
		Size: 7.4 MB (7393292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:145fee59bb4d8335722f2aaa971b01aa0d676f978b4d5f8cacdc012547abb25e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87015082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19724d6a80c84d1203020f469eec1c299e42c89184781a28451da2f0dfb358d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:37 GMT
ADD file:b4fae90db905f0b1d13915ca9dd8481eeb9113102703cde8f061cd9a34531100 in / 
# Wed, 12 Apr 2017 21:07:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:44 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c425a4293a54b2339b8c163b2667bd243dce235c7a4819b52676c8dc9bc2ed2b`  
		Last Modified: Wed, 12 Apr 2017 21:14:47 GMT  
		Size: 36.4 MB (36406351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d07380b513ebe880c4f7f1b95d5d0fe904c3684feb6faf4255299eaad5153c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1780e996999e062e7fe3d3be9c3054c91aa9e45855e3266973dfab814a769c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287ab591ade7e8546f8bd13703c3f5eb57cd088ffc99ca4fcef70b1452e34acc`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af23e064d341946147e3042919b2c9bccf10e3f76c13577ab77a9fbe1a9115`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d14c6ff6a9a5fc3bb23f12686b1c809d8bc2749a21f61e7424180e215e2f45c`  
		Last Modified: Wed, 12 Apr 2017 22:20:29 GMT  
		Size: 7.4 MB (7393292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91020edd040104d46ad5d8dfb039ca17c3b441a2a8203fd6ce65d19368e7feb4`  
		Last Modified: Wed, 12 Apr 2017 22:21:33 GMT  
		Size: 43.2 MB (43213151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:5481c12fc993f1af0c0a683143d17a011c8cd9470b28e4b482a0cc41d55e9420
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254574031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860e9c6584b2d65a6dff161c7e23f5216a5defad895d6287fec85909b904e2d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:37 GMT
ADD file:b4fae90db905f0b1d13915ca9dd8481eeb9113102703cde8f061cd9a34531100 in / 
# Wed, 12 Apr 2017 21:07:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:44 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:59:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c425a4293a54b2339b8c163b2667bd243dce235c7a4819b52676c8dc9bc2ed2b`  
		Last Modified: Wed, 12 Apr 2017 21:14:47 GMT  
		Size: 36.4 MB (36406351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d07380b513ebe880c4f7f1b95d5d0fe904c3684feb6faf4255299eaad5153c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1780e996999e062e7fe3d3be9c3054c91aa9e45855e3266973dfab814a769c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287ab591ade7e8546f8bd13703c3f5eb57cd088ffc99ca4fcef70b1452e34acc`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af23e064d341946147e3042919b2c9bccf10e3f76c13577ab77a9fbe1a9115`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d14c6ff6a9a5fc3bb23f12686b1c809d8bc2749a21f61e7424180e215e2f45c`  
		Last Modified: Wed, 12 Apr 2017 22:20:29 GMT  
		Size: 7.4 MB (7393292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91020edd040104d46ad5d8dfb039ca17c3b441a2a8203fd6ce65d19368e7feb4`  
		Last Modified: Wed, 12 Apr 2017 22:21:33 GMT  
		Size: 43.2 MB (43213151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f8be38c3399e07da27f20c4323c90ef95ecb208cf61317c723ed7cc0aeb6f`  
		Last Modified: Wed, 12 Apr 2017 22:24:32 GMT  
		Size: 167.6 MB (167558949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
