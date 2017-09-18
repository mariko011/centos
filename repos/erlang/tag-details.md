<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `erlang`

-	[`erlang:17`](#erlang17)
-	[`erlang:17.5`](#erlang175)
-	[`erlang:17.5.6`](#erlang1756)
-	[`erlang:17.5.6.9`](#erlang17569)
-	[`erlang:17.5.6.9-slim`](#erlang17569-slim)
-	[`erlang:17.5.6-slim`](#erlang1756-slim)
-	[`erlang:17.5-slim`](#erlang175-slim)
-	[`erlang:17-slim`](#erlang17-slim)
-	[`erlang:18`](#erlang18)
-	[`erlang:18.3`](#erlang183)
-	[`erlang:18.3.4`](#erlang1834)
-	[`erlang:18.3.4.5`](#erlang18345)
-	[`erlang:18.3.4.5-slim`](#erlang18345-slim)
-	[`erlang:18.3.4-slim`](#erlang1834-slim)
-	[`erlang:18.3-slim`](#erlang183-slim)
-	[`erlang:18-slim`](#erlang18-slim)
-	[`erlang:19`](#erlang19)
-	[`erlang:19.3`](#erlang193)
-	[`erlang:19.3.6`](#erlang1936)
-	[`erlang:19.3.6.2`](#erlang19362)
-	[`erlang:19.3.6.2-slim`](#erlang19362-slim)
-	[`erlang:19.3.6-slim`](#erlang1936-slim)
-	[`erlang:19.3-slim`](#erlang193-slim)
-	[`erlang:19-slim`](#erlang19-slim)
-	[`erlang:20`](#erlang20)
-	[`erlang:20.0`](#erlang200)
-	[`erlang:20.0.5`](#erlang2005)
-	[`erlang:20.0.5-alpine`](#erlang2005-alpine)
-	[`erlang:20.0.5-slim`](#erlang2005-slim)
-	[`erlang:20.0-alpine`](#erlang200-alpine)
-	[`erlang:20.0-slim`](#erlang200-slim)
-	[`erlang:20-alpine`](#erlang20-alpine)
-	[`erlang:20-slim`](#erlang20-slim)
-	[`erlang:alpine`](#erlangalpine)
-	[`erlang:latest`](#erlanglatest)
-	[`erlang:slim`](#erlangslim)

## `erlang:17`

```console
$ docker pull erlang@sha256:081ddc34bb37c6069707e57fad0987566ad9088edb9bcd43763efceb76665df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17` - linux; amd64

```console
$ docker pull erlang@sha256:037cadaeedf9e96d413c242736ed0a1f4cd37ff084eaee1d17d02bff464740ac
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306737348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d44817650b9c15381177e77bb9ffe4868068ef38784cea5b8913a6404044de2`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:31 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:29:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:29:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e33e3b34204ee4ffd1cc02491dffebbf3b2c3d81238cb3718fc190f85c40f3`  
		Last Modified: Fri, 08 Sep 2017 18:33:04 GMT  
		Size: 57.0 MB (56967166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d382a203af240bcf466fe92e0f9a3e8f58f1d140e79c80d994e52e9624f1e378
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280349213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c6e606c334665bb7a2e137a6301aafe5b294e0c654bd020a9426247bfff868`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:14:48 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:26:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:26:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba00bcd2e9639bbdd5c27744a1de89aefdde8eafcea08daef729beda2b74167`  
		Last Modified: Wed, 06 Sep 2017 22:00:28 GMT  
		Size: 55.0 MB (55037575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; 386

```console
$ docker pull erlang@sha256:6e4490f12b2a9a96c73cc7960ff13fd6758e424e4eb0751adf600b90147c1734
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309514442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8062e9738f43901c61f7dcb3726a7e7ee6652f066a76e024f612095d3daee62d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:07:41 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:46:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:46:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5700b82d870adc4f7ae708ec19a50ee55f4763269920979297f6ee8a599a8b4`  
		Last Modified: Mon, 18 Sep 2017 22:05:43 GMT  
		Size: 56.4 MB (56407943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; ppc64le

```console
$ docker pull erlang@sha256:e090c2fa112d1876ac33a44b41e49f7564f8670064a1bb30b0edbb832a702818
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291726494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479b69dfb8e47d605cd3845b4a8fd10770bcb42ce2a2519843abfcbfbb507095`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:52:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:21:59 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:27:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:27:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726f33c9ae7da3df07be01b27e4e262e58b7a1885f0c0b2fd3879ab1ceb5bab`  
		Last Modified: Tue, 29 Aug 2017 19:35:06 GMT  
		Size: 122.7 MB (122728382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f41e35eab0cc90f1c15cd7060a3f99f9b3594f521051ce57bca36e9a613276`  
		Last Modified: Wed, 06 Sep 2017 21:55:50 GMT  
		Size: 55.3 MB (55253915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17` - linux; s390x

```console
$ docker pull erlang@sha256:6aa1b587790c117c1073708a0233bf9b5d449f35c1ca54ed270411146ca743ea
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287408945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962a31d3e1c0602f6011dfc0101bc29e07eab50ab1f05aba7c05c25bceb6e395`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:06:29 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 19:56:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:56:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99953f4edd2b6d9500d96f553642ffeacde68dcb2d74335c629cb69a7f5320f3`  
		Last Modified: Mon, 18 Sep 2017 20:04:48 GMT  
		Size: 55.9 MB (55866394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5`

```console
$ docker pull erlang@sha256:081ddc34bb37c6069707e57fad0987566ad9088edb9bcd43763efceb76665df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5` - linux; amd64

```console
$ docker pull erlang@sha256:037cadaeedf9e96d413c242736ed0a1f4cd37ff084eaee1d17d02bff464740ac
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306737348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d44817650b9c15381177e77bb9ffe4868068ef38784cea5b8913a6404044de2`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:31 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:29:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:29:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e33e3b34204ee4ffd1cc02491dffebbf3b2c3d81238cb3718fc190f85c40f3`  
		Last Modified: Fri, 08 Sep 2017 18:33:04 GMT  
		Size: 57.0 MB (56967166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d382a203af240bcf466fe92e0f9a3e8f58f1d140e79c80d994e52e9624f1e378
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280349213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c6e606c334665bb7a2e137a6301aafe5b294e0c654bd020a9426247bfff868`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:14:48 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:26:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:26:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba00bcd2e9639bbdd5c27744a1de89aefdde8eafcea08daef729beda2b74167`  
		Last Modified: Wed, 06 Sep 2017 22:00:28 GMT  
		Size: 55.0 MB (55037575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; 386

```console
$ docker pull erlang@sha256:6e4490f12b2a9a96c73cc7960ff13fd6758e424e4eb0751adf600b90147c1734
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309514442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8062e9738f43901c61f7dcb3726a7e7ee6652f066a76e024f612095d3daee62d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:07:41 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:46:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:46:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5700b82d870adc4f7ae708ec19a50ee55f4763269920979297f6ee8a599a8b4`  
		Last Modified: Mon, 18 Sep 2017 22:05:43 GMT  
		Size: 56.4 MB (56407943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; ppc64le

```console
$ docker pull erlang@sha256:e090c2fa112d1876ac33a44b41e49f7564f8670064a1bb30b0edbb832a702818
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291726494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479b69dfb8e47d605cd3845b4a8fd10770bcb42ce2a2519843abfcbfbb507095`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:52:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:21:59 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:27:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:27:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726f33c9ae7da3df07be01b27e4e262e58b7a1885f0c0b2fd3879ab1ceb5bab`  
		Last Modified: Tue, 29 Aug 2017 19:35:06 GMT  
		Size: 122.7 MB (122728382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f41e35eab0cc90f1c15cd7060a3f99f9b3594f521051ce57bca36e9a613276`  
		Last Modified: Wed, 06 Sep 2017 21:55:50 GMT  
		Size: 55.3 MB (55253915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5` - linux; s390x

```console
$ docker pull erlang@sha256:6aa1b587790c117c1073708a0233bf9b5d449f35c1ca54ed270411146ca743ea
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287408945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962a31d3e1c0602f6011dfc0101bc29e07eab50ab1f05aba7c05c25bceb6e395`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:06:29 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 19:56:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:56:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99953f4edd2b6d9500d96f553642ffeacde68dcb2d74335c629cb69a7f5320f3`  
		Last Modified: Mon, 18 Sep 2017 20:04:48 GMT  
		Size: 55.9 MB (55866394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6`

```console
$ docker pull erlang@sha256:081ddc34bb37c6069707e57fad0987566ad9088edb9bcd43763efceb76665df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6` - linux; amd64

```console
$ docker pull erlang@sha256:037cadaeedf9e96d413c242736ed0a1f4cd37ff084eaee1d17d02bff464740ac
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306737348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d44817650b9c15381177e77bb9ffe4868068ef38784cea5b8913a6404044de2`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:31 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:29:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:29:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e33e3b34204ee4ffd1cc02491dffebbf3b2c3d81238cb3718fc190f85c40f3`  
		Last Modified: Fri, 08 Sep 2017 18:33:04 GMT  
		Size: 57.0 MB (56967166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d382a203af240bcf466fe92e0f9a3e8f58f1d140e79c80d994e52e9624f1e378
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280349213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c6e606c334665bb7a2e137a6301aafe5b294e0c654bd020a9426247bfff868`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:14:48 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:26:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:26:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba00bcd2e9639bbdd5c27744a1de89aefdde8eafcea08daef729beda2b74167`  
		Last Modified: Wed, 06 Sep 2017 22:00:28 GMT  
		Size: 55.0 MB (55037575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; 386

```console
$ docker pull erlang@sha256:6e4490f12b2a9a96c73cc7960ff13fd6758e424e4eb0751adf600b90147c1734
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309514442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8062e9738f43901c61f7dcb3726a7e7ee6652f066a76e024f612095d3daee62d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:07:41 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:46:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:46:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5700b82d870adc4f7ae708ec19a50ee55f4763269920979297f6ee8a599a8b4`  
		Last Modified: Mon, 18 Sep 2017 22:05:43 GMT  
		Size: 56.4 MB (56407943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; ppc64le

```console
$ docker pull erlang@sha256:e090c2fa112d1876ac33a44b41e49f7564f8670064a1bb30b0edbb832a702818
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291726494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479b69dfb8e47d605cd3845b4a8fd10770bcb42ce2a2519843abfcbfbb507095`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:52:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:21:59 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:27:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:27:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726f33c9ae7da3df07be01b27e4e262e58b7a1885f0c0b2fd3879ab1ceb5bab`  
		Last Modified: Tue, 29 Aug 2017 19:35:06 GMT  
		Size: 122.7 MB (122728382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f41e35eab0cc90f1c15cd7060a3f99f9b3594f521051ce57bca36e9a613276`  
		Last Modified: Wed, 06 Sep 2017 21:55:50 GMT  
		Size: 55.3 MB (55253915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6` - linux; s390x

```console
$ docker pull erlang@sha256:6aa1b587790c117c1073708a0233bf9b5d449f35c1ca54ed270411146ca743ea
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287408945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962a31d3e1c0602f6011dfc0101bc29e07eab50ab1f05aba7c05c25bceb6e395`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:06:29 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 19:56:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:56:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99953f4edd2b6d9500d96f553642ffeacde68dcb2d74335c629cb69a7f5320f3`  
		Last Modified: Mon, 18 Sep 2017 20:04:48 GMT  
		Size: 55.9 MB (55866394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6.9`

```console
$ docker pull erlang@sha256:081ddc34bb37c6069707e57fad0987566ad9088edb9bcd43763efceb76665df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6.9` - linux; amd64

```console
$ docker pull erlang@sha256:037cadaeedf9e96d413c242736ed0a1f4cd37ff084eaee1d17d02bff464740ac
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306737348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d44817650b9c15381177e77bb9ffe4868068ef38784cea5b8913a6404044de2`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:31 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:29:44 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:29:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e33e3b34204ee4ffd1cc02491dffebbf3b2c3d81238cb3718fc190f85c40f3`  
		Last Modified: Fri, 08 Sep 2017 18:33:04 GMT  
		Size: 57.0 MB (56967166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d382a203af240bcf466fe92e0f9a3e8f58f1d140e79c80d994e52e9624f1e378
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280349213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c6e606c334665bb7a2e137a6301aafe5b294e0c654bd020a9426247bfff868`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:14:48 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:26:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:26:32 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba00bcd2e9639bbdd5c27744a1de89aefdde8eafcea08daef729beda2b74167`  
		Last Modified: Wed, 06 Sep 2017 22:00:28 GMT  
		Size: 55.0 MB (55037575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; 386

```console
$ docker pull erlang@sha256:6e4490f12b2a9a96c73cc7960ff13fd6758e424e4eb0751adf600b90147c1734
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309514442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8062e9738f43901c61f7dcb3726a7e7ee6652f066a76e024f612095d3daee62d`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 16:07:41 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:46:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:46:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5700b82d870adc4f7ae708ec19a50ee55f4763269920979297f6ee8a599a8b4`  
		Last Modified: Mon, 18 Sep 2017 22:05:43 GMT  
		Size: 56.4 MB (56407943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; ppc64le

```console
$ docker pull erlang@sha256:e090c2fa112d1876ac33a44b41e49f7564f8670064a1bb30b0edbb832a702818
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291726494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479b69dfb8e47d605cd3845b4a8fd10770bcb42ce2a2519843abfcbfbb507095`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:52:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:21:59 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 01 Sep 2017 23:27:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:27:05 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726f33c9ae7da3df07be01b27e4e262e58b7a1885f0c0b2fd3879ab1ceb5bab`  
		Last Modified: Tue, 29 Aug 2017 19:35:06 GMT  
		Size: 122.7 MB (122728382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f41e35eab0cc90f1c15cd7060a3f99f9b3594f521051ce57bca36e9a613276`  
		Last Modified: Wed, 06 Sep 2017 21:55:50 GMT  
		Size: 55.3 MB (55253915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9` - linux; s390x

```console
$ docker pull erlang@sha256:6aa1b587790c117c1073708a0233bf9b5d449f35c1ca54ed270411146ca743ea
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287408945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962a31d3e1c0602f6011dfc0101bc29e07eab50ab1f05aba7c05c25bceb6e395`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:06:29 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 19:56:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps='libodbc1' 	&& buildDeps='unixodbc-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:56:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99953f4edd2b6d9500d96f553642ffeacde68dcb2d74335c629cb69a7f5320f3`  
		Last Modified: Mon, 18 Sep 2017 20:04:48 GMT  
		Size: 55.9 MB (55866394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6.9-slim`

```console
$ docker pull erlang@sha256:d457de45aa75af62b2fe89af3ac2edb33c5b3ee21add02b4e3d5351156e66225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6.9-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bcc74a4465198d3f0f4b41811311a3fbe9675541028377ebe22fa77166cc701c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117271073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492bdb475d19b3164b2c91ef2cba04c6d01f0c50a7ce39d9ed16e192fcb048f4`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:29:50 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:36:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:36:01 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d244a2752201273069fe7b5907e5ed15df87bedc8a813e18720a1ba57e7177`  
		Last Modified: Fri, 08 Sep 2017 18:33:56 GMT  
		Size: 64.7 MB (64675526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d0ca970e0fc33c392fea43b52bdaf729c83c17794f18e123b420cdb4519c2a5d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111533896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb448e02f270aef08bbe1095a62a586313f1a1acab4d03a133181b5880f3059`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:18:36 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 20:39:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:39:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9937c064478e1fa4f24f21f49f9c6ee8b916ed752c81b4903464583d0cd1cfa`  
		Last Modified: Fri, 08 Sep 2017 20:44:26 GMT  
		Size: 61.6 MB (61604439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; 386

```console
$ docker pull erlang@sha256:50dd8ee79d5bcb9dc8e02bf8fa7695f617577def26fb7e8face7c3950e1e4e68
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121211902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fdfc185514469d8e51575b1c757773ba0ad131d417e8fa5d3d5ccb3cbaaa58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:42:50 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:58:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:58:30 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b43f283580e259dd783a6c1702bdc7234437791f83214feb5a60933949e42`  
		Last Modified: Mon, 18 Sep 2017 22:06:29 GMT  
		Size: 68.4 MB (68438776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:a4040076055ab257f79fa275ab1f8c717c77883aaad9c0aad91d377809246b85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114439653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45497275a90fc1959b2a09036734f0695197da015c56672de320b66d863694a3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:09:19 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:14:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:14:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9273df4e874b2f581104c3003add3542677ed9eb83f956c3df965766dc4e4f0`  
		Last Modified: Fri, 08 Sep 2017 01:15:50 GMT  
		Size: 62.6 MB (62630083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6.9-slim` - linux; s390x

```console
$ docker pull erlang@sha256:a1160821e38909482a89d2cff85ece6e2b7b17843ce868628f0778a4f11a0fab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115941162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8594d14887266b69113642cabe1d313009b9c5894066f703558e58815e690a80`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:08:49 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 20:01:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:01:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52217e27f3d6df615a8d267f129c21f75d3ebe3a14c2c894f3b6626053156111`  
		Last Modified: Mon, 18 Sep 2017 20:05:15 GMT  
		Size: 63.2 MB (63152360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5.6-slim`

```console
$ docker pull erlang@sha256:d457de45aa75af62b2fe89af3ac2edb33c5b3ee21add02b4e3d5351156e66225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5.6-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bcc74a4465198d3f0f4b41811311a3fbe9675541028377ebe22fa77166cc701c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117271073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492bdb475d19b3164b2c91ef2cba04c6d01f0c50a7ce39d9ed16e192fcb048f4`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:29:50 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:36:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:36:01 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d244a2752201273069fe7b5907e5ed15df87bedc8a813e18720a1ba57e7177`  
		Last Modified: Fri, 08 Sep 2017 18:33:56 GMT  
		Size: 64.7 MB (64675526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d0ca970e0fc33c392fea43b52bdaf729c83c17794f18e123b420cdb4519c2a5d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111533896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb448e02f270aef08bbe1095a62a586313f1a1acab4d03a133181b5880f3059`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:18:36 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 20:39:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:39:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9937c064478e1fa4f24f21f49f9c6ee8b916ed752c81b4903464583d0cd1cfa`  
		Last Modified: Fri, 08 Sep 2017 20:44:26 GMT  
		Size: 61.6 MB (61604439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; 386

```console
$ docker pull erlang@sha256:50dd8ee79d5bcb9dc8e02bf8fa7695f617577def26fb7e8face7c3950e1e4e68
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121211902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fdfc185514469d8e51575b1c757773ba0ad131d417e8fa5d3d5ccb3cbaaa58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:42:50 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:58:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:58:30 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b43f283580e259dd783a6c1702bdc7234437791f83214feb5a60933949e42`  
		Last Modified: Mon, 18 Sep 2017 22:06:29 GMT  
		Size: 68.4 MB (68438776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:a4040076055ab257f79fa275ab1f8c717c77883aaad9c0aad91d377809246b85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114439653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45497275a90fc1959b2a09036734f0695197da015c56672de320b66d863694a3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:09:19 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:14:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:14:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9273df4e874b2f581104c3003add3542677ed9eb83f956c3df965766dc4e4f0`  
		Last Modified: Fri, 08 Sep 2017 01:15:50 GMT  
		Size: 62.6 MB (62630083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5.6-slim` - linux; s390x

```console
$ docker pull erlang@sha256:a1160821e38909482a89d2cff85ece6e2b7b17843ce868628f0778a4f11a0fab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115941162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8594d14887266b69113642cabe1d313009b9c5894066f703558e58815e690a80`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:08:49 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 20:01:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:01:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52217e27f3d6df615a8d267f129c21f75d3ebe3a14c2c894f3b6626053156111`  
		Last Modified: Mon, 18 Sep 2017 20:05:15 GMT  
		Size: 63.2 MB (63152360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17.5-slim`

```console
$ docker pull erlang@sha256:d457de45aa75af62b2fe89af3ac2edb33c5b3ee21add02b4e3d5351156e66225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17.5-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bcc74a4465198d3f0f4b41811311a3fbe9675541028377ebe22fa77166cc701c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117271073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492bdb475d19b3164b2c91ef2cba04c6d01f0c50a7ce39d9ed16e192fcb048f4`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:29:50 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:36:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:36:01 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d244a2752201273069fe7b5907e5ed15df87bedc8a813e18720a1ba57e7177`  
		Last Modified: Fri, 08 Sep 2017 18:33:56 GMT  
		Size: 64.7 MB (64675526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d0ca970e0fc33c392fea43b52bdaf729c83c17794f18e123b420cdb4519c2a5d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111533896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb448e02f270aef08bbe1095a62a586313f1a1acab4d03a133181b5880f3059`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:18:36 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 20:39:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:39:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9937c064478e1fa4f24f21f49f9c6ee8b916ed752c81b4903464583d0cd1cfa`  
		Last Modified: Fri, 08 Sep 2017 20:44:26 GMT  
		Size: 61.6 MB (61604439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; 386

```console
$ docker pull erlang@sha256:50dd8ee79d5bcb9dc8e02bf8fa7695f617577def26fb7e8face7c3950e1e4e68
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121211902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fdfc185514469d8e51575b1c757773ba0ad131d417e8fa5d3d5ccb3cbaaa58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:42:50 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:58:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:58:30 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b43f283580e259dd783a6c1702bdc7234437791f83214feb5a60933949e42`  
		Last Modified: Mon, 18 Sep 2017 22:06:29 GMT  
		Size: 68.4 MB (68438776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:a4040076055ab257f79fa275ab1f8c717c77883aaad9c0aad91d377809246b85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114439653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45497275a90fc1959b2a09036734f0695197da015c56672de320b66d863694a3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:09:19 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:14:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:14:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9273df4e874b2f581104c3003add3542677ed9eb83f956c3df965766dc4e4f0`  
		Last Modified: Fri, 08 Sep 2017 01:15:50 GMT  
		Size: 62.6 MB (62630083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17.5-slim` - linux; s390x

```console
$ docker pull erlang@sha256:a1160821e38909482a89d2cff85ece6e2b7b17843ce868628f0778a4f11a0fab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115941162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8594d14887266b69113642cabe1d313009b9c5894066f703558e58815e690a80`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:08:49 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 20:01:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:01:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52217e27f3d6df615a8d267f129c21f75d3ebe3a14c2c894f3b6626053156111`  
		Last Modified: Mon, 18 Sep 2017 20:05:15 GMT  
		Size: 63.2 MB (63152360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:17-slim`

```console
$ docker pull erlang@sha256:d457de45aa75af62b2fe89af3ac2edb33c5b3ee21add02b4e3d5351156e66225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `erlang:17-slim` - linux; amd64

```console
$ docker pull erlang@sha256:bcc74a4465198d3f0f4b41811311a3fbe9675541028377ebe22fa77166cc701c
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117271073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492bdb475d19b3164b2c91ef2cba04c6d01f0c50a7ce39d9ed16e192fcb048f4`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:29:50 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:36:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:36:01 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d244a2752201273069fe7b5907e5ed15df87bedc8a813e18720a1ba57e7177`  
		Last Modified: Fri, 08 Sep 2017 18:33:56 GMT  
		Size: 64.7 MB (64675526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:d0ca970e0fc33c392fea43b52bdaf729c83c17794f18e123b420cdb4519c2a5d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111533896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb448e02f270aef08bbe1095a62a586313f1a1acab4d03a133181b5880f3059`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 20:18:36 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 20:39:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:39:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9937c064478e1fa4f24f21f49f9c6ee8b916ed752c81b4903464583d0cd1cfa`  
		Last Modified: Fri, 08 Sep 2017 20:44:26 GMT  
		Size: 61.6 MB (61604439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; 386

```console
$ docker pull erlang@sha256:50dd8ee79d5bcb9dc8e02bf8fa7695f617577def26fb7e8face7c3950e1e4e68
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121211902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fdfc185514469d8e51575b1c757773ba0ad131d417e8fa5d3d5ccb3cbaaa58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:42:50 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 21:58:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:58:30 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70b43f283580e259dd783a6c1702bdc7234437791f83214feb5a60933949e42`  
		Last Modified: Mon, 18 Sep 2017 22:06:29 GMT  
		Size: 68.4 MB (68438776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; ppc64le

```console
$ docker pull erlang@sha256:a4040076055ab257f79fa275ab1f8c717c77883aaad9c0aad91d377809246b85
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114439653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45497275a90fc1959b2a09036734f0695197da015c56672de320b66d863694a3`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:09:19 GMT
ENV OTP_VERSION=17.5.6.9
# Fri, 08 Sep 2017 01:14:34 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="387c612d1bc5ffbc68db7d05c3655804b310facc8bad921a3e0f3391970bc522" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:14:34 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9273df4e874b2f581104c3003add3542677ed9eb83f956c3df965766dc4e4f0`  
		Last Modified: Fri, 08 Sep 2017 01:15:50 GMT  
		Size: 62.6 MB (62630083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:17-slim` - linux; s390x

```console
$ docker pull erlang@sha256:a1160821e38909482a89d2cff85ece6e2b7b17843ce868628f0778a4f11a0fab
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115941162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8594d14887266b69113642cabe1d313009b9c5894066f703558e58815e690a80`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:08:49 GMT
ENV OTP_VERSION=17.5.6.9
# Mon, 18 Sep 2017 20:01:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="70d9d0a08969f4c51c78088f8c6b7da22a4806b1fd258a9fff1408f56553f378" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:01:23 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52217e27f3d6df615a8d267f129c21f75d3ebe3a14c2c894f3b6626053156111`  
		Last Modified: Mon, 18 Sep 2017 20:05:15 GMT  
		Size: 63.2 MB (63152360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18`

```console
$ docker pull erlang@sha256:f8d0d99895ca483ec4c9c6fda706edb30c2d8cbe5e0b9b0b14e1d416c552fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18` - linux; amd64

```console
$ docker pull erlang@sha256:a9915e3a79ea3a36d776f6482865fe7939b8d27c70fe71ff31d7d5659cde6745
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310954926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be04430dc4df6365747e250b411bbbbfeedc7f8c27d17b5f5b2cdf4fafeeafe0`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:23 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:10:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:10:25 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 01:10:25 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 01:10:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 01:10:29 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 01:11:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33521cbac0c5c13ec69dadfadbbf01598267e3239225a7551498905ef13d0344`  
		Last Modified: Fri, 08 Sep 2017 18:31:16 GMT  
		Size: 58.4 MB (58401089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f42f4555eca598fd543856c781afdf8605c2049d955f554e47cefa0093e70a`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 200.3 KB (200302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407df45990a59288a0be6c37408f85b0faec5c28a4ab3ad434f8212d9228b794`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 2.6 MB (2583353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:5c7a5f90b82ec89bcc4ae3dd09709d0b520b4dde9e4ce5e514334d7ac79b0110
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284407497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c120c119bd845a5585035592dc3a66839aacaa95e52e75f42832f31ae34f8a54`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:38:04 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 01 Sep 2017 23:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:48:00 GMT
CMD ["erl"]
# Fri, 01 Sep 2017 23:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 01 Sep 2017 23:48:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 01 Sep 2017 23:48:09 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 01 Sep 2017 23:49:11 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0813a61b468d8003ce039d4ba8112afa45e738d68a0e552c1b86b98e5608b45c`  
		Last Modified: Wed, 06 Sep 2017 21:58:48 GMT  
		Size: 56.3 MB (56329886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975fa2e89d3a0ccfdb41d6da5529fc7a4fe26a7c3b7f5f4d40cb3e9ed259a06f`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 200.3 KB (200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb15a6e9e77f3a203c650bac95a5a4885f8d48e457162f6c2c67aab9486119`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 2.6 MB (2565645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; 386

```console
$ docker pull erlang@sha256:70058e6e18ff72da8cec934cae3066e45f9a62f167e6c21cd010a5406805049a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313788491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9a23623e83d9fff1b83edce2abebde30103e225657d6eee4f2dd742520cbca`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:55:36 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:23:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:23:54 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 21:23:55 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 21:23:59 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 21:23:59 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 21:24:34 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472bdc8571f23fad39d4e5fe4d5fef64ded25191f87e9e5541d759e88047660`  
		Last Modified: Mon, 18 Sep 2017 22:04:09 GMT  
		Size: 57.9 MB (57865755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af5e4f5f44f31f27f7fa54fc0db722057919c6c74562356a961790347ba0675`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 200.4 KB (200369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa24d4d7a19cfb163f6d9d8f30c92ce82f4ac78b9a9a40f4878450c35d33697`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 2.6 MB (2615868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18` - linux; s390x

```console
$ docker pull erlang@sha256:96a1d19af06503c005f2574b68b4c9d2778e83d0057b2100743c1a6bce353277
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291594025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a5eeaefad3260761bc069b740deaeb3802f83674f0ebcb72dbc8f278d65659`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:57:39 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:44:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:44:52 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:44:52 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:44:55 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:44:55 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:45:29 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091929fbce4b309513e4dbbdd91fb37bea27115360078b28d914a4452144bb19`  
		Last Modified: Mon, 18 Sep 2017 20:03:57 GMT  
		Size: 57.2 MB (57235612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0254b24d0421c3e51b7f835a00f5dc20cf378d214220e30127e8f09e2d71cb`  
		Last Modified: Mon, 18 Sep 2017 20:03:47 GMT  
		Size: 200.4 KB (200356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e18bcedfe0c85913a5a7f62d125325824781ab233572d72d64dc04a5616b40`  
		Last Modified: Mon, 18 Sep 2017 20:03:46 GMT  
		Size: 2.6 MB (2615506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3`

```console
$ docker pull erlang@sha256:f8d0d99895ca483ec4c9c6fda706edb30c2d8cbe5e0b9b0b14e1d416c552fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3` - linux; amd64

```console
$ docker pull erlang@sha256:a9915e3a79ea3a36d776f6482865fe7939b8d27c70fe71ff31d7d5659cde6745
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310954926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be04430dc4df6365747e250b411bbbbfeedc7f8c27d17b5f5b2cdf4fafeeafe0`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:23 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:10:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:10:25 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 01:10:25 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 01:10:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 01:10:29 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 01:11:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33521cbac0c5c13ec69dadfadbbf01598267e3239225a7551498905ef13d0344`  
		Last Modified: Fri, 08 Sep 2017 18:31:16 GMT  
		Size: 58.4 MB (58401089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f42f4555eca598fd543856c781afdf8605c2049d955f554e47cefa0093e70a`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 200.3 KB (200302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407df45990a59288a0be6c37408f85b0faec5c28a4ab3ad434f8212d9228b794`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 2.6 MB (2583353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:5c7a5f90b82ec89bcc4ae3dd09709d0b520b4dde9e4ce5e514334d7ac79b0110
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284407497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c120c119bd845a5585035592dc3a66839aacaa95e52e75f42832f31ae34f8a54`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:38:04 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 01 Sep 2017 23:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:48:00 GMT
CMD ["erl"]
# Fri, 01 Sep 2017 23:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 01 Sep 2017 23:48:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 01 Sep 2017 23:48:09 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 01 Sep 2017 23:49:11 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0813a61b468d8003ce039d4ba8112afa45e738d68a0e552c1b86b98e5608b45c`  
		Last Modified: Wed, 06 Sep 2017 21:58:48 GMT  
		Size: 56.3 MB (56329886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975fa2e89d3a0ccfdb41d6da5529fc7a4fe26a7c3b7f5f4d40cb3e9ed259a06f`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 200.3 KB (200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb15a6e9e77f3a203c650bac95a5a4885f8d48e457162f6c2c67aab9486119`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 2.6 MB (2565645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; 386

```console
$ docker pull erlang@sha256:70058e6e18ff72da8cec934cae3066e45f9a62f167e6c21cd010a5406805049a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313788491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9a23623e83d9fff1b83edce2abebde30103e225657d6eee4f2dd742520cbca`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:55:36 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:23:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:23:54 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 21:23:55 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 21:23:59 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 21:23:59 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 21:24:34 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472bdc8571f23fad39d4e5fe4d5fef64ded25191f87e9e5541d759e88047660`  
		Last Modified: Mon, 18 Sep 2017 22:04:09 GMT  
		Size: 57.9 MB (57865755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af5e4f5f44f31f27f7fa54fc0db722057919c6c74562356a961790347ba0675`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 200.4 KB (200369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa24d4d7a19cfb163f6d9d8f30c92ce82f4ac78b9a9a40f4878450c35d33697`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 2.6 MB (2615868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3` - linux; s390x

```console
$ docker pull erlang@sha256:96a1d19af06503c005f2574b68b4c9d2778e83d0057b2100743c1a6bce353277
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291594025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a5eeaefad3260761bc069b740deaeb3802f83674f0ebcb72dbc8f278d65659`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:57:39 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:44:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:44:52 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:44:52 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:44:55 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:44:55 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:45:29 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091929fbce4b309513e4dbbdd91fb37bea27115360078b28d914a4452144bb19`  
		Last Modified: Mon, 18 Sep 2017 20:03:57 GMT  
		Size: 57.2 MB (57235612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0254b24d0421c3e51b7f835a00f5dc20cf378d214220e30127e8f09e2d71cb`  
		Last Modified: Mon, 18 Sep 2017 20:03:47 GMT  
		Size: 200.4 KB (200356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e18bcedfe0c85913a5a7f62d125325824781ab233572d72d64dc04a5616b40`  
		Last Modified: Mon, 18 Sep 2017 20:03:46 GMT  
		Size: 2.6 MB (2615506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4`

```console
$ docker pull erlang@sha256:f8d0d99895ca483ec4c9c6fda706edb30c2d8cbe5e0b9b0b14e1d416c552fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4` - linux; amd64

```console
$ docker pull erlang@sha256:a9915e3a79ea3a36d776f6482865fe7939b8d27c70fe71ff31d7d5659cde6745
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310954926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be04430dc4df6365747e250b411bbbbfeedc7f8c27d17b5f5b2cdf4fafeeafe0`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:23 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:10:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:10:25 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 01:10:25 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 01:10:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 01:10:29 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 01:11:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33521cbac0c5c13ec69dadfadbbf01598267e3239225a7551498905ef13d0344`  
		Last Modified: Fri, 08 Sep 2017 18:31:16 GMT  
		Size: 58.4 MB (58401089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f42f4555eca598fd543856c781afdf8605c2049d955f554e47cefa0093e70a`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 200.3 KB (200302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407df45990a59288a0be6c37408f85b0faec5c28a4ab3ad434f8212d9228b794`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 2.6 MB (2583353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:5c7a5f90b82ec89bcc4ae3dd09709d0b520b4dde9e4ce5e514334d7ac79b0110
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284407497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c120c119bd845a5585035592dc3a66839aacaa95e52e75f42832f31ae34f8a54`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:38:04 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 01 Sep 2017 23:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:48:00 GMT
CMD ["erl"]
# Fri, 01 Sep 2017 23:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 01 Sep 2017 23:48:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 01 Sep 2017 23:48:09 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 01 Sep 2017 23:49:11 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0813a61b468d8003ce039d4ba8112afa45e738d68a0e552c1b86b98e5608b45c`  
		Last Modified: Wed, 06 Sep 2017 21:58:48 GMT  
		Size: 56.3 MB (56329886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975fa2e89d3a0ccfdb41d6da5529fc7a4fe26a7c3b7f5f4d40cb3e9ed259a06f`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 200.3 KB (200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb15a6e9e77f3a203c650bac95a5a4885f8d48e457162f6c2c67aab9486119`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 2.6 MB (2565645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; 386

```console
$ docker pull erlang@sha256:70058e6e18ff72da8cec934cae3066e45f9a62f167e6c21cd010a5406805049a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313788491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9a23623e83d9fff1b83edce2abebde30103e225657d6eee4f2dd742520cbca`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:55:36 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:23:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:23:54 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 21:23:55 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 21:23:59 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 21:23:59 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 21:24:34 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472bdc8571f23fad39d4e5fe4d5fef64ded25191f87e9e5541d759e88047660`  
		Last Modified: Mon, 18 Sep 2017 22:04:09 GMT  
		Size: 57.9 MB (57865755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af5e4f5f44f31f27f7fa54fc0db722057919c6c74562356a961790347ba0675`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 200.4 KB (200369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa24d4d7a19cfb163f6d9d8f30c92ce82f4ac78b9a9a40f4878450c35d33697`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 2.6 MB (2615868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4` - linux; s390x

```console
$ docker pull erlang@sha256:96a1d19af06503c005f2574b68b4c9d2778e83d0057b2100743c1a6bce353277
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291594025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a5eeaefad3260761bc069b740deaeb3802f83674f0ebcb72dbc8f278d65659`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:57:39 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:44:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:44:52 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:44:52 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:44:55 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:44:55 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:45:29 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091929fbce4b309513e4dbbdd91fb37bea27115360078b28d914a4452144bb19`  
		Last Modified: Mon, 18 Sep 2017 20:03:57 GMT  
		Size: 57.2 MB (57235612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0254b24d0421c3e51b7f835a00f5dc20cf378d214220e30127e8f09e2d71cb`  
		Last Modified: Mon, 18 Sep 2017 20:03:47 GMT  
		Size: 200.4 KB (200356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e18bcedfe0c85913a5a7f62d125325824781ab233572d72d64dc04a5616b40`  
		Last Modified: Mon, 18 Sep 2017 20:03:46 GMT  
		Size: 2.6 MB (2615506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4.5`

```console
$ docker pull erlang@sha256:f8d0d99895ca483ec4c9c6fda706edb30c2d8cbe5e0b9b0b14e1d416c552fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4.5` - linux; amd64

```console
$ docker pull erlang@sha256:a9915e3a79ea3a36d776f6482865fe7939b8d27c70fe71ff31d7d5659cde6745
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310954926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be04430dc4df6365747e250b411bbbbfeedc7f8c27d17b5f5b2cdf4fafeeafe0`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:23 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:10:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:10:25 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 01:10:25 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 01:10:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 01:10:29 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 01:11:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33521cbac0c5c13ec69dadfadbbf01598267e3239225a7551498905ef13d0344`  
		Last Modified: Fri, 08 Sep 2017 18:31:16 GMT  
		Size: 58.4 MB (58401089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f42f4555eca598fd543856c781afdf8605c2049d955f554e47cefa0093e70a`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 200.3 KB (200302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407df45990a59288a0be6c37408f85b0faec5c28a4ab3ad434f8212d9228b794`  
		Last Modified: Fri, 08 Sep 2017 18:30:59 GMT  
		Size: 2.6 MB (2583353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.5` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:5c7a5f90b82ec89bcc4ae3dd09709d0b520b4dde9e4ce5e514334d7ac79b0110
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284407497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c120c119bd845a5585035592dc3a66839aacaa95e52e75f42832f31ae34f8a54`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:38:04 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 01 Sep 2017 23:47:59 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 01 Sep 2017 23:48:00 GMT
CMD ["erl"]
# Fri, 01 Sep 2017 23:48:01 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 01 Sep 2017 23:48:09 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 01 Sep 2017 23:48:09 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 01 Sep 2017 23:49:11 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0813a61b468d8003ce039d4ba8112afa45e738d68a0e552c1b86b98e5608b45c`  
		Last Modified: Wed, 06 Sep 2017 21:58:48 GMT  
		Size: 56.3 MB (56329886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975fa2e89d3a0ccfdb41d6da5529fc7a4fe26a7c3b7f5f4d40cb3e9ed259a06f`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 200.3 KB (200328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb15a6e9e77f3a203c650bac95a5a4885f8d48e457162f6c2c67aab9486119`  
		Last Modified: Wed, 06 Sep 2017 21:58:31 GMT  
		Size: 2.6 MB (2565645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.5` - linux; 386

```console
$ docker pull erlang@sha256:70058e6e18ff72da8cec934cae3066e45f9a62f167e6c21cd010a5406805049a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313788491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9a23623e83d9fff1b83edce2abebde30103e225657d6eee4f2dd742520cbca`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:55:36 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:23:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:23:54 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 21:23:55 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 21:23:59 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 21:23:59 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 21:24:34 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7472bdc8571f23fad39d4e5fe4d5fef64ded25191f87e9e5541d759e88047660`  
		Last Modified: Mon, 18 Sep 2017 22:04:09 GMT  
		Size: 57.9 MB (57865755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af5e4f5f44f31f27f7fa54fc0db722057919c6c74562356a961790347ba0675`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 200.4 KB (200369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa24d4d7a19cfb163f6d9d8f30c92ce82f4ac78b9a9a40f4878450c35d33697`  
		Last Modified: Mon, 18 Sep 2017 22:03:53 GMT  
		Size: 2.6 MB (2615868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.5` - linux; s390x

```console
$ docker pull erlang@sha256:96a1d19af06503c005f2574b68b4c9d2778e83d0057b2100743c1a6bce353277
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291594025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a5eeaefad3260761bc069b740deaeb3802f83674f0ebcb72dbc8f278d65659`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:57:39 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:44:51 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:44:52 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:44:52 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:44:55 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:44:55 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:45:29 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091929fbce4b309513e4dbbdd91fb37bea27115360078b28d914a4452144bb19`  
		Last Modified: Mon, 18 Sep 2017 20:03:57 GMT  
		Size: 57.2 MB (57235612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0254b24d0421c3e51b7f835a00f5dc20cf378d214220e30127e8f09e2d71cb`  
		Last Modified: Mon, 18 Sep 2017 20:03:47 GMT  
		Size: 200.4 KB (200356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e18bcedfe0c85913a5a7f62d125325824781ab233572d72d64dc04a5616b40`  
		Last Modified: Mon, 18 Sep 2017 20:03:46 GMT  
		Size: 2.6 MB (2615506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4.5-slim`

```console
$ docker pull erlang@sha256:43c5124e2d806a5fd0c9545945184354ba9201575a917caab8803bac858b7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4.5-slim` - linux; amd64

```console
$ docker pull erlang@sha256:ab69ab761a4322cc1806da5adc9f7d70d96e6860408a827b05508fa61eba7c4a
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118718215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc221a785c389f0fa152dba06bdc0bcfaec48fdd90aa5cf12118da8cb4265422`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:11:18 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:20:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cdb0c1ef093594906014d486711e3925cd47268c6c67b739f75fb8ef17c958`  
		Last Modified: Fri, 08 Sep 2017 18:32:13 GMT  
		Size: 66.1 MB (66122668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.5-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ada366f4e89a016110e309aeb287ac728affb3808cc9b5d0c465aa37cb1531df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112822000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadaa4bfe704d77e12341c05ca70f37d2aa9a69d2acc3f804f9741a5dda51c09`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:59:54 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 20:18:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:18:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f26b483013f3c7d55874659637cda72597a5f3387ee26bc7641667145a5f686`  
		Last Modified: Fri, 08 Sep 2017 20:43:26 GMT  
		Size: 62.9 MB (62892543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.5-slim` - linux; 386

```console
$ docker pull erlang@sha256:311bcbf9c21ff7388c2cbf51517e39884f79dad58290f5aec4782583542674dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122658082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fb2fa675195c074bd11fdb7e4b529e468cb79d3c61fcb35573d9578b6f3ba2`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:36:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:36:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fbf92637b8ca60f6dbda98dcadb4135140ce2fd10da8319c13171dce692ce3`  
		Last Modified: Mon, 18 Sep 2017 22:04:56 GMT  
		Size: 69.9 MB (69884956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4.5-slim` - linux; s390x

```console
$ docker pull erlang@sha256:d19d4dde583f7b546cc20d27a3486a9ac84337cbe7ad681991af0788d0878162
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b08a4f66fb4e6df85f318a9a5ddcaf60e2893d4b1983fff8b159ac200d6f56`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:03:05 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:51:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:51:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3ad92b2feac5ba6236ad22b5e623afb0ccf62a751620e5fcf370a440efc62`  
		Last Modified: Mon, 18 Sep 2017 20:04:25 GMT  
		Size: 64.5 MB (64518450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3.4-slim`

```console
$ docker pull erlang@sha256:43c5124e2d806a5fd0c9545945184354ba9201575a917caab8803bac858b7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3.4-slim` - linux; amd64

```console
$ docker pull erlang@sha256:ab69ab761a4322cc1806da5adc9f7d70d96e6860408a827b05508fa61eba7c4a
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118718215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc221a785c389f0fa152dba06bdc0bcfaec48fdd90aa5cf12118da8cb4265422`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:11:18 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:20:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cdb0c1ef093594906014d486711e3925cd47268c6c67b739f75fb8ef17c958`  
		Last Modified: Fri, 08 Sep 2017 18:32:13 GMT  
		Size: 66.1 MB (66122668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ada366f4e89a016110e309aeb287ac728affb3808cc9b5d0c465aa37cb1531df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112822000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadaa4bfe704d77e12341c05ca70f37d2aa9a69d2acc3f804f9741a5dda51c09`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:59:54 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 20:18:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:18:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f26b483013f3c7d55874659637cda72597a5f3387ee26bc7641667145a5f686`  
		Last Modified: Fri, 08 Sep 2017 20:43:26 GMT  
		Size: 62.9 MB (62892543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; 386

```console
$ docker pull erlang@sha256:311bcbf9c21ff7388c2cbf51517e39884f79dad58290f5aec4782583542674dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122658082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fb2fa675195c074bd11fdb7e4b529e468cb79d3c61fcb35573d9578b6f3ba2`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:36:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:36:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fbf92637b8ca60f6dbda98dcadb4135140ce2fd10da8319c13171dce692ce3`  
		Last Modified: Mon, 18 Sep 2017 22:04:56 GMT  
		Size: 69.9 MB (69884956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3.4-slim` - linux; s390x

```console
$ docker pull erlang@sha256:d19d4dde583f7b546cc20d27a3486a9ac84337cbe7ad681991af0788d0878162
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b08a4f66fb4e6df85f318a9a5ddcaf60e2893d4b1983fff8b159ac200d6f56`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:03:05 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:51:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:51:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3ad92b2feac5ba6236ad22b5e623afb0ccf62a751620e5fcf370a440efc62`  
		Last Modified: Mon, 18 Sep 2017 20:04:25 GMT  
		Size: 64.5 MB (64518450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18.3-slim`

```console
$ docker pull erlang@sha256:43c5124e2d806a5fd0c9545945184354ba9201575a917caab8803bac858b7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18.3-slim` - linux; amd64

```console
$ docker pull erlang@sha256:ab69ab761a4322cc1806da5adc9f7d70d96e6860408a827b05508fa61eba7c4a
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118718215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc221a785c389f0fa152dba06bdc0bcfaec48fdd90aa5cf12118da8cb4265422`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:11:18 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:20:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cdb0c1ef093594906014d486711e3925cd47268c6c67b739f75fb8ef17c958`  
		Last Modified: Fri, 08 Sep 2017 18:32:13 GMT  
		Size: 66.1 MB (66122668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ada366f4e89a016110e309aeb287ac728affb3808cc9b5d0c465aa37cb1531df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112822000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadaa4bfe704d77e12341c05ca70f37d2aa9a69d2acc3f804f9741a5dda51c09`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:59:54 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 20:18:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:18:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f26b483013f3c7d55874659637cda72597a5f3387ee26bc7641667145a5f686`  
		Last Modified: Fri, 08 Sep 2017 20:43:26 GMT  
		Size: 62.9 MB (62892543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; 386

```console
$ docker pull erlang@sha256:311bcbf9c21ff7388c2cbf51517e39884f79dad58290f5aec4782583542674dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122658082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fb2fa675195c074bd11fdb7e4b529e468cb79d3c61fcb35573d9578b6f3ba2`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:36:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:36:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fbf92637b8ca60f6dbda98dcadb4135140ce2fd10da8319c13171dce692ce3`  
		Last Modified: Mon, 18 Sep 2017 22:04:56 GMT  
		Size: 69.9 MB (69884956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18.3-slim` - linux; s390x

```console
$ docker pull erlang@sha256:d19d4dde583f7b546cc20d27a3486a9ac84337cbe7ad681991af0788d0878162
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b08a4f66fb4e6df85f318a9a5ddcaf60e2893d4b1983fff8b159ac200d6f56`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:03:05 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:51:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:51:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3ad92b2feac5ba6236ad22b5e623afb0ccf62a751620e5fcf370a440efc62`  
		Last Modified: Mon, 18 Sep 2017 20:04:25 GMT  
		Size: 64.5 MB (64518450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:18-slim`

```console
$ docker pull erlang@sha256:43c5124e2d806a5fd0c9545945184354ba9201575a917caab8803bac858b7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:18-slim` - linux; amd64

```console
$ docker pull erlang@sha256:ab69ab761a4322cc1806da5adc9f7d70d96e6860408a827b05508fa61eba7c4a
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118718215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc221a785c389f0fa152dba06bdc0bcfaec48fdd90aa5cf12118da8cb4265422`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:11:18 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 01:20:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:22:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cdb0c1ef093594906014d486711e3925cd47268c6c67b739f75fb8ef17c958`  
		Last Modified: Fri, 08 Sep 2017 18:32:13 GMT  
		Size: 66.1 MB (66122668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:ada366f4e89a016110e309aeb287ac728affb3808cc9b5d0c465aa37cb1531df
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112822000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadaa4bfe704d77e12341c05ca70f37d2aa9a69d2acc3f804f9741a5dda51c09`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:59:54 GMT
ENV OTP_VERSION=18.3.4.5
# Fri, 08 Sep 2017 20:18:24 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 20:18:25 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f26b483013f3c7d55874659637cda72597a5f3387ee26bc7641667145a5f686`  
		Last Modified: Fri, 08 Sep 2017 20:43:26 GMT  
		Size: 62.9 MB (62892543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; 386

```console
$ docker pull erlang@sha256:311bcbf9c21ff7388c2cbf51517e39884f79dad58290f5aec4782583542674dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122658082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7fb2fa675195c074bd11fdb7e4b529e468cb79d3c61fcb35573d9578b6f3ba2`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:30:01 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 21:36:47 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:36:47 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fbf92637b8ca60f6dbda98dcadb4135140ce2fd10da8319c13171dce692ce3`  
		Last Modified: Mon, 18 Sep 2017 22:04:56 GMT  
		Size: 69.9 MB (69884956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:18-slim` - linux; s390x

```console
$ docker pull erlang@sha256:d19d4dde583f7b546cc20d27a3486a9ac84337cbe7ad681991af0788d0878162
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b08a4f66fb4e6df85f318a9a5ddcaf60e2893d4b1983fff8b159ac200d6f56`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:03:05 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 18 Sep 2017 19:51:27 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="c51d12ad885418c22027e1b85264b4b6678f236f032e0f76f526ead984807a57" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:51:28 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de3ad92b2feac5ba6236ad22b5e623afb0ccf62a751620e5fcf370a440efc62`  
		Last Modified: Mon, 18 Sep 2017 20:04:25 GMT  
		Size: 64.5 MB (64518450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19`

```console
$ docker pull erlang@sha256:c90d84c167980b693253c0925d0b66764f58f6cddf8e68dffaced2df9d4acc6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19` - linux; amd64

```console
$ docker pull erlang@sha256:5f36ad793b1648140d9211f861648f85e120af0d93b4f603e6e43592d7e3ee2b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334813751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3861ecbcb1ca32de56c19e6c610f5aeb2267d8561da7c8a156b36914eeda10e7`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:34:47 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 00:47:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:47:38 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 00:47:38 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 00:47:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 00:47:43 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 00:48:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d57221547958c065f4c04f1c19f230583ead7b4adeff2630c02f8746f278d1c`  
		Last Modified: Fri, 08 Sep 2017 18:29:12 GMT  
		Size: 82.3 MB (82264390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ed4065121da274036c45372deba88206393d268a8569f44a2d1cea03b55711`  
		Last Modified: Fri, 08 Sep 2017 18:28:50 GMT  
		Size: 199.2 KB (199161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0564b358bbaa5a28f4f8b56a786a4b6ee86da07f54058a51d72cecd133bce`  
		Last Modified: Fri, 08 Sep 2017 18:28:53 GMT  
		Size: 2.6 MB (2580018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:30cd52948e60b0af48965e5ca0973ac1bc22cb97db6430b3685b758f81f82759
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307665897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc4c096f79e7d9d80ff8507997de8baf394410f8602cdf467b92f28ad03e28`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:00:27 GMT
ENV OTP_VERSION=19.3.6.2
# Sat, 02 Sep 2017 00:15:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:15:08 GMT
CMD ["erl"]
# Sat, 02 Sep 2017 00:15:08 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 02 Sep 2017 00:15:14 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 02 Sep 2017 00:15:15 GMT
ENV REBAR3_VERSION=3.4.3
# Sat, 02 Sep 2017 00:16:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e80a8407a93a8db7b94c2161c4eae1cf8e1dfcb19ed1455d59a610ca0bf84a`  
		Last Modified: Wed, 06 Sep 2017 21:56:59 GMT  
		Size: 79.6 MB (79592468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a48e8a89698304f5355c3b1448fd3681c1bfdc03282952f06e7dd9994262bb`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 199.2 KB (199160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16a5ce20fd6e429acfd3d23cbc73bd81804d7a748d0d6a7ae77eea9e31996b4`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 2.6 MB (2562631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19` - linux; 386

```console
$ docker pull erlang@sha256:d973caf1545aeaea881b409d37ddeddc4bb0c8a65732207e33dafc49b28336db
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337917145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9220426fd3612823266bc10fc39de9a0583f538bdcf826f89d102b1754a9c73`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:39:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 20:57:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:58:59 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:58:59 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:59:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:59:04 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:59:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c25f095973433897a8a0128bd55f5a1a18fcae722d99fdb981936ca071a7b`  
		Last Modified: Mon, 18 Sep 2017 22:02:31 GMT  
		Size: 82.0 MB (81999054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be2bc09b839e6ad2148c414c0f59ddca861b9a7d5c2d5182fc13d8123a8d84a`  
		Last Modified: Mon, 18 Sep 2017 22:02:10 GMT  
		Size: 199.2 KB (199171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c14236b69337ddb6e53ea5bf4d00b0d91a0e90c8abacad17a7a4fc0033bead`  
		Last Modified: Mon, 18 Sep 2017 22:02:11 GMT  
		Size: 2.6 MB (2612421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19` - linux; s390x

```console
$ docker pull erlang@sha256:f3a15b57f3aecf0888c159c1848ca13029cd05f1ec412f87fd41886f9b6d8b34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316063309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3f21580aff3c51e0e6b19344205024af034922fa8ed881434f8291704d7425`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:47:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:25:09 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:25:09 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:25:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:25:17 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:25:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750ee6536ad9401c6ad2383fe05d0982d2d4f709663caa07fe642ff7e104240f`  
		Last Modified: Mon, 18 Sep 2017 20:03:01 GMT  
		Size: 81.7 MB (81709325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28618954dd0c8b78dd36fd50283516904cedef9e29279374aeb2fd7eafac7b86`  
		Last Modified: Mon, 18 Sep 2017 20:02:46 GMT  
		Size: 199.2 KB (199183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66867dc59ab5a726312bcf8a050cb5eda16d3425d48c14b7c68dd0a428d4cf10`  
		Last Modified: Mon, 18 Sep 2017 20:02:47 GMT  
		Size: 2.6 MB (2612250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3`

```console
$ docker pull erlang@sha256:c90d84c167980b693253c0925d0b66764f58f6cddf8e68dffaced2df9d4acc6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19.3` - linux; amd64

```console
$ docker pull erlang@sha256:5f36ad793b1648140d9211f861648f85e120af0d93b4f603e6e43592d7e3ee2b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334813751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3861ecbcb1ca32de56c19e6c610f5aeb2267d8561da7c8a156b36914eeda10e7`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:34:47 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 00:47:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:47:38 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 00:47:38 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 00:47:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 00:47:43 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 00:48:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d57221547958c065f4c04f1c19f230583ead7b4adeff2630c02f8746f278d1c`  
		Last Modified: Fri, 08 Sep 2017 18:29:12 GMT  
		Size: 82.3 MB (82264390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ed4065121da274036c45372deba88206393d268a8569f44a2d1cea03b55711`  
		Last Modified: Fri, 08 Sep 2017 18:28:50 GMT  
		Size: 199.2 KB (199161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0564b358bbaa5a28f4f8b56a786a4b6ee86da07f54058a51d72cecd133bce`  
		Last Modified: Fri, 08 Sep 2017 18:28:53 GMT  
		Size: 2.6 MB (2580018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:30cd52948e60b0af48965e5ca0973ac1bc22cb97db6430b3685b758f81f82759
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307665897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc4c096f79e7d9d80ff8507997de8baf394410f8602cdf467b92f28ad03e28`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:00:27 GMT
ENV OTP_VERSION=19.3.6.2
# Sat, 02 Sep 2017 00:15:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:15:08 GMT
CMD ["erl"]
# Sat, 02 Sep 2017 00:15:08 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 02 Sep 2017 00:15:14 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 02 Sep 2017 00:15:15 GMT
ENV REBAR3_VERSION=3.4.3
# Sat, 02 Sep 2017 00:16:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e80a8407a93a8db7b94c2161c4eae1cf8e1dfcb19ed1455d59a610ca0bf84a`  
		Last Modified: Wed, 06 Sep 2017 21:56:59 GMT  
		Size: 79.6 MB (79592468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a48e8a89698304f5355c3b1448fd3681c1bfdc03282952f06e7dd9994262bb`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 199.2 KB (199160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16a5ce20fd6e429acfd3d23cbc73bd81804d7a748d0d6a7ae77eea9e31996b4`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 2.6 MB (2562631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3` - linux; 386

```console
$ docker pull erlang@sha256:d973caf1545aeaea881b409d37ddeddc4bb0c8a65732207e33dafc49b28336db
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337917145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9220426fd3612823266bc10fc39de9a0583f538bdcf826f89d102b1754a9c73`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:39:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 20:57:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:58:59 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:58:59 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:59:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:59:04 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:59:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c25f095973433897a8a0128bd55f5a1a18fcae722d99fdb981936ca071a7b`  
		Last Modified: Mon, 18 Sep 2017 22:02:31 GMT  
		Size: 82.0 MB (81999054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be2bc09b839e6ad2148c414c0f59ddca861b9a7d5c2d5182fc13d8123a8d84a`  
		Last Modified: Mon, 18 Sep 2017 22:02:10 GMT  
		Size: 199.2 KB (199171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c14236b69337ddb6e53ea5bf4d00b0d91a0e90c8abacad17a7a4fc0033bead`  
		Last Modified: Mon, 18 Sep 2017 22:02:11 GMT  
		Size: 2.6 MB (2612421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3` - linux; s390x

```console
$ docker pull erlang@sha256:f3a15b57f3aecf0888c159c1848ca13029cd05f1ec412f87fd41886f9b6d8b34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316063309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3f21580aff3c51e0e6b19344205024af034922fa8ed881434f8291704d7425`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:47:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:25:09 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:25:09 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:25:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:25:17 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:25:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750ee6536ad9401c6ad2383fe05d0982d2d4f709663caa07fe642ff7e104240f`  
		Last Modified: Mon, 18 Sep 2017 20:03:01 GMT  
		Size: 81.7 MB (81709325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28618954dd0c8b78dd36fd50283516904cedef9e29279374aeb2fd7eafac7b86`  
		Last Modified: Mon, 18 Sep 2017 20:02:46 GMT  
		Size: 199.2 KB (199183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66867dc59ab5a726312bcf8a050cb5eda16d3425d48c14b7c68dd0a428d4cf10`  
		Last Modified: Mon, 18 Sep 2017 20:02:47 GMT  
		Size: 2.6 MB (2612250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6`

```console
$ docker pull erlang@sha256:c90d84c167980b693253c0925d0b66764f58f6cddf8e68dffaced2df9d4acc6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19.3.6` - linux; amd64

```console
$ docker pull erlang@sha256:5f36ad793b1648140d9211f861648f85e120af0d93b4f603e6e43592d7e3ee2b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334813751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3861ecbcb1ca32de56c19e6c610f5aeb2267d8561da7c8a156b36914eeda10e7`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:34:47 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 00:47:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:47:38 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 00:47:38 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 00:47:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 00:47:43 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 00:48:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d57221547958c065f4c04f1c19f230583ead7b4adeff2630c02f8746f278d1c`  
		Last Modified: Fri, 08 Sep 2017 18:29:12 GMT  
		Size: 82.3 MB (82264390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ed4065121da274036c45372deba88206393d268a8569f44a2d1cea03b55711`  
		Last Modified: Fri, 08 Sep 2017 18:28:50 GMT  
		Size: 199.2 KB (199161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0564b358bbaa5a28f4f8b56a786a4b6ee86da07f54058a51d72cecd133bce`  
		Last Modified: Fri, 08 Sep 2017 18:28:53 GMT  
		Size: 2.6 MB (2580018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:30cd52948e60b0af48965e5ca0973ac1bc22cb97db6430b3685b758f81f82759
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307665897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc4c096f79e7d9d80ff8507997de8baf394410f8602cdf467b92f28ad03e28`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:00:27 GMT
ENV OTP_VERSION=19.3.6.2
# Sat, 02 Sep 2017 00:15:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:15:08 GMT
CMD ["erl"]
# Sat, 02 Sep 2017 00:15:08 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 02 Sep 2017 00:15:14 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 02 Sep 2017 00:15:15 GMT
ENV REBAR3_VERSION=3.4.3
# Sat, 02 Sep 2017 00:16:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e80a8407a93a8db7b94c2161c4eae1cf8e1dfcb19ed1455d59a610ca0bf84a`  
		Last Modified: Wed, 06 Sep 2017 21:56:59 GMT  
		Size: 79.6 MB (79592468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a48e8a89698304f5355c3b1448fd3681c1bfdc03282952f06e7dd9994262bb`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 199.2 KB (199160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16a5ce20fd6e429acfd3d23cbc73bd81804d7a748d0d6a7ae77eea9e31996b4`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 2.6 MB (2562631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6` - linux; 386

```console
$ docker pull erlang@sha256:d973caf1545aeaea881b409d37ddeddc4bb0c8a65732207e33dafc49b28336db
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337917145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9220426fd3612823266bc10fc39de9a0583f538bdcf826f89d102b1754a9c73`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:39:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 20:57:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:58:59 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:58:59 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:59:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:59:04 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:59:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c25f095973433897a8a0128bd55f5a1a18fcae722d99fdb981936ca071a7b`  
		Last Modified: Mon, 18 Sep 2017 22:02:31 GMT  
		Size: 82.0 MB (81999054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be2bc09b839e6ad2148c414c0f59ddca861b9a7d5c2d5182fc13d8123a8d84a`  
		Last Modified: Mon, 18 Sep 2017 22:02:10 GMT  
		Size: 199.2 KB (199171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c14236b69337ddb6e53ea5bf4d00b0d91a0e90c8abacad17a7a4fc0033bead`  
		Last Modified: Mon, 18 Sep 2017 22:02:11 GMT  
		Size: 2.6 MB (2612421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6` - linux; s390x

```console
$ docker pull erlang@sha256:f3a15b57f3aecf0888c159c1848ca13029cd05f1ec412f87fd41886f9b6d8b34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316063309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3f21580aff3c51e0e6b19344205024af034922fa8ed881434f8291704d7425`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:47:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:25:09 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:25:09 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:25:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:25:17 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:25:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750ee6536ad9401c6ad2383fe05d0982d2d4f709663caa07fe642ff7e104240f`  
		Last Modified: Mon, 18 Sep 2017 20:03:01 GMT  
		Size: 81.7 MB (81709325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28618954dd0c8b78dd36fd50283516904cedef9e29279374aeb2fd7eafac7b86`  
		Last Modified: Mon, 18 Sep 2017 20:02:46 GMT  
		Size: 199.2 KB (199183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66867dc59ab5a726312bcf8a050cb5eda16d3425d48c14b7c68dd0a428d4cf10`  
		Last Modified: Mon, 18 Sep 2017 20:02:47 GMT  
		Size: 2.6 MB (2612250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6.2`

```console
$ docker pull erlang@sha256:c90d84c167980b693253c0925d0b66764f58f6cddf8e68dffaced2df9d4acc6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19.3.6.2` - linux; amd64

```console
$ docker pull erlang@sha256:5f36ad793b1648140d9211f861648f85e120af0d93b4f603e6e43592d7e3ee2b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334813751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3861ecbcb1ca32de56c19e6c610f5aeb2267d8561da7c8a156b36914eeda10e7`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:34:47 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 00:47:37 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 00:47:38 GMT
CMD ["erl"]
# Fri, 08 Sep 2017 00:47:38 GMT
ENV REBAR_VERSION=2.6.4
# Fri, 08 Sep 2017 00:47:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Fri, 08 Sep 2017 00:47:43 GMT
ENV REBAR3_VERSION=3.4.3
# Fri, 08 Sep 2017 00:48:09 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d57221547958c065f4c04f1c19f230583ead7b4adeff2630c02f8746f278d1c`  
		Last Modified: Fri, 08 Sep 2017 18:29:12 GMT  
		Size: 82.3 MB (82264390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ed4065121da274036c45372deba88206393d268a8569f44a2d1cea03b55711`  
		Last Modified: Fri, 08 Sep 2017 18:28:50 GMT  
		Size: 199.2 KB (199161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0564b358bbaa5a28f4f8b56a786a4b6ee86da07f54058a51d72cecd133bce`  
		Last Modified: Fri, 08 Sep 2017 18:28:53 GMT  
		Size: 2.6 MB (2580018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.2` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:30cd52948e60b0af48965e5ca0973ac1bc22cb97db6430b3685b758f81f82759
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307665897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cc4c096f79e7d9d80ff8507997de8baf394410f8602cdf467b92f28ad03e28`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:00:27 GMT
ENV OTP_VERSION=19.3.6.2
# Sat, 02 Sep 2017 00:15:07 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Sat, 02 Sep 2017 00:15:08 GMT
CMD ["erl"]
# Sat, 02 Sep 2017 00:15:08 GMT
ENV REBAR_VERSION=2.6.4
# Sat, 02 Sep 2017 00:15:14 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Sat, 02 Sep 2017 00:15:15 GMT
ENV REBAR3_VERSION=3.4.3
# Sat, 02 Sep 2017 00:16:06 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="6194b738fb8a4a1bef6619220ca8acf4ed826d2febfe39c62ebd0ed6fb7d05a8" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e80a8407a93a8db7b94c2161c4eae1cf8e1dfcb19ed1455d59a610ca0bf84a`  
		Last Modified: Wed, 06 Sep 2017 21:56:59 GMT  
		Size: 79.6 MB (79592468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a48e8a89698304f5355c3b1448fd3681c1bfdc03282952f06e7dd9994262bb`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 199.2 KB (199160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16a5ce20fd6e429acfd3d23cbc73bd81804d7a748d0d6a7ae77eea9e31996b4`  
		Last Modified: Wed, 06 Sep 2017 21:56:34 GMT  
		Size: 2.6 MB (2562631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.2` - linux; 386

```console
$ docker pull erlang@sha256:d973caf1545aeaea881b409d37ddeddc4bb0c8a65732207e33dafc49b28336db
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337917145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9220426fd3612823266bc10fc39de9a0583f538bdcf826f89d102b1754a9c73`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:39:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 20:57:22 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:58:59 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:58:59 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:59:04 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:59:04 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:59:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c25f095973433897a8a0128bd55f5a1a18fcae722d99fdb981936ca071a7b`  
		Last Modified: Mon, 18 Sep 2017 22:02:31 GMT  
		Size: 82.0 MB (81999054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be2bc09b839e6ad2148c414c0f59ddca861b9a7d5c2d5182fc13d8123a8d84a`  
		Last Modified: Mon, 18 Sep 2017 22:02:10 GMT  
		Size: 199.2 KB (199171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c14236b69337ddb6e53ea5bf4d00b0d91a0e90c8abacad17a7a4fc0033bead`  
		Last Modified: Mon, 18 Sep 2017 22:02:11 GMT  
		Size: 2.6 MB (2612421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.2` - linux; s390x

```console
$ docker pull erlang@sha256:f3a15b57f3aecf0888c159c1848ca13029cd05f1ec412f87fd41886f9b6d8b34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.1 MB (316063309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3f21580aff3c51e0e6b19344205024af034922fa8ed881434f8291704d7425`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:47:14 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:25:09 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:25:09 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:25:09 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:25:17 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:25:17 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:25:49 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750ee6536ad9401c6ad2383fe05d0982d2d4f709663caa07fe642ff7e104240f`  
		Last Modified: Mon, 18 Sep 2017 20:03:01 GMT  
		Size: 81.7 MB (81709325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28618954dd0c8b78dd36fd50283516904cedef9e29279374aeb2fd7eafac7b86`  
		Last Modified: Mon, 18 Sep 2017 20:02:46 GMT  
		Size: 199.2 KB (199183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66867dc59ab5a726312bcf8a050cb5eda16d3425d48c14b7c68dd0a428d4cf10`  
		Last Modified: Mon, 18 Sep 2017 20:02:47 GMT  
		Size: 2.6 MB (2612250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6.2-slim`

```console
$ docker pull erlang@sha256:90c3dd998ebd1e096b61e963f025f46df799631c091a1c4f9271514676d30e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19.3.6.2-slim` - linux; amd64

```console
$ docker pull erlang@sha256:12acc2a351c558ba50beb8e9772faad404c4689713c22fffdb84c985cdb783bc
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155509223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3652cb3ecf8c048e62375754f8bd9e945477a54e2a939d37eb26d8ab3dcb192`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:48:15 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 01:00:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2204845b73a2afb39b05d0a4629d3315d42562bc54031918fbb9a3c9f1309bf7`  
		Last Modified: Fri, 08 Sep 2017 18:30:22 GMT  
		Size: 102.9 MB (102913676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.2-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:6b55f53172341892f88f7b5d842702724112fd37765505a0c1d37ad5a6b32e79
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148158569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f268437fc98bb528106d4e7ea38e72a00bb1e7662d04788f8df75cdf719ef50`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:33:25 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 19:59:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:59:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871067832ec1d65055d396361db3b06cb472805ba5385a84e238eb82d3671fde`  
		Last Modified: Fri, 08 Sep 2017 20:42:01 GMT  
		Size: 98.2 MB (98229112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.2-slim` - linux; 386

```console
$ docker pull erlang@sha256:f9df2746f60a162052677f2488e4b3045d9baf78c9e659c45868ddf61f1803dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160289301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29867fc3cfe6ec18336c13bda0d0a078c4d1864b99c5abcc3abfddbe1acc68ed`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:12:30 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 21:14:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:15:04 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f1f9803405c827ab63e2baec535856cbc71f93c7589995a308d82f9083a8f`  
		Last Modified: Mon, 18 Sep 2017 22:03:25 GMT  
		Size: 107.5 MB (107516175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6.2-slim` - linux; s390x

```console
$ docker pull erlang@sha256:cea84018fb79640e8ea78c3042f648e3e58b6e48d82bc4ceef2fa39fbca48a51
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154585492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6037fb387fb139392686c5c12cb7e4961ea0216266d7d80c16482651c9991cea`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:56:41 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:36:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:36:19 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716473c5c52705b2b17a85d93cb0820fd71fe7a1b55aa3c454668c22bd508814`  
		Last Modified: Mon, 18 Sep 2017 20:03:32 GMT  
		Size: 101.8 MB (101796690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3.6-slim`

```console
$ docker pull erlang@sha256:90c3dd998ebd1e096b61e963f025f46df799631c091a1c4f9271514676d30e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19.3.6-slim` - linux; amd64

```console
$ docker pull erlang@sha256:12acc2a351c558ba50beb8e9772faad404c4689713c22fffdb84c985cdb783bc
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155509223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3652cb3ecf8c048e62375754f8bd9e945477a54e2a939d37eb26d8ab3dcb192`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:48:15 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 01:00:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2204845b73a2afb39b05d0a4629d3315d42562bc54031918fbb9a3c9f1309bf7`  
		Last Modified: Fri, 08 Sep 2017 18:30:22 GMT  
		Size: 102.9 MB (102913676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:6b55f53172341892f88f7b5d842702724112fd37765505a0c1d37ad5a6b32e79
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148158569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f268437fc98bb528106d4e7ea38e72a00bb1e7662d04788f8df75cdf719ef50`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:33:25 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 19:59:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:59:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871067832ec1d65055d396361db3b06cb472805ba5385a84e238eb82d3671fde`  
		Last Modified: Fri, 08 Sep 2017 20:42:01 GMT  
		Size: 98.2 MB (98229112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6-slim` - linux; 386

```console
$ docker pull erlang@sha256:f9df2746f60a162052677f2488e4b3045d9baf78c9e659c45868ddf61f1803dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160289301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29867fc3cfe6ec18336c13bda0d0a078c4d1864b99c5abcc3abfddbe1acc68ed`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:12:30 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 21:14:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:15:04 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f1f9803405c827ab63e2baec535856cbc71f93c7589995a308d82f9083a8f`  
		Last Modified: Mon, 18 Sep 2017 22:03:25 GMT  
		Size: 107.5 MB (107516175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3.6-slim` - linux; s390x

```console
$ docker pull erlang@sha256:cea84018fb79640e8ea78c3042f648e3e58b6e48d82bc4ceef2fa39fbca48a51
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154585492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6037fb387fb139392686c5c12cb7e4961ea0216266d7d80c16482651c9991cea`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:56:41 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:36:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:36:19 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716473c5c52705b2b17a85d93cb0820fd71fe7a1b55aa3c454668c22bd508814`  
		Last Modified: Mon, 18 Sep 2017 20:03:32 GMT  
		Size: 101.8 MB (101796690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19.3-slim`

```console
$ docker pull erlang@sha256:90c3dd998ebd1e096b61e963f025f46df799631c091a1c4f9271514676d30e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19.3-slim` - linux; amd64

```console
$ docker pull erlang@sha256:12acc2a351c558ba50beb8e9772faad404c4689713c22fffdb84c985cdb783bc
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155509223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3652cb3ecf8c048e62375754f8bd9e945477a54e2a939d37eb26d8ab3dcb192`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:48:15 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 01:00:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2204845b73a2afb39b05d0a4629d3315d42562bc54031918fbb9a3c9f1309bf7`  
		Last Modified: Fri, 08 Sep 2017 18:30:22 GMT  
		Size: 102.9 MB (102913676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:6b55f53172341892f88f7b5d842702724112fd37765505a0c1d37ad5a6b32e79
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148158569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f268437fc98bb528106d4e7ea38e72a00bb1e7662d04788f8df75cdf719ef50`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:33:25 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 19:59:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:59:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871067832ec1d65055d396361db3b06cb472805ba5385a84e238eb82d3671fde`  
		Last Modified: Fri, 08 Sep 2017 20:42:01 GMT  
		Size: 98.2 MB (98229112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3-slim` - linux; 386

```console
$ docker pull erlang@sha256:f9df2746f60a162052677f2488e4b3045d9baf78c9e659c45868ddf61f1803dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160289301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29867fc3cfe6ec18336c13bda0d0a078c4d1864b99c5abcc3abfddbe1acc68ed`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:12:30 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 21:14:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:15:04 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f1f9803405c827ab63e2baec535856cbc71f93c7589995a308d82f9083a8f`  
		Last Modified: Mon, 18 Sep 2017 22:03:25 GMT  
		Size: 107.5 MB (107516175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19.3-slim` - linux; s390x

```console
$ docker pull erlang@sha256:cea84018fb79640e8ea78c3042f648e3e58b6e48d82bc4ceef2fa39fbca48a51
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154585492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6037fb387fb139392686c5c12cb7e4961ea0216266d7d80c16482651c9991cea`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:56:41 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:36:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:36:19 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716473c5c52705b2b17a85d93cb0820fd71fe7a1b55aa3c454668c22bd508814`  
		Last Modified: Mon, 18 Sep 2017 20:03:32 GMT  
		Size: 101.8 MB (101796690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:19-slim`

```console
$ docker pull erlang@sha256:90c3dd998ebd1e096b61e963f025f46df799631c091a1c4f9271514676d30e61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `erlang:19-slim` - linux; amd64

```console
$ docker pull erlang@sha256:12acc2a351c558ba50beb8e9772faad404c4689713c22fffdb84c985cdb783bc
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155509223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3652cb3ecf8c048e62375754f8bd9e945477a54e2a939d37eb26d8ab3dcb192`
-	Default Command: `["erl"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 00:48:15 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 01:00:08 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:00:09 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2204845b73a2afb39b05d0a4629d3315d42562bc54031918fbb9a3c9f1309bf7`  
		Last Modified: Fri, 08 Sep 2017 18:30:22 GMT  
		Size: 102.9 MB (102913676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19-slim` - linux; arm64 variant v8

```console
$ docker pull erlang@sha256:6b55f53172341892f88f7b5d842702724112fd37765505a0c1d37ad5a6b32e79
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148158569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f268437fc98bb528106d4e7ea38e72a00bb1e7662d04788f8df75cdf719ef50`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 19:33:25 GMT
ENV OTP_VERSION=19.3.6.2
# Fri, 08 Sep 2017 19:59:43 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="40f94b360f470a66462b5dc7faa26dc15564055e736688495a095e9cface1cee" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:59:44 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871067832ec1d65055d396361db3b06cb472805ba5385a84e238eb82d3671fde`  
		Last Modified: Fri, 08 Sep 2017 20:42:01 GMT  
		Size: 98.2 MB (98229112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19-slim` - linux; 386

```console
$ docker pull erlang@sha256:f9df2746f60a162052677f2488e4b3045d9baf78c9e659c45868ddf61f1803dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160289301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29867fc3cfe6ec18336c13bda0d0a078c4d1864b99c5abcc3abfddbe1acc68ed`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:12:30 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 21:14:04 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 21:15:04 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24f1f9803405c827ab63e2baec535856cbc71f93c7589995a308d82f9083a8f`  
		Last Modified: Mon, 18 Sep 2017 22:03:25 GMT  
		Size: 107.5 MB (107516175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:19-slim` - linux; s390x

```console
$ docker pull erlang@sha256:cea84018fb79640e8ea78c3042f648e3e58b6e48d82bc4ceef2fa39fbca48a51
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154585492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6037fb387fb139392686c5c12cb7e4961ea0216266d7d80c16482651c9991cea`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:56:41 GMT
ENV OTP_VERSION=19.3.6.2
# Mon, 18 Sep 2017 19:36:19 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4d901d90eff9d0775870a2c0c97220cf77d1531be9c8a5d276a2e5516e146a4c" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		dpkg-dev 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure --build="$gnuArch" 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:36:19 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716473c5c52705b2b17a85d93cb0820fd71fe7a1b55aa3c454668c22bd508814`  
		Last Modified: Mon, 18 Sep 2017 20:03:32 GMT  
		Size: 101.8 MB (101796690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20`

```console
$ docker pull erlang@sha256:2cc3f1b055426126f9776b910464eea51fcc3887fd967420a178567a7d6358bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:20` - linux; 386

```console
$ docker pull erlang@sha256:515de7bad73aa9a62f94bae5ad1915930fa52f15ce51ed5311f6b04bafef11a2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2d17b93d98ab59ed424a7c22cf9b7206a2c6c70df12c00a62c56191b9aae58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:19:33 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:29:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:29:56 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:29:56 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:30:00 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:30:00 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:30:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f900b97bd010c2ce7f1feaad231b46b1abd2c42417e6c90efcbb92e562afdfd2`  
		Last Modified: Mon, 18 Sep 2017 22:00:20 GMT  
		Size: 136.3 MB (136339984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14a4b6471862c38c3c0727be90cb7192341b250c7ffe202c419adb7e6e7d29`  
		Last Modified: Mon, 18 Sep 2017 21:59:58 GMT  
		Size: 201.9 KB (201924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ae4e253634365252cfb37a542bfbec91307e7fe8a42a6da64c9d523395498c`  
		Last Modified: Mon, 18 Sep 2017 21:59:59 GMT  
		Size: 2.6 MB (2628961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20` - linux; s390x

```console
$ docker pull erlang@sha256:bd739aa1fc5e78da4b592b8c3d459d4ebb0a9744206b3f7a02b615252ff52a1c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.6 MB (375577525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0382e514a04ef8922998393bfbcaf1ab5f6aaf198bb8dbedc8c187b0a722c93c`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 18:53:34 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:03:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:03:12 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:03:12 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:03:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:03:15 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:03:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2775bfa2d1a6ccc59241666ec4b39a1fd6620f9557430e8a6a1c163840eb0fea`  
		Last Modified: Mon, 18 Sep 2017 20:02:07 GMT  
		Size: 141.2 MB (141204692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc7bd534ea4ddf6c64d29ab0ab8a788a576b242a7d56c25876c938d0a06ef5`  
		Last Modified: Mon, 18 Sep 2017 20:01:48 GMT  
		Size: 201.9 KB (201930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d72dd2be1159215311a1544bc7deda695fb4b73ca7e1d03c850073b05212800`  
		Last Modified: Mon, 18 Sep 2017 20:01:49 GMT  
		Size: 2.6 MB (2628352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.0`

```console
$ docker pull erlang@sha256:2cc3f1b055426126f9776b910464eea51fcc3887fd967420a178567a7d6358bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:20.0` - linux; 386

```console
$ docker pull erlang@sha256:515de7bad73aa9a62f94bae5ad1915930fa52f15ce51ed5311f6b04bafef11a2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2d17b93d98ab59ed424a7c22cf9b7206a2c6c70df12c00a62c56191b9aae58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:19:33 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:29:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:29:56 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:29:56 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:30:00 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:30:00 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:30:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f900b97bd010c2ce7f1feaad231b46b1abd2c42417e6c90efcbb92e562afdfd2`  
		Last Modified: Mon, 18 Sep 2017 22:00:20 GMT  
		Size: 136.3 MB (136339984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14a4b6471862c38c3c0727be90cb7192341b250c7ffe202c419adb7e6e7d29`  
		Last Modified: Mon, 18 Sep 2017 21:59:58 GMT  
		Size: 201.9 KB (201924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ae4e253634365252cfb37a542bfbec91307e7fe8a42a6da64c9d523395498c`  
		Last Modified: Mon, 18 Sep 2017 21:59:59 GMT  
		Size: 2.6 MB (2628961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.0` - linux; s390x

```console
$ docker pull erlang@sha256:bd739aa1fc5e78da4b592b8c3d459d4ebb0a9744206b3f7a02b615252ff52a1c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.6 MB (375577525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0382e514a04ef8922998393bfbcaf1ab5f6aaf198bb8dbedc8c187b0a722c93c`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 18:53:34 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:03:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:03:12 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:03:12 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:03:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:03:15 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:03:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2775bfa2d1a6ccc59241666ec4b39a1fd6620f9557430e8a6a1c163840eb0fea`  
		Last Modified: Mon, 18 Sep 2017 20:02:07 GMT  
		Size: 141.2 MB (141204692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc7bd534ea4ddf6c64d29ab0ab8a788a576b242a7d56c25876c938d0a06ef5`  
		Last Modified: Mon, 18 Sep 2017 20:01:48 GMT  
		Size: 201.9 KB (201930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d72dd2be1159215311a1544bc7deda695fb4b73ca7e1d03c850073b05212800`  
		Last Modified: Mon, 18 Sep 2017 20:01:49 GMT  
		Size: 2.6 MB (2628352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.0.5`

```console
$ docker pull erlang@sha256:2cc3f1b055426126f9776b910464eea51fcc3887fd967420a178567a7d6358bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:20.0.5` - linux; 386

```console
$ docker pull erlang@sha256:515de7bad73aa9a62f94bae5ad1915930fa52f15ce51ed5311f6b04bafef11a2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2d17b93d98ab59ed424a7c22cf9b7206a2c6c70df12c00a62c56191b9aae58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:19:33 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:29:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:29:56 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:29:56 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:30:00 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:30:00 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:30:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f900b97bd010c2ce7f1feaad231b46b1abd2c42417e6c90efcbb92e562afdfd2`  
		Last Modified: Mon, 18 Sep 2017 22:00:20 GMT  
		Size: 136.3 MB (136339984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14a4b6471862c38c3c0727be90cb7192341b250c7ffe202c419adb7e6e7d29`  
		Last Modified: Mon, 18 Sep 2017 21:59:58 GMT  
		Size: 201.9 KB (201924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ae4e253634365252cfb37a542bfbec91307e7fe8a42a6da64c9d523395498c`  
		Last Modified: Mon, 18 Sep 2017 21:59:59 GMT  
		Size: 2.6 MB (2628961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.0.5` - linux; s390x

```console
$ docker pull erlang@sha256:bd739aa1fc5e78da4b592b8c3d459d4ebb0a9744206b3f7a02b615252ff52a1c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.6 MB (375577525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0382e514a04ef8922998393bfbcaf1ab5f6aaf198bb8dbedc8c187b0a722c93c`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 18:53:34 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:03:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:03:12 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:03:12 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:03:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:03:15 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:03:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2775bfa2d1a6ccc59241666ec4b39a1fd6620f9557430e8a6a1c163840eb0fea`  
		Last Modified: Mon, 18 Sep 2017 20:02:07 GMT  
		Size: 141.2 MB (141204692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc7bd534ea4ddf6c64d29ab0ab8a788a576b242a7d56c25876c938d0a06ef5`  
		Last Modified: Mon, 18 Sep 2017 20:01:48 GMT  
		Size: 201.9 KB (201930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d72dd2be1159215311a1544bc7deda695fb4b73ca7e1d03c850073b05212800`  
		Last Modified: Mon, 18 Sep 2017 20:01:49 GMT  
		Size: 2.6 MB (2628352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.0.5-alpine`

**does not exist** (yet?)

## `erlang:20.0.5-slim`

```console
$ docker pull erlang@sha256:fe944f4ec73c9aa7b1f9cba1f7db66183244f3652ac12cc4f762c0998961af95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:20.0.5-slim` - linux; 386

```console
$ docker pull erlang@sha256:be0486e78d4f2eb21762d74d21350cfc294103da68ce70c4bbdfb938894a8f28
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120620435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d4f8b7139a0ba6e17292ead3ff608ea27f481aedb91c451c8ffb15e9fa5ddc`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 20:32:36 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:42:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:42:10 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a5c4c0174596427cb0a93e790dd4e5cf9559d617bbb77abfdd3dfb7a1b7c3`  
		Last Modified: Mon, 18 Sep 2017 22:01:41 GMT  
		Size: 67.8 MB (67847309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.0.5-slim` - linux; s390x

```console
$ docker pull erlang@sha256:0dec99f9bf1fcc59a847b927c5ba1a415d587255fc82ee1644100a355fc0bd2e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ff4310a8be9a6878b751b88004494949bd741fa924a139a31131585ab6bef`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 19:03:51 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:11:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:11:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0df9fa47cc9fe94ba27cf5a688adf01fe84c65f06a4571eed6ac52951ec135f`  
		Last Modified: Mon, 18 Sep 2017 20:02:33 GMT  
		Size: 61.9 MB (61881474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.0-alpine`

```console
$ docker pull erlang@sha256:e9fc29382de366f5966a28f0bfe015b9059bff4f953440cb761e6aa9366ba3b9
```

-	Platforms:
	-	linux; amd64

### `erlang:20.0-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44433323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dd76dbba2dc17835137df0c6b3cf5ef7ab20a0c711e6b49a594eaeb2d43790`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 28 Aug 2017 21:58:52 GMT
ENV OTP_VERSION=20.0.4
# Wed, 06 Sep 2017 22:33:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4fb811b1811561f78a128c67e40b1b774354b358a4b61a9b641f0ecb06002f66" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& rm -rf 		/usr/local/lib/erlang/erts*/lib/lib*.a 		/usr/local/lib/erlang/usr/lib/lib*.a 		/usr/local/lib/erlang/lib/*/lib/lib*.a 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps=$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	) 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 06 Sep 2017 22:33:00 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74940bab2e36868cf897636124475cd9353bb893e88a42bb101bab63efcc9975`  
		Last Modified: Wed, 06 Sep 2017 23:24:11 GMT  
		Size: 42.4 MB (42442921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20.0-slim`

```console
$ docker pull erlang@sha256:fe944f4ec73c9aa7b1f9cba1f7db66183244f3652ac12cc4f762c0998961af95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:20.0-slim` - linux; 386

```console
$ docker pull erlang@sha256:be0486e78d4f2eb21762d74d21350cfc294103da68ce70c4bbdfb938894a8f28
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120620435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d4f8b7139a0ba6e17292ead3ff608ea27f481aedb91c451c8ffb15e9fa5ddc`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 20:32:36 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:42:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:42:10 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a5c4c0174596427cb0a93e790dd4e5cf9559d617bbb77abfdd3dfb7a1b7c3`  
		Last Modified: Mon, 18 Sep 2017 22:01:41 GMT  
		Size: 67.8 MB (67847309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20.0-slim` - linux; s390x

```console
$ docker pull erlang@sha256:0dec99f9bf1fcc59a847b927c5ba1a415d587255fc82ee1644100a355fc0bd2e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ff4310a8be9a6878b751b88004494949bd741fa924a139a31131585ab6bef`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 19:03:51 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:11:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:11:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0df9fa47cc9fe94ba27cf5a688adf01fe84c65f06a4571eed6ac52951ec135f`  
		Last Modified: Mon, 18 Sep 2017 20:02:33 GMT  
		Size: 61.9 MB (61881474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20-alpine`

```console
$ docker pull erlang@sha256:e9fc29382de366f5966a28f0bfe015b9059bff4f953440cb761e6aa9366ba3b9
```

-	Platforms:
	-	linux; amd64

### `erlang:20-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44433323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dd76dbba2dc17835137df0c6b3cf5ef7ab20a0c711e6b49a594eaeb2d43790`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 28 Aug 2017 21:58:52 GMT
ENV OTP_VERSION=20.0.4
# Wed, 06 Sep 2017 22:33:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4fb811b1811561f78a128c67e40b1b774354b358a4b61a9b641f0ecb06002f66" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& rm -rf 		/usr/local/lib/erlang/erts*/lib/lib*.a 		/usr/local/lib/erlang/usr/lib/lib*.a 		/usr/local/lib/erlang/lib/*/lib/lib*.a 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps=$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	) 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 06 Sep 2017 22:33:00 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74940bab2e36868cf897636124475cd9353bb893e88a42bb101bab63efcc9975`  
		Last Modified: Wed, 06 Sep 2017 23:24:11 GMT  
		Size: 42.4 MB (42442921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:20-slim`

```console
$ docker pull erlang@sha256:fe944f4ec73c9aa7b1f9cba1f7db66183244f3652ac12cc4f762c0998961af95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:20-slim` - linux; 386

```console
$ docker pull erlang@sha256:be0486e78d4f2eb21762d74d21350cfc294103da68ce70c4bbdfb938894a8f28
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120620435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d4f8b7139a0ba6e17292ead3ff608ea27f481aedb91c451c8ffb15e9fa5ddc`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 20:32:36 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:42:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:42:10 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a5c4c0174596427cb0a93e790dd4e5cf9559d617bbb77abfdd3dfb7a1b7c3`  
		Last Modified: Mon, 18 Sep 2017 22:01:41 GMT  
		Size: 67.8 MB (67847309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:20-slim` - linux; s390x

```console
$ docker pull erlang@sha256:0dec99f9bf1fcc59a847b927c5ba1a415d587255fc82ee1644100a355fc0bd2e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ff4310a8be9a6878b751b88004494949bd741fa924a139a31131585ab6bef`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 19:03:51 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:11:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:11:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0df9fa47cc9fe94ba27cf5a688adf01fe84c65f06a4571eed6ac52951ec135f`  
		Last Modified: Mon, 18 Sep 2017 20:02:33 GMT  
		Size: 61.9 MB (61881474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:alpine`

```console
$ docker pull erlang@sha256:e9fc29382de366f5966a28f0bfe015b9059bff4f953440cb761e6aa9366ba3b9
```

-	Platforms:
	-	linux; amd64

### `erlang:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44433323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dd76dbba2dc17835137df0c6b3cf5ef7ab20a0c711e6b49a594eaeb2d43790`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 28 Aug 2017 21:58:52 GMT
ENV OTP_VERSION=20.0.4
# Wed, 06 Sep 2017 22:33:00 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="4fb811b1811561f78a128c67e40b1b774354b358a4b61a9b641f0ecb06002f66" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		dpkg-dev dpkg 		gcc 		g++ 		libc-dev 		linux-headers 		make 		autoconf 		ncurses-dev 		openssl-dev 		unixodbc-dev 		lksctp-tools-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& find /usr/local -name src | xargs -r find | grep -v '\.hrl$' | xargs rm -v || true 	&& find /usr/local -name src | xargs -r find | xargs rmdir -vp || true 	&& rm -rf 		/usr/local/lib/erlang/erts*/lib/lib*.a 		/usr/local/lib/erlang/usr/lib/lib*.a 		/usr/local/lib/erlang/lib/*/lib/lib*.a 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs -r strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps=$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	) 	&& apk add --virtual .erlang-rundeps $runDeps lksctp-tools 	&& apk del .fetch-deps .build-deps
# Wed, 06 Sep 2017 22:33:00 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74940bab2e36868cf897636124475cd9353bb893e88a42bb101bab63efcc9975`  
		Last Modified: Wed, 06 Sep 2017 23:24:11 GMT  
		Size: 42.4 MB (42442921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:latest`

```console
$ docker pull erlang@sha256:2cc3f1b055426126f9776b910464eea51fcc3887fd967420a178567a7d6358bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:latest` - linux; 386

```console
$ docker pull erlang@sha256:515de7bad73aa9a62f94bae5ad1915930fa52f15ce51ed5311f6b04bafef11a2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392277368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2d17b93d98ab59ed424a7c22cf9b7206a2c6c70df12c00a62c56191b9aae58`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:19:33 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:29:56 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:29:56 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 20:29:56 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 20:30:00 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 20:30:00 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 20:30:21 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f900b97bd010c2ce7f1feaad231b46b1abd2c42417e6c90efcbb92e562afdfd2`  
		Last Modified: Mon, 18 Sep 2017 22:00:20 GMT  
		Size: 136.3 MB (136339984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14a4b6471862c38c3c0727be90cb7192341b250c7ffe202c419adb7e6e7d29`  
		Last Modified: Mon, 18 Sep 2017 21:59:58 GMT  
		Size: 201.9 KB (201924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ae4e253634365252cfb37a542bfbec91307e7fe8a42a6da64c9d523395498c`  
		Last Modified: Mon, 18 Sep 2017 21:59:59 GMT  
		Size: 2.6 MB (2628961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:latest` - linux; s390x

```console
$ docker pull erlang@sha256:bd739aa1fc5e78da4b592b8c3d459d4ebb0a9744206b3f7a02b615252ff52a1c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.6 MB (375577525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0382e514a04ef8922998393bfbcaf1ab5f6aaf198bb8dbedc8c187b0a722c93c`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 18:53:34 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:03:11 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:03:12 GMT
CMD ["erl"]
# Mon, 18 Sep 2017 19:03:12 GMT
ENV REBAR_VERSION=2.6.4
# Mon, 18 Sep 2017 19:03:15 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Mon, 18 Sep 2017 19:03:15 GMT
ENV REBAR3_VERSION=3.4.4
# Mon, 18 Sep 2017 19:03:35 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="0f7c860489dc4e4fcdc706a04690f791755870ff0e0582525b8ee9a78e911443" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2775bfa2d1a6ccc59241666ec4b39a1fd6620f9557430e8a6a1c163840eb0fea`  
		Last Modified: Mon, 18 Sep 2017 20:02:07 GMT  
		Size: 141.2 MB (141204692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc7bd534ea4ddf6c64d29ab0ab8a788a576b242a7d56c25876c938d0a06ef5`  
		Last Modified: Mon, 18 Sep 2017 20:01:48 GMT  
		Size: 201.9 KB (201930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d72dd2be1159215311a1544bc7deda695fb4b73ca7e1d03c850073b05212800`  
		Last Modified: Mon, 18 Sep 2017 20:01:49 GMT  
		Size: 2.6 MB (2628352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `erlang:slim`

```console
$ docker pull erlang@sha256:fe944f4ec73c9aa7b1f9cba1f7db66183244f3652ac12cc4f762c0998961af95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386
	-	linux; s390x

### `erlang:slim` - linux; 386

```console
$ docker pull erlang@sha256:be0486e78d4f2eb21762d74d21350cfc294103da68ce70c4bbdfb938894a8f28
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120620435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d4f8b7139a0ba6e17292ead3ff608ea27f481aedb91c451c8ffb15e9fa5ddc`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 20:32:36 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 20:42:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 20:42:10 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a5c4c0174596427cb0a93e790dd4e5cf9559d617bbb77abfdd3dfb7a1b7c3`  
		Last Modified: Mon, 18 Sep 2017 22:01:41 GMT  
		Size: 67.8 MB (67847309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `erlang:slim` - linux; s390x

```console
$ docker pull erlang@sha256:0dec99f9bf1fcc59a847b927c5ba1a415d587255fc82ee1644100a355fc0bd2e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ff4310a8be9a6878b751b88004494949bd741fa924a139a31131585ab6bef`
-	Default Command: `["erl"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Mon, 18 Sep 2017 19:03:51 GMT
ENV OTP_VERSION=20.0.5
# Mon, 18 Sep 2017 19:11:12 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="45b6966362c3a4da292d470ef25af9f91b851d4e96d3736abdabbba0556acf6c" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 18 Sep 2017 19:11:13 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0df9fa47cc9fe94ba27cf5a688adf01fe84c65f06a4571eed6ac52951ec135f`  
		Last Modified: Mon, 18 Sep 2017 20:02:33 GMT  
		Size: 61.9 MB (61881474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
