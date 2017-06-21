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
$ docker pull buildpack-deps@sha256:e8a5bcd4cea956bf635825506c208ea9ad8ecbf01bcc7c6d755cd8de4b03c861
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71879176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05838c66ffa2b0e916bf2984c13d0650c81eeb84e880bf1a2462d7ba55ddb1f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:e8a5bcd4cea956bf635825506c208ea9ad8ecbf01bcc7c6d755cd8de4b03c861
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71879176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05838c66ffa2b0e916bf2984c13d0650c81eeb84e880bf1a2462d7ba55ddb1f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie-scm`

```console
$ docker pull buildpack-deps@sha256:56d64160a1dec864e872fdee4701745764b2f5896068fbf0211f8305e54c9eaa
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115106449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46157f071d19d782ecb683c0126d18842ffbef59847c866b9d02e78f4986d784`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:56d64160a1dec864e872fdee4701745764b2f5896068fbf0211f8305e54c9eaa
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115106449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46157f071d19d782ecb683c0126d18842ffbef59847c866b9d02e78f4986d784`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:jessie`

```console
$ docker pull buildpack-deps@sha256:9e6b0ba482c132f105a125bbd4e0d19b14398d8afc3ad027a90ab5102baf1e91
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:jessie` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246929327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a7d7ba45bb87e4f7f3c0b0a5c5ed0dbb7e12d22c92d3eb6874bffe66040c39`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:9e6b0ba482c132f105a125bbd4e0d19b14398d8afc3ad027a90ab5102baf1e91
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246929327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a7d7ba45bb87e4f7f3c0b0a5c5ed0dbb7e12d22c92d3eb6874bffe66040c39`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:efcac9200749914a95cba7f755f1716950c1acaeb4878014eea4c4132768d0de
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56431527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39a8396b7f877c4142bc2d6243555726eaa31b0f135146127381ef613f49e34b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:db33ecbbdce0bdc0e6dd7644a3ab12cc77d053774ff1423c410e7a6a668c16dc
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.4 MB (107375682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841b8ec61a0daa82a8899352fa06973c1edb4fc46015a5ccd8ed3ce7149c18a6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18aed9d248a8afaf498a6787ee843c48d241dc80091cf7efbc33de3acb70820`  
		Last Modified: Wed, 21 Jun 2017 00:38:28 GMT  
		Size: 50.9 MB (50944155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:125117b1a0aa013485c3705a261d03a5a30be02ec7f8b7a2ddfe96c4824cead9
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:sid` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.5 MB (323508322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34464d4dfdf3a05578d667431d4d76460b00ff0e4b55ecedf9ba038203138caf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:18:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18aed9d248a8afaf498a6787ee843c48d241dc80091cf7efbc33de3acb70820`  
		Last Modified: Wed, 21 Jun 2017 00:38:28 GMT  
		Size: 50.9 MB (50944155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de938c00dcf6a6eef67d9f4931e7dca1d2bbe5cf4c441703470b79b5ad92e6df`  
		Last Modified: Wed, 21 Jun 2017 00:39:50 GMT  
		Size: 216.1 MB (216132640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-curl`

```console
$ docker pull buildpack-deps@sha256:aa3302c311d790dd3503ed856a0c40438d84f5dc8e6aa6c9e60c6cd30056c930
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56248369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbadd83303f0bd5649d10886b140221c19a38750db53260c4f0de41c44d84ae`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch-scm`

```console
$ docker pull buildpack-deps@sha256:4ac5f07eb3f86254865e22b466b05c48b3df05fcf441a299f2bf9f4acc3ccc10
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107191706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89838e3334cbb27558ed3de35b81d42e6c2ce05376cbf904411c05700d34cc4b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d9add01f107cb501fcbae0bbfbff3c879dcf5910a9066077b2cc755c98cc4c`  
		Last Modified: Wed, 21 Jun 2017 00:50:55 GMT  
		Size: 50.9 MB (50943337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:6baf7aebee2ac3d1b970da3e647df7aa9ed48433788163ad433084727ee8d41b
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318337118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19231b5b5b2659b8ecc2940428638fa2f0c8f5c5bcb40e3028c6db2897ab8215`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 22:46:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d9add01f107cb501fcbae0bbfbff3c879dcf5910a9066077b2cc755c98cc4c`  
		Last Modified: Wed, 21 Jun 2017 00:50:55 GMT  
		Size: 50.9 MB (50943337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d044563b24f1f8d9d100b4271c8ec65129b24d14a4a60f0a8c7dcd84903aa1cb`  
		Last Modified: Wed, 21 Jun 2017 00:52:15 GMT  
		Size: 211.1 MB (211145412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:abde0aa6430b327bd4451f46bd60e0a6986fe20162ca434d2537907ba8798da2
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71894033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6989231f37b248fa8114146d65f0865e22757fb8a90467d829dce18ecd44c15d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac3d025953c10e8e215b1c1f26ee00c3249bd7e5484fefbe066c5445b93e6c`  
		Last Modified: Wed, 21 Jun 2017 00:55:49 GMT  
		Size: 4.7 MB (4705689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:400a48e9dcf2dec224ea8c91a1e4ac475fc63101e90a522df60cc9d41ef0a490
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101438470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ef8e7b8586aba2b4790d9e6f7b553a1dc2bf6b143cca7b3fbb559c7a5dc406`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac3d025953c10e8e215b1c1f26ee00c3249bd7e5484fefbe066c5445b93e6c`  
		Last Modified: Wed, 21 Jun 2017 00:55:49 GMT  
		Size: 4.7 MB (4705689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8d031f681d23259d5f8409e5ce6163f0cf4bf67ace155a54f5f0833d476e4`  
		Last Modified: Wed, 21 Jun 2017 00:56:33 GMT  
		Size: 29.5 MB (29544437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:aa33dd6888f5b52aa9f8c8fedb5ae3911a6717efb1bc5518c504e0d08512f40a
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:trusty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206801218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0cff42df9328a2ca6cfd95ac2f9a49fcbd20760b26a8281baa761454c27e12`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:16:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ac3d025953c10e8e215b1c1f26ee00c3249bd7e5484fefbe066c5445b93e6c`  
		Last Modified: Wed, 21 Jun 2017 00:55:49 GMT  
		Size: 4.7 MB (4705689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8d031f681d23259d5f8409e5ce6163f0cf4bf67ace155a54f5f0833d476e4`  
		Last Modified: Wed, 21 Jun 2017 00:56:33 GMT  
		Size: 29.5 MB (29544437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3eace004c976151e0bc09f699010f2f7800dcaf220647ea66bfc71224b2d66`  
		Last Modified: Wed, 21 Jun 2017 00:57:32 GMT  
		Size: 105.4 MB (105362748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:5611c966a0abe8357b7ef134735ad72f65070c35192e0f068d67016df57b7bb6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45052409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a6b25c960a43717ee0a1d8f2e705d827cdf1b39182f37fd468581248bfb7cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy-scm`

```console
$ docker pull buildpack-deps@sha256:ae08abb450a61cc0d2363c8e9a287ab80680e84698283fe0e2cd558fe9999a07
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82989828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a528f6a67972ec5d73ddce427a7fe19263412305f02e62e806bbd15cb2931c5d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa838faeb7f25579c1ddf0f6d835598d148c6835aab540efa901d140b9e4b39`  
		Last Modified: Wed, 21 Jun 2017 01:05:10 GMT  
		Size: 37.9 MB (37937419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:45d4fac1f003d5dca3f6967428385790c415e705e172f07d10f6a34e1e0ab01b
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:wheezy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179940849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237ac0c9443ff54c317dc2d82a738dbd687117180c8cbb73de04991a41c71125`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:17:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa838faeb7f25579c1ddf0f6d835598d148c6835aab540efa901d140b9e4b39`  
		Last Modified: Wed, 21 Jun 2017 01:05:10 GMT  
		Size: 37.9 MB (37937419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a83cd77641ab941aff7d08eef6a898fcc650be7c81e7f6b3f3af35fe6e00ec1`  
		Last Modified: Wed, 21 Jun 2017 01:06:07 GMT  
		Size: 97.0 MB (96951021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-curl`

```console
$ docker pull buildpack-deps@sha256:2a024a67ef7c4865099f2731eda439224acb2f3059eeb713d79adc3e82140d1c
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54463872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1747dc3e740ee7a9c152d22c1b2ccc061c8c3a7f505ffb99bb4ac6b620faf9fe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:18:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e65dfb9496c500f54196d8a6745f5906b2bdc324a82c9fe20f67d2557d4e55a`  
		Last Modified: Wed, 21 Jun 2017 01:06:44 GMT  
		Size: 7.4 MB (7358237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:79b136696a46538002c2319cbb84ada7043e48caed26a76bd71d66f5893d62a7
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96277681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e847d6e2bff6223c201b95737299dbc5398f0d61f2988c47190ba99440f65e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:18:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e65dfb9496c500f54196d8a6745f5906b2bdc324a82c9fe20f67d2557d4e55a`  
		Last Modified: Wed, 21 Jun 2017 01:06:44 GMT  
		Size: 7.4 MB (7358237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e169d5cb9782c8f1b6d9bc584935a3976ceab008a99559e9a805ec3c20cbdf`  
		Last Modified: Wed, 21 Jun 2017 01:07:32 GMT  
		Size: 41.8 MB (41813809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:f9c9abb886c881fcb8368aaa94b45aab23ccc2e7d37bd869583861f8df7d24fd
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.0 MB (236014419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d154e2737683d5640185c984349b54c1414582645bdff70d1efac7b5521875`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:18:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:20:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e65dfb9496c500f54196d8a6745f5906b2bdc324a82c9fe20f67d2557d4e55a`  
		Last Modified: Wed, 21 Jun 2017 01:06:44 GMT  
		Size: 7.4 MB (7358237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e169d5cb9782c8f1b6d9bc584935a3976ceab008a99559e9a805ec3c20cbdf`  
		Last Modified: Wed, 21 Jun 2017 01:07:32 GMT  
		Size: 41.8 MB (41813809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddcc3f66afd86c89e816cd9ceb51a9eb6d52aeb47bc6b6b3c8df6ffbb3c026e`  
		Last Modified: Wed, 21 Jun 2017 01:08:46 GMT  
		Size: 139.7 MB (139736738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-curl`

```console
$ docker pull buildpack-deps@sha256:8aaacc30736fae151c861481b886ca7e50e33f496871b0ba80cabddf2f593eba
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49798134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b039510bd9b7e3fec9bae05e3747aafe64420e35a83e1ca5d627122bde71e994`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:19:57 GMT
ADD file:e4c6632231dabc7399cf6466d1c4c9e89d78b731101eb1fd29d23e21fddc5acb in / 
# Tue, 20 Jun 2017 23:20:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:20:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:20:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:20:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:21:10 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a55d728810805fb84bc7c40f0621ae3ea4869203e0a6bce5456d125c17e56520`  
		Last Modified: Tue, 20 Jun 2017 23:33:21 GMT  
		Size: 42.8 MB (42754848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af1ccb9c1ebcf1385563d3b4764f0b829970c547b02c938325dd3acd5f0588`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1e1a31b68748a5372a572e748107e11ef2ddb49bc6fac5ebdd43af45a0c64`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f1c2fa96ca331ffd7d43919af5fc94ffc7e7cebd1e93d5327808d1e56860e`  
		Last Modified: Tue, 20 Jun 2017 23:33:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c290e5b582d7528f4b96cd8347b9a6cdf52db4c3fa5d2780aeb9a20212e94e82`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe95a4a2a9693c0aa7aa4c583ab057b5d0f3e9d4c1853cd3d43123afe2f3554`  
		Last Modified: Wed, 21 Jun 2017 01:21:30 GMT  
		Size: 7.0 MB (7040939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety-scm`

```console
$ docker pull buildpack-deps@sha256:092e36bd8f33b1da08f3c319b6922e548dfbb5e27eb01a203c228ed2478b1f89
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92909169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4975c1416c4871852f149b5a0c2319465ac9c34a4376d6a4aa9db5c195149008`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:19:57 GMT
ADD file:e4c6632231dabc7399cf6466d1c4c9e89d78b731101eb1fd29d23e21fddc5acb in / 
# Tue, 20 Jun 2017 23:20:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:20:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:20:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:20:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:21:10 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a55d728810805fb84bc7c40f0621ae3ea4869203e0a6bce5456d125c17e56520`  
		Last Modified: Tue, 20 Jun 2017 23:33:21 GMT  
		Size: 42.8 MB (42754848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af1ccb9c1ebcf1385563d3b4764f0b829970c547b02c938325dd3acd5f0588`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1e1a31b68748a5372a572e748107e11ef2ddb49bc6fac5ebdd43af45a0c64`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f1c2fa96ca331ffd7d43919af5fc94ffc7e7cebd1e93d5327808d1e56860e`  
		Last Modified: Tue, 20 Jun 2017 23:33:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c290e5b582d7528f4b96cd8347b9a6cdf52db4c3fa5d2780aeb9a20212e94e82`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe95a4a2a9693c0aa7aa4c583ab057b5d0f3e9d4c1853cd3d43123afe2f3554`  
		Last Modified: Wed, 21 Jun 2017 01:21:30 GMT  
		Size: 7.0 MB (7040939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6302887ba5ec4dbf613d0096e12ca956e30bd4fe7f41733649582099343acf3d`  
		Last Modified: Wed, 21 Jun 2017 01:22:36 GMT  
		Size: 43.1 MB (43111035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:a44cfd612ba11c09b2cfa8b05cfc1b50abcf787773103432e06d420e8f34c655
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263176072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462cc8aa88910b4e049714c3af193f16bc29b57f12736e74563a9f4aaeb9b5b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:19:57 GMT
ADD file:e4c6632231dabc7399cf6466d1c4c9e89d78b731101eb1fd29d23e21fddc5acb in / 
# Tue, 20 Jun 2017 23:20:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:20:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:20:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:20:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:21:10 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:21:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:23:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a55d728810805fb84bc7c40f0621ae3ea4869203e0a6bce5456d125c17e56520`  
		Last Modified: Tue, 20 Jun 2017 23:33:21 GMT  
		Size: 42.8 MB (42754848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af1ccb9c1ebcf1385563d3b4764f0b829970c547b02c938325dd3acd5f0588`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1e1a31b68748a5372a572e748107e11ef2ddb49bc6fac5ebdd43af45a0c64`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f1c2fa96ca331ffd7d43919af5fc94ffc7e7cebd1e93d5327808d1e56860e`  
		Last Modified: Tue, 20 Jun 2017 23:33:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c290e5b582d7528f4b96cd8347b9a6cdf52db4c3fa5d2780aeb9a20212e94e82`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe95a4a2a9693c0aa7aa4c583ab057b5d0f3e9d4c1853cd3d43123afe2f3554`  
		Last Modified: Wed, 21 Jun 2017 01:21:30 GMT  
		Size: 7.0 MB (7040939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6302887ba5ec4dbf613d0096e12ca956e30bd4fe7f41733649582099343acf3d`  
		Last Modified: Wed, 21 Jun 2017 01:22:36 GMT  
		Size: 43.1 MB (43111035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38356d596deece0f8e4633ebef15427139b8cab09ced59e10874cfdacf75a2f6`  
		Last Modified: Wed, 21 Jun 2017 01:23:54 GMT  
		Size: 170.3 MB (170266903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-curl`

```console
$ docker pull buildpack-deps@sha256:a2c69279eea608c8ee70e0327f4cd24c57b35397d4a930afb159aa0d98f399f4
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-curl` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45539387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d3277a6e8fd0c72934dc8f8ab9c28f8941b1b5f39283d2bbd3c00d87ed9e8f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:22:25 GMT
ADD file:94a0566394ac9766d151c52101cff87f96da6cae0b5f41d46f594673fab4da2c in / 
# Tue, 20 Jun 2017 23:22:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:22:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:22:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:23:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:23:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:19cb2bca2aca987341d3e6a6d833b6038b9d659f24a4a546971178f3287f30fb`  
		Last Modified: Tue, 20 Jun 2017 23:35:40 GMT  
		Size: 38.0 MB (37963396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ccedcbf3f87631342d821bf3d910439a81eeae761d3fc6358a09a91b71093`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6449dd44f2655df824a9a7bc27ae50fca28ea03a3348beefdd5e9783f7b9e689`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719d1aba4ad7e72b61a4bafb7bc1ee1dcc6bab71144e99661fbf7598aa5cd8`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0d7f3ddeb81003a37dd64e93d71cc7067ceade18bcd9c5458bcb154930d47f`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f861a1d7c468fae3f864ff97e39a491e4c2c3241a7a7b74e111eb87a82fbfc0`  
		Last Modified: Wed, 21 Jun 2017 01:24:41 GMT  
		Size: 7.6 MB (7573657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty-scm`

```console
$ docker pull buildpack-deps@sha256:d99eba73805937292f7b21c8a28e534d1cf90e2d2f8fb655a6a21dcbf55ec211
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty-scm` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89498459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327963759abd0b36c7bffa3d21e857e19c4309711a3744029ba6f92eb903fc37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:22:25 GMT
ADD file:94a0566394ac9766d151c52101cff87f96da6cae0b5f41d46f594673fab4da2c in / 
# Tue, 20 Jun 2017 23:22:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:22:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:22:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:23:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:23:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:19cb2bca2aca987341d3e6a6d833b6038b9d659f24a4a546971178f3287f30fb`  
		Last Modified: Tue, 20 Jun 2017 23:35:40 GMT  
		Size: 38.0 MB (37963396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ccedcbf3f87631342d821bf3d910439a81eeae761d3fc6358a09a91b71093`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6449dd44f2655df824a9a7bc27ae50fca28ea03a3348beefdd5e9783f7b9e689`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719d1aba4ad7e72b61a4bafb7bc1ee1dcc6bab71144e99661fbf7598aa5cd8`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0d7f3ddeb81003a37dd64e93d71cc7067ceade18bcd9c5458bcb154930d47f`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f861a1d7c468fae3f864ff97e39a491e4c2c3241a7a7b74e111eb87a82fbfc0`  
		Last Modified: Wed, 21 Jun 2017 01:24:41 GMT  
		Size: 7.6 MB (7573657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4a0c5ade72aa87f0838c11463c594de5d45a520b6ae47a81aee5b09e80e57`  
		Last Modified: Wed, 21 Jun 2017 01:25:31 GMT  
		Size: 44.0 MB (43959072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:f4d299430efefa0fdf1a63273b76336b11ababb636f9af7290d489b84efa8737
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.6 MB (260616193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e8234c5b65a044ea1f06a3c9073cd3d7ac4101a4b3f964671093dd19e46cac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:22:25 GMT
ADD file:94a0566394ac9766d151c52101cff87f96da6cae0b5f41d46f594673fab4da2c in / 
# Tue, 20 Jun 2017 23:22:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:22:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:22:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:23:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:23:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:27:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:19cb2bca2aca987341d3e6a6d833b6038b9d659f24a4a546971178f3287f30fb`  
		Last Modified: Tue, 20 Jun 2017 23:35:40 GMT  
		Size: 38.0 MB (37963396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ccedcbf3f87631342d821bf3d910439a81eeae761d3fc6358a09a91b71093`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6449dd44f2655df824a9a7bc27ae50fca28ea03a3348beefdd5e9783f7b9e689`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719d1aba4ad7e72b61a4bafb7bc1ee1dcc6bab71144e99661fbf7598aa5cd8`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0d7f3ddeb81003a37dd64e93d71cc7067ceade18bcd9c5458bcb154930d47f`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f861a1d7c468fae3f864ff97e39a491e4c2c3241a7a7b74e111eb87a82fbfc0`  
		Last Modified: Wed, 21 Jun 2017 01:24:41 GMT  
		Size: 7.6 MB (7573657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4a0c5ade72aa87f0838c11463c594de5d45a520b6ae47a81aee5b09e80e57`  
		Last Modified: Wed, 21 Jun 2017 01:25:31 GMT  
		Size: 44.0 MB (43959072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72017381664ec415527fcff44b814c7d96a731c881d08fe99ca598bf3b8665e1`  
		Last Modified: Wed, 21 Jun 2017 01:27:01 GMT  
		Size: 171.1 MB (171117734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
