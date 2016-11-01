<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kaazing-gateway`

-	[`kaazing-gateway:latest`](#kaazing-gatewaylatest)
-	[`kaazing-gateway:5.1.1`](#kaazing-gateway511)

## `kaazing-gateway:latest`

```console
$ docker pull kaazing-gateway@sha256:88fa3cec101322221c0fdee78d7daa5d3cf4c4f720a2e9de5d1e78d73ecd2d3a
```

-	Platforms:
	-	linux; amd64

### `kaazing-gateway:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138069931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadfe367c9701b32986ffac75e4d7c6efd5bcd957115d189e02467a4ac55a22d`
-	Default Command: `["gateway.start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 05:40:42 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Tue, 01 Nov 2016 05:40:44 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Tue, 01 Nov 2016 05:40:45 GMT
ENV KAAZING_GATEWAY_VERSION=5.1.1
# Tue, 01 Nov 2016 05:40:45 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.1.1/gateway.distribution-5.1.1.tar.gz
# Tue, 01 Nov 2016 05:40:46 GMT
WORKDIR /kaazing-gateway
# Tue, 01 Nov 2016 05:40:51 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Tue, 01 Nov 2016 05:40:52 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Tue, 01 Nov 2016 05:40:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Tue, 01 Nov 2016 05:40:53 GMT
EXPOSE 8000/tcp
# Tue, 01 Nov 2016 05:40:53 GMT
CMD ["gateway.start"]
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
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4218713977e723fa70bc875d2283b91fdee7e52558a6b22dd397afac32bff45`  
		Last Modified: Tue, 01 Nov 2016 05:41:04 GMT  
		Size: 5.9 KB (5931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4c4f22b6cd9518a92fec549192914c2294fb2f65496f2b4977f01736e2bd8f`  
		Last Modified: Tue, 01 Nov 2016 05:41:04 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5694ecef8b26ddde42cee08ad17d510a141f0bbe3de9d4b2da14b3e00fb4653e`  
		Last Modified: Tue, 01 Nov 2016 05:41:06 GMT  
		Size: 13.9 MB (13891780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kaazing-gateway:5.1.1`

```console
$ docker pull kaazing-gateway@sha256:88fa3cec101322221c0fdee78d7daa5d3cf4c4f720a2e9de5d1e78d73ecd2d3a
```

-	Platforms:
	-	linux; amd64

### `kaazing-gateway:5.1.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138069931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadfe367c9701b32986ffac75e4d7c6efd5bcd957115d189e02467a4ac55a22d`
-	Default Command: `["gateway.start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 05:40:42 GMT
MAINTAINER Kaazing Docker Maintainers, contact via github issues: https://github.com/kaazing/gateway.docker/issues
# Tue, 01 Nov 2016 05:40:44 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F8F4B66E022A4668E532DAC03AA0B82C385B4D59
# Tue, 01 Nov 2016 05:40:45 GMT
ENV KAAZING_GATEWAY_VERSION=5.1.1
# Tue, 01 Nov 2016 05:40:45 GMT
ENV KAAZING_GATEWAY_URL=https://oss.sonatype.org/content/repositories/releases/org/kaazing/gateway.distribution/5.1.1/gateway.distribution-5.1.1.tar.gz
# Tue, 01 Nov 2016 05:40:46 GMT
WORKDIR /kaazing-gateway
# Tue, 01 Nov 2016 05:40:51 GMT
RUN curl -fSL -o gateway.tar.gz $KAAZING_GATEWAY_URL 	&& curl -fSL -o gateway.tar.gz.asc ${KAAZING_GATEWAY_URL}.asc 	&& gpg --verify gateway.tar.gz.asc 	&& tar -xvf gateway.tar.gz --strip-components=1 	&& rm gateway.tar.gz*
# Tue, 01 Nov 2016 05:40:52 GMT
ENV GATEWAY_OPTS=-Xmx512m -Djava.security.egd=file:/dev/urandom
# Tue, 01 Nov 2016 05:40:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/kaazing-gateway/bin
# Tue, 01 Nov 2016 05:40:53 GMT
EXPOSE 8000/tcp
# Tue, 01 Nov 2016 05:40:53 GMT
CMD ["gateway.start"]
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
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4218713977e723fa70bc875d2283b91fdee7e52558a6b22dd397afac32bff45`  
		Last Modified: Tue, 01 Nov 2016 05:41:04 GMT  
		Size: 5.9 KB (5931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4c4f22b6cd9518a92fec549192914c2294fb2f65496f2b4977f01736e2bd8f`  
		Last Modified: Tue, 01 Nov 2016 05:41:04 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5694ecef8b26ddde42cee08ad17d510a141f0bbe3de9d4b2da14b3e00fb4653e`  
		Last Modified: Tue, 01 Nov 2016 05:41:06 GMT  
		Size: 13.9 MB (13891780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
