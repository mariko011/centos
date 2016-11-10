## `perl:threaded`

```console
$ docker pull perl@sha256:b54103a507335c2cc7f09076b66ba32c491f4c66dd1d637bb8c62b57f743c76a
```

-	Platforms:
	-	linux; amd64

### `perl:threaded` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254956954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1540a59e8a40e338cae821facde0b5d754f45f8f868f0ef4e4eb0a9783825467`
-	Default Command: `["perl5.24.0","-de0"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 07:37:02 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Thu, 10 Nov 2016 07:37:07 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Thu, 10 Nov 2016 07:37:08 GMT
RUN mkdir /usr/src/perl
# Thu, 10 Nov 2016 07:37:08 GMT
COPY file:21749e9b9dd48119d6468e64e9fc7ba979cd3bac662c7c9978b4a6d3262fa809 in /usr/src/perl/ 
# Thu, 10 Nov 2016 07:37:09 GMT
WORKDIR /usr/src/perl
# Thu, 10 Nov 2016 07:49:16 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/R/RJ/RJBS/perl-5.24.0.tar.bz2 -o perl-5.24.0.tar.bz2     && echo '298fa605138c1a00dab95643130ae0edab369b4d *perl-5.24.0.tar.bz2' | sha1sum -c -     && tar --strip-components=1 -xjf perl-5.24.0.tar.bz2 -C /usr/src/perl     && rm perl-5.24.0.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Thu, 10 Nov 2016 07:49:16 GMT
WORKDIR /root
# Thu, 10 Nov 2016 07:49:17 GMT
CMD ["perl5.24.0" "-de0"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4d28cd8e586c8671be98b121121f82a99155b5aa8c1874583c2950036d90a7`  
		Last Modified: Thu, 10 Nov 2016 07:42:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d5555b48f7d6c9e3aa2a9f52b356dffc74109be657606bf946c6b1b79ab4c`  
		Last Modified: Thu, 10 Nov 2016 07:42:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b230f4d9504c4f79b8ff1526f370f69f4f3598ef1f841db92f2116af001f23`  
		Last Modified: Thu, 10 Nov 2016 07:42:37 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d686b9bca3b225d0a7e80f9390a7900722ff3a933f475a270c989684e01b6c96`  
		Last Modified: Thu, 10 Nov 2016 07:49:34 GMT  
		Size: 12.8 MB (12763777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
