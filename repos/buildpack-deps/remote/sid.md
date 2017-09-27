## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:d3ce1b557a6c5de39fc083a175301d4c6bb7f71e4307cb5909237ecb4ca4dd6c
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
$ docker pull buildpack-deps@sha256:d849490489dea4764256df0913be5aa672031ac1281753a39a5581e6abd4a6da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.1 MB (490065601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e25f5bcf1f117f2e32262dd9b4e9a4f726b88ac72100e08518787d86c4c030`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:20 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Wed, 13 Sep 2017 08:41:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:35:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477e069deac996dbb6609e7d33fd195256893b13fbc8d2ca163ef3219075241a`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 8.6 MB (8550082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2369104e1f1899f031560bdc2ba86735241f6295cbd404f4f63ac0ff96fdd43`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 9.8 MB (9842477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f49f83dfe2b0402c8bfe38a8e85880d872f9703f4b774a9b9a2a59f767f1a3c`  
		Last Modified: Wed, 13 Sep 2017 12:55:55 GMT  
		Size: 49.4 MB (49422139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12cc2d838c772fadbfeb0d41e3f6cb1cf7c8bcaf722414c2a0ddd72791691b7`  
		Last Modified: Wed, 13 Sep 2017 12:57:11 GMT  
		Size: 374.5 MB (374497044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d2280cba268e0de55f6c97298c3ac884a493119f2d10a44fa582a3d420e06f06
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.7 MB (456712714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223a3575593ad5d11aeb198f4351ec55d026c12668dc746d85ff0b2eb383c60d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:01:06 GMT
ADD file:fb7d9ba902b3a4eacc8db6bb7743fe86476c3f26a619da43c04ee6ad3d633f68 in / 
# Fri, 08 Sep 2017 20:01:07 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:56:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:58:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 08:11:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:22:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e619709a1c2b4be0af59108dd28272d60df90f82d46263209512724eb3c5ce55`  
		Last Modified: Fri, 08 Sep 2017 20:17:15 GMT  
		Size: 46.2 MB (46232515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7918b0c2db96bff8cd7e0da40810471608f4097ed0695daa796eb6b29b593a`  
		Last Modified: Tue, 12 Sep 2017 04:16:30 GMT  
		Size: 7.7 MB (7734636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5284519d599712da3e4289d1bc2827aed11bdb80ad761900c1634843c69d774`  
		Last Modified: Tue, 12 Sep 2017 04:16:29 GMT  
		Size: 9.6 MB (9574802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebb7fb5ba984f4c9c72a303bdd3752c4b3dea559632b67770659c2ff50b64f0`  
		Last Modified: Wed, 13 Sep 2017 08:28:12 GMT  
		Size: 45.5 MB (45451276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10b8fde2a843f57fb815b04050b0c9dfe66d6a55cc2771db9980063b4080f8e`  
		Last Modified: Wed, 13 Sep 2017 08:31:47 GMT  
		Size: 347.7 MB (347719485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4453ffb21d2743391c7684e2a442b3ce40ec3c12f1239f5e3305b534cba77acd
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302167602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b79aa1211f0dc7b51b52b8c87117a0c2083e4f71e9fbd619a5d48a4dd5298ab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:13:47 GMT
ADD file:ff855341f2178170e860c70b1fd4438ad7df8c19fa9f4cb32b259cbcf6f641fa in / 
# Wed, 27 Sep 2017 04:13:47 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:44:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:243b557ca4232dfba33281e059dc489793fb140673f16a68fb1ec9b67034c773`  
		Last Modified: Wed, 27 Sep 2017 04:19:16 GMT  
		Size: 44.8 MB (44754088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7871f6c42587c891052ac0c5ea649857d2180df74e8ce2a4dee1981126114e6e`  
		Last Modified: Wed, 27 Sep 2017 04:58:40 GMT  
		Size: 7.6 MB (7566063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d96cea1b66be24cd19fd3908ad2a5b8f5d8569a9585bf40ee80434bcf6704`  
		Last Modified: Wed, 27 Sep 2017 04:58:39 GMT  
		Size: 9.4 MB (9352575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27038063d9e3585e0a3d89099efa80ddb8e2a9c3cb729ce9b8b07727ced1b549`  
		Last Modified: Wed, 27 Sep 2017 04:58:59 GMT  
		Size: 45.8 MB (45770910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4d13198e91c0eb568be057a0b540df28a661b3a5b9323e4e67b5770e4ce7d`  
		Last Modified: Wed, 27 Sep 2017 04:59:56 GMT  
		Size: 194.7 MB (194723966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a80e9e2c9c0b4f58b6f40f205576e3fa059e7116d966b78c1d2d46872b48788f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.8 MB (458805468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c04fd77a1d38fda5825cb00e578f5f111b11a497dc9e9549ce33c23ed52d68`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:26:13 GMT
ADD file:07d58ee9d0f6dd60b5363a18ab4766f32f94d4aaed3a1d6d4ff5a2d274f030c2 in / 
# Fri, 08 Sep 2017 17:26:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:43:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 09:41:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 09:49:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:40921cc3e39e34244dca67570f52afe382187c080dd1ffbb5a684332f50dfb0b`  
		Last Modified: Fri, 08 Sep 2017 17:38:43 GMT  
		Size: 45.5 MB (45456006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25753b426e93de8898bc86b845e4a2c54f0e51ff39207233cefcb9698bd8a0`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 7.7 MB (7718568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a516f99a504113fb527ca9ce47078516bce9217fa901fec580920345e89ce`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 9.6 MB (9564313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2133409062eaded5871a9010d756383d18df2f7167b1d99c7efa3b3b4a22742`  
		Last Modified: Thu, 14 Sep 2017 22:03:30 GMT  
		Size: 47.6 MB (47643117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7909cb1cd3c0aa5592eed35e9f948c1d334e439d3f6cc455a9e1620d5a260aa7`  
		Last Modified: Thu, 14 Sep 2017 22:05:39 GMT  
		Size: 348.4 MB (348423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:14490b317a46adcaec17d9302506382de64ec6b7b773daafc420f10f29383048
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.6 MB (491644676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ce5b8c64594ad43adaefb38c720ca449b121ecb06113210ee86556ccbe6f01`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:03 GMT
ADD file:e914d804cd8b6c794db616b0d7ff276be932d6365650fc16027e8f884ff5751a in / 
# Fri, 08 Sep 2017 13:19:03 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:58:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:11:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc453eea7829cd3ac47b9e8510e4c25eef45f737546dec6b7dc2cacc93f2f875`  
		Last Modified: Fri, 08 Sep 2017 13:25:22 GMT  
		Size: 48.5 MB (48547718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11291bdfca353bac8763ab9feed3b42160962468af3c78227e6439d11e9a7277`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 8.5 MB (8520228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d531e5d41a15891ee1491b7823261943ad527fdefe9166c5941f7fd96917c27`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 10.1 MB (10147249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1dfc76b4817c0eab955ff1e26d9b649e9426d3c9a56791c73e2ac77157cecf`  
		Last Modified: Tue, 12 Sep 2017 23:20:55 GMT  
		Size: 51.2 MB (51214389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66c4792a3b5e9d692a2aee7d3babfb2c2103b92856075317439a715e7d0a3b2`  
		Last Modified: Tue, 12 Sep 2017 23:22:07 GMT  
		Size: 373.2 MB (373215092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:75ea3cd3e8c8709440bcf9eb4644a2dd29279e97c1d52e7bab79208b9e9ca2be
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.9 MB (476937049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acc7a5cf1a5d1d28752dff59add506ab97d352e66cc6d3de8420a41d780f9f6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:20 GMT
ADD file:819bded9731f1d65e9cc04b2c7f43a197ec4be8692da4708af0f87e7426351f3 in / 
# Fri, 08 Sep 2017 00:33:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:06:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:22:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2fab6b5610875e8a6c33bc4d56c825f356289185b055082d589665968ef0900c`  
		Last Modified: Fri, 08 Sep 2017 00:38:59 GMT  
		Size: 48.4 MB (48412021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7c2d0fb79a1104e22147e2364a797daa7dd139ad67e5b62e62304653e783a6`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 8.0 MB (7976467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d65a92b732b401ccd8c040a8e7970e1019757e70e1e5ff31fedde7766b8e40`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 10.1 MB (10071564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64052f4bf7d50027dafc55c6b08408ee69ce6c518a24f7ae01bf70c3b8157280`  
		Last Modified: Thu, 14 Sep 2017 22:22:58 GMT  
		Size: 52.0 MB (51982936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0fe193a894fe3e20e260e3e801ca76657920341fda12add2d8ec42496b22f`  
		Last Modified: Thu, 14 Sep 2017 22:24:33 GMT  
		Size: 358.5 MB (358494061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:355e7e6453d9046c785bf4223dc2eff80e35189188b59fa64cf786c0906c8468
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.5 MB (464536527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590697291af6f66cf0c07a853a278d1a5d51d9969131cca826e7b7d137668d0c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:21 GMT
ADD file:21fffbf13a9dfb5037f5c17e01b497b8a6e81448b0258d6d12a130e07a751566 in / 
# Fri, 08 Sep 2017 05:22:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:50:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:39:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1c56ecd59b527c3f7815101ee47b3e1e3bbf73f1ecef57fcb4d9d726a847f94d`  
		Last Modified: Fri, 08 Sep 2017 05:25:49 GMT  
		Size: 47.5 MB (47521100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f321e426dfa3e4af576343844945e27cd24e95d2e83dd7fc364d32e51a80e4c1`  
		Last Modified: Fri, 08 Sep 2017 16:42:40 GMT  
		Size: 8.1 MB (8092551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aefe31130745c9dd202ee0131441ad33e364a0355feff851a41616e91640df`  
		Last Modified: Fri, 08 Sep 2017 16:42:40 GMT  
		Size: 9.8 MB (9810650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7f8982b2bac551baf1926040249281eeed1bc98c1b9269c1ee4feca73cbc3d`  
		Last Modified: Wed, 13 Sep 2017 16:41:14 GMT  
		Size: 49.5 MB (49525089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae339c2619c20e50c4ec8e08b0219b87d31551fa653ff5c66a320a29e3572bd`  
		Last Modified: Wed, 13 Sep 2017 16:42:24 GMT  
		Size: 349.6 MB (349587137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
