## `node:0-onbuild`

```console
$ docker pull node@sha256:ed730390c37fec4795b4a6ca2d36b57f66c7bc499774bddfa2472c33cf6884b5
```

-	Platforms:
	-	linux; amd64

### `node:0-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252386703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793c27918f13c48c55a7d9e5a156cb553a9c35c62072ee22b3d22940e1fd47e7`
-	Default Command: `["npm","start"]`

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
# Tue, 01 Nov 2016 06:20:58 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 01 Nov 2016 06:20:58 GMT
ENV NODE_VERSION=0.12.17
# Tue, 01 Nov 2016 06:21:05 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 01 Nov 2016 06:21:06 GMT
CMD ["node"]
# Tue, 01 Nov 2016 06:21:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 06:21:52 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 06:21:53 GMT
ONBUILD ARG NODE_ENV
# Tue, 01 Nov 2016 06:21:53 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Tue, 01 Nov 2016 06:21:54 GMT
ONBUILD COPY package.json /usr/src/app/
# Tue, 01 Nov 2016 06:21:54 GMT
ONBUILD RUN npm install
# Tue, 01 Nov 2016 06:21:54 GMT
ONBUILD COPY . /usr/src/app
# Tue, 01 Nov 2016 06:21:55 GMT
CMD ["npm" "start"]
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
	-	`sha256:8a318c82968c66fd6e93bef05f437cf9ee8c87ad62789dd016293ce718219469`  
		Last Modified: Tue, 01 Nov 2016 06:21:18 GMT  
		Size: 97.2 KB (97215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d87f519718a97d7440c5298557c83d378df79fdd9a938e92022d6dca3f0e7`  
		Last Modified: Tue, 01 Nov 2016 06:21:20 GMT  
		Size: 10.1 MB (10087676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d98b7f679d992260b4a9c6e5d123c5e19e235acb5a8c1d4d3cee95e6f88b926`  
		Last Modified: Tue, 01 Nov 2016 06:22:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
