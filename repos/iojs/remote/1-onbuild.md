## `iojs:1-onbuild`

```console
$ docker pull iojs@sha256:30b6601890e07338a3c0791f8e1f742cfa9987ad5e8a7cdc731fc03939654a37
```

-	Platforms:
	-	linux; amd64

### `iojs:1-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251074911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b3dd98691320051cb57ee12801990df42076a9189a7a6fe8ec9c9640f51127`
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
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 06:22:42 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"   ; done
# Sat, 22 Oct 2016 06:22:42 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Sat, 22 Oct 2016 06:22:43 GMT
ENV IOJS_VERSION=1.8.4
# Sat, 22 Oct 2016 06:22:47 GMT
RUN curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-x64.tar.gz"   && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/SHASUMS256.txt.asc"   && gpg --verify SHASUMS256.txt.asc   && grep " iojs-v$IOJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c -   && tar -xzf "iojs-v$IOJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1   && rm "iojs-v$IOJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc
# Sat, 22 Oct 2016 06:22:47 GMT
CMD ["iojs"]
# Sat, 22 Oct 2016 06:23:33 GMT
RUN mkdir -p /usr/src/app
# Sat, 22 Oct 2016 06:23:34 GMT
WORKDIR /usr/src/app
# Sat, 22 Oct 2016 06:23:34 GMT
ONBUILD COPY package.json /usr/src/app/
# Sat, 22 Oct 2016 06:23:35 GMT
ONBUILD RUN npm install
# Sat, 22 Oct 2016 06:23:35 GMT
ONBUILD COPY . /usr/src/app
# Sat, 22 Oct 2016 06:23:35 GMT
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
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8bef088865119bdbde43194e7790e603505d7c0b0d182bbf225e5a38342ba0`  
		Last Modified: Sat, 22 Oct 2016 06:22:58 GMT  
		Size: 69.4 KB (69386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd887b61e2bd15e5ae5594ecadf01118d8ddf61caf79abfdbfcf94e0f39559cd`  
		Last Modified: Sat, 22 Oct 2016 06:23:00 GMT  
		Size: 8.9 MB (8858068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728317492b01f802d88875bc9298149425ec2d78d6e7b3c2e1fbf69dc97cf0e7`  
		Last Modified: Sat, 22 Oct 2016 06:23:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
