<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kaazing-gateway`

-	[`kaazing-gateway:latest`](#kaazing-gatewaylatest)
-	[`kaazing-gateway:5.6.0`](#kaazing-gateway560)

## `kaazing-gateway:latest`

```console
$ docker pull kaazing-gateway@sha256:db6faef6392ba3ee8acf25cd361a42a52d2e65e667434a1115371116c496fd30
```

-	Platforms:
	-	linux; amd64

### `kaazing-gateway:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143872194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075fceaeb27d5ba706428570d45c23efbbd70c539c2809023c2ebc54636169`
-	Default Command: `["gateway.start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 01:14:41 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Thu, 27 Apr 2017 01:14:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Thu, 27 Apr 2017 01:14:44 GMT
ENV KAAZING_GATEWAY_VERSION=5.6.0
# Thu, 27 Apr 2017 01:14:44 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.6.0/gateway.distribution-5.6.0.tar.gz
# Thu, 27 Apr 2017 01:14:45 GMT
WORKDIR /kaazing-gateway
# Thu, 27 Apr 2017 01:14:50 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Thu, 27 Apr 2017 01:14:51 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Thu, 27 Apr 2017 01:14:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Thu, 27 Apr 2017 01:14:52 GMT
EXPOSE 8000/tcp
# Thu, 27 Apr 2017 01:14:53 GMT
CMD ["gateway.start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda6766aa41bd595c13adeaa23fc2f3b68c990c24b6e9827e663f21c3c2451f9`  
		Last Modified: Thu, 27 Apr 2017 01:15:14 GMT  
		Size: 6.0 KB (5952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd776681a82fdbfb4aa9ff8e89a9d1d1cf6d9c24b04b417da02e97886c2ffa6`  
		Last Modified: Thu, 27 Apr 2017 01:15:14 GMT  
		Size: 104.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d37e923c1a7659d5e9bab507bbc2d603407bd07fb2f3736a26b6ad78dec8dc2`  
		Last Modified: Thu, 27 Apr 2017 01:15:16 GMT  
		Size: 17.1 MB (17126718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kaazing-gateway:5.6.0`

```console
$ docker pull kaazing-gateway@sha256:db6faef6392ba3ee8acf25cd361a42a52d2e65e667434a1115371116c496fd30
```

-	Platforms:
	-	linux; amd64

### `kaazing-gateway:5.6.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143872194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88075fceaeb27d5ba706428570d45c23efbbd70c539c2809023c2ebc54636169`
-	Default Command: `["gateway.start"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Apr 2017 01:14:41 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Thu, 27 Apr 2017 01:14:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Thu, 27 Apr 2017 01:14:44 GMT
ENV KAAZING_GATEWAY_VERSION=5.6.0
# Thu, 27 Apr 2017 01:14:44 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.6.0/gateway.distribution-5.6.0.tar.gz
# Thu, 27 Apr 2017 01:14:45 GMT
WORKDIR /kaazing-gateway
# Thu, 27 Apr 2017 01:14:50 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Thu, 27 Apr 2017 01:14:51 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Thu, 27 Apr 2017 01:14:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Thu, 27 Apr 2017 01:14:52 GMT
EXPOSE 8000/tcp
# Thu, 27 Apr 2017 01:14:53 GMT
CMD ["gateway.start"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda6766aa41bd595c13adeaa23fc2f3b68c990c24b6e9827e663f21c3c2451f9`  
		Last Modified: Thu, 27 Apr 2017 01:15:14 GMT  
		Size: 6.0 KB (5952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd776681a82fdbfb4aa9ff8e89a9d1d1cf6d9c24b04b417da02e97886c2ffa6`  
		Last Modified: Thu, 27 Apr 2017 01:15:14 GMT  
		Size: 104.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d37e923c1a7659d5e9bab507bbc2d603407bd07fb2f3736a26b6ad78dec8dc2`  
		Last Modified: Thu, 27 Apr 2017 01:15:16 GMT  
		Size: 17.1 MB (17126718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
