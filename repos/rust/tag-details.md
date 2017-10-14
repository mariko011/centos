<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1.21`](#rust121)
-	[`rust:1.21.0`](#rust1210)
-	[`rust:1.21.0-jessie`](#rust1210-jessie)
-	[`rust:1.21.0-stretch`](#rust1210-stretch)
-	[`rust:1.21-jessie`](#rust121-jessie)
-	[`rust:1.21-stretch`](#rust121-stretch)
-	[`rust:1-jessie`](#rust1-jessie)
-	[`rust:1-stretch`](#rust1-stretch)
-	[`rust:jessie`](#rustjessie)
-	[`rust:latest`](#rustlatest)
-	[`rust:stretch`](#ruststretch)

## `rust:1`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.21`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1.21` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.21.0`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1.21.0` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.21.0` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.21.0-jessie`

```console
$ docker pull rust@sha256:50ab720f40df69f0c832cf5dae03f22cb3a99bc29728af0e239dd5b17356111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1.21.0-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8c02e150c21b8e39d1edfed6d1715b9a00165d39648924b6797e669305a87cc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410407068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e94c93119615e7d6d27d412ef0d7962760377daee3725a239d6c0eda7ec058`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:16:06 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb98c08d57eb9aa8b8a810bcee569cbeab2e6828840f36deb1ef485b3ae16b2`  
		Last Modified: Mon, 09 Oct 2017 22:59:19 GMT  
		Size: 134.7 MB (134687179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c444d42e6ce14db70c3659d8ff9d4902ea17bb04ec27fd708449e5ec21b15`  
		Last Modified: Fri, 13 Oct 2017 19:18:13 GMT  
		Size: 160.6 MB (160632724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.21.0-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:31cea4a9b4ea5151ff2392afd469b9cc667cfe1c4f6a208b01830c464e1ea2cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370796310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7a38b502270e5e637ddd712bbbf6786ae1dc3ed5342b20aa16b0d8f2f6a3a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:56:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:49:34 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f6271a8b3615caad80877c6727a9fc25abee93f70dcd8d6af4edabfeeb42a`  
		Last Modified: Mon, 09 Oct 2017 23:28:47 GMT  
		Size: 41.0 MB (40990042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814d5e76f4d20ca0b41f1dfe356fc11db2d919781c0f00c0ac45a1921e58eea`  
		Last Modified: Mon, 09 Oct 2017 23:29:38 GMT  
		Size: 115.6 MB (115649949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648f16ea9e7f0c415c76988513000f77ddbab8a6d80d285a79efb640600e2ca1`  
		Last Modified: Fri, 13 Oct 2017 23:53:03 GMT  
		Size: 145.5 MB (145488951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.21.0-stretch`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1.21.0-stretch` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.21.0-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.21-jessie`

```console
$ docker pull rust@sha256:50ab720f40df69f0c832cf5dae03f22cb3a99bc29728af0e239dd5b17356111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1.21-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8c02e150c21b8e39d1edfed6d1715b9a00165d39648924b6797e669305a87cc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410407068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e94c93119615e7d6d27d412ef0d7962760377daee3725a239d6c0eda7ec058`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:16:06 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb98c08d57eb9aa8b8a810bcee569cbeab2e6828840f36deb1ef485b3ae16b2`  
		Last Modified: Mon, 09 Oct 2017 22:59:19 GMT  
		Size: 134.7 MB (134687179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c444d42e6ce14db70c3659d8ff9d4902ea17bb04ec27fd708449e5ec21b15`  
		Last Modified: Fri, 13 Oct 2017 19:18:13 GMT  
		Size: 160.6 MB (160632724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.21-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:31cea4a9b4ea5151ff2392afd469b9cc667cfe1c4f6a208b01830c464e1ea2cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370796310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7a38b502270e5e637ddd712bbbf6786ae1dc3ed5342b20aa16b0d8f2f6a3a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:56:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:49:34 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f6271a8b3615caad80877c6727a9fc25abee93f70dcd8d6af4edabfeeb42a`  
		Last Modified: Mon, 09 Oct 2017 23:28:47 GMT  
		Size: 41.0 MB (40990042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814d5e76f4d20ca0b41f1dfe356fc11db2d919781c0f00c0ac45a1921e58eea`  
		Last Modified: Mon, 09 Oct 2017 23:29:38 GMT  
		Size: 115.6 MB (115649949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648f16ea9e7f0c415c76988513000f77ddbab8a6d80d285a79efb640600e2ca1`  
		Last Modified: Fri, 13 Oct 2017 23:53:03 GMT  
		Size: 145.5 MB (145488951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1.21-stretch`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1.21-stretch` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1.21-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-jessie`

```console
$ docker pull rust@sha256:50ab720f40df69f0c832cf5dae03f22cb3a99bc29728af0e239dd5b17356111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1-jessie` - linux; amd64

```console
$ docker pull rust@sha256:8c02e150c21b8e39d1edfed6d1715b9a00165d39648924b6797e669305a87cc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410407068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e94c93119615e7d6d27d412ef0d7962760377daee3725a239d6c0eda7ec058`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:16:06 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb98c08d57eb9aa8b8a810bcee569cbeab2e6828840f36deb1ef485b3ae16b2`  
		Last Modified: Mon, 09 Oct 2017 22:59:19 GMT  
		Size: 134.7 MB (134687179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c444d42e6ce14db70c3659d8ff9d4902ea17bb04ec27fd708449e5ec21b15`  
		Last Modified: Fri, 13 Oct 2017 19:18:13 GMT  
		Size: 160.6 MB (160632724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:31cea4a9b4ea5151ff2392afd469b9cc667cfe1c4f6a208b01830c464e1ea2cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370796310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7a38b502270e5e637ddd712bbbf6786ae1dc3ed5342b20aa16b0d8f2f6a3a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:56:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:49:34 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f6271a8b3615caad80877c6727a9fc25abee93f70dcd8d6af4edabfeeb42a`  
		Last Modified: Mon, 09 Oct 2017 23:28:47 GMT  
		Size: 41.0 MB (40990042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814d5e76f4d20ca0b41f1dfe356fc11db2d919781c0f00c0ac45a1921e58eea`  
		Last Modified: Mon, 09 Oct 2017 23:29:38 GMT  
		Size: 115.6 MB (115649949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648f16ea9e7f0c415c76988513000f77ddbab8a6d80d285a79efb640600e2ca1`  
		Last Modified: Fri, 13 Oct 2017 23:53:03 GMT  
		Size: 145.5 MB (145488951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:1-stretch`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:1-stretch` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:jessie`

```console
$ docker pull rust@sha256:50ab720f40df69f0c832cf5dae03f22cb3a99bc29728af0e239dd5b17356111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:jessie` - linux; amd64

```console
$ docker pull rust@sha256:8c02e150c21b8e39d1edfed6d1715b9a00165d39648924b6797e669305a87cc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410407068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e94c93119615e7d6d27d412ef0d7962760377daee3725a239d6c0eda7ec058`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:16:06 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb98c08d57eb9aa8b8a810bcee569cbeab2e6828840f36deb1ef485b3ae16b2`  
		Last Modified: Mon, 09 Oct 2017 22:59:19 GMT  
		Size: 134.7 MB (134687179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c444d42e6ce14db70c3659d8ff9d4902ea17bb04ec27fd708449e5ec21b15`  
		Last Modified: Fri, 13 Oct 2017 19:18:13 GMT  
		Size: 160.6 MB (160632724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:31cea4a9b4ea5151ff2392afd469b9cc667cfe1c4f6a208b01830c464e1ea2cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370796310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7a38b502270e5e637ddd712bbbf6786ae1dc3ed5342b20aa16b0d8f2f6a3a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:56:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:49:34 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f6271a8b3615caad80877c6727a9fc25abee93f70dcd8d6af4edabfeeb42a`  
		Last Modified: Mon, 09 Oct 2017 23:28:47 GMT  
		Size: 41.0 MB (40990042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814d5e76f4d20ca0b41f1dfe356fc11db2d919781c0f00c0ac45a1921e58eea`  
		Last Modified: Mon, 09 Oct 2017 23:29:38 GMT  
		Size: 115.6 MB (115649949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648f16ea9e7f0c415c76988513000f77ddbab8a6d80d285a79efb640600e2ca1`  
		Last Modified: Fri, 13 Oct 2017 23:53:03 GMT  
		Size: 145.5 MB (145488951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:latest`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rust:stretch`

```console
$ docker pull rust@sha256:219dd7fdfcfacf968304f3e6d490c251cbbab07f525e805c6d0f2051996b9bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rust:stretch` - linux; amd64

```console
$ docker pull rust@sha256:bd21a1397594fe2d08dd342644a70fb5030e7f45134c6d953cbbd79eacd570ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.3 MB (484308510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9578919665db1bed7ca5fbc776e24f7a1e5964dcd9b87ff1bc062b8c200dbabe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:28:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 19:15:39 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6defea3d225a067064d5e7c9730c603aad2a0b75199c3af02a22feefd9c5bd1`  
		Last Modified: Mon, 09 Oct 2017 23:03:38 GMT  
		Size: 212.8 MB (212785117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b6678fce027edd37aa94ddaf6c2c933d97f41f5668bdca70f7052ff25c384`  
		Last Modified: Fri, 13 Oct 2017 19:16:41 GMT  
		Size: 160.6 MB (160632675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e55a2783441bfe646a4fd00b03ec871de5a78b53c794dcb9b5bf75b4f83deec6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.1 MB (451084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6151a75f676f0fad9b703aaec0b87b22a3496085bddcf4b800637e6f48967e52`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Oct 2017 23:48:35 GMT
RUN set -eux;         dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='f5833a64fd549971be80fa42cffc6c5e7f51c4f443cd46e90e4c17919c24481f' ;; 		armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='67a98a67f7f7bf19c5cde166499acb8299f2f8fa88c155093df53b66da1f512a' ;; 		arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='82fe368c4ebf1683d57e137242793a4417042639aace8bd514601db7d79d3645' ;; 		i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='7a1c085591f6c1305877919f8495c04a1c97546d001d1357a7a879cedea5afbb' ;; 		*) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;; 	esac;         url="https://static.rust-lang.org/rustup/archive/1.6.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain 1.21.0;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c91ac7b9fdc4fd9893504b5d1e6211a77ba8286a16d9dce779f8e04abc6894`  
		Last Modified: Mon, 09 Oct 2017 23:37:20 GMT  
		Size: 200.3 MB (200256724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a38e8f8336c1e85ea3477885a2399a21532e0e1889397fc2a112f32e977ae`  
		Last Modified: Fri, 13 Oct 2017 23:50:41 GMT  
		Size: 145.5 MB (145489981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
