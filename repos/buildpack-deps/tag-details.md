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
$ docker pull buildpack-deps@sha256:1b87539f7729fc20e9dcc32afc9ad222eaef0464487f81c1b0892064c058c471
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69896651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55df12ffb9dd388c25688e252aa403afb2343b1602d4bfe6e151f818b7b1604`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:1b87539f7729fc20e9dcc32afc9ad222eaef0464487f81c1b0892064c058c471
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69896651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55df12ffb9dd388c25688e252aa403afb2343b1602d4bfe6e151f818b7b1604`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:52d6783669b3008d1726b4ca09a16af629428ef22482f7abd99917beae06ed91
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112399057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6383bf333c2f1a150d4153ad5b9e96d69ad4e857e1319727601c7ca2f85aaa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:52d6783669b3008d1726b4ca09a16af629428ef22482f7abd99917beae06ed91
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112399057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6383bf333c2f1a150d4153ad5b9e96d69ad4e857e1319727601c7ca2f85aaa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:fb66e795761f64cf1f6b2870d5eed14574f49021ef2f41a3e7252dfa6e12cf6a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e6161680815348a213f7368037e90712e0e1fb76c2255b5721a18d5a6c5ed`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:fb66e795761f64cf1f6b2870d5eed14574f49021ef2f41a3e7252dfa6e12cf6a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242222172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e6161680815348a213f7368037e90712e0e1fb76c2255b5721a18d5a6c5ed`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise-curl`

```console
$ docker pull buildpack-deps@sha256:c6ed9c42dc2a1f2617565449e8e8138aba4872c68bbbf28585e07d17040ad845
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 MB (44250154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8146d11a614b5728c43d1a25c82f137b686944898e26e534fcde2be5b844f499`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:06:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40cd4e0a1572df33160ff181dad5cbd560122399031feb63af70743f2bc0b7b`  
		Last Modified: Thu, 15 Dec 2016 19:34:38 GMT  
		Size: 5.1 MB (5111648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise-scm`

```console
$ docker pull buildpack-deps@sha256:ca9d013a99c854e06e269ec46c16ac294275ca2655451b601acac74c78fa1814
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75096879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54fe97047526585c618405a23fc220d7548bac42c054f84a16bdfcae03f24a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:06:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:06:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40cd4e0a1572df33160ff181dad5cbd560122399031feb63af70743f2bc0b7b`  
		Last Modified: Thu, 15 Dec 2016 19:34:38 GMT  
		Size: 5.1 MB (5111648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c07b36856e48900c9a79e786e4181d29cc56466df8852ac0559d0d3c6ee0fe9`  
		Last Modified: Thu, 15 Dec 2016 19:35:13 GMT  
		Size: 30.8 MB (30846725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:precise`

```console
$ docker pull buildpack-deps@sha256:d99f8faf5cfe446935454751d12113aa5a35d563bed21d002d187cd1f6b7afe5
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157282830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cebb5419ee1c8350c7f44e58ad046390a80f3434d5cd85be4e678d07cbc4731`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:34 GMT
ADD file:2df9e9a37fd28ab1a8fb0274a756858e72f828d5252c3b414062e42972d04e86 in / 
# Thu, 15 Dec 2016 17:44:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:44:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:44:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:44:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:44:38 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 18:06:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 18:06:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 19:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ca7b5b0830b23bf280061a785656dc63bf97a4c7182d38d112a9260301671313`  
		Last Modified: Mon, 12 Dec 2016 16:23:04 GMT  
		Size: 39.1 MB (39079305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a5127e97346f37a6bba4e6f95797d078883a274c4f2515e8ede3a42f07e42`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4663c774444629f108824417f8c57f8dec178f2cd2941805ad5f1eff55dbe02`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197fb8a137ca065fe81d54ae53df800c88316dc08f8f68c2d6f4e30c1fd9790b`  
		Last Modified: Thu, 15 Dec 2016 17:46:22 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37caad81dc9f1ed058e5f78cf3b3767117b22fbe99b4c3b0d66722439150d13b`  
		Last Modified: Thu, 15 Dec 2016 17:46:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40cd4e0a1572df33160ff181dad5cbd560122399031feb63af70743f2bc0b7b`  
		Last Modified: Thu, 15 Dec 2016 19:34:38 GMT  
		Size: 5.1 MB (5111648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c07b36856e48900c9a79e786e4181d29cc56466df8852ac0559d0d3c6ee0fe9`  
		Last Modified: Thu, 15 Dec 2016 19:35:13 GMT  
		Size: 30.8 MB (30846725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db3caa77b1547f0677cb487c81190fd9dacb7beb7ce05391e4e27006464b999`  
		Last Modified: Thu, 15 Dec 2016 19:36:07 GMT  
		Size: 82.2 MB (82185951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:d8cd5515289b92aa91a0df053150e03571c03b118c8071691cb95d6440e66a35
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67033963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f38a57dbc5cce6c5b100aa961f76fffd3852a05278755e465acb46f800b389`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:af3ef52e490d9ede4182f159be9a431119e5ea17e012b8aabeb04a043376d3e3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117056192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28153319e29f3e644a57ef367d01279a4bfafc56039f72e54debca15575f01d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:f21ca5b4c4334bd94496f18ced95ea2b3f726dda984744ed2cfb9a6e85fab231
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.0 MB (317023895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1025a07a822d20a5e62e8edd625f9e5d7afa3f74e3b53729a4f508804d16a459`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d1b60fbfb31a84ba739d97c0c9576d66b62e554811763505541ef0fa659ccd`  
		Last Modified: Tue, 17 Jan 2017 00:27:58 GMT  
		Size: 200.0 MB (199967703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:531e694e2fbe27b81ba33438060ba7f2a5a3807ae2260911e668c8f58045bf42
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64817442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecde64b4976cbd7db21b0275afb6ca2969c605f7e3590adf72351da3fffd098a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:39:16 GMT
ADD file:c09931042d44875d1db95d3faa08303a098dfc42738c80d38856cb84d78ebbda in / 
# Mon, 16 Jan 2017 20:39:24 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cdc4502972ee4dbc3dbcc16a2eeaddaa8179f090379768f8cb9438cd01bf5d8a`  
		Last Modified: Mon, 16 Jan 2017 20:50:09 GMT  
		Size: 43.9 MB (43871389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f85d83d587c9dffea05a7552cfb010c9d4124a626e61dfa27649b01ce06bb6`  
		Last Modified: Tue, 17 Jan 2017 00:22:42 GMT  
		Size: 20.9 MB (20946053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:1a6cb41422e566f77d48abc9c61ea56d2912d25235be2d32abb739d966d73b9f
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116071452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c216b9f113588fc9081fa6f5bec2386721286cc8740fa0f75182c630219219`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:39:16 GMT
ADD file:c09931042d44875d1db95d3faa08303a098dfc42738c80d38856cb84d78ebbda in / 
# Mon, 16 Jan 2017 20:39:24 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:02:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cdc4502972ee4dbc3dbcc16a2eeaddaa8179f090379768f8cb9438cd01bf5d8a`  
		Last Modified: Mon, 16 Jan 2017 20:50:09 GMT  
		Size: 43.9 MB (43871389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f85d83d587c9dffea05a7552cfb010c9d4124a626e61dfa27649b01ce06bb6`  
		Last Modified: Tue, 17 Jan 2017 00:22:42 GMT  
		Size: 20.9 MB (20946053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ddd0a063cb5f89e516dc6684c1f37599b5f08cf8802b14c2619d667c428d0`  
		Last Modified: Tue, 17 Jan 2017 00:23:34 GMT  
		Size: 51.3 MB (51254010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:7733873ab8dc007eb96adfabd8f7e688404e30fea9dc7aca1b8d3db1619443ea
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.1 MB (311051217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0decd89a95112aa6eb20c863d70f31c590f8891f2d7f46c6b00ce4584ac2285d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:39:16 GMT
ADD file:c09931042d44875d1db95d3faa08303a098dfc42738c80d38856cb84d78ebbda in / 
# Mon, 16 Jan 2017 20:39:24 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:02:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cdc4502972ee4dbc3dbcc16a2eeaddaa8179f090379768f8cb9438cd01bf5d8a`  
		Last Modified: Mon, 16 Jan 2017 20:50:09 GMT  
		Size: 43.9 MB (43871389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f85d83d587c9dffea05a7552cfb010c9d4124a626e61dfa27649b01ce06bb6`  
		Last Modified: Tue, 17 Jan 2017 00:22:42 GMT  
		Size: 20.9 MB (20946053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ddd0a063cb5f89e516dc6684c1f37599b5f08cf8802b14c2619d667c428d0`  
		Last Modified: Tue, 17 Jan 2017 00:23:34 GMT  
		Size: 51.3 MB (51254010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9bbc035e47381b38b3f5f3be04b9ffd9fc68a86113c8a23f0a53021c935336`  
		Last Modified: Tue, 17 Jan 2017 00:30:07 GMT  
		Size: 195.0 MB (194979765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:7893dd6459d46d125700fa87b5a821e9b8cb131e4ae228747e6003b8a34f0310
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70367072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56455179cea57e261b90cb5654034cd77758d4bbfe87e23dc3076ed25b8ea785`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4691e0946c9bbaf74eec3aaed3b99d9f3bcb20b86372fea61122a4ca48c4f1e`  
		Last Modified: Fri, 20 Jan 2017 23:04:49 GMT  
		Size: 4.6 MB (4600465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:7b1b22e7f85a91fee3571fc243e54db775351bacd37f6fcb6a6afe54ed96bad8
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99376674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e4cab6395aa02fed4a185c9735238039a3718ad90de49b30a102f2052ae672`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4691e0946c9bbaf74eec3aaed3b99d9f3bcb20b86372fea61122a4ca48c4f1e`  
		Last Modified: Fri, 20 Jan 2017 23:04:49 GMT  
		Size: 4.6 MB (4600465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd576d474e9bbf7328a371295445ebb49458c45610a1dc3d13fc5aa0c3019bc`  
		Last Modified: Fri, 20 Jan 2017 23:05:20 GMT  
		Size: 29.0 MB (29009602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:490b369eaef776a43e2fc36f8dae428fac2cc9d878d59c6420766d14f54d7839
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199201991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d5da86b983bac1e05f08f9e3353c04d2ba503cd262d048b1b9a009a220703d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4691e0946c9bbaf74eec3aaed3b99d9f3bcb20b86372fea61122a4ca48c4f1e`  
		Last Modified: Fri, 20 Jan 2017 23:04:49 GMT  
		Size: 4.6 MB (4600465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd576d474e9bbf7328a371295445ebb49458c45610a1dc3d13fc5aa0c3019bc`  
		Last Modified: Fri, 20 Jan 2017 23:05:20 GMT  
		Size: 29.0 MB (29009602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63755f99c4d640bf55d816e047f7d77f95e69c0a4dbd68fe829d95b0c70a8576`  
		Last Modified: Fri, 20 Jan 2017 23:09:57 GMT  
		Size: 99.8 MB (99825317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:3d43fb3355122062df928f05fcf795550e4497bfbc4d53eaaa9b9bcfc116ee71
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-curl` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44108186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69caafde59f8cce8a5d913e258659f1bc925a9f4614d64f429049c9559d2c56b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:354ef37e3067aee5e35a493f967a6cda12e0be591331c9db4e1b2244abd4688e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-scm` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81550393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5071ba413ca1e4fc2151af2bc0092083577f4615da8350124faf797313f685`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:2d4941229c061ea111443048fc96882d4210165b59314391b81fe2749a366df6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176940894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f249a8a0521dc26dfb1a4d0eae36c91f90cfdcd41cabb7fd724a97707f40a23`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:09:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4091731f9c3d754a7c57ebafeba083ad143990d82e5d43f481fc1164a8d6ee`  
		Last Modified: Tue, 17 Jan 2017 00:31:14 GMT  
		Size: 95.4 MB (95390501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:03acc9470a08f3e6c4ba48373c6f624531fe3a1d6f09e9d503040093630a494a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57550076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400371bac3667fee61ddaa05ba5e8560ab848edb93425cb6ea1c0149cd21478a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:50:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03764320a0af12543478b581219c36d384124654d3d9c6d65503b33a62bded9`  
		Last Modified: Fri, 20 Jan 2017 23:05:44 GMT  
		Size: 7.2 MB (7239720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:88b13cb7a54394044472048ef6b70b5769bab091ee66e5f994685755c31c9924
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98769524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75fa7d72abaa6d61f8cdba7f4ad76051db437075e486a5b8dc8fbdf1ccb217e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:50:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:51:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03764320a0af12543478b581219c36d384124654d3d9c6d65503b33a62bded9`  
		Last Modified: Fri, 20 Jan 2017 23:05:44 GMT  
		Size: 7.2 MB (7239720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ff545b24f3995c7d54fb56715a1ca9c27d0dc7a889fdf512d0dd3d04c3b5a1`  
		Last Modified: Fri, 20 Jan 2017 23:06:22 GMT  
		Size: 41.2 MB (41219448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:f1b9b1c2d5efccadc95b40953986699167606f11cd0d4b73ff4883867f54407e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234954584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31a9f9fbd9fb40b9dc8aeca4aec89594c65dfcbbe54cab399102ce9bace9c40`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:50:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:51:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:55:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03764320a0af12543478b581219c36d384124654d3d9c6d65503b33a62bded9`  
		Last Modified: Fri, 20 Jan 2017 23:05:44 GMT  
		Size: 7.2 MB (7239720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ff545b24f3995c7d54fb56715a1ca9c27d0dc7a889fdf512d0dd3d04c3b5a1`  
		Last Modified: Fri, 20 Jan 2017 23:06:22 GMT  
		Size: 41.2 MB (41219448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c56caf6b8644a3efb903e2fb9a6ff50477e059f1089e6cba314dabcffcf802a`  
		Last Modified: Fri, 20 Jan 2017 23:10:57 GMT  
		Size: 136.2 MB (136185060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:df300a6be250f0a371df8927bf8eb227fbfca86eb721e6e993f24f17fb3c1f6e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47714030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea273bbbfd509dbf50b4f97ae3227d17d3fb7815238dd25f1feff65a99e0c1d3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:51:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c13053692abb11a4dcc57eb164ace14d6a17e577976f9f0c2ec9ae5d8b183b`  
		Last Modified: Fri, 20 Jan 2017 23:06:47 GMT  
		Size: 6.9 MB (6866291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:2f985693225f0b26b34c23744afd71822ecb55bec0adfb397ce62a9c3659812e
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90109719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61529cf2f74e226cb37d921b1f5f0cf4ca4d5f324be761251e7e855e186f82c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:51:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c13053692abb11a4dcc57eb164ace14d6a17e577976f9f0c2ec9ae5d8b183b`  
		Last Modified: Fri, 20 Jan 2017 23:06:47 GMT  
		Size: 6.9 MB (6866291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ac3e03a2e6df8874844d1e10f67ef43a248f8ca44ff69ceb0bd5b57307ab22`  
		Last Modified: Fri, 20 Jan 2017 23:07:23 GMT  
		Size: 42.4 MB (42395689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:940fb18a2db33acef882e1fa68d32cb00b3a03dd1dd7bb53b28212f581ba9930
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256838021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31afa82aceaee0e661e11f46cf6bd5a7b299d4ff7c47fc11514ace9d88a9ed14`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:51:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:56:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c13053692abb11a4dcc57eb164ace14d6a17e577976f9f0c2ec9ae5d8b183b`  
		Last Modified: Fri, 20 Jan 2017 23:06:47 GMT  
		Size: 6.9 MB (6866291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ac3e03a2e6df8874844d1e10f67ef43a248f8ca44ff69ceb0bd5b57307ab22`  
		Last Modified: Fri, 20 Jan 2017 23:07:23 GMT  
		Size: 42.4 MB (42395689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495687fd2cca7c0c14005a67377f92bc067896cde910889c4be375842e11555b`  
		Last Modified: Fri, 20 Jan 2017 23:12:24 GMT  
		Size: 166.7 MB (166728302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:0d658d7ef85d708001db988650853f0d9f1f10f026fcec8a49a5576c6853ebf4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-curl` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47632260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d50d9c8bdc1318762cc46293db16fdab6f9a02a7ad1921ff56b33538faaaf4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:45:37 GMT
ADD file:26b17eea6b51bdd55ef4b2312d87c81540209bc81aa37815596a6797053b9d79 in / 
# Fri, 20 Jan 2017 21:45:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:45:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:46:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:46:03 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:52:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2346ef5c33ce9077cd064def64d626fb1381a103ea3977c056109b831f2d39ab`  
		Last Modified: Fri, 20 Jan 2017 21:53:51 GMT  
		Size: 40.7 MB (40672715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cc92115e00df4f56f84397c9fdf8addf763cf21f692ee4dacd62ebb2d38fcb`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b0bd4f809c3fbf0c53ee6f6fe6cffe8aaf7cd572cc99cc5d0d068e6f4f62d5`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2811130ab99016f212832b698e67b80a3c75fc3b0982c1fb55121fa555063c1`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467ecbdfd62f2995cb2065b135409c641224bdcd2caee84e6679c603db4976a`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78e8b28e34a0477dec3e1f6ddfbf711c229141c440fe52e6ae9d4b31c6f0c3b`  
		Last Modified: Fri, 20 Jan 2017 23:07:46 GMT  
		Size: 7.0 MB (6957313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:1d6727ba0a5780ea8ccab0272aeb464f1d09174cdd3381ca07c9f1eaee9f1815
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-scm` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90493389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49f0d039f4d99a93fb6ca179f557d8bea53f8a37942ad0e315ae095746d494f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:45:37 GMT
ADD file:26b17eea6b51bdd55ef4b2312d87c81540209bc81aa37815596a6797053b9d79 in / 
# Fri, 20 Jan 2017 21:45:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:45:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:46:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:46:03 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:52:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2346ef5c33ce9077cd064def64d626fb1381a103ea3977c056109b831f2d39ab`  
		Last Modified: Fri, 20 Jan 2017 21:53:51 GMT  
		Size: 40.7 MB (40672715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cc92115e00df4f56f84397c9fdf8addf763cf21f692ee4dacd62ebb2d38fcb`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b0bd4f809c3fbf0c53ee6f6fe6cffe8aaf7cd572cc99cc5d0d068e6f4f62d5`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2811130ab99016f212832b698e67b80a3c75fc3b0982c1fb55121fa555063c1`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467ecbdfd62f2995cb2065b135409c641224bdcd2caee84e6679c603db4976a`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78e8b28e34a0477dec3e1f6ddfbf711c229141c440fe52e6ae9d4b31c6f0c3b`  
		Last Modified: Fri, 20 Jan 2017 23:07:46 GMT  
		Size: 7.0 MB (6957313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f986ae40aca635be76f8a5d1454b34d1bfb199113048cac5e7ea61648ac5d56`  
		Last Modified: Fri, 20 Jan 2017 23:08:22 GMT  
		Size: 42.9 MB (42861129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:d3406cdf12f8933ef37db6b2edca39891ad5805dafc4f91473f6dee2bad4f290
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257906015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f2f2bcd5c72016a28c0f9454ef01fe7d28802606c77201d1d4ed3d1a73ce0f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:45:37 GMT
ADD file:26b17eea6b51bdd55ef4b2312d87c81540209bc81aa37815596a6797053b9d79 in / 
# Fri, 20 Jan 2017 21:45:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:45:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:46:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:46:03 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:52:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:58:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2346ef5c33ce9077cd064def64d626fb1381a103ea3977c056109b831f2d39ab`  
		Last Modified: Fri, 20 Jan 2017 21:53:51 GMT  
		Size: 40.7 MB (40672715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cc92115e00df4f56f84397c9fdf8addf763cf21f692ee4dacd62ebb2d38fcb`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b0bd4f809c3fbf0c53ee6f6fe6cffe8aaf7cd572cc99cc5d0d068e6f4f62d5`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2811130ab99016f212832b698e67b80a3c75fc3b0982c1fb55121fa555063c1`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467ecbdfd62f2995cb2065b135409c641224bdcd2caee84e6679c603db4976a`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78e8b28e34a0477dec3e1f6ddfbf711c229141c440fe52e6ae9d4b31c6f0c3b`  
		Last Modified: Fri, 20 Jan 2017 23:07:46 GMT  
		Size: 7.0 MB (6957313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f986ae40aca635be76f8a5d1454b34d1bfb199113048cac5e7ea61648ac5d56`  
		Last Modified: Fri, 20 Jan 2017 23:08:22 GMT  
		Size: 42.9 MB (42861129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa6bcb4f1c2cc9719ef635790f99c66d5fd3b3401ca5738e256f39ed55191d6`  
		Last Modified: Fri, 20 Jan 2017 23:13:37 GMT  
		Size: 167.4 MB (167412626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
