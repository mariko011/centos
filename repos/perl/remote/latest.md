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
