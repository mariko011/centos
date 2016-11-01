<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `perl`

-	[`perl:latest`](#perllatest)
-	[`perl:5`](#perl5)
-	[`perl:5.24`](#perl524)
-	[`perl:5.24.0`](#perl5240)
-	[`perl:5.22`](#perl522)
-	[`perl:5.22.2`](#perl5222)
-	[`perl:threaded`](#perlthreaded)
-	[`perl:5-threaded`](#perl5-threaded)
-	[`perl:5.24-threaded`](#perl524-threaded)
-	[`perl:5.24.0-threaded`](#perl5240-threaded)
-	[`perl:5.22-threaded`](#perl522-threaded)
-	[`perl:5.22.2-threaded`](#perl5222-threaded)

## `perl:latest`

```console
$ docker pull perl@sha256:1a4709a97c7259f877fcc6456064694d5f1bf65006f83acebf8030a43acfc627
```

-	Platforms:
	-	linux; amd64

### `perl:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254926174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf1718acb1d6bcdb918a2d011f7cfe4439ad35fe0434520652d1a68994b31b2`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:56:47 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Tue, 01 Nov 2016 06:56:53 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:56:54 GMT
RUN mkdir /usr/src/perl
# Tue, 01 Nov 2016 06:56:55 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Tue, 01 Nov 2016 06:56:55 GMT
WORKDIR /usr/src/perl
# Tue, 01 Nov 2016 07:02:11 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Tue, 01 Nov 2016 07:02:11 GMT
WORKDIR /root
# Tue, 01 Nov 2016 07:02:12 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c42b90e8a1233238d5f6855c2752d73477d114e01837b7637390dabf33c56bd`  
		Last Modified: Tue, 01 Nov 2016 07:02:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c09694799f1b0908c4d96fa41717a48501b4ffb132a9a78f5f59f77d237e4a`  
		Last Modified: Tue, 01 Nov 2016 07:02:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f856ac78cd3c0ee52cda29df467499a971921b8bbe2d7b16e20e38d1984fd83`  
		Last Modified: Tue, 01 Nov 2016 07:02:23 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15827035bbe7361a183e96b2e301712fc14df9b888cff97c6c63d68608a0ba77`  
		Last Modified: Tue, 01 Nov 2016 07:02:27 GMT  
		Size: 12.7 MB (12723798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5`

```console
$ docker pull perl@sha256:6c589d851fed973cf7e1285abc13f4f92d31665f6acf4e094819d5292160e5c7
```

-	Platforms:
	-	linux; amd64

### `perl:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254850028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e41e468c9cb4351dbbeedf2a9d266bcdf2257d3b1188a73b421b2035513f01`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:38:06 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:38:07 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:43:18 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:43:19 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:43:19 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f8dc835f8583524e880f9b3812009c9706d1afa05132940e6b90e8b393fb1`  
		Last Modified: Sat, 22 Oct 2016 07:43:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e941ec41d01f8be415951eadf48664aae02fa8d6d9ec5c635ad2d9890188ed`  
		Last Modified: Sat, 22 Oct 2016 07:43:34 GMT  
		Size: 12.7 MB (12702003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24`

```console
$ docker pull perl@sha256:6c589d851fed973cf7e1285abc13f4f92d31665f6acf4e094819d5292160e5c7
```

-	Platforms:
	-	linux; amd64

### `perl:5.24` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254850028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e41e468c9cb4351dbbeedf2a9d266bcdf2257d3b1188a73b421b2035513f01`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:38:06 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:38:07 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:43:18 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:43:19 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:43:19 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f8dc835f8583524e880f9b3812009c9706d1afa05132940e6b90e8b393fb1`  
		Last Modified: Sat, 22 Oct 2016 07:43:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e941ec41d01f8be415951eadf48664aae02fa8d6d9ec5c635ad2d9890188ed`  
		Last Modified: Sat, 22 Oct 2016 07:43:34 GMT  
		Size: 12.7 MB (12702003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.0`

```console
$ docker pull perl@sha256:6c589d851fed973cf7e1285abc13f4f92d31665f6acf4e094819d5292160e5c7
```

-	Platforms:
	-	linux; amd64

### `perl:5.24.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254850028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e41e468c9cb4351dbbeedf2a9d266bcdf2257d3b1188a73b421b2035513f01`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:38:06 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:38:07 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:43:18 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:43:19 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:43:19 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f8dc835f8583524e880f9b3812009c9706d1afa05132940e6b90e8b393fb1`  
		Last Modified: Sat, 22 Oct 2016 07:43:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e941ec41d01f8be415951eadf48664aae02fa8d6d9ec5c635ad2d9890188ed`  
		Last Modified: Sat, 22 Oct 2016 07:43:34 GMT  
		Size: 12.7 MB (12702003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22`

```console
$ docker pull perl@sha256:8e141ee23deb41573ac1b374fa7124c9692165d2225bfa73fc8c64ebc1e91a6c
```

-	Platforms:
	-	linux; amd64

### `perl:5.22` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254616515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f17ffa34cf6be3603064e12f24e0e5f77645c4a93a584cd8f225c9a78748b21`
-	Default Command: `["perl5.22.2","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:50:56 GMT
COPY file:3350578ae238d520a6b8fc3a800a5f5df942499a0f8fda6c82b5ba594f4fc068 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:50:57 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:56:01 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.2.tar.bz2 -o perl-5.22.2.tar.bz2     && echo 'e2f465446dcd45a7fa3da696037f9ebe73e78e55 *perl-5.22.2.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.22.2.tar.bz2 -C /usr/src/perl     && rm perl-5.22.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:56:02 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:56:02 GMT
CMD ["perl5.22.2" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3031dd5a6e8baff4baa21e366ffed9c31d694a8e4dfb2f0b00d39f965f79d2`  
		Last Modified: Sat, 22 Oct 2016 07:56:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9399f6e870e43f870616f2480e67a56f6982543ffdffb494ce5c1923ace6ca`  
		Last Modified: Sat, 22 Oct 2016 07:56:17 GMT  
		Size: 12.5 MB (12468492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.2`

```console
$ docker pull perl@sha256:8e141ee23deb41573ac1b374fa7124c9692165d2225bfa73fc8c64ebc1e91a6c
```

-	Platforms:
	-	linux; amd64

### `perl:5.22.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254616515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f17ffa34cf6be3603064e12f24e0e5f77645c4a93a584cd8f225c9a78748b21`
-	Default Command: `["perl5.22.2","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:50:56 GMT
COPY file:3350578ae238d520a6b8fc3a800a5f5df942499a0f8fda6c82b5ba594f4fc068 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:50:57 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:56:01 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.2.tar.bz2 -o perl-5.22.2.tar.bz2     && echo 'e2f465446dcd45a7fa3da696037f9ebe73e78e55 *perl-5.22.2.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.22.2.tar.bz2 -C /usr/src/perl     && rm perl-5.22.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:56:02 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:56:02 GMT
CMD ["perl5.22.2" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3031dd5a6e8baff4baa21e366ffed9c31d694a8e4dfb2f0b00d39f965f79d2`  
		Last Modified: Sat, 22 Oct 2016 07:56:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9399f6e870e43f870616f2480e67a56f6982543ffdffb494ce5c1923ace6ca`  
		Last Modified: Sat, 22 Oct 2016 07:56:17 GMT  
		Size: 12.5 MB (12468492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:threaded`

```console
$ docker pull perl@sha256:3f9e6c9241319742526aee7bd5755671db5654dd69105592c1c56e5719bcca6b
```

-	Platforms:
	-	linux; amd64

### `perl:threaded` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254891037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbafef793dab225b97b65beb43fbf0673d44d8c1abd3f5f473b744c555993fc0`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:38:06 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:38:07 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:49:57 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:49:57 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:49:58 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f8dc835f8583524e880f9b3812009c9706d1afa05132940e6b90e8b393fb1`  
		Last Modified: Sat, 22 Oct 2016 07:43:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d81a5098c9d9c7cfebde87cea9929da40e1249033b48861acc746f4700a14a`  
		Last Modified: Sat, 22 Oct 2016 07:50:12 GMT  
		Size: 12.7 MB (12743012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5-threaded`

```console
$ docker pull perl@sha256:3f9e6c9241319742526aee7bd5755671db5654dd69105592c1c56e5719bcca6b
```

-	Platforms:
	-	linux; amd64

### `perl:5-threaded` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254891037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbafef793dab225b97b65beb43fbf0673d44d8c1abd3f5f473b744c555993fc0`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:38:06 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:38:07 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:49:57 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:49:57 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:49:58 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f8dc835f8583524e880f9b3812009c9706d1afa05132940e6b90e8b393fb1`  
		Last Modified: Sat, 22 Oct 2016 07:43:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d81a5098c9d9c7cfebde87cea9929da40e1249033b48861acc746f4700a14a`  
		Last Modified: Sat, 22 Oct 2016 07:50:12 GMT  
		Size: 12.7 MB (12743012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24-threaded`

```console
$ docker pull perl@sha256:55f4a14a70eb729eef4d580cbed2dd5d71e7efe7e3fa425b69e7def74993ca53
```

-	Platforms:
	-	linux; amd64

### `perl:5.24-threaded` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256166125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948d000a16e61d592f0fb290c28caa2f9ba31b6bb500e97cfba27506f865634c`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:49:39 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 24 Sep 2016 04:49:43 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 24 Sep 2016 04:49:44 GMT
RUN mkdir /usr/src/perl
# Sat, 24 Sep 2016 04:49:45 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 24 Sep 2016 04:49:45 GMT
WORKDIR /usr/src/perl
# Sat, 24 Sep 2016 05:01:22 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 24 Sep 2016 05:01:22 GMT
WORKDIR /root
# Sat, 24 Sep 2016 05:01:23 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae7afd7117ff72036fb90a996978725a59fd633dfe0aa3b1c56e2922e733108`  
		Last Modified: Sat, 24 Sep 2016 04:55:02 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a5bc41515a905446480327fd31a89b4970de0c24ecb356229b0ffcf1c50757`  
		Last Modified: Sat, 24 Sep 2016 04:55:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f9dca0f7ce74851726dec16895d8c05c45ccdf7c45f31dfe58ae031cc44271`  
		Last Modified: Sat, 24 Sep 2016 04:55:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e116d562b8350cf98da7b8ca4fcd7f9a52bfee952f725eb0706e5e241fe6d4`  
		Last Modified: Sat, 24 Sep 2016 05:01:37 GMT  
		Size: 12.7 MB (12743037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.24.0-threaded`

```console
$ docker pull perl@sha256:3f9e6c9241319742526aee7bd5755671db5654dd69105592c1c56e5719bcca6b
```

-	Platforms:
	-	linux; amd64

### `perl:5.24.0-threaded` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254891037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbafef793dab225b97b65beb43fbf0673d44d8c1abd3f5f473b744c555993fc0`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:38:06 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:38:07 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 07:49:57 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 07:49:57 GMT
WORKDIR /root
# Sat, 22 Oct 2016 07:49:58 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f8dc835f8583524e880f9b3812009c9706d1afa05132940e6b90e8b393fb1`  
		Last Modified: Sat, 22 Oct 2016 07:43:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d81a5098c9d9c7cfebde87cea9929da40e1249033b48861acc746f4700a14a`  
		Last Modified: Sat, 22 Oct 2016 07:50:12 GMT  
		Size: 12.7 MB (12743012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22-threaded`

```console
$ docker pull perl@sha256:b93f39d5bf89fcac1fcd0a9c881538d4b3f96a78c02f1e4d191325f6509ca68c
```

-	Platforms:
	-	linux; amd64

### `perl:5.22-threaded` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254654063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8098b0a58a902f7af551d1e4381eff90e3180a5ade905e9d551bc50f228d6442`
-	Default Command: `["perl5.22.2","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:50:56 GMT
COPY file:3350578ae238d520a6b8fc3a800a5f5df942499a0f8fda6c82b5ba594f4fc068 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:50:57 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 08:02:31 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.2.tar.bz2 -o perl-5.22.2.tar.bz2     && echo 'e2f465446dcd45a7fa3da696037f9ebe73e78e55 *perl-5.22.2.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.22.2.tar.bz2 -C /usr/src/perl     && rm perl-5.22.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 08:02:32 GMT
WORKDIR /root
# Sat, 22 Oct 2016 08:02:32 GMT
CMD ["perl5.22.2" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3031dd5a6e8baff4baa21e366ffed9c31d694a8e4dfb2f0b00d39f965f79d2`  
		Last Modified: Sat, 22 Oct 2016 07:56:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a3d44ff7ef44b967ec32adaf647b066b5e11285187794a8d50e9662ba7155`  
		Last Modified: Sat, 22 Oct 2016 08:02:49 GMT  
		Size: 12.5 MB (12506040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `perl:5.22.2-threaded`

```console
$ docker pull perl@sha256:b93f39d5bf89fcac1fcd0a9c881538d4b3f96a78c02f1e4d191325f6509ca68c
```

-	Platforms:
	-	linux; amd64

### `perl:5.22.2-threaded` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254654063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8098b0a58a902f7af551d1e4381eff90e3180a5ade905e9d551bc50f228d6442`
-	Default Command: `["perl5.22.2","-de0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:37:59 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Sat, 22 Oct 2016 07:38:05 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Sat, 22 Oct 2016 07:38:06 GMT
RUN mkdir /usr/src/perl
# Sat, 22 Oct 2016 07:50:56 GMT
COPY file:3350578ae238d520a6b8fc3a800a5f5df942499a0f8fda6c82b5ba594f4fc068 in /usr/src/perl/ 
# Sat, 22 Oct 2016 07:50:57 GMT
WORKDIR /usr/src/perl
# Sat, 22 Oct 2016 08:02:31 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.22.2.tar.bz2 -o perl-5.22.2.tar.bz2     && echo 'e2f465446dcd45a7fa3da696037f9ebe73e78e55 *perl-5.22.2.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.22.2.tar.bz2 -C /usr/src/perl     && rm perl-5.22.2.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Sat, 22 Oct 2016 08:02:32 GMT
WORKDIR /root
# Sat, 22 Oct 2016 08:02:32 GMT
CMD ["perl5.22.2" "-de0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb2641fb2bca925b35748db16386b0fd39a1914bad82b965348dfcdecf241`  
		Last Modified: Sat, 22 Oct 2016 07:43:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a777141d840edbd22186cc1e6eab01e312ba398a7328698c7d2d66936948bbad`  
		Last Modified: Sat, 22 Oct 2016 07:43:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3031dd5a6e8baff4baa21e366ffed9c31d694a8e4dfb2f0b00d39f965f79d2`  
		Last Modified: Sat, 22 Oct 2016 07:56:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a3d44ff7ef44b967ec32adaf647b066b5e11285187794a8d50e9662ba7155`  
		Last Modified: Sat, 22 Oct 2016 08:02:49 GMT  
		Size: 12.5 MB (12506040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
