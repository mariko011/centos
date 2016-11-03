## `node:0-onbuild`

```console
$ docker pull node@sha256:27ad501ec04662fec751dc7aa03ae020d5472ae7d6cbe90ed59a7cc5336ba688
```

-	Platforms:
	-	linux; amd64

### `node:0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252388742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059da2b075d44cb425fd6d51cf581882a20dcded5ce45c3b35e4263aea22cfbe`
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
# Thu, 03 Nov 2016 21:15:47 GMT
RUN groupadd -r node && useradd -r -g node node
# Thu, 03 Nov 2016 21:15:57 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Thu, 03 Nov 2016 21:17:26 GMT
ENV NODE_VERSION=0.12.17
# Thu, 03 Nov 2016 21:17:31 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Thu, 03 Nov 2016 21:17:32 GMT
CMD ["node"]
# Thu, 03 Nov 2016 21:17:33 GMT
RUN mkdir -p /usr/src/app
# Thu, 03 Nov 2016 21:17:33 GMT
WORKDIR /usr/src/app
# Thu, 03 Nov 2016 21:17:33 GMT
ONBUILD ARG NODE_ENV
# Thu, 03 Nov 2016 21:17:33 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Thu, 03 Nov 2016 21:17:34 GMT
ONBUILD COPY package.json /usr/src/app/
# Thu, 03 Nov 2016 21:17:34 GMT
ONBUILD RUN npm install
# Thu, 03 Nov 2016 21:17:34 GMT
ONBUILD COPY . /usr/src/app
# Thu, 03 Nov 2016 21:17:34 GMT
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
	-	`sha256:eae19baa28ff0b5991f3b7e7b894da4828f174d8975a55f8530ef6e83d348520`  
		Last Modified: Thu, 03 Nov 2016 21:18:24 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9004de327d6a32da31173b194526cf3de0f2f68bafe965ba5aa4e70fee052697`  
		Last Modified: Thu, 03 Nov 2016 21:18:25 GMT  
		Size: 97.2 KB (97214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba359bd36b3c55f44ae8d56009cefaf2a93440510065384ba8857934120b568`  
		Last Modified: Thu, 03 Nov 2016 21:30:09 GMT  
		Size: 10.1 MB (10087657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f56ce84bb7208bdd4ccd958bdb11817e2e5851544f19049affc7c6238eb3932`  
		Last Modified: Thu, 03 Nov 2016 21:30:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
