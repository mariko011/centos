<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kaazing-gateway`

-	[`kaazing-gateway:latest`](#kaazing-gatewaylatest)
-	[`kaazing-gateway:5.4.1`](#kaazing-gateway541)

## `kaazing-gateway:latest`

```console
$ docker pull kaazing-gateway@sha256:68ac66a6b5be94113417e2283ac007ce921e89dce79b4e4b8d976ed1aaa462f8
```

-	Platforms:
	-	linux; amd64

### `kaazing-gateway:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141388657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159be13e538b4e9584d8372d5cfa0c058293c068bc420d674d1d80fadb11c254`
-	Default Command: `["gateway.start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:22:18 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Tue, 07 Feb 2017 21:22:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Mon, 27 Feb 2017 18:25:23 GMT
ENV KAAZING_GATEWAY_VERSION=5.4.1
# Mon, 27 Feb 2017 18:25:24 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.4.1/gateway.distribution-5.4.1.tar.gz
# Mon, 27 Feb 2017 18:25:24 GMT
WORKDIR /kaazing-gateway
# Mon, 27 Feb 2017 18:25:35 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Mon, 27 Feb 2017 18:25:41 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Mon, 27 Feb 2017 18:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Mon, 27 Feb 2017 18:25:43 GMT
EXPOSE 8000/tcp
# Mon, 27 Feb 2017 18:25:43 GMT
CMD ["gateway.start"]
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6ad40ef18782cd943e22e143d718ad1eff39600bf96a471952dd8ec625bfc`  
		Last Modified: Tue, 07 Feb 2017 21:22:46 GMT  
		Size: 5.9 KB (5926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46d24326e96b52daff87c9b224e5b3dd824563db51b43ab3160c259b2f1b0ae`  
		Last Modified: Mon, 27 Feb 2017 18:26:16 GMT  
		Size: 103.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40520bc03941cdafb614f21a793ca15e712e73b001b9522268d9316a7d9e2c4`  
		Last Modified: Mon, 27 Feb 2017 18:26:19 GMT  
		Size: 17.1 MB (17111572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kaazing-gateway:5.4.1`

```console
$ docker pull kaazing-gateway@sha256:68ac66a6b5be94113417e2283ac007ce921e89dce79b4e4b8d976ed1aaa462f8
```

-	Platforms:
	-	linux; amd64

### `kaazing-gateway:5.4.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141388657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159be13e538b4e9584d8372d5cfa0c058293c068bc420d674d1d80fadb11c254`
-	Default Command: `["gateway.start"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:22:18 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Tue, 07 Feb 2017 21:22:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Mon, 27 Feb 2017 18:25:23 GMT
ENV KAAZING_GATEWAY_VERSION=5.4.1
# Mon, 27 Feb 2017 18:25:24 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.4.1/gateway.distribution-5.4.1.tar.gz
# Mon, 27 Feb 2017 18:25:24 GMT
WORKDIR /kaazing-gateway
# Mon, 27 Feb 2017 18:25:35 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Mon, 27 Feb 2017 18:25:41 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Mon, 27 Feb 2017 18:25:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Mon, 27 Feb 2017 18:25:43 GMT
EXPOSE 8000/tcp
# Mon, 27 Feb 2017 18:25:43 GMT
CMD ["gateway.start"]
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6ad40ef18782cd943e22e143d718ad1eff39600bf96a471952dd8ec625bfc`  
		Last Modified: Tue, 07 Feb 2017 21:22:46 GMT  
		Size: 5.9 KB (5926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46d24326e96b52daff87c9b224e5b3dd824563db51b43ab3160c259b2f1b0ae`  
		Last Modified: Mon, 27 Feb 2017 18:26:16 GMT  
		Size: 103.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40520bc03941cdafb614f21a793ca15e712e73b001b9522268d9316a7d9e2c4`  
		Last Modified: Mon, 27 Feb 2017 18:26:19 GMT  
		Size: 17.1 MB (17111572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
