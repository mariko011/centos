## `node:wheezy`

```console
$ docker pull node@sha256:60baba059fafc7bc0b9ce13efafa4bcd8b983b02bf6093d614496994c36d3873
```

-	Platforms:
	-	linux; amd64

### `node:wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193724627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9942a35859d9c13c13696ed190dc8b1987506d284e6b5986f4716c28013dc315`
-	Default Command: `["node"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 10 Feb 2017 01:33:07 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Fri, 10 Feb 2017 01:33:11 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Fri, 10 Feb 2017 01:33:11 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 10 Feb 2017 01:33:45 GMT
ENV NODE_VERSION=7.5.0
# Fri, 10 Feb 2017 01:33:49 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Fri, 10 Feb 2017 01:33:50 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0288640dbf2403284d3762ea20566e82748c399a83969cdb4a4781e43edab51f`  
		Last Modified: Thu, 09 Feb 2017 19:10:18 GMT  
		Size: 96.7 MB (96704625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4e7fedda28d3d462db589dc177be0c37a69ec87815d3a2c6cb6ee7e59e3cc`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb700b13cec0995fe9feb1f47de26b26b20b543c79d949dab204cf913488752`  
		Last Modified: Fri, 10 Feb 2017 17:42:02 GMT  
		Size: 100.5 KB (100494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ed0c16f8ee346ecee543f2f642f9185d9cf98cab48ca0aa3dc9095a7c63ca`  
		Last Modified: Fri, 10 Feb 2017 17:49:22 GMT  
		Size: 15.4 MB (15365160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
