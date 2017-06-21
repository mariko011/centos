## `perl:threaded`

```console
$ docker pull perl@sha256:ebe27ccff4b6dc5ae5c6a1738e9497e84bdaf78f0ab57b3bc0483f4dbc8b47ee
```

-	Platforms:
	-	linux; amd64

### `perl:threaded` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259743561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06d341d9731d490c1bed1a446e4616db36f3de8a4beeeabadf10b920fb8897c`
-	Default Command: `["perl5.24.1","-de0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:09:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 14:55:00 GMT
MAINTAINER Peter Martini <PeterCMartini@GMail.com>
# Wed, 21 Jun 2017 14:56:26 GMT
RUN apt-get update     && apt-get install -y curl procps     && rm -fr /var/lib/apt/lists/*
# Wed, 21 Jun 2017 14:56:28 GMT
RUN mkdir /usr/src/perl
# Wed, 21 Jun 2017 14:56:30 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 21 Jun 2017 14:56:31 GMT
WORKDIR /usr/src/perl
# Wed, 21 Jun 2017 15:26:33 GMT
RUN curl -SL https://cpan.metacpan.org/authors/id/S/SH/SHAY/perl-5.24.1.tar.bz2 -o perl-5.24.1.tar.bz2     && echo '482ac5dca262b57d26c381382a3e057b22ede631fcce32523c004b8bf773f6f0 *perl-5.24.1.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xjf perl-5.24.1.tar.bz2 -C /usr/src/perl     && rm perl-5.24.1.tar.bz2     && cat *.patch | patch -p1     && ./Configure -Dusethreads -Duse64bitall -Duseshrplib  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://raw.githubusercontent.com/miyagawa/cpanminus/master/cpanm     && chmod +x cpanm     && ./cpanm App::cpanminus     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /tmp/*
# Wed, 21 Jun 2017 15:26:33 GMT
WORKDIR /root
# Wed, 21 Jun 2017 15:26:34 GMT
CMD ["perl5.24.1" "-de0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dac6294ef18334118b559af1635702b07a71719c31cd022b7351f9392023a34`  
		Last Modified: Wed, 21 Jun 2017 00:36:36 GMT  
		Size: 131.8 MB (131822878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6f76585cbae420a6b5d6e3ec305bd2a7088bfbee5286afdb9ad0d2e9ddaeb9`  
		Last Modified: Wed, 21 Jun 2017 15:38:41 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a8d7a7018a55d1cc8b9859bfb92df6aa6915229eb95c9362126877b2cb7dec`  
		Last Modified: Wed, 21 Jun 2017 15:38:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37777403577ac1c624b7f623ccdffdca99cb8cc9a28a574a96ec3de35f0858f0`  
		Last Modified: Wed, 21 Jun 2017 15:38:40 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa1895aec5406b756e8567556b1f643c293f87db163f82bdbc8149400c95df`  
		Last Modified: Wed, 21 Jun 2017 15:40:36 GMT  
		Size: 12.8 MB (12813765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
