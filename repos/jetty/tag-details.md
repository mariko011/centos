<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jetty`

-	[`jetty:9.3.11`](#jetty9311)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.3.11-jre8`](#jetty9311-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.3.11-alpine`](#jetty9311-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.3.11-jre8-alpine`](#jetty9311-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.2.18`](#jetty9218)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.18-jre8`](#jetty9218-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.18-jre7`](#jetty9218-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.3.11`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:8d6438365ea025f4829b39524822ae2ceae656ccc1e8af1dae48dedfe731156a
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50ad66d99bdfa38a8242cf8d0b8669dfdf1b9590b9c4e0ba30f2ba43ce554a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:14 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:15 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:15 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:17 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:18 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9665cba0d9a5ec18b1b0f6c66dace60f624cd2231b39b173259d29b73129be48`  
		Last Modified: Tue, 30 Aug 2016 21:10:01 GMT  
		Size: 7.9 MB (7909397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dd0a62e29ee6135010442feba47dd1adb446af681e6e5fd8318c9576e54cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fbe5ad3a2dbe8e13bd97efb0bd90dc178d48cb08ba798cf4ce35e66e881e9b`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7eb021ab782604013d87a717f694ed7504b351e6770b9a3f49e5a085a56bb1`  
		Last Modified: Tue, 30 Aug 2016 21:09:59 GMT  
		Size: 1.8 KB (1831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d501aa6e2e5063aa796394f2257f78155b0e61ac28ddd4595d2d790161db5d`  
		Last Modified: Tue, 30 Aug 2016 21:10:00 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:547c4a0bfa25216cd78f45e1a0ef4718058f3114d0adec1609a731d2a427ee0e
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edca8cab3506713aad189c468c7d2237f738df7f8c9cf94aa6fe594f17dfcae9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:42 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 30 Aug 2016 20:05:42 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 20:05:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:43 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 20:05:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 20:05:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:19 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:20 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:34 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 30 Aug 2016 21:09:34 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:34 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331fb47cf8fff3cc455d8b7731c348094a1cfa11b926eb927f847b4604f2e59f`  
		Last Modified: Tue, 30 Aug 2016 21:11:26 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa959d255cd1536e9a802401ce3fbc4c0c2eef7e6f827671282287376f08815`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983627cc2e2faac701d026a460035bca8c054d0a46d74837b664abbba0def6a`  
		Last Modified: Tue, 30 Aug 2016 21:11:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af91ff4469bbb01ccbe99cf5d62e5b075cac41c764dab081a6e1b6e2bbc29a53`  
		Last Modified: Tue, 30 Aug 2016 21:11:25 GMT  
		Size: 7.9 MB (7943127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b971644e1ce93cf0b3e253c523706c9b2967554bede56a61a1014708b2374fe`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 1.8 KB (1830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8b312cd5377f43bd0fc40a06670a96200b17c8d5cdd3772757d8b73d962fb5`  
		Last Modified: Tue, 30 Aug 2016 21:11:24 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18`

```console
$ docker pull jetty@sha256:da7880d2597645cf86cec733932c0f795d1765ac49fe9b166bf4bb654664d205
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134156212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bd44abf45e23b2f2cbbf9258c334b1d9479e64a238be108c1ac8e3325a00ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:37 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:40 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:40 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:41 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:41 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:42 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:43 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:43 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:44 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:44 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c3b67399fceccb995265ca116dcf962ddc495b693a62142497a8062b9c1b3e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 10.0 MB (10004234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d610ba016ce92f643bc1c443bf6280c299922c3b60d2603819f1bcd813dbca`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41932f80224ffde4e88d3e7e82bec8b301741804fdd6fde696848a9329d6961e`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 1.6 KB (1569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9d90b17aafc50fca96daf2350850bda014d04b215c842b147df0f49903968e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9e06c34ae3a3c2723ee3d4116bb1d161b35cc6113446e755e7ed82701ac163`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:da7880d2597645cf86cec733932c0f795d1765ac49fe9b166bf4bb654664d205
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134156212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bd44abf45e23b2f2cbbf9258c334b1d9479e64a238be108c1ac8e3325a00ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:37 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:40 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:40 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:41 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:41 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:42 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:43 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:43 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:44 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:44 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c3b67399fceccb995265ca116dcf962ddc495b693a62142497a8062b9c1b3e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 10.0 MB (10004234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d610ba016ce92f643bc1c443bf6280c299922c3b60d2603819f1bcd813dbca`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41932f80224ffde4e88d3e7e82bec8b301741804fdd6fde696848a9329d6961e`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 1.6 KB (1569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9d90b17aafc50fca96daf2350850bda014d04b215c842b147df0f49903968e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9e06c34ae3a3c2723ee3d4116bb1d161b35cc6113446e755e7ed82701ac163`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre8`

```console
$ docker pull jetty@sha256:da7880d2597645cf86cec733932c0f795d1765ac49fe9b166bf4bb654664d205
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134156212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bd44abf45e23b2f2cbbf9258c334b1d9479e64a238be108c1ac8e3325a00ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:37 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:40 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:40 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:41 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:41 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:42 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:43 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:43 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:44 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:44 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c3b67399fceccb995265ca116dcf962ddc495b693a62142497a8062b9c1b3e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 10.0 MB (10004234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d610ba016ce92f643bc1c443bf6280c299922c3b60d2603819f1bcd813dbca`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41932f80224ffde4e88d3e7e82bec8b301741804fdd6fde696848a9329d6961e`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 1.6 KB (1569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9d90b17aafc50fca96daf2350850bda014d04b215c842b147df0f49903968e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9e06c34ae3a3c2723ee3d4116bb1d161b35cc6113446e755e7ed82701ac163`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:da7880d2597645cf86cec733932c0f795d1765ac49fe9b166bf4bb654664d205
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134156212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bd44abf45e23b2f2cbbf9258c334b1d9479e64a238be108c1ac8e3325a00ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 20:05:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:05:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:05:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:05:33 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:05:34 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:37 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:38 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:40 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:40 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:41 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:41 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:42 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:43 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:43 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:44 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:44 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9be70dacf03ab795659f46b1ef58e904a3c968b89b2def933b2ce2e5d6379e`  
		Last Modified: Tue, 30 Aug 2016 21:10:03 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b88539157f3687bed39f9e835f3d6ca0d21739842a7ce65d0eafffa8c4dc30`  
		Last Modified: Tue, 30 Aug 2016 21:10:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c3b67399fceccb995265ca116dcf962ddc495b693a62142497a8062b9c1b3e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 10.0 MB (10004234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d610ba016ce92f643bc1c443bf6280c299922c3b60d2603819f1bcd813dbca`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41932f80224ffde4e88d3e7e82bec8b301741804fdd6fde696848a9329d6961e`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 1.6 KB (1569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9d90b17aafc50fca96daf2350850bda014d04b215c842b147df0f49903968e`  
		Last Modified: Tue, 30 Aug 2016 21:12:34 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9e06c34ae3a3c2723ee3d4116bb1d161b35cc6113446e755e7ed82701ac163`  
		Last Modified: Tue, 30 Aug 2016 21:12:32 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre7`

```console
$ docker pull jetty@sha256:c88ead72600d07b304955b05638e7790cb4df81be8dbf16eb4902e3df8a5172a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158182288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d4b14899b4246ae02160b2865d41fbccab84309daefacec159ec4a14c4f3d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:36 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_VERSION=7u111
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 30 Aug 2016 19:54:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:06:02 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:06:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:06:04 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:49 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:52 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:54 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:54 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e90c17f561d17c5f595aa211d721de8f0d7154d48b49616b90a79c4b4a6f036`  
		Last Modified: Tue, 30 Aug 2016 21:13:08 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41423c830a15264d281c65936b0c3b0a1db6376d0b9b780a092f2c3f06dab4cc`  
		Last Modified: Tue, 30 Aug 2016 21:13:25 GMT  
		Size: 77.7 MB (77712533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba30ef4cf5746c788fc2df9abbd8edd1edd324540a6dea1e3e60b72e39bd927`  
		Last Modified: Tue, 30 Aug 2016 21:13:07 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e81591adfade6c9ea697bf6e921eaa1f90da757c9ad6467e0621a6fc5895800`  
		Last Modified: Tue, 30 Aug 2016 21:13:06 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2ac6d9a5714dca9d4b12071b39273db3b778bc1a654f204d435f63887075d3`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 10.0 MB (10004229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc5954f170b4479bf170e00e9228f5d8145862b93a87ffacd8c0b3ad7a299b9`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f598b87f4c87c3e8e4293a3e84e42abc4bb54003657a6f7611ec54ea38f020c`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95657c6d6f92e14eba324b1d27f2b30949c877dcf347dd007c72c0d4c5497576`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63470ad5af56ba5a6737e477848a588803bb25604ec5ba86c108f051da20eaba`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:c88ead72600d07b304955b05638e7790cb4df81be8dbf16eb4902e3df8a5172a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158182288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d4b14899b4246ae02160b2865d41fbccab84309daefacec159ec4a14c4f3d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:36 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_VERSION=7u111
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 30 Aug 2016 19:54:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:06:02 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:06:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:06:04 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:49 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:52 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:54 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:54 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e90c17f561d17c5f595aa211d721de8f0d7154d48b49616b90a79c4b4a6f036`  
		Last Modified: Tue, 30 Aug 2016 21:13:08 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41423c830a15264d281c65936b0c3b0a1db6376d0b9b780a092f2c3f06dab4cc`  
		Last Modified: Tue, 30 Aug 2016 21:13:25 GMT  
		Size: 77.7 MB (77712533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba30ef4cf5746c788fc2df9abbd8edd1edd324540a6dea1e3e60b72e39bd927`  
		Last Modified: Tue, 30 Aug 2016 21:13:07 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e81591adfade6c9ea697bf6e921eaa1f90da757c9ad6467e0621a6fc5895800`  
		Last Modified: Tue, 30 Aug 2016 21:13:06 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2ac6d9a5714dca9d4b12071b39273db3b778bc1a654f204d435f63887075d3`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 10.0 MB (10004229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc5954f170b4479bf170e00e9228f5d8145862b93a87ffacd8c0b3ad7a299b9`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f598b87f4c87c3e8e4293a3e84e42abc4bb54003657a6f7611ec54ea38f020c`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95657c6d6f92e14eba324b1d27f2b30949c877dcf347dd007c72c0d4c5497576`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63470ad5af56ba5a6737e477848a588803bb25604ec5ba86c108f051da20eaba`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:c88ead72600d07b304955b05638e7790cb4df81be8dbf16eb4902e3df8a5172a
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158182288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d4b14899b4246ae02160b2865d41fbccab84309daefacec159ec4a14c4f3d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:36 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_VERSION=7u111
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 30 Aug 2016 19:54:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:06:02 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:06:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:06:04 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:49 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:52 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:54 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:54 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e90c17f561d17c5f595aa211d721de8f0d7154d48b49616b90a79c4b4a6f036`  
		Last Modified: Tue, 30 Aug 2016 21:13:08 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41423c830a15264d281c65936b0c3b0a1db6376d0b9b780a092f2c3f06dab4cc`  
		Last Modified: Tue, 30 Aug 2016 21:13:25 GMT  
		Size: 77.7 MB (77712533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba30ef4cf5746c788fc2df9abbd8edd1edd324540a6dea1e3e60b72e39bd927`  
		Last Modified: Tue, 30 Aug 2016 21:13:07 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e81591adfade6c9ea697bf6e921eaa1f90da757c9ad6467e0621a6fc5895800`  
		Last Modified: Tue, 30 Aug 2016 21:13:06 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2ac6d9a5714dca9d4b12071b39273db3b778bc1a654f204d435f63887075d3`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 10.0 MB (10004229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc5954f170b4479bf170e00e9228f5d8145862b93a87ffacd8c0b3ad7a299b9`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f598b87f4c87c3e8e4293a3e84e42abc4bb54003657a6f7611ec54ea38f020c`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95657c6d6f92e14eba324b1d27f2b30949c877dcf347dd007c72c0d4c5497576`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63470ad5af56ba5a6737e477848a588803bb25604ec5ba86c108f051da20eaba`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:c88ead72600d07b304955b05638e7790cb4df81be8dbf16eb4902e3df8a5172a
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158182288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d4b14899b4246ae02160b2865d41fbccab84309daefacec159ec4a14c4f3d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:36 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_VERSION=7u111
# Tue, 30 Aug 2016 19:53:37 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 30 Aug 2016 19:54:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:06:02 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 30 Aug 2016 20:06:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 20:06:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 30 Aug 2016 20:06:04 GMT
WORKDIR /usr/local/jetty
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 30 Aug 2016 21:09:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 30 Aug 2016 21:09:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 30 Aug 2016 21:09:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 30 Aug 2016 21:09:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:49 GMT
WORKDIR /var/lib/jetty
# Tue, 30 Aug 2016 21:09:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 30 Aug 2016 21:09:52 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 30 Aug 2016 21:09:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 30 Aug 2016 21:09:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 30 Aug 2016 21:09:54 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 21:09:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Aug 2016 21:09:54 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e90c17f561d17c5f595aa211d721de8f0d7154d48b49616b90a79c4b4a6f036`  
		Last Modified: Tue, 30 Aug 2016 21:13:08 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41423c830a15264d281c65936b0c3b0a1db6376d0b9b780a092f2c3f06dab4cc`  
		Last Modified: Tue, 30 Aug 2016 21:13:25 GMT  
		Size: 77.7 MB (77712533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba30ef4cf5746c788fc2df9abbd8edd1edd324540a6dea1e3e60b72e39bd927`  
		Last Modified: Tue, 30 Aug 2016 21:13:07 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e81591adfade6c9ea697bf6e921eaa1f90da757c9ad6467e0621a6fc5895800`  
		Last Modified: Tue, 30 Aug 2016 21:13:06 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2ac6d9a5714dca9d4b12071b39273db3b778bc1a654f204d435f63887075d3`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 10.0 MB (10004229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc5954f170b4479bf170e00e9228f5d8145862b93a87ffacd8c0b3ad7a299b9`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f598b87f4c87c3e8e4293a3e84e42abc4bb54003657a6f7611ec54ea38f020c`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95657c6d6f92e14eba324b1d27f2b30949c877dcf347dd007c72c0d4c5497576`  
		Last Modified: Tue, 30 Aug 2016 21:13:05 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63470ad5af56ba5a6737e477848a588803bb25604ec5ba86c108f051da20eaba`  
		Last Modified: Tue, 30 Aug 2016 21:13:04 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
