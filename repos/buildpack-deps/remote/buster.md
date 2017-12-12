## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:d49a60dc95321ecebc67e5334175216abb8a28be77f407c8efcac30551dd5e56
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
$ docker pull buildpack-deps@sha256:7834536453943c984778de53855e3fc8200995b4779f4d1e8bfa11ccb5d60554
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.7 MB (327683550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c34cca13d6f5d2c8a98e65cf3250b07ca5303ecec1a491f6234c33dc8e51346`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:40:39 GMT
ADD file:5acb415d8aef071824037168ffd780c0156d7461794616d021f6dc513df447c2 in / 
# Tue, 12 Dec 2017 01:40:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:45:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:48:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc20a3251af543b53fcd0a7105c798d682c3081d6517d9a4dfc2c260260685f2`  
		Last Modified: Tue, 12 Dec 2017 01:47:10 GMT  
		Size: 48.3 MB (48257859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8820deddd272aaeef8e1552070bf3101f262b9952e04cc1c07c8d8ba30deeeb5`  
		Last Modified: Tue, 12 Dec 2017 07:58:48 GMT  
		Size: 8.6 MB (8636427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f9454d43e84a167109a1afb888ad9b0fd05eda54323cb60ee33284f622151`  
		Last Modified: Tue, 12 Dec 2017 07:58:47 GMT  
		Size: 9.0 MB (8973091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4705a8a850a1cdce6ebb3f77da83288251ce88aa14768220c0d3591d775ba70`  
		Last Modified: Tue, 12 Dec 2017 07:59:14 GMT  
		Size: 48.4 MB (48389580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515a35fd973938d35aacc3c1dc43433e38de2fc14dbe44af310712ee18af6948`  
		Last Modified: Tue, 12 Dec 2017 08:00:10 GMT  
		Size: 213.4 MB (213426593 bytes)  
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
$ docker pull buildpack-deps@sha256:fc74fdc607f70f78c317205bc7c463b7745ddd7c55b0138e50eccd518340a639
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.1 MB (333148350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726899e2483ddd67b9571bc6e425f3638cf4231f9ed0010665b1eda9b8c3bfb6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:24 GMT
ADD file:f548d484daf036901c05a4bb640bf30fb33281d3f6e6ac49515f9834e0124ebd in / 
# Tue, 12 Dec 2017 01:32:26 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:31:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:31:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 02:33:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:49:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5ed883c7848b37af1d06533289fca465bd0dac9220f08997ffd5b3e972b78428`  
		Last Modified: Tue, 12 Dec 2017 01:37:28 GMT  
		Size: 49.5 MB (49470433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a246f75881e5b8a04f5f114ad7c21956854cb97c10b218a233d9d1947f2a39c8`  
		Last Modified: Tue, 12 Dec 2017 03:51:30 GMT  
		Size: 8.2 MB (8206737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81e8a192104eb83fe3639612d4bc8d65f9d90789ba2e6137077c8f542febff8`  
		Last Modified: Tue, 12 Dec 2017 03:51:30 GMT  
		Size: 9.2 MB (9192172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a8cfb0d41d736436310386bfec48ade3dc86dce9e8d6565fa4dd9e1eba1fde`  
		Last Modified: Tue, 12 Dec 2017 03:51:58 GMT  
		Size: 51.0 MB (51012587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb3713338b06de89176a3df42d2a1578a9e221472483cf5562a00049a43d92c`  
		Last Modified: Tue, 12 Dec 2017 03:53:11 GMT  
		Size: 215.3 MB (215266421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:73e919fd6f38c2587b128b1b31cf1797f6d74863172d6bafc55ee47101b393db
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.9 MB (315859119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50177c463e603590c202e5d09f88d9eddf2b04321897faf998a0adb9e3f1658e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:03 GMT
ADD file:e0c885b58cad703e6e38321061addddba78a8034c9570a8b377dd1f25807650a in / 
# Tue, 12 Dec 2017 06:22:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:49:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:50:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:52:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a467b96f74dfa80402dcbacf97840b92e0788a086fe92cc4b75eed02e0282726`  
		Last Modified: Tue, 12 Dec 2017 06:27:30 GMT  
		Size: 48.0 MB (47952308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53be5515a62809ead0a4216d7130db17153189f6e4a106ecb6f214d2e029ba`  
		Last Modified: Tue, 12 Dec 2017 07:01:31 GMT  
		Size: 8.2 MB (8168663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c324424f59e99f3685e95e648c108b4279799ba219f168a85679789281e949c6`  
		Last Modified: Tue, 12 Dec 2017 07:01:29 GMT  
		Size: 8.9 MB (8949372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06dfcce0c42e061ae62661bdad37d6c6dbafff85edaffbf3be32614056ba180b`  
		Last Modified: Tue, 12 Dec 2017 07:01:49 GMT  
		Size: 48.4 MB (48354036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35073fd6836d7a88df055e55c163eb977265b5e0ef82bf99be1d6bd9f12ef294`  
		Last Modified: Tue, 12 Dec 2017 07:02:33 GMT  
		Size: 202.4 MB (202434740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
