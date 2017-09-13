## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:3f01d8d9cd676357ae32f8958a785901c844e0466d46a6fd5fbc609585d258f8
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
$ docker pull buildpack-deps@sha256:0ee43df53a55cb3184cfca00122ee87311dfede5f73737eaa5944be57c45072f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.7 MB (488737698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bc098f8b0e16d0f4e7135b8cb904919128b14021ec1b4f32dd2accf0c2ad43`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:31 GMT
ADD file:f119e9d99ea0b9ed669f11a283364c30fb9ee0f82e6f7199c863eccfc3b0b56f in / 
# Wed, 13 Sep 2017 08:40:32 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:30:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1ff97b4f79d288d52633dd13b82a200555b9dcc0cade3b07f5aacb2952076436`  
		Last Modified: Thu, 07 Sep 2017 23:09:50 GMT  
		Size: 47.5 MB (47547481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba0ecc846d815fa8b649ea4e745b36449d524c59ae33bb30851251e64076415`  
		Last Modified: Wed, 13 Sep 2017 12:52:23 GMT  
		Size: 8.5 MB (8549680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663405a29e62408b268a6ad2cb53edc2f8ee27707c47392fde0ab564d6810f52`  
		Last Modified: Wed, 13 Sep 2017 12:52:22 GMT  
		Size: 9.8 MB (9841973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123cfbbbd44215a3ade1798bf713115f46eb4296045b0d6e782396a4d655b2cd`  
		Last Modified: Wed, 13 Sep 2017 12:52:45 GMT  
		Size: 47.6 MB (47602746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcadd1574e32808e2bbcc72bf08366276b1dfe64c598ab9c9207e9f85d7baa37`  
		Last Modified: Wed, 13 Sep 2017 12:54:08 GMT  
		Size: 375.2 MB (375195818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:4545d1b9cac6c48a2f197d7b6e8c012fd0479f5767ce974ea423d4f55a2a7c88
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.9 MB (455886047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcfe0ee088c4ad44a3d05903971dea9488faaa34a41e81da228021e5ef4128d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 19:55:04 GMT
ADD file:5e9a9df494803eb8026e33d7a2e0593aafde1d4dc8809fb4468ccf607b1088e0 in / 
# Fri, 08 Sep 2017 19:55:08 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:07:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:10:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 07:53:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:07:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7f94150c44a4b31e3d2b160185d226ca672a2322a216797125cb15c546d6d29`  
		Last Modified: Fri, 08 Sep 2017 20:09:08 GMT  
		Size: 46.0 MB (46038631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf9390c9078119339ca5bffdb078a11f647551e4a352037c15724a93100511d`  
		Last Modified: Tue, 12 Sep 2017 04:08:25 GMT  
		Size: 7.7 MB (7734388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f99f20c98327ba2c8d468e6668e30fc49780392ce9fe74bd549c65b755b600`  
		Last Modified: Tue, 12 Sep 2017 04:08:24 GMT  
		Size: 9.0 MB (8977937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77f86afaeeea531c9b3d018e0dabfad4b191dbe6cf029edb3ab12aca49c063e`  
		Last Modified: Wed, 13 Sep 2017 08:23:23 GMT  
		Size: 45.5 MB (45507230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a58b8b0fd2c1aa2e934312ce8d6a0f8d547869d74db465230644597eda591`  
		Last Modified: Wed, 13 Sep 2017 08:27:07 GMT  
		Size: 347.6 MB (347627861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:921625c42f0d760e4255974d20a73978afd81ed1ec6f884933800622774d1ccf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.0 MB (452992174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213778a3121c4232095f0a8198fc845b5580b8ba9e211d0fbe6caf06781a8b0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:46:33 GMT
ADD file:dd854e517ffd5071d853179af00d4d5d7f80864145f19056348d25f06d2471cc in / 
# Tue, 25 Jul 2017 12:46:35 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 15:10:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 15:10:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 15:12:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 16:51:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7d1cf0a9436c7df7ccd19a0d2d2b7e43d6182447c0235ef113d496959bed44e6`  
		Last Modified: Tue, 25 Jul 2017 13:03:34 GMT  
		Size: 44.5 MB (44548319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123e52a41e7debafb2f27a81f0c00b9b7204076631af1e87ba34c01e41ef62ff`  
		Last Modified: Tue, 25 Jul 2017 16:16:52 GMT  
		Size: 7.5 MB (7471661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9af9375476f5b61ee393b3f6dc42c1ad45da850c29d945ad8df3cfa71f1e69`  
		Last Modified: Tue, 25 Jul 2017 16:16:51 GMT  
		Size: 4.2 MB (4218602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649f6b7cadd97b1f25c268279845de4092b7ebdfc39e30d281d6f4c4fc864ce7`  
		Last Modified: Tue, 25 Jul 2017 16:17:50 GMT  
		Size: 47.2 MB (47154522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdbfba250d1e6c3b1c28fa2b48055243d94dc95c7381f2553a7a0f41796d841`  
		Last Modified: Tue, 29 Aug 2017 20:32:14 GMT  
		Size: 349.6 MB (349599070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:58faaeaaf1b602a1bc4185c27ddb17ae30f99577a83980cf0d92d060a0049cca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.1 MB (462109569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b6048c16bb3aef51cdb426c01e5d2bed724c66c91332504096e7ef8b518974`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:30 GMT
ADD file:8126b53786c7c984f2d6fa95bbf0edbcf66fff3980eafdb361b03b636de68e97 in / 
# Mon, 24 Jul 2017 17:22:31 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:48:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:50:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:47:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2d437828ae62f7ee88e586a8c47b87f9920fba5b17b97d79fe657de60176e0ab`  
		Last Modified: Mon, 24 Jul 2017 17:25:56 GMT  
		Size: 45.7 MB (45669480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d427dde25c94a7cba74cd96e6692ccf7d5487dd1f41816742ebc831a990ddc24`  
		Last Modified: Mon, 24 Jul 2017 18:26:55 GMT  
		Size: 7.7 MB (7683569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72fa499cf35069302c9e2e2f724faa2fbb641404040d5f801a579340bdbef1`  
		Last Modified: Mon, 24 Jul 2017 18:26:54 GMT  
		Size: 4.4 MB (4394187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe88dfcb7ad1f0a599bdefa0f7aed099d9a7a92dccd6e4f780d7a54738b4830`  
		Last Modified: Mon, 24 Jul 2017 18:27:24 GMT  
		Size: 48.9 MB (48851526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf7c8583e4d2b65963191d89fc3b464099ac50d75598f9a2795911313dde84d`  
		Last Modified: Tue, 29 Aug 2017 20:12:06 GMT  
		Size: 355.5 MB (355510807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3eb1a08c03608bf14421b6266b77208143816e818d50de3aac1c5cc26838112d
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.6 MB (489644658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7291a055b6fdd039abc41df64642b6baa01744b420f6c25c2454c47d1b92bace`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:29 GMT
ADD file:1bb10947ff6a377a9231dad99cbdf86c4854167c7b206dc7082b0cb351ead0cf in / 
# Fri, 08 Sep 2017 13:17:29 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:46:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:46:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:03:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:06:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c471149047c699ffbe5997f86132a3cf8d60a00007b51f0e558e9eb05e66a39`  
		Last Modified: Fri, 08 Sep 2017 13:21:27 GMT  
		Size: 48.3 MB (48345223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c605c9c66becbadb49721125e34b699968505839d063762983f80b8a8e4b11`  
		Last Modified: Sat, 09 Sep 2017 13:54:19 GMT  
		Size: 8.5 MB (8520124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fea39f077350d257bc5818098238485d5c3fcc9f47cf5b0a4928813d2aef4a`  
		Last Modified: Sat, 09 Sep 2017 13:54:18 GMT  
		Size: 9.5 MB (9504298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6e5f63747f7cf5ba2a8c8035dee65a609724a81be666ca4c23a9dfe292600e`  
		Last Modified: Tue, 12 Sep 2017 23:15:46 GMT  
		Size: 49.3 MB (49271037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2d32ad32d3ed82a8621d699c0dd7b632814235351a9a78677f4695bd77c63e`  
		Last Modified: Tue, 12 Sep 2017 23:17:15 GMT  
		Size: 374.0 MB (374003976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0b3f6ccdc52ab0154a78a6b44e3465dfaa695b5243f0b553b43d61f27f4b2f3d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **478.8 MB (478772973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc7ebd9998fdcbf1e5e6ab9b7164256ce36a2f5a78ca8dec447eac14d6e5a06`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:28 GMT
ADD file:78a57e2d49d23bef1ca87e5f111329fbdb73dd44670921a109a6e24bb849d036 in / 
# Tue, 25 Jul 2017 00:31:29 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:55:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:56:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 00:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:51:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:44f09a8e88e89adf472c3bf4bb2f98ca13b294e0aab33ba3065a11fb7967b9e5`  
		Last Modified: Tue, 25 Jul 2017 00:33:47 GMT  
		Size: 48.2 MB (48223641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf846ded16574fda5b68e99784ae9283b18da57056093aca19795168ecc9ec2`  
		Last Modified: Tue, 25 Jul 2017 01:10:40 GMT  
		Size: 7.9 MB (7886094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665db4042e33f88e0bbd83a0503aa6d2ae2154dfb329066da2cd60867259e332`  
		Last Modified: Tue, 25 Jul 2017 01:10:39 GMT  
		Size: 4.6 MB (4599767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4654b8d1f2b74c12c377bb8073252ebe0f30e0e0b43347f8575a79b58bc8d843`  
		Last Modified: Tue, 25 Jul 2017 01:11:06 GMT  
		Size: 51.0 MB (50972917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b476effd29267868cdb9ca962901fb73c5fe641083b4d5d341dc3c3c8efaabc`  
		Last Modified: Tue, 29 Aug 2017 19:34:30 GMT  
		Size: 367.1 MB (367090554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:60bf1c3a8bf0ebe25897ae4e65b2f5b3ee40df92a5cb7bbd0797e7e18982b512
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.7 MB (462672836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757b0d7177800763d44579b796666589e763bf6c1927f50c2d28f36344c75294`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:29 GMT
ADD file:496adb8e56c777807c90b3b5bfd59f5b26aacf99938600fcfab53272adcc57e5 in / 
# Fri, 08 Sep 2017 05:21:29 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:45:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:45:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:37:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:165da74c5cf5b01cb5d7e41dcf3c453625ed23ce0d0138f4da4c05ec869bdfcd`  
		Last Modified: Fri, 08 Sep 2017 05:23:50 GMT  
		Size: 47.3 MB (47346285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2360e883dab2d2920e7a089cb704a8bb3fd60bc3fdf16e56f5ec5ae11252c08b`  
		Last Modified: Fri, 08 Sep 2017 16:40:21 GMT  
		Size: 8.1 MB (8092245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36902e89a3c7660f45e5a3c684ef04a3e2d6def1376e302ab0207bef0625141`  
		Last Modified: Fri, 08 Sep 2017 16:40:24 GMT  
		Size: 9.2 MB (9209320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07e608811a9a6d6b2c66c2821faf2496b0ba44bf459b3af97442518713dd132`  
		Last Modified: Wed, 13 Sep 2017 16:39:48 GMT  
		Size: 47.7 MB (47694306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3124236278f37efc73cc866d0af87947c4e503ae0d01f401be9cd77a475f63b`  
		Last Modified: Wed, 13 Sep 2017 16:40:53 GMT  
		Size: 350.3 MB (350330680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
