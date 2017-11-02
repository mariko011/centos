## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:920017221cf671a6cc7c9c6dab53ceda062e1667e6d63703e04d35fcba478ffe
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
$ docker pull buildpack-deps@sha256:c9ecd6eeee0e63217b0829a8271555db352e711be272656597b481fe1272c3ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.1 MB (328089709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ccbc902f3ad255a8a774b557b074b5ecb2cafd96bb1baca0fb06f906be44b7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:29:38 GMT
ADD file:2ad6832b35851b2a96b581ef8ed45d25ac9de93d41289c5560c271fed9ba920e in / 
# Mon, 09 Oct 2017 21:29:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:22:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:22:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 00:30:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85800cfdb88adf2f09c8fa7b9007830b06b159216512a8073639d55ef65bef2d`  
		Last Modified: Mon, 09 Oct 2017 21:35:49 GMT  
		Size: 47.5 MB (47527292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2c2e8a5238a61ecceaa05fd3b8a12f0f0b7130be8ea0e3a73a88f9885eba6c`  
		Last Modified: Mon, 09 Oct 2017 22:46:25 GMT  
		Size: 8.6 MB (8552061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d850a8f7e8bb6a7e6af0aeeec84c88e0bf09c7eb13a7add66489b382190b1337`  
		Last Modified: Mon, 09 Oct 2017 22:46:25 GMT  
		Size: 9.3 MB (9274108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822cb65b7d3cdc94bde39bf5e0d7ff9ea1c1a2ddc707382eefc36196b6ba706e`  
		Last Modified: Mon, 09 Oct 2017 22:50:12 GMT  
		Size: 47.7 MB (47706434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7045fe2c733faa26f135e6b1e3e31f023f2499763c94371135e7ef9d2268ed8d`  
		Last Modified: Thu, 02 Nov 2017 00:57:24 GMT  
		Size: 215.0 MB (215029814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:2bbae3491188be4176c8398bf99c6e55b5db81efa4a67f71aa224e592ce7f046
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.7 MB (310672765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3df0b27a7191f8552c7aa46a81e9e12c05402c6548abea30e48219061a3a036`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:42 GMT
ADD file:c36a09a9d10e3a94cb120b7379c90035a914005754376b50b29120b6d07e8954 in / 
# Mon, 09 Oct 2017 21:41:42 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:09:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:09:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 07:47:12 GMT
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
	-	`sha256:6bbf0c11611f01fe2b1fee8008411740f6e1da2310773d973b7ed86c2725cd09`  
		Last Modified: Mon, 09 Oct 2017 22:23:05 GMT  
		Size: 9.0 MB (9016113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4803d0757f8d280414c8c8a191ac3417bcdbe5ffdde4df89654af19c496d540b`  
		Last Modified: Mon, 09 Oct 2017 22:23:26 GMT  
		Size: 45.6 MB (45575374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cd6a5a2642757c6772ec8afebb93f57e6c921c88423f36c10ebb2d4b8ebcc4`  
		Last Modified: Thu, 02 Nov 2017 07:55:58 GMT  
		Size: 202.3 MB (202335570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6db71b5dba364af52eed6a96515010f2c84066d0a4fe7f6f772be3ff7e67267e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299745090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044424cb3c664c0eea1794f3dbb3e7cddd882787383cd142e4685d56fc854ae4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:48 GMT
ADD file:914df13f485ca2450fb56b86a878e6de5900d2eeefff703961224ded1fd8a4f0 in / 
# Mon, 09 Oct 2017 21:41:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:15:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 00:10:28 GMT
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
	-	`sha256:01bff86429d06d0fbf0c4fe7b1f9f9bcdb42e2197f153fa9624a1d234aca538e`  
		Last Modified: Mon, 09 Oct 2017 22:29:46 GMT  
		Size: 8.8 MB (8800916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51ab1b15830106a51b1667cbb74f5747e27d38106ebf09ebcb10898f64cb0`  
		Last Modified: Mon, 09 Oct 2017 22:30:07 GMT  
		Size: 43.9 MB (43931144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1545a76e36b42ca2037598802f8d3a3695b6a756a65a9e4576a525b45e1709b7`  
		Last Modified: Thu, 02 Nov 2017 00:24:05 GMT  
		Size: 195.3 MB (195250091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:dad4c2f92cf52796059e761e1b362a5c590a5fe8d6cf39049ea51fd65de17d28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.5 MB (310542099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec94d2e121c5c94580f3000380713929dd97f9044b16f0ce8577490009c9602`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:21 GMT
ADD file:8e748955d241f3105855e5231d2d45912b276a952142c9d87a952b4cc2d3ec2b in / 
# Mon, 09 Oct 2017 21:42:22 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:26:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4645c44a6261623178da74ddf4ab5185326e3fc2f8b6021756deb0b7fd55c328`  
		Last Modified: Mon, 09 Oct 2017 23:25:50 GMT  
		Size: 9.0 MB (9013112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb44fceae539ae5166a764864386e925f67666a15e1deaef001e85bc4cd542c2`  
		Last Modified: Mon, 09 Oct 2017 23:26:22 GMT  
		Size: 46.0 MB (45966537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6985b1c6f71831330ed11cca84e3a8b8307ef921bda9664f9978268dce11ad`  
		Last Modified: Mon, 09 Oct 2017 23:27:44 GMT  
		Size: 202.6 MB (202555421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:77df2300e093efd3783a79ada3cd81381ec9a5c6674ac273ce1e32ca8791288e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333959916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fbec3dc9ae8da97ea2ada0a21b386d1924e4316f48b24ebd6561b872657c51`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:52 GMT
ADD file:59ad2d5327b88c3c6218734bfb8511728d73895b7a3a36e4144aa8369dd14e0c in / 
# Mon, 09 Oct 2017 21:41:52 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:48:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:ca677c713ba0d12b06b164a69d2e14d0825087a8f829d8e312ca317e03a400e2`  
		Last Modified: Mon, 09 Oct 2017 23:31:13 GMT  
		Size: 9.6 MB (9553202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a94d5366593b5822bb123ae273a611d959ff5ad15bf914fdb9c8214feb8d9ab`  
		Last Modified: Mon, 09 Oct 2017 23:31:50 GMT  
		Size: 49.3 MB (49331505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d1abfe1ca07b8f0d9b45f91f0250bff1f8319125e5f241da944a6d0a0fec0c`  
		Last Modified: Mon, 09 Oct 2017 23:36:08 GMT  
		Size: 218.2 MB (218201113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:88c073ab1ba356bf60f68b4d312ad447826f0d7736ee4260009dd9ea9b5d0779
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.2 MB (330237762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a486fbde032fcfdb3dd3fda9a16caa5a95a4d4800a324da988bc19be2368abe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:957f7bbfc5ce84166d318fbb0023280452c7892ea997b8980e3c0ac7edd4de74 in / 
# Mon, 09 Oct 2017 21:42:18 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:16:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:20:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d4a74ba5d3b292c9f57e9a1ec5b7a7180d3e814c8352e67631c7ba0c6ea37fb4`  
		Last Modified: Tue, 10 Oct 2017 00:51:48 GMT  
		Size: 9.5 MB (9498319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821e5450024e53f85b036757897ab6de99ba7132d97691a19171c0f03e1c6935`  
		Last Modified: Tue, 10 Oct 2017 00:52:50 GMT  
		Size: 50.0 MB (49997433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35db670b6ead7566a3d0a6a2c0717f80fe5916cd72aaf189945935e65657345c`  
		Last Modified: Tue, 10 Oct 2017 00:54:55 GMT  
		Size: 214.3 MB (214277272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:61d93a8dc521d4df3a56080a0af1397c6a95e5978a00d747d034a85032061306
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317972033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b1518005d974e30973a846c9cfc65e862ea70649cbac89b374d815a69ef6c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:41:58 GMT
ADD file:f5cd9700bdff68908fb00b754407889252d920305d09cec78811374584fb8695 in / 
# Mon, 09 Oct 2017 21:41:58 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:07:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:07:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:08:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:3a73b601ad1e50f137c6d139236b44574c3e18e66bc6f45dcc44aad17d22996e`  
		Last Modified: Mon, 09 Oct 2017 22:18:44 GMT  
		Size: 9.2 MB (9248189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cc66ba3bacd91c3ae6716b7f8ea65670722eb9f689991a8a3f498ea6bdced5`  
		Last Modified: Mon, 09 Oct 2017 22:19:02 GMT  
		Size: 47.7 MB (47711997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58c25e8174b9b51626fa4145d71a6a05eb5f7567e511dacef54c10d0a2625a6`  
		Last Modified: Mon, 09 Oct 2017 22:19:42 GMT  
		Size: 205.6 MB (205647040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
