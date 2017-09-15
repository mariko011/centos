<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `perl`

-	[`perl:5`](#perl5)
-	[`perl:5.22`](#perl522)
-	[`perl:5.22.4`](#perl5224)
-	[`perl:5.22.4-threaded`](#perl5224-threaded)
-	[`perl:5.22-threaded`](#perl522-threaded)
-	[`perl:5.24`](#perl524)
-	[`perl:5.24.2`](#perl5242)
-	[`perl:5.24.2-threaded`](#perl5242-threaded)
-	[`perl:5.24-threaded`](#perl524-threaded)
-	[`perl:5.26`](#perl526)
-	[`perl:5.26.0`](#perl5260)
-	[`perl:5.26.0-threaded`](#perl5260-threaded)
-	[`perl:5.26-threaded`](#perl526-threaded)
-	[`perl:5-threaded`](#perl5-threaded)
-	[`perl:latest`](#perllatest)
-	[`perl:threaded`](#perlthreaded)

## `perl:5`

```console
$ docker pull perl@sha256:66f6bc36a4d869f6ac0a05d1a787c0127690565055664825d9a560574b482c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5` - linux; amd64

```console
$ docker pull perl@sha256:26df3265ebf2bffdb7b59b75c8e1b17eeb9f1fd2f1a45c290dfb75d46019467c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336772411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d41a9e6cff620579628ba611376a6b778be8b6c5a1625cfcdeb16e14c72dca4`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:31:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:31:45 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:31:45 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0333fcc6ddecfd29b9f714da839b30ace58998be08049bb68218dbf38ed7f422`  
		Last Modified: Wed, 13 Sep 2017 16:01:07 GMT  
		Size: 13.1 MB (13137250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:cc5bbee4bef71989f2a8ce46d2334244f21068bc6690d0938f4f77d45dc450f6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318529454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b097ae922b4e653d2795265cbd646dbc2a4a97bc812303b8952308c3b08b40d9`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Thu, 14 Sep 2017 23:47:18 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Thu, 14 Sep 2017 23:47:19 GMT
WORKDIR /root
# Thu, 14 Sep 2017 23:47:19 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba93be0c57aa9209f48b62640a76656457aa802817e63c3f966cb19ca140269e`  
		Last Modified: Fri, 15 Sep 2017 00:57:06 GMT  
		Size: 13.0 MB (12978421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22`

```console
$ docker pull perl@sha256:f2e1f087a0c9cd2abaa5d42014c49cf8457ea585e99a96c77607b2840575a54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22` - linux; amd64

```console
$ docker pull perl@sha256:d6400033eb81d439279a582f096adca2dd1590f80e1a3e7740ffaebdfa912051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336196052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d1f94b6c5b4fd6b300b439d521b14e95ad78004f88648d146bd9a360d59b09`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:55:12 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:55:12 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:55:12 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9671dedff03f1723877b9acc81955ba2b0bb5d0d3e2cba1d719fc5034c3783`  
		Last Modified: Wed, 13 Sep 2017 16:02:23 GMT  
		Size: 12.6 MB (12559307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f9da0b644b6baf7ad945dfa93807958f09386c731d23a77a4aca353b3ec169eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317956491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0329d2ac8f492913771ec5dccbe9b781017ed7e3e44e052544cb32504185a26c`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:38:40 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:38:40 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:38:41 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba778cf7ea2cb398619b0706d78f151e3af9b96ed341841f5cbe4384cccd9c1e`  
		Last Modified: Fri, 15 Sep 2017 01:01:06 GMT  
		Size: 12.4 MB (12403871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.4`

```console
$ docker pull perl@sha256:f2e1f087a0c9cd2abaa5d42014c49cf8457ea585e99a96c77607b2840575a54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22.4` - linux; amd64

```console
$ docker pull perl@sha256:d6400033eb81d439279a582f096adca2dd1590f80e1a3e7740ffaebdfa912051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336196052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d1f94b6c5b4fd6b300b439d521b14e95ad78004f88648d146bd9a360d59b09`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:55:12 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:55:12 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:55:12 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9671dedff03f1723877b9acc81955ba2b0bb5d0d3e2cba1d719fc5034c3783`  
		Last Modified: Wed, 13 Sep 2017 16:02:23 GMT  
		Size: 12.6 MB (12559307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f9da0b644b6baf7ad945dfa93807958f09386c731d23a77a4aca353b3ec169eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317956491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0329d2ac8f492913771ec5dccbe9b781017ed7e3e44e052544cb32504185a26c`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:38:40 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:38:40 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:38:41 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba778cf7ea2cb398619b0706d78f151e3af9b96ed341841f5cbe4384cccd9c1e`  
		Last Modified: Fri, 15 Sep 2017 01:01:06 GMT  
		Size: 12.4 MB (12403871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.4-threaded`

```console
$ docker pull perl@sha256:23423e40a3148bd7a041a95e7dc98735f1164962839b9f6821a892c82fd8a8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22.4-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c166271caf9ee9d2b235df57ef5144f15e75d08cccdfd05deeff29809dd39402
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336233424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda3ccbbdab62714fbe4d016c6fac9163fcdc75888225bc3352bcd8862a99d27`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 16:00:48 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 16:00:48 GMT
WORKDIR /root
# Wed, 13 Sep 2017 16:00:49 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1a25039a00c918b138a3e0df10466e77c40f32c147f347d3e05f2172bb6d0f`  
		Last Modified: Wed, 13 Sep 2017 16:02:39 GMT  
		Size: 12.6 MB (12596679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22.4-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:cd64775414063345d9cd24e45bc1cca3c83747a49e33a1b587ee155cce7c8f73
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317982149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64ec7ab39217c18e9a74592d0e217316ca0620d386de9ff25ad855635a5dc4f`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:56:13 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:56:15 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:56:16 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62524fb0e9c808a32e8f757cb26e948dccdfc9ea966898febde130684fd347d2`  
		Last Modified: Fri, 15 Sep 2017 01:01:52 GMT  
		Size: 12.4 MB (12429529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22-threaded`

```console
$ docker pull perl@sha256:23423e40a3148bd7a041a95e7dc98735f1164962839b9f6821a892c82fd8a8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c166271caf9ee9d2b235df57ef5144f15e75d08cccdfd05deeff29809dd39402
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336233424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda3ccbbdab62714fbe4d016c6fac9163fcdc75888225bc3352bcd8862a99d27`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 16:00:48 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 16:00:48 GMT
WORKDIR /root
# Wed, 13 Sep 2017 16:00:49 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1a25039a00c918b138a3e0df10466e77c40f32c147f347d3e05f2172bb6d0f`  
		Last Modified: Wed, 13 Sep 2017 16:02:39 GMT  
		Size: 12.6 MB (12596679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.22-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:cd64775414063345d9cd24e45bc1cca3c83747a49e33a1b587ee155cce7c8f73
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (317982149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64ec7ab39217c18e9a74592d0e217316ca0620d386de9ff25ad855635a5dc4f`
-	Default Command: `["perl5.22.4","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:56:13 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:56:15 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:56:16 GMT
CMD ["perl5.22.4" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62524fb0e9c808a32e8f757cb26e948dccdfc9ea966898febde130684fd347d2`  
		Last Modified: Fri, 15 Sep 2017 01:01:52 GMT  
		Size: 12.4 MB (12429529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24`

```console
$ docker pull perl@sha256:d087c950d4f6bcc75cc411a8fc7049dff3f27b78ccc1c8349ac6838e81eb8caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24` - linux; amd64

```console
$ docker pull perl@sha256:7a92fe3ca2a95ba427e1d0f09e3fecadd1ae7595c283c9c182f858667f7841ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336409123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a106b87220f02960061e26de191134f3daa2714470acbafe4076e82e6ba79661`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:44:01 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:44:01 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:44:01 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f55e23dcc7d63a9e08bdd4366c528e961412655fb150d5e1561d52e3a4b785`  
		Last Modified: Wed, 13 Sep 2017 16:01:53 GMT  
		Size: 12.8 MB (12772378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:15796f1cc306fdf604da0c7011c997d1c42ad8f2d816ef1eb8913e99cb7b8007
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318174972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131cac98433b9a43d63a0ab695af1356853e91bccee3a558ea3dcfd275ab725a`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:14:40 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:14:41 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:14:41 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d82caa935d94e265807837e8aa9a170fe5d1fca8563f496822b28199b4869`  
		Last Modified: Fri, 15 Sep 2017 00:59:34 GMT  
		Size: 12.6 MB (12622352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.2`

```console
$ docker pull perl@sha256:d087c950d4f6bcc75cc411a8fc7049dff3f27b78ccc1c8349ac6838e81eb8caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24.2` - linux; amd64

```console
$ docker pull perl@sha256:7a92fe3ca2a95ba427e1d0f09e3fecadd1ae7595c283c9c182f858667f7841ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336409123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a106b87220f02960061e26de191134f3daa2714470acbafe4076e82e6ba79661`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:44:01 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:44:01 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:44:01 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f55e23dcc7d63a9e08bdd4366c528e961412655fb150d5e1561d52e3a4b785`  
		Last Modified: Wed, 13 Sep 2017 16:01:53 GMT  
		Size: 12.8 MB (12772378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.2` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:15796f1cc306fdf604da0c7011c997d1c42ad8f2d816ef1eb8913e99cb7b8007
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318174972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131cac98433b9a43d63a0ab695af1356853e91bccee3a558ea3dcfd275ab725a`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:14:40 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:14:41 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:14:41 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d82caa935d94e265807837e8aa9a170fe5d1fca8563f496822b28199b4869`  
		Last Modified: Fri, 15 Sep 2017 00:59:34 GMT  
		Size: 12.6 MB (12622352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.2-threaded`

```console
$ docker pull perl@sha256:96e8ca731c6610fe14e56359c4c96ef02ba500e9a6762d5132ad61eeb80821a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24.2-threaded` - linux; amd64

```console
$ docker pull perl@sha256:6f93bae9294d8fe68f914b1430bae5a1c866226fa198e8ff9bdd69cc67d45816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336454816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d386505b4b2f90d71dab56da89f36db1f82fd8ee2654cd4d7d1d7dac929f42fd`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:49:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:49:45 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:49:45 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61706d74a6e6504c85a9d5ab61a1c58c9c5a4da7d91c1ca024a75f17d6b7f5bf`  
		Last Modified: Wed, 13 Sep 2017 16:02:08 GMT  
		Size: 12.8 MB (12818071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24.2-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d820b1512c095d519a5810c9fd6c1bd0df23361b22d1da1d545fa639000ab48c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318194868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac7691fc7b7fc1803d93d042b71ab88ecb18b349b53c2b2d3354951788d34353`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:25:23 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:25:23 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:25:24 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8002c268b4d0d03fe24bf4bb051e51bc212d6b473c1c313419024012ce83940f`  
		Last Modified: Fri, 15 Sep 2017 01:00:19 GMT  
		Size: 12.6 MB (12642248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-threaded`

```console
$ docker pull perl@sha256:96e8ca731c6610fe14e56359c4c96ef02ba500e9a6762d5132ad61eeb80821a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24-threaded` - linux; amd64

```console
$ docker pull perl@sha256:6f93bae9294d8fe68f914b1430bae5a1c866226fa198e8ff9bdd69cc67d45816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336454816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d386505b4b2f90d71dab56da89f36db1f82fd8ee2654cd4d7d1d7dac929f42fd`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:38:49 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:38:49 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:49:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:49:45 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:49:45 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ddbf3c076eb7969d7c2647753bb7edd4b3279e7879b3e3acbac40760a635e`  
		Last Modified: Wed, 13 Sep 2017 16:01:50 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61706d74a6e6504c85a9d5ab61a1c58c9c5a4da7d91c1ca024a75f17d6b7f5bf`  
		Last Modified: Wed, 13 Sep 2017 16:02:08 GMT  
		Size: 12.8 MB (12818071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.24-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d820b1512c095d519a5810c9fd6c1bd0df23361b22d1da1d545fa639000ab48c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318194868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac7691fc7b7fc1803d93d042b71ab88ecb18b349b53c2b2d3354951788d34353`
-	Default Command: `["perl5.24.2","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 15 Sep 2017 00:04:37 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Fri, 15 Sep 2017 00:04:38 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:25:23 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:25:23 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:25:24 GMT
CMD ["perl5.24.2" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abf61e9b0262811f2dce6c5b0be73d6954fe549889cf1c74fd17e626be69742`  
		Last Modified: Fri, 15 Sep 2017 00:59:21 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8002c268b4d0d03fe24bf4bb051e51bc212d6b473c1c313419024012ce83940f`  
		Last Modified: Fri, 15 Sep 2017 01:00:19 GMT  
		Size: 12.6 MB (12642248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26`

```console
$ docker pull perl@sha256:66f6bc36a4d869f6ac0a05d1a787c0127690565055664825d9a560574b482c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26` - linux; amd64

```console
$ docker pull perl@sha256:26df3265ebf2bffdb7b59b75c8e1b17eeb9f1fd2f1a45c290dfb75d46019467c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336772411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d41a9e6cff620579628ba611376a6b778be8b6c5a1625cfcdeb16e14c72dca4`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:31:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:31:45 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:31:45 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0333fcc6ddecfd29b9f714da839b30ace58998be08049bb68218dbf38ed7f422`  
		Last Modified: Wed, 13 Sep 2017 16:01:07 GMT  
		Size: 13.1 MB (13137250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:cc5bbee4bef71989f2a8ce46d2334244f21068bc6690d0938f4f77d45dc450f6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318529454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b097ae922b4e653d2795265cbd646dbc2a4a97bc812303b8952308c3b08b40d9`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Thu, 14 Sep 2017 23:47:18 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Thu, 14 Sep 2017 23:47:19 GMT
WORKDIR /root
# Thu, 14 Sep 2017 23:47:19 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba93be0c57aa9209f48b62640a76656457aa802817e63c3f966cb19ca140269e`  
		Last Modified: Fri, 15 Sep 2017 00:57:06 GMT  
		Size: 13.0 MB (12978421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.0`

```console
$ docker pull perl@sha256:66f6bc36a4d869f6ac0a05d1a787c0127690565055664825d9a560574b482c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26.0` - linux; amd64

```console
$ docker pull perl@sha256:26df3265ebf2bffdb7b59b75c8e1b17eeb9f1fd2f1a45c290dfb75d46019467c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336772411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d41a9e6cff620579628ba611376a6b778be8b6c5a1625cfcdeb16e14c72dca4`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:31:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:31:45 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:31:45 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0333fcc6ddecfd29b9f714da839b30ace58998be08049bb68218dbf38ed7f422`  
		Last Modified: Wed, 13 Sep 2017 16:01:07 GMT  
		Size: 13.1 MB (13137250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.0` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:cc5bbee4bef71989f2a8ce46d2334244f21068bc6690d0938f4f77d45dc450f6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318529454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b097ae922b4e653d2795265cbd646dbc2a4a97bc812303b8952308c3b08b40d9`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Thu, 14 Sep 2017 23:47:18 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Thu, 14 Sep 2017 23:47:19 GMT
WORKDIR /root
# Thu, 14 Sep 2017 23:47:19 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba93be0c57aa9209f48b62640a76656457aa802817e63c3f966cb19ca140269e`  
		Last Modified: Fri, 15 Sep 2017 00:57:06 GMT  
		Size: 13.0 MB (12978421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26.0-threaded`

```console
$ docker pull perl@sha256:b3ed6c89939c6636354e3c019c7a9e9e4e9437a5828ccd954c315cd5a58a9785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26.0-threaded` - linux; amd64

```console
$ docker pull perl@sha256:ac65fb7d2e004f3d39c125a30ec818bbd2e4a178696cf65350e438f778965624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9955f91488630d061c62e1c1c2beb48e0b406ac71afbdcf29a9a2c82bec4b4a`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:38:47 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:38:47 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:38:48 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa99df600360d83873b602227c23414a67c7de9dbfeae07d5e2f967a469243e0`  
		Last Modified: Wed, 13 Sep 2017 16:01:29 GMT  
		Size: 13.2 MB (13177870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26.0-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:bf78f1b0bdf0cf81f8976015d10d84cd10a3bdbd4d4dcc3b9de4c33fc698b357
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318559998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cab044464c66463fd13daa875e65231cf34680607c97581868b0b96562c57ef`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:04:04 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:04:05 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:04:11 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1005375b814de69938ac9b578094609d0aac8ccb5f3370ef957e4642428dbe2`  
		Last Modified: Fri, 15 Sep 2017 00:58:21 GMT  
		Size: 13.0 MB (13008965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.26-threaded`

```console
$ docker pull perl@sha256:b3ed6c89939c6636354e3c019c7a9e9e4e9437a5828ccd954c315cd5a58a9785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26-threaded` - linux; amd64

```console
$ docker pull perl@sha256:ac65fb7d2e004f3d39c125a30ec818bbd2e4a178696cf65350e438f778965624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9955f91488630d061c62e1c1c2beb48e0b406ac71afbdcf29a9a2c82bec4b4a`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:38:47 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:38:47 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:38:48 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa99df600360d83873b602227c23414a67c7de9dbfeae07d5e2f967a469243e0`  
		Last Modified: Wed, 13 Sep 2017 16:01:29 GMT  
		Size: 13.2 MB (13177870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5.26-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:bf78f1b0bdf0cf81f8976015d10d84cd10a3bdbd4d4dcc3b9de4c33fc698b357
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318559998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cab044464c66463fd13daa875e65231cf34680607c97581868b0b96562c57ef`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:04:04 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:04:05 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:04:11 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1005375b814de69938ac9b578094609d0aac8ccb5f3370ef957e4642428dbe2`  
		Last Modified: Fri, 15 Sep 2017 00:58:21 GMT  
		Size: 13.0 MB (13008965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-threaded`

```console
$ docker pull perl@sha256:b3ed6c89939c6636354e3c019c7a9e9e4e9437a5828ccd954c315cd5a58a9785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5-threaded` - linux; amd64

```console
$ docker pull perl@sha256:ac65fb7d2e004f3d39c125a30ec818bbd2e4a178696cf65350e438f778965624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9955f91488630d061c62e1c1c2beb48e0b406ac71afbdcf29a9a2c82bec4b4a`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:38:47 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:38:47 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:38:48 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa99df600360d83873b602227c23414a67c7de9dbfeae07d5e2f967a469243e0`  
		Last Modified: Wed, 13 Sep 2017 16:01:29 GMT  
		Size: 13.2 MB (13177870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:bf78f1b0bdf0cf81f8976015d10d84cd10a3bdbd4d4dcc3b9de4c33fc698b357
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318559998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cab044464c66463fd13daa875e65231cf34680607c97581868b0b96562c57ef`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:04:04 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:04:05 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:04:11 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1005375b814de69938ac9b578094609d0aac8ccb5f3370ef957e4642428dbe2`  
		Last Modified: Fri, 15 Sep 2017 00:58:21 GMT  
		Size: 13.0 MB (13008965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:latest`

```console
$ docker pull perl@sha256:f8ffaa9bac38d791882ad613679c3fe2023cea961e4018a67c59f5622444a82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:latest` - linux; amd64

```console
$ docker pull perl@sha256:26df3265ebf2bffdb7b59b75c8e1b17eeb9f1fd2f1a45c290dfb75d46019467c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336772411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d41a9e6cff620579628ba611376a6b778be8b6c5a1625cfcdeb16e14c72dca4`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:31:44 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:31:45 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:31:45 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0333fcc6ddecfd29b9f714da839b30ace58998be08049bb68218dbf38ed7f422`  
		Last Modified: Wed, 13 Sep 2017 16:01:07 GMT  
		Size: 13.1 MB (13137250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:c344ffdc86188ab459368bd9a7733ed8c0d9fef86e78dc3a3f4e4385ad151447
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.5 MB (318530907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c01112b446debd01fef1fa6f208a0b8c74190dceaba3644537030eedcd42c9d4`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 10:11:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 08:11:26 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 07 Sep 2017 08:11:27 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 07 Sep 2017 08:11:27 GMT
WORKDIR /usr/src/perl
# Thu, 07 Sep 2017 08:24:20 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Thu, 07 Sep 2017 08:24:20 GMT
WORKDIR /root
# Thu, 07 Sep 2017 08:24:21 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b2244d69635acf90f78bd437bd749244a79e7beefb7e6c08d8d9e57dcfc2b9`  
		Last Modified: Tue, 29 Aug 2017 20:16:06 GMT  
		Size: 200.2 MB (200232275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b7356404ebcaf6b67002c0d2e066fcb2f618d91ff4683c4c66db29b34d4e45`  
		Last Modified: Thu, 07 Sep 2017 09:14:46 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61685152331bc22c25bb0bb06c5b1094b8ca27ed70afa416e826370a6df097b2`  
		Last Modified: Thu, 07 Sep 2017 09:14:53 GMT  
		Size: 13.0 MB (12978167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:threaded`

```console
$ docker pull perl@sha256:b3ed6c89939c6636354e3c019c7a9e9e4e9437a5828ccd954c315cd5a58a9785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:threaded` - linux; amd64

```console
$ docker pull perl@sha256:ac65fb7d2e004f3d39c125a30ec818bbd2e4a178696cf65350e438f778965624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9955f91488630d061c62e1c1c2beb48e0b406ac71afbdcf29a9a2c82bec4b4a`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:37:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 15:25:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 13 Sep 2017 15:25:17 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 13 Sep 2017 15:25:17 GMT
WORKDIR /usr/src/perl
# Wed, 13 Sep 2017 15:38:47 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Wed, 13 Sep 2017 15:38:47 GMT
WORKDIR /root
# Wed, 13 Sep 2017 15:38:48 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa1c2e15c01b98aa16e2438aa6cf21fcddab44134694366355f447516dc7c18`  
		Last Modified: Wed, 13 Sep 2017 12:59:06 GMT  
		Size: 212.8 MB (212756174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debef9879b869df2e42f916215bcd7640008bc5b60510173626bc802a54df196`  
		Last Modified: Wed, 13 Sep 2017 16:01:05 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa99df600360d83873b602227c23414a67c7de9dbfeae07d5e2f967a469243e0`  
		Last Modified: Wed, 13 Sep 2017 16:01:29 GMT  
		Size: 13.2 MB (13177870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:bf78f1b0bdf0cf81f8976015d10d84cd10a3bdbd4d4dcc3b9de4c33fc698b357
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.6 MB (318559998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cab044464c66463fd13daa875e65231cf34680607c97581868b0b96562c57ef`
-	Default Command: `["perl5.26.0","-de0"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 19:06:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:32:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 14 Sep 2017 23:32:16 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Thu, 14 Sep 2017 23:32:17 GMT
WORKDIR /usr/src/perl
# Fri, 15 Sep 2017 00:04:04 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Fri, 15 Sep 2017 00:04:05 GMT
WORKDIR /root
# Fri, 15 Sep 2017 00:04:11 GMT
CMD ["perl5.26.0" "-de0"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52346f15a85c59e7e9429f8d898255a27edb55a2fc99904c1fc01bdfdc9cf2e1`  
		Last Modified: Fri, 08 Sep 2017 22:28:20 GMT  
		Size: 200.2 MB (200224034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764c4f9253fdd1ca5e96a4047371216d50d8983a65418e1f2e52d258faf7807`  
		Last Modified: Fri, 15 Sep 2017 00:56:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1005375b814de69938ac9b578094609d0aac8ccb5f3370ef957e4642428dbe2`  
		Last Modified: Fri, 15 Sep 2017 00:58:21 GMT  
		Size: 13.0 MB (13008965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
