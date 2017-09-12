## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:47803cb60a0912fe91ab10b4eb5d0837f3690cf5cec3df4afdd8fcf3d2781d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:536af880c895a91240a770a6090ed2955ce5bc26a705f158cfe4bd358d99edc5
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182344664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d71f509d6ac5c7ac0cfdbaa9fbd826707e1981a5a3332857937d55f567a043`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:32:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:32:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:33:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:34:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9984d33964d5be0a6994369af9b8e3099ef8b1da68a1a5ef6509716353f79`  
		Last Modified: Thu, 07 Sep 2017 23:57:20 GMT  
		Size: 6.9 MB (6949665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a84b444cb453f4d88f25076f8ba7a1773542acb94bb75e545aab62c0b9bc171`  
		Last Modified: Thu, 07 Sep 2017 23:57:42 GMT  
		Size: 37.9 MB (37946126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2947e36f6ad5f9e87de65eabfaac942f5083d727008d68ef5c2876d163d207f7`  
		Last Modified: Fri, 08 Sep 2017 00:01:34 GMT  
		Size: 99.3 MB (99345746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5c725adf9b5c488ddcb854b78a7ed1fccc0d5ce776a72c7bd819fb734f3d9011
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168841510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34851390174ee43985fe61a14381196d230449880adb95d4e3866860cc3a10f0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:07:17 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Fri, 08 Sep 2017 20:07:18 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 03:51:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 03:51:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 03:53:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 04:07:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29e65e191a6c3d91d7ae2bd899e20d1bad6428e467dde869fa02dba34c275b4a`  
		Last Modified: Fri, 08 Sep 2017 20:24:29 GMT  
		Size: 36.9 MB (36945037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79fec58295ab928e8d6c95f4ab2cf3c98d5ee139069db34c75384a74366a75`  
		Last Modified: Tue, 12 Sep 2017 04:25:48 GMT  
		Size: 6.6 MB (6587375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9ee05eb1aad550373a595bce2e732d83378f179abd9b3905db8909f1fc88b`  
		Last Modified: Tue, 12 Sep 2017 04:26:32 GMT  
		Size: 35.9 MB (35888757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e5224bd48d4876bc36dda36bd4da3d83bc332acd2fef5de98c273339d2f7ad`  
		Last Modified: Tue, 12 Sep 2017 04:27:47 GMT  
		Size: 89.4 MB (89420341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b4b5a6692624e3e3d141414816c207b51677188d950c2c7050e58746b28b5c5c
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159972789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd74dd86e8cc7bc9e672f0773f045f45ba931e44881418a4c85bde1de7d74854`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 18:14:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 18:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:22:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931ec72c8732d6f74931a7086e7f2fe329cf03fa2b247dc18bce5b1201fb974a`  
		Last Modified: Fri, 11 Aug 2017 19:00:50 GMT  
		Size: 6.4 MB (6369136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dc780b1b1929fbe9311af58b9a6d3adbc13e7483e223c89b2775e637822f23`  
		Last Modified: Fri, 11 Aug 2017 19:01:26 GMT  
		Size: 34.9 MB (34856775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3817e0159d23a5421f8a013967ad708d48084ba7e723192ca4b3828e5b22caf0`  
		Last Modified: Fri, 11 Aug 2017 19:02:27 GMT  
		Size: 83.1 MB (83090853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5cb0396e84d28b1e402e366d90e2a43e102354e70a5fbabee5655c01c9ae572a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183458263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4792f6304263bfa45af9100b0dc7fe9ff03cb41d18ba0d1e3a62f72a7c6c1a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:52:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:53:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e19235ec8912002a9f320de08671905f5729502dc642eb94047db21c0467e`  
		Last Modified: Sat, 09 Sep 2017 14:08:40 GMT  
		Size: 8.8 MB (8799111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc5b4cb9f9beaf6ce08c9ec324ca4399cec2945bbbf8d613aebda1f0065adc5`  
		Last Modified: Sat, 09 Sep 2017 14:09:05 GMT  
		Size: 37.1 MB (37053834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556aeddf6daf0e9fe9777f08305d99a3cf5569a6351e4627e34048b90d95c70`  
		Last Modified: Sat, 09 Sep 2017 14:10:10 GMT  
		Size: 100.2 MB (100172054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
