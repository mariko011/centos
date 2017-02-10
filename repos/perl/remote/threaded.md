## `perl:threaded`

```console
$ docker pull perl@sha256:f026a244322faee20344d65b9292346541ff1fa2500a1be5b9e443499e30b414
```

-	Platforms:
	-	linux; amd64

### `perl:threaded` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256291761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee40ddd48e7d0efeb0203d2375720f04d230b2cd2fa441ae3396461b36a5f8a`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:51 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Fri, 10 Feb 2017 01:33:55 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:56 GMT
RUN mkdir /usr/src/perl
# Fri, 10 Feb 2017 01:33:57 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Fri, 10 Feb 2017 01:33:57 GMT
WORKDIR /usr/src/perl
# Fri, 10 Feb 2017 01:44:59 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Fri, 10 Feb 2017 01:45:00 GMT
WORKDIR /root
# Fri, 10 Feb 2017 01:45:00 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1bc3c30371bbb5ffb75b052221ce88a1c89f78187e7a2596c2d3fdd5f2043a`  
		Last Modified: Thu, 09 Feb 2017 19:02:02 GMT  
		Size: 131.1 MB (131128074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52d9a173dd608156dfca8a2951fc5d58a2610cce0601ae0b1d3ef163c23bc41`  
		Last Modified: Fri, 10 Feb 2017 17:50:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7846eadfcd98bf132d0c88bb313306911d9dea462b3085aa3de7ae4c98fdcdd`  
		Last Modified: Fri, 10 Feb 2017 17:50:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d95e4188ffbfba69724a23537b7e80c72fb24eb25b249cb5bebf4387ef285c`  
		Last Modified: Fri, 10 Feb 2017 17:50:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8facc41abe940f3dec1bf453a33e74f06a92b98f993367c67fd2d7cfe3ec3200`  
		Last Modified: Fri, 10 Feb 2017 17:53:11 GMT  
		Size: 12.8 MB (12763936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
