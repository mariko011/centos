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
$ docker pull perl@sha256:830596ae41244c2cf8422eedfcb43daa9d715806bbefcd9e4a342d95c0f63c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5` - linux; amd64

```console
$ docker pull perl@sha256:50804d5e424e638369a4e86672d8d8e625c97d5af49a19d62fd0cabd24fba94b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ad04db424d83936d55af2c627173fd06fe78d70f4d19887e34d730a7a4058`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:39:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:39:23 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:39:23 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fd7aad2937d0270a475cd60b8c48a492da3815b148d5c0fc04eac180910b0`  
		Last Modified: Tue, 10 Oct 2017 08:12:55 GMT  
		Size: 13.1 MB (13137154 bytes)  
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
$ docker pull perl@sha256:15d450e0e3847e6ec7f63bcfecc87069b043fa00609423af8e925da26dc67fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22` - linux; amd64

```console
$ docker pull perl@sha256:e7ea414eab6b5a91e04694f3ea82e43672c590fdad9830e9a868e3a3ee51370a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336236895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604874e90138c1df85b8e1d07789e8e8babd5423a525b4a415cfdfe72e0be985`
-	Default Command: `["perl5.22.4","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 08:05:55 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 08:05:55 GMT
WORKDIR /root
# Tue, 10 Oct 2017 08:05:55 GMT
CMD ["perl5.22.4" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2d2967f96194eba40278e41ea765ea73a006b92d59c8ab23644e20b367b6a0`  
		Last Modified: Tue, 10 Oct 2017 08:15:10 GMT  
		Size: 12.6 MB (12559294 bytes)  
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
$ docker pull perl@sha256:15d450e0e3847e6ec7f63bcfecc87069b043fa00609423af8e925da26dc67fda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22.4` - linux; amd64

```console
$ docker pull perl@sha256:e7ea414eab6b5a91e04694f3ea82e43672c590fdad9830e9a868e3a3ee51370a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336236895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604874e90138c1df85b8e1d07789e8e8babd5423a525b4a415cfdfe72e0be985`
-	Default Command: `["perl5.22.4","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 08:05:55 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 08:05:55 GMT
WORKDIR /root
# Tue, 10 Oct 2017 08:05:55 GMT
CMD ["perl5.22.4" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2d2967f96194eba40278e41ea765ea73a006b92d59c8ab23644e20b367b6a0`  
		Last Modified: Tue, 10 Oct 2017 08:15:10 GMT  
		Size: 12.6 MB (12559294 bytes)  
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
$ docker pull perl@sha256:40f3935cf561c2bf4b32e724f1d1bfeb7daa379adee8ccafff8de01f4ebf77ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22.4-threaded` - linux; amd64

```console
$ docker pull perl@sha256:a5f741c0ec9c735de48c6a298fd47d4ade7e53a90f9c014ba4c4f150947f9c31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336274252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3499c4e41b2f248db76db4f72776b9c5e3805b283ad0d93dba934f6abce65922`
-	Default Command: `["perl5.22.4","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 08:12:33 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 08:12:33 GMT
WORKDIR /root
# Tue, 10 Oct 2017 08:12:34 GMT
CMD ["perl5.22.4" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e9c7fc53f7cc1f046d5bc564e9ae89ccd010edd68906923b4af656c54ae0a`  
		Last Modified: Tue, 10 Oct 2017 08:15:37 GMT  
		Size: 12.6 MB (12596651 bytes)  
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
$ docker pull perl@sha256:40f3935cf561c2bf4b32e724f1d1bfeb7daa379adee8ccafff8de01f4ebf77ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.22-threaded` - linux; amd64

```console
$ docker pull perl@sha256:a5f741c0ec9c735de48c6a298fd47d4ade7e53a90f9c014ba4c4f150947f9c31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336274252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3499c4e41b2f248db76db4f72776b9c5e3805b283ad0d93dba934f6abce65922`
-	Default Command: `["perl5.22.4","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 08:12:33 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.22.4.tar.bz2 -o perl-5.22.4.tar.bz2     && echo '8b3122046d1186598082d0e6da53193b045e85e3505e7d37ee0bdd0bdb539b71 *perl-5.22.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.4.tar.bz2 -C /usr/src/perl     && rm perl-5.22.4.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 08:12:33 GMT
WORKDIR /root
# Tue, 10 Oct 2017 08:12:34 GMT
CMD ["perl5.22.4" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e9c7fc53f7cc1f046d5bc564e9ae89ccd010edd68906923b4af656c54ae0a`  
		Last Modified: Tue, 10 Oct 2017 08:15:37 GMT  
		Size: 12.6 MB (12596651 bytes)  
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
$ docker pull perl@sha256:3cd602755e3d5723046f9a12905aa71726c1929ee17ef88980ade0c5a4fef875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24` - linux; amd64

```console
$ docker pull perl@sha256:efaa444bb15f607a7c4e46aa4dfeaafb5ce99255019bbfb26ef9f087931540e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336450174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9e708f3a12f732761d7c64c54f0d4a6b57ddaa10da7d910aa219eb3763f720`
-	Default Command: `["perl5.24.2","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:53:36 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:53:37 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:53:37 GMT
CMD ["perl5.24.2" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfedb22eb745a70acfcc045ae40e96577e74532c686d9df32268573336dbc864`  
		Last Modified: Tue, 10 Oct 2017 08:14:17 GMT  
		Size: 12.8 MB (12772573 bytes)  
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
$ docker pull perl@sha256:3cd602755e3d5723046f9a12905aa71726c1929ee17ef88980ade0c5a4fef875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24.2` - linux; amd64

```console
$ docker pull perl@sha256:efaa444bb15f607a7c4e46aa4dfeaafb5ce99255019bbfb26ef9f087931540e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336450174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9e708f3a12f732761d7c64c54f0d4a6b57ddaa10da7d910aa219eb3763f720`
-	Default Command: `["perl5.24.2","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:53:36 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:53:37 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:53:37 GMT
CMD ["perl5.24.2" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfedb22eb745a70acfcc045ae40e96577e74532c686d9df32268573336dbc864`  
		Last Modified: Tue, 10 Oct 2017 08:14:17 GMT  
		Size: 12.8 MB (12772573 bytes)  
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
$ docker pull perl@sha256:8f42b2a3ad2dd4987811d0c26c2bd501f9b4edefccfee7c4cb247602811930e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24.2-threaded` - linux; amd64

```console
$ docker pull perl@sha256:9eb27a398b59ae40b3c6b059b4847b8fd7b73666aa255209b17acf8cbc2fb9dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336495513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a32fb0d23caf5404680e6bf01448c1b33fb28fc2a39303438a9c02d5f16f0eb`
-	Default Command: `["perl5.24.2","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 08:00:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 08:00:21 GMT
WORKDIR /root
# Tue, 10 Oct 2017 08:00:22 GMT
CMD ["perl5.24.2" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4ab248384a53144806cf67e85a4d632bf69ac65b866dcfa8ab059bcfbaffdc`  
		Last Modified: Tue, 10 Oct 2017 08:14:42 GMT  
		Size: 12.8 MB (12817912 bytes)  
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
$ docker pull perl@sha256:8f42b2a3ad2dd4987811d0c26c2bd501f9b4edefccfee7c4cb247602811930e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.24-threaded` - linux; amd64

```console
$ docker pull perl@sha256:9eb27a398b59ae40b3c6b059b4847b8fd7b73666aa255209b17acf8cbc2fb9dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336495513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a32fb0d23caf5404680e6bf01448c1b33fb28fc2a39303438a9c02d5f16f0eb`
-	Default Command: `["perl5.24.2","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:47:53 GMT
COPY file:8ec4c502353dc2292f58925f8f4839452343eecf953382ae03cb81990bee82b7 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:47:58 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 08:00:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.24.2.tar.bz2 -o perl-5.24.2.tar.bz2     && echo 'e28c8fa588c4227eb25350036b45d7b1b46d61bb3a2194ee09dc79be6ed0fd0f *perl-5.24.2.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.2.tar.bz2 -C /usr/src/perl     && rm perl-5.24.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 08:00:21 GMT
WORKDIR /root
# Tue, 10 Oct 2017 08:00:22 GMT
CMD ["perl5.24.2" "-de0"]
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
	-	`sha256:fe465da044327ec5308dd4f527fc09e74d613594c66f40eeb5ef59ee21b960b1`  
		Last Modified: Tue, 10 Oct 2017 08:14:12 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4ab248384a53144806cf67e85a4d632bf69ac65b866dcfa8ab059bcfbaffdc`  
		Last Modified: Tue, 10 Oct 2017 08:14:42 GMT  
		Size: 12.8 MB (12817912 bytes)  
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
$ docker pull perl@sha256:830596ae41244c2cf8422eedfcb43daa9d715806bbefcd9e4a342d95c0f63c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26` - linux; amd64

```console
$ docker pull perl@sha256:50804d5e424e638369a4e86672d8d8e625c97d5af49a19d62fd0cabd24fba94b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ad04db424d83936d55af2c627173fd06fe78d70f4d19887e34d730a7a4058`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:39:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:39:23 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:39:23 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fd7aad2937d0270a475cd60b8c48a492da3815b148d5c0fc04eac180910b0`  
		Last Modified: Tue, 10 Oct 2017 08:12:55 GMT  
		Size: 13.1 MB (13137154 bytes)  
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
$ docker pull perl@sha256:830596ae41244c2cf8422eedfcb43daa9d715806bbefcd9e4a342d95c0f63c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26.0` - linux; amd64

```console
$ docker pull perl@sha256:50804d5e424e638369a4e86672d8d8e625c97d5af49a19d62fd0cabd24fba94b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ad04db424d83936d55af2c627173fd06fe78d70f4d19887e34d730a7a4058`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:39:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:39:23 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:39:23 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fd7aad2937d0270a475cd60b8c48a492da3815b148d5c0fc04eac180910b0`  
		Last Modified: Tue, 10 Oct 2017 08:12:55 GMT  
		Size: 13.1 MB (13137154 bytes)  
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
$ docker pull perl@sha256:9819e1748151577906428727a376be961b5f03e90ce2c1e2f1d810a7bbeead48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26.0-threaded` - linux; amd64

```console
$ docker pull perl@sha256:294321a7a6d43b02563c744653b7335120a04a1112e8100381c1d0589bdf39da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336854610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5a84ae1a541bd658bc46a6ccc912c71f6ab1aaad83bbea4f59289541084ca5`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:47:38 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:47:38 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:47:38 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f4d19b3f8c5455ba7398cf86737ea6fe9edc126a29635b2a10f4601939e1c2`  
		Last Modified: Tue, 10 Oct 2017 08:13:32 GMT  
		Size: 13.2 MB (13178599 bytes)  
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
$ docker pull perl@sha256:9819e1748151577906428727a376be961b5f03e90ce2c1e2f1d810a7bbeead48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5.26-threaded` - linux; amd64

```console
$ docker pull perl@sha256:294321a7a6d43b02563c744653b7335120a04a1112e8100381c1d0589bdf39da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336854610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5a84ae1a541bd658bc46a6ccc912c71f6ab1aaad83bbea4f59289541084ca5`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:47:38 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:47:38 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:47:38 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f4d19b3f8c5455ba7398cf86737ea6fe9edc126a29635b2a10f4601939e1c2`  
		Last Modified: Tue, 10 Oct 2017 08:13:32 GMT  
		Size: 13.2 MB (13178599 bytes)  
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
$ docker pull perl@sha256:9819e1748151577906428727a376be961b5f03e90ce2c1e2f1d810a7bbeead48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:5-threaded` - linux; amd64

```console
$ docker pull perl@sha256:294321a7a6d43b02563c744653b7335120a04a1112e8100381c1d0589bdf39da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336854610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5a84ae1a541bd658bc46a6ccc912c71f6ab1aaad83bbea4f59289541084ca5`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:47:38 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:47:38 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:47:38 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f4d19b3f8c5455ba7398cf86737ea6fe9edc126a29635b2a10f4601939e1c2`  
		Last Modified: Tue, 10 Oct 2017 08:13:32 GMT  
		Size: 13.2 MB (13178599 bytes)  
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
$ docker pull perl@sha256:830596ae41244c2cf8422eedfcb43daa9d715806bbefcd9e4a342d95c0f63c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:latest` - linux; amd64

```console
$ docker pull perl@sha256:50804d5e424e638369a4e86672d8d8e625c97d5af49a19d62fd0cabd24fba94b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.8 MB (336813165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5ad04db424d83936d55af2c627173fd06fe78d70f4d19887e34d730a7a4058`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:39:21 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:39:23 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:39:23 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fd7aad2937d0270a475cd60b8c48a492da3815b148d5c0fc04eac180910b0`  
		Last Modified: Tue, 10 Oct 2017 08:12:55 GMT  
		Size: 13.1 MB (13137154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:latest` - linux; arm64 variant v8

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

## `perl:threaded`

```console
$ docker pull perl@sha256:9819e1748151577906428727a376be961b5f03e90ce2c1e2f1d810a7bbeead48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `perl:threaded` - linux; amd64

```console
$ docker pull perl@sha256:294321a7a6d43b02563c744653b7335120a04a1112e8100381c1d0589bdf39da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.9 MB (336854610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5a84ae1a541bd658bc46a6ccc912c71f6ab1aaad83bbea4f59289541084ca5`
-	Default Command: `["perl5.26.0","-de0"]`

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
# Tue, 10 Oct 2017 07:31:58 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 10 Oct 2017 07:31:58 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 10 Oct 2017 07:31:59 GMT
WORKDIR /usr/src/perl
# Tue, 10 Oct 2017 07:47:38 GMT
RUN curl -SL https://www.cpan.org/src/5.0/perl-5.26.0.tar.bz2 -o perl-5.26.0.tar.bz2     && echo 'f21d66de84982175e95ad15fd8d0e22fed2cc2de7e4394f5d48dbe451be2f6f2 *perl-5.26.0.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.26.0.tar.bz2 -C /usr/src/perl     && rm perl-5.26.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7043.tar.gz     && echo '68a06f7da80882a95bc02c92c7ee305846fb6ab648cf83678ea945e44ad65c65 *App-cpanminus-1.7043.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7043.tar.gz && cd App-cpanminus-1.7043 && perl bin/cpanm . && cd /root     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7043* /tmp/*
# Tue, 10 Oct 2017 07:47:38 GMT
WORKDIR /root
# Tue, 10 Oct 2017 07:47:38 GMT
CMD ["perl5.26.0" "-de0"]
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
	-	`sha256:daf5021ead1c59c2632854bdf5497151fba71a16e6ba267ed69b87ce2242c011`  
		Last Modified: Tue, 10 Oct 2017 08:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f4d19b3f8c5455ba7398cf86737ea6fe9edc126a29635b2a10f4601939e1c2`  
		Last Modified: Tue, 10 Oct 2017 08:13:32 GMT  
		Size: 13.2 MB (13178599 bytes)  
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
