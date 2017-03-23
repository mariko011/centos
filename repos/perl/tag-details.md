<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `perl`

-	[`perl:latest`](#perllatest)
-	[`perl:5`](#perl5)
-	[`perl:5.24`](#perl524)
-	[`perl:5.24.1`](#perl5241)
-	[`perl:threaded`](#perlthreaded)
-	[`perl:5-threaded`](#perl5-threaded)
-	[`perl:5.24-threaded`](#perl524-threaded)
-	[`perl:5.24.1-threaded`](#perl5241-threaded)
-	[`perl:5.22`](#perl522)
-	[`perl:5.22.3`](#perl5223)
-	[`perl:5.22-threaded`](#perl522-threaded)
-	[`perl:5.22.3-threaded`](#perl5223-threaded)

## `perl:latest`

```console
$ docker pull perl@sha256:d96aadcdc209340251394f4c2a7bf995cf9868b5bca92902f04bc2349dbefa1f
```

-	Platforms:
	-	linux; amd64

### `perl:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255273074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6052c85db8489ae12b64c49c41e7b9679895fac1205ef0ce004c4c8e37c1f0`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:18:29 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:18:29 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:18:29 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ad2c837dc231e614548fd6017e18837ea7a4d0881dc94c48bf8364e02b7ac2`  
		Last Modified: Thu, 23 Mar 2017 19:06:33 GMT  
		Size: 12.7 MB (12721516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5`

```console
$ docker pull perl@sha256:d96aadcdc209340251394f4c2a7bf995cf9868b5bca92902f04bc2349dbefa1f
```

-	Platforms:
	-	linux; amd64

### `perl:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255273074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6052c85db8489ae12b64c49c41e7b9679895fac1205ef0ce004c4c8e37c1f0`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:18:29 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:18:29 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:18:29 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ad2c837dc231e614548fd6017e18837ea7a4d0881dc94c48bf8364e02b7ac2`  
		Last Modified: Thu, 23 Mar 2017 19:06:33 GMT  
		Size: 12.7 MB (12721516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24`

```console
$ docker pull perl@sha256:d96aadcdc209340251394f4c2a7bf995cf9868b5bca92902f04bc2349dbefa1f
```

-	Platforms:
	-	linux; amd64

### `perl:5.24` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255273074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6052c85db8489ae12b64c49c41e7b9679895fac1205ef0ce004c4c8e37c1f0`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:18:29 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:18:29 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:18:29 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ad2c837dc231e614548fd6017e18837ea7a4d0881dc94c48bf8364e02b7ac2`  
		Last Modified: Thu, 23 Mar 2017 19:06:33 GMT  
		Size: 12.7 MB (12721516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.1`

```console
$ docker pull perl@sha256:d96aadcdc209340251394f4c2a7bf995cf9868b5bca92902f04bc2349dbefa1f
```

-	Platforms:
	-	linux; amd64

### `perl:5.24.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255273074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6052c85db8489ae12b64c49c41e7b9679895fac1205ef0ce004c4c8e37c1f0`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:18:29 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:18:29 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:18:29 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ad2c837dc231e614548fd6017e18837ea7a4d0881dc94c48bf8364e02b7ac2`  
		Last Modified: Thu, 23 Mar 2017 19:06:33 GMT  
		Size: 12.7 MB (12721516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:threaded`

```console
$ docker pull perl@sha256:8f6eca6ff3b472947f4b846799e74c70e37f8acac2a477846a1f2ba2f71cf08a
```

-	Platforms:
	-	linux; amd64

### `perl:threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255305918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6fe15d85654dfc2de12dfa1eb9047a03003ad162aedfbed8824c8d84cad94d`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:24:15 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:24:15 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:24:16 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d5ace240572054962fa8041030a178aff69b1f7753fd0c537237995e8004c0`  
		Last Modified: Thu, 23 Mar 2017 19:08:02 GMT  
		Size: 12.8 MB (12754360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-threaded`

```console
$ docker pull perl@sha256:8f6eca6ff3b472947f4b846799e74c70e37f8acac2a477846a1f2ba2f71cf08a
```

-	Platforms:
	-	linux; amd64

### `perl:5-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255305918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6fe15d85654dfc2de12dfa1eb9047a03003ad162aedfbed8824c8d84cad94d`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:24:15 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:24:15 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:24:16 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d5ace240572054962fa8041030a178aff69b1f7753fd0c537237995e8004c0`  
		Last Modified: Thu, 23 Mar 2017 19:08:02 GMT  
		Size: 12.8 MB (12754360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-threaded`

```console
$ docker pull perl@sha256:8f6eca6ff3b472947f4b846799e74c70e37f8acac2a477846a1f2ba2f71cf08a
```

-	Platforms:
	-	linux; amd64

### `perl:5.24-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255305918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6fe15d85654dfc2de12dfa1eb9047a03003ad162aedfbed8824c8d84cad94d`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:24:15 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:24:15 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:24:16 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d5ace240572054962fa8041030a178aff69b1f7753fd0c537237995e8004c0`  
		Last Modified: Thu, 23 Mar 2017 19:08:02 GMT  
		Size: 12.8 MB (12754360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.1-threaded`

```console
$ docker pull perl@sha256:8f6eca6ff3b472947f4b846799e74c70e37f8acac2a477846a1f2ba2f71cf08a
```

-	Platforms:
	-	linux; amd64

### `perl:5.24.1-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255305918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6fe15d85654dfc2de12dfa1eb9047a03003ad162aedfbed8824c8d84cad94d`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:24:15 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:24:15 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:24:16 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d5ace240572054962fa8041030a178aff69b1f7753fd0c537237995e8004c0`  
		Last Modified: Thu, 23 Mar 2017 19:08:02 GMT  
		Size: 12.8 MB (12754360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22`

```console
$ docker pull perl@sha256:afd7fbeb30ded6e289f37a6a51f64bfa2d359a578c9f1ea75255ae60093e6d25
```

-	Platforms:
	-	linux; amd64

### `perl:5.22` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255053031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245182934795e09d946779ee2215d41a233fe1fd20c48a6348ed877fe389ae48`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:29:24 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:29:24 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:29:24 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137c230239c9878715a6f6ad51bd87af23a88d79ac0df0faae273e8b600d8777`  
		Last Modified: Thu, 23 Mar 2017 19:09:30 GMT  
		Size: 12.5 MB (12501473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.3`

```console
$ docker pull perl@sha256:afd7fbeb30ded6e289f37a6a51f64bfa2d359a578c9f1ea75255ae60093e6d25
```

-	Platforms:
	-	linux; amd64

### `perl:5.22.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255053031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245182934795e09d946779ee2215d41a233fe1fd20c48a6348ed877fe389ae48`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:29:24 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:29:24 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:29:24 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137c230239c9878715a6f6ad51bd87af23a88d79ac0df0faae273e8b600d8777`  
		Last Modified: Thu, 23 Mar 2017 19:09:30 GMT  
		Size: 12.5 MB (12501473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22-threaded`

```console
$ docker pull perl@sha256:655287798ea73eb6cb92d214c954f36f1a3a6867216e689ffff592cd99bfba8d
```

-	Platforms:
	-	linux; amd64

### `perl:5.22-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255095417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e65c720ec4d5a14955d7e9a6efda2d5d43296486e7e1878db426e22047a2ce`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:35:02 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:35:02 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:35:03 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93c19e13aa1d6a63e9a5bff5ed67c62aa6912ac0549515678012451c4bca49a`  
		Last Modified: Thu, 23 Mar 2017 19:10:19 GMT  
		Size: 12.5 MB (12543859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.3-threaded`

```console
$ docker pull perl@sha256:655287798ea73eb6cb92d214c954f36f1a3a6867216e689ffff592cd99bfba8d
```

-	Platforms:
	-	linux; amd64

### `perl:5.22.3-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255095417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e65c720ec4d5a14955d7e9a6efda2d5d43296486e7e1878db426e22047a2ce`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:05 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 22 Mar 2017 22:13:10 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 22 Mar 2017 22:13:11 GMT
RUN mkdir /usr/src/perl
# Wed, 22 Mar 2017 22:13:11 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 22 Mar 2017 22:13:11 GMT
WORKDIR /usr/src/perl
# Wed, 22 Mar 2017 22:35:02 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 22 Mar 2017 22:35:02 GMT
WORKDIR /root
# Wed, 22 Mar 2017 22:35:03 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4182cda69ef39bb0bd3678de0afce2f286329646bd82539838096348f9766263`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ec912b2b636038df253699068d2c41b496334e2468fa69622154fdc67e620`  
		Last Modified: Thu, 23 Mar 2017 19:06:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74d314cefe07f97250de15a8061e921531a3eb4a44449c226ee143b75264f98`  
		Last Modified: Thu, 23 Mar 2017 19:06:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93c19e13aa1d6a63e9a5bff5ed67c62aa6912ac0549515678012451c4bca49a`  
		Last Modified: Thu, 23 Mar 2017 19:10:19 GMT  
		Size: 12.5 MB (12543859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
