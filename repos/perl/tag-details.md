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
$ docker pull perl@sha256:c6dc831f677715597fb7766fa9ce2694e142e0eeedbbfc373c6601fc2278b00a
```

-	Platforms:
	-	linux; amd64

### `perl:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254975455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85ed9c63296a3f5a71c334dd1bbee4586f1e3e773dc239acd41bbf2ca10794e`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 22:58:24 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 22:58:25 GMT
WORKDIR /root
# Mon, 06 Mar 2017 22:58:25 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4474b884bb3cffe29d8e34e5d0b77719846951de9eea570823e17d854592a36`  
		Last Modified: Mon, 06 Mar 2017 23:15:16 GMT  
		Size: 12.7 MB (12721489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5`

```console
$ docker pull perl@sha256:c6dc831f677715597fb7766fa9ce2694e142e0eeedbbfc373c6601fc2278b00a
```

-	Platforms:
	-	linux; amd64

### `perl:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254975455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85ed9c63296a3f5a71c334dd1bbee4586f1e3e773dc239acd41bbf2ca10794e`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 22:58:24 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 22:58:25 GMT
WORKDIR /root
# Mon, 06 Mar 2017 22:58:25 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4474b884bb3cffe29d8e34e5d0b77719846951de9eea570823e17d854592a36`  
		Last Modified: Mon, 06 Mar 2017 23:15:16 GMT  
		Size: 12.7 MB (12721489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24`

```console
$ docker pull perl@sha256:c6dc831f677715597fb7766fa9ce2694e142e0eeedbbfc373c6601fc2278b00a
```

-	Platforms:
	-	linux; amd64

### `perl:5.24` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254975455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85ed9c63296a3f5a71c334dd1bbee4586f1e3e773dc239acd41bbf2ca10794e`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 22:58:24 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 22:58:25 GMT
WORKDIR /root
# Mon, 06 Mar 2017 22:58:25 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4474b884bb3cffe29d8e34e5d0b77719846951de9eea570823e17d854592a36`  
		Last Modified: Mon, 06 Mar 2017 23:15:16 GMT  
		Size: 12.7 MB (12721489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.1`

```console
$ docker pull perl@sha256:c6dc831f677715597fb7766fa9ce2694e142e0eeedbbfc373c6601fc2278b00a
```

-	Platforms:
	-	linux; amd64

### `perl:5.24.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254975455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85ed9c63296a3f5a71c334dd1bbee4586f1e3e773dc239acd41bbf2ca10794e`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 22:58:24 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 22:58:25 GMT
WORKDIR /root
# Mon, 06 Mar 2017 22:58:25 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4474b884bb3cffe29d8e34e5d0b77719846951de9eea570823e17d854592a36`  
		Last Modified: Mon, 06 Mar 2017 23:15:16 GMT  
		Size: 12.7 MB (12721489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:threaded`

```console
$ docker pull perl@sha256:e91437670a4ddc32b9fd02f8ba5e0be1726af9b8505606a7089c3402766b9f17
```

-	Platforms:
	-	linux; amd64

### `perl:threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (255008235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d189d02704ccae0a72223d45fc484e46485899e01d5c1d947f92f9b3d86c9cdc`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:04:07 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:04:07 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:04:08 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5617fbdc1dd4fce4be849233fdce392bcc9c8e67093c6f4c982d91068dc86f9b`  
		Last Modified: Mon, 06 Mar 2017 23:16:42 GMT  
		Size: 12.8 MB (12754269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-threaded`

```console
$ docker pull perl@sha256:e91437670a4ddc32b9fd02f8ba5e0be1726af9b8505606a7089c3402766b9f17
```

-	Platforms:
	-	linux; amd64

### `perl:5-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (255008235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d189d02704ccae0a72223d45fc484e46485899e01d5c1d947f92f9b3d86c9cdc`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:04:07 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:04:07 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:04:08 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5617fbdc1dd4fce4be849233fdce392bcc9c8e67093c6f4c982d91068dc86f9b`  
		Last Modified: Mon, 06 Mar 2017 23:16:42 GMT  
		Size: 12.8 MB (12754269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-threaded`

```console
$ docker pull perl@sha256:e91437670a4ddc32b9fd02f8ba5e0be1726af9b8505606a7089c3402766b9f17
```

-	Platforms:
	-	linux; amd64

### `perl:5.24-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (255008235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d189d02704ccae0a72223d45fc484e46485899e01d5c1d947f92f9b3d86c9cdc`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:04:07 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:04:07 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:04:08 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5617fbdc1dd4fce4be849233fdce392bcc9c8e67093c6f4c982d91068dc86f9b`  
		Last Modified: Mon, 06 Mar 2017 23:16:42 GMT  
		Size: 12.8 MB (12754269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.1-threaded`

```console
$ docker pull perl@sha256:e91437670a4ddc32b9fd02f8ba5e0be1726af9b8505606a7089c3402766b9f17
```

-	Platforms:
	-	linux; amd64

### `perl:5.24.1-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (255008235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d189d02704ccae0a72223d45fc484e46485899e01d5c1d947f92f9b3d86c9cdc`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:04:07 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:04:07 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:04:08 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5617fbdc1dd4fce4be849233fdce392bcc9c8e67093c6f4c982d91068dc86f9b`  
		Last Modified: Mon, 06 Mar 2017 23:16:42 GMT  
		Size: 12.8 MB (12754269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22`

```console
$ docker pull perl@sha256:32f7b5fcd7f17ae37af788c4c54dd2310bf530ec72bd413d400820aa9249b8cf
```

-	Platforms:
	-	linux; amd64

### `perl:5.22` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254755494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52a7a3ea53d573dc6cbfb6686500f24e8bcc0182b4dabafbfbc2b56d0008ddb`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:09:13 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:09:13 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:09:14 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911865d2e825e6da4efcefb0d4d3c7a940ff2d37f4bf6e636a8fbf824309ad2d`  
		Last Modified: Mon, 06 Mar 2017 23:18:02 GMT  
		Size: 12.5 MB (12501528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.3`

```console
$ docker pull perl@sha256:32f7b5fcd7f17ae37af788c4c54dd2310bf530ec72bd413d400820aa9249b8cf
```

-	Platforms:
	-	linux; amd64

### `perl:5.22.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254755494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52a7a3ea53d573dc6cbfb6686500f24e8bcc0182b4dabafbfbc2b56d0008ddb`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:09:13 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:09:13 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:09:14 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911865d2e825e6da4efcefb0d4d3c7a940ff2d37f4bf6e636a8fbf824309ad2d`  
		Last Modified: Mon, 06 Mar 2017 23:18:02 GMT  
		Size: 12.5 MB (12501528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22-threaded`

```console
$ docker pull perl@sha256:04a0a6d778b0001dc57e3b287d19efc25af0bfcd46c6dd1094a47af54bbff261
```

-	Platforms:
	-	linux; amd64

### `perl:5.22-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254798035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eca0685e5e3d3ce0c3d74dca1e844f96af062da56685a39cd1b9fc6b5f72da3`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:14:49 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:14:49 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:14:50 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971d98d3e4bf93d9ae3975d2ff44c5b275823709a19c0e72b654228437a347f`  
		Last Modified: Mon, 06 Mar 2017 23:18:45 GMT  
		Size: 12.5 MB (12544069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.3-threaded`

```console
$ docker pull perl@sha256:04a0a6d778b0001dc57e3b287d19efc25af0bfcd46c6dd1094a47af54bbff261
```

-	Platforms:
	-	linux; amd64

### `perl:5.22.3-threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254798035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eca0685e5e3d3ce0c3d74dca1e844f96af062da56685a39cd1b9fc6b5f72da3`
-	Default Command: `["perl5.22.3","-de0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:12 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 28 Feb 2017 15:29:17 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:29:18 GMT
RUN mkdir /usr/src/perl
# Mon, 06 Mar 2017 22:53:07 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Mon, 06 Mar 2017 22:53:08 GMT
WORKDIR /usr/src/perl
# Mon, 06 Mar 2017 23:14:49 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.3.tar.bz2 -o perl-5.22.3.tar.bz2     && echo '770dd077a67a382501ab195cc75eee0baa5efa3544892c9a713a5bdb2645449f *perl-5.22.3.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.22.3.tar.bz2 -C /usr/src/perl     && rm perl-5.22.3.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Mon, 06 Mar 2017 23:14:49 GMT
WORKDIR /root
# Mon, 06 Mar 2017 23:14:50 GMT
CMD ["perl5.22.3" "-de0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe7b44171829582da1db53bfc99cb723de5c105db7e0cc46d9bfbc18d677ff5`  
		Last Modified: Wed, 01 Mar 2017 16:30:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b60c53f62e47814f656210732e45754526f9e3bb921d8c6e656538e267178`  
		Last Modified: Wed, 01 Mar 2017 16:30:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e034c65709665d616c45ceb98e40b381149714fd4965d16e6adddcda80a978f0`  
		Last Modified: Mon, 06 Mar 2017 23:15:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971d98d3e4bf93d9ae3975d2ff44c5b275823709a19c0e72b654228437a347f`  
		Last Modified: Mon, 06 Mar 2017 23:18:45 GMT  
		Size: 12.5 MB (12544069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
