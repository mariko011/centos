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

## `buildpack-deps:jessie-curl`

```console
$ docker pull buildpack-deps@sha256:f5c686f3e50ed17b2645784ae4793bd8664fbdf54c8801f8e9e662173bbe456f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69894532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345a4f9316227980909f8dfb32ddb71c707678e8c5df55f483a5193224142465`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:f5c686f3e50ed17b2645784ae4793bd8664fbdf54c8801f8e9e662173bbe456f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69894532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345a4f9316227980909f8dfb32ddb71c707678e8c5df55f483a5193224142465`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:873e30b270b17ae7b799e2179e6b0acc37dc9fcb64ac207ae40480e19a1f1fa3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112390161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40e56813daccaee51405b1f369a2a383a1fc0c5c98b87d318f105c84cf6492e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:873e30b270b17ae7b799e2179e6b0acc37dc9fcb64ac207ae40480e19a1f1fa3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112390161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40e56813daccaee51405b1f369a2a383a1fc0c5c98b87d318f105c84cf6492e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:15e369124958559fca7d4ddd1850643dcd7819e31733950f5fd6bbbb61a79ee4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242140238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d076e99917b35a3e4d1049bd488cd0e34c3a960dcd8f60dbe7282671da80b62a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:15e369124958559fca7d4ddd1850643dcd7819e31733950f5fd6bbbb61a79ee4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242140238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d076e99917b35a3e4d1049bd488cd0e34c3a960dcd8f60dbe7282671da80b62a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7783aac582eca48746c3b7c353905e07377738cac64bf9958afe989161cf2731`  
		Last Modified: Tue, 30 Aug 2016 21:59:41 GMT  
		Size: 129.8 MB (129750077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise-curl`

```console
$ docker pull buildpack-deps@sha256:060e4ca894befcefd71d00f928bf1f485c6505e912939977c8137058aacfb16f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44252112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1029721de18ab3c6f5ae3c5305a37112022c8ae812fdf6669b2621fff79883e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0a8c5b731945bb70dd227d3973fbeda397c5ae2d25b75274011f37a0a6ebed`  
		Last Modified: Mon, 19 Sep 2016 17:10:30 GMT  
		Size: 5.1 MB (5111030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise-scm`

```console
$ docker pull buildpack-deps@sha256:e31907c796e9183c50fd76b68bbda5a1ebc7d9b94b72189d5b58d4b7a37bcf24
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75098627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26c3a55c051a52aad091a141557cc7135a6fcf679a6cda2f463f4d70f37e12d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0a8c5b731945bb70dd227d3973fbeda397c5ae2d25b75274011f37a0a6ebed`  
		Last Modified: Mon, 19 Sep 2016 17:10:30 GMT  
		Size: 5.1 MB (5111030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d46b3ae0ecd47c2d5b8c55109cbd6a6433983b925e6ba04c9ab11e59cecbd9d`  
		Last Modified: Mon, 19 Sep 2016 17:10:42 GMT  
		Size: 30.8 MB (30846515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise`

```console
$ docker pull buildpack-deps@sha256:1e11fc79f92c5438031ee5018bc41b85c45a8c9f0c0c632a8cb4ae5f3b3b4607
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157258098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec0ef8d4413f46e67ea1d9707851995f23038cbe7ea9585a258bddd9e87a6e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:04:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0a8c5b731945bb70dd227d3973fbeda397c5ae2d25b75274011f37a0a6ebed`  
		Last Modified: Mon, 19 Sep 2016 17:10:30 GMT  
		Size: 5.1 MB (5111030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d46b3ae0ecd47c2d5b8c55109cbd6a6433983b925e6ba04c9ab11e59cecbd9d`  
		Last Modified: Mon, 19 Sep 2016 17:10:42 GMT  
		Size: 30.8 MB (30846515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfb6c1b975c968ec14ca64989366146df3b1ab6e7cbe8075e497e3b5a8f9b6`  
		Last Modified: Mon, 19 Sep 2016 17:10:57 GMT  
		Size: 82.2 MB (82159471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:63d7ca6f9a712982159fa5a976f4dd735b8bd6aa2c78885b41d30b2734b058ba
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63002497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12deed5b4de9765676b590e3469425f02602ae4380c84ccbd5676a68c5115bcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:a8d39e34db0206a4023b97387634b0242757431dde6b5a94369ff5861b204336
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111092164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:822b03257588e3d1277596d7ebbfe674f14f120cb9efb656e1daee3a741c0f01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:6a3a62e3596dec63f8f98a253ad1b81c065f5b63f30fb67e5642e008e01df733
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.1 MB (454070414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057f3f94b324300b19e8650a24524a7602eb10e50104c9c87a46e518b0a159c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:55:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d70e1bac6d3f6bd9087a473878b5183a8663e7453038bb25c58319219a4eae`  
		Last Modified: Tue, 30 Aug 2016 22:02:59 GMT  
		Size: 343.0 MB (342978250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:8e39f1e33688715ec30594648b69c16f1dad28ad918d6311ae891e622151090a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62886342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be62e0904539f360f5d4dc7f1e04493bf8d46afe29c6c30c520da46b09d70d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:19 GMT
ADD file:f4dd1b1b9cc583c29a7f62931be96757f4923749694c91b6fd1fee351b2fb11d in / 
# Tue, 30 Aug 2016 21:01:19 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e00445ae9689f633454e9b0ce6d52e6faffbe7b4f818cc662898864aa663bd96`  
		Last Modified: Tue, 30 Aug 2016 21:04:30 GMT  
		Size: 42.3 MB (42346419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd32f2e8f57fee022056f95a32d7018acaab95964b296d3adc1a0f6b14936b`  
		Last Modified: Tue, 30 Aug 2016 22:03:39 GMT  
		Size: 20.5 MB (20539923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:99ad25220a3902ae6bf8f27b45a21a960883bc8431315b36ea5e26092bf22b6e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110897054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4208e9e109c9cac7f725fd557a1d8c5505ad9c5d6a56ce2dd0c48c06bce1e727`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:19 GMT
ADD file:f4dd1b1b9cc583c29a7f62931be96757f4923749694c91b6fd1fee351b2fb11d in / 
# Tue, 30 Aug 2016 21:01:19 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:55:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e00445ae9689f633454e9b0ce6d52e6faffbe7b4f818cc662898864aa663bd96`  
		Last Modified: Tue, 30 Aug 2016 21:04:30 GMT  
		Size: 42.3 MB (42346419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd32f2e8f57fee022056f95a32d7018acaab95964b296d3adc1a0f6b14936b`  
		Last Modified: Tue, 30 Aug 2016 22:03:39 GMT  
		Size: 20.5 MB (20539923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d9d2d1397550707934b95871a84ecd09748029066a5e8442bb62ad106a54f2`  
		Last Modified: Tue, 30 Aug 2016 22:03:53 GMT  
		Size: 48.0 MB (48010712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:ce668615df6eca1664594e39cc6b5642793db585428a51d656a726431189bce7
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.8 MB (453819533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1c02cd2dfc753e94c2d7b940e2d05a4561bd2ac26384ed56498ce956f50888`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:19 GMT
ADD file:f4dd1b1b9cc583c29a7f62931be96757f4923749694c91b6fd1fee351b2fb11d in / 
# Tue, 30 Aug 2016 21:01:19 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:55:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e00445ae9689f633454e9b0ce6d52e6faffbe7b4f818cc662898864aa663bd96`  
		Last Modified: Tue, 30 Aug 2016 21:04:30 GMT  
		Size: 42.3 MB (42346419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd32f2e8f57fee022056f95a32d7018acaab95964b296d3adc1a0f6b14936b`  
		Last Modified: Tue, 30 Aug 2016 22:03:39 GMT  
		Size: 20.5 MB (20539923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d9d2d1397550707934b95871a84ecd09748029066a5e8442bb62ad106a54f2`  
		Last Modified: Tue, 30 Aug 2016 22:03:53 GMT  
		Size: 48.0 MB (48010712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae13fdbf67510e76eee824a1bd120bfb2915d0a087e2f0a945db4146b410c8`  
		Last Modified: Tue, 30 Aug 2016 22:05:03 GMT  
		Size: 342.9 MB (342922479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:ce79c6d35f01fafe3cfa4c1944b230b4846c479644931472da8a465970ca7d65
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70373128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4357e46c5cb1be0e557827a74067c021c73ae799df18641fd550ed971e6ec4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d668911a2c561e865a2e19d956db23517bc317ef2f0b0b748ab9a8b34dd8c6`  
		Last Modified: Mon, 19 Sep 2016 17:12:22 GMT  
		Size: 4.6 MB (4599317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:f5d3cbc5a01c697f86db018b60c5ca77df9137e6fbc0fb6c8f668842d7ea0691
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99377757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646fd9cdef9f000626ddcfc3c4e3915d8b28019c21de9a4e6102dcf0b5470518`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d668911a2c561e865a2e19d956db23517bc317ef2f0b0b748ab9a8b34dd8c6`  
		Last Modified: Mon, 19 Sep 2016 17:12:22 GMT  
		Size: 4.6 MB (4599317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9b21a5b35b915639cd8a60d25da9111cdd154fb3f9e10c796c31b825503c28`  
		Last Modified: Mon, 19 Sep 2016 17:12:31 GMT  
		Size: 29.0 MB (29004629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:1218335663df23a005141c78fd8124318ed4ef268ee5f9d9111cdb9cfb98c7b3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199166758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64467561ec7585450e4cced8f18c50c40cde879a5ebda531af2d76bc36dddcdf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:03:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d668911a2c561e865a2e19d956db23517bc317ef2f0b0b748ab9a8b34dd8c6`  
		Last Modified: Mon, 19 Sep 2016 17:12:22 GMT  
		Size: 4.6 MB (4599317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9b21a5b35b915639cd8a60d25da9111cdd154fb3f9e10c796c31b825503c28`  
		Last Modified: Mon, 19 Sep 2016 17:12:31 GMT  
		Size: 29.0 MB (29004629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a66329dcd538e29f66f2e078a7042b9eadcd7c1aa705cc0ff92da8a0da964`  
		Last Modified: Mon, 19 Sep 2016 17:12:47 GMT  
		Size: 99.8 MB (99789001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:bb44484dd86e3b31677fe69b3185699c4352913774ccc5837496b5b11071dcdb
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43945795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84d603a92101e744c757356940b95aa5b1a94a6e08839fe6b00f91ee3302d0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:eb7757e352e87c199640af83a173d812a3625e8fb2b3f18ca88a010a67037401
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81310369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10cd2fabf63726a3194f00f9c693d2a130ab526ddbc2e67f16a2c3c0367b6503`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:03861a9d8cfcbcc93bf5d9ab1249f7cc3e8f6a4097c5dd3a2d903949b3bb5ae9
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.5 MB (176530054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e88a5c04017a5acd094b5e59894a0d08cbef6498879244005ea898f33e20685`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ea1e0791117ce5d03d4f5d5dc8fd0e8af7029472a5f81e68090e2299f11b18`  
		Last Modified: Tue, 30 Aug 2016 22:06:08 GMT  
		Size: 95.2 MB (95219685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:13e0553660bb2941fe55576b17016685095e89f9fed252af935cc83f38ef4a64
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-curl` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57079797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62a700abdb7c70a8ac18f04876b61bc1a0febbb8a370d38a76cd8de44d35a444`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ad3903d5b884ddf48fb01141fdada55625d94c0b31fba7a82e9eb5964e97d`  
		Last Modified: Mon, 19 Sep 2016 17:11:16 GMT  
		Size: 7.3 MB (7282860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:1a2754f249e1f28cdeb233c7b49cd5bea01dcbe24090131d984ad945af9e2a32
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98293199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b664a4c8b9349f892eb0154e5b16e0209b8b3da04e43940051b56857aa0b7952`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:04:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ad3903d5b884ddf48fb01141fdada55625d94c0b31fba7a82e9eb5964e97d`  
		Last Modified: Mon, 19 Sep 2016 17:11:16 GMT  
		Size: 7.3 MB (7282860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629a2b1089bb84b30b0092d31f79e06698d6ef8a92f7462b4f3f304d76158d41`  
		Last Modified: Mon, 19 Sep 2016 17:11:42 GMT  
		Size: 41.2 MB (41213402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:5a5d1c204ed0eebb12c10e20c42f02347989a1aeaf03839da903e0e861a9aa26
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231408328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ca5f06c4a85ef7501c8ff0c0a3dc633ade830a7de6e97f54d3837d2b684343`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:04:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ad3903d5b884ddf48fb01141fdada55625d94c0b31fba7a82e9eb5964e97d`  
		Last Modified: Mon, 19 Sep 2016 17:11:16 GMT  
		Size: 7.3 MB (7282860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629a2b1089bb84b30b0092d31f79e06698d6ef8a92f7462b4f3f304d76158d41`  
		Last Modified: Mon, 19 Sep 2016 17:11:42 GMT  
		Size: 41.2 MB (41213402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853d29e463d3839397b7200c8d4bf0b43fd67291a443e3f433f3f8a3ccdf2a69`  
		Last Modified: Mon, 19 Sep 2016 17:13:59 GMT  
		Size: 133.1 MB (133115129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
