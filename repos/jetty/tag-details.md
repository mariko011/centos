<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:dec6d4c9cd58e1d8526aa202092ef7a293997aa63e68c8f471e54a6ec4a4f29d
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132064528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a848f43aef4870d1eda1c0825a4ffd2e33663f4832ea9521dbf50d75f0fdd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:53 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:58 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:52:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:52:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:52:01 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:52:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:52:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0cbb80f7b85ed9e536d522f2a575cfe41a84fd64087b1c765c740c784a7d79`  
		Last Modified: Wed, 31 Aug 2016 20:52:08 GMT  
		Size: 7.9 MB (7909436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e413c8c0e6d1e7530339e1759963b9c2204c88b04ddffb5f3e5472339a3c14`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc1960218b02081ae9a8ca6096ddfcdea1405d384b8b1e24730ebb45219f61`  
		Last Modified: Wed, 31 Aug 2016 20:52:06 GMT  
		Size: 1.8 KB (1829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d424dbfeb88109e371eaef1030c9e8ed7da195bc45d899671deb9f812acf3e`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32909f00a87f6ee6ac76af2508effdca7430633492deeb2510d62222cb6e936`  
		Last Modified: Wed, 31 Aug 2016 20:52:07 GMT  
		Size: 570.0 B  
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
$ docker pull jetty@sha256:f012cca471cd41a8838a4dc0b866aef7389bd7c0b6d7203eef6e6e38bc998c6f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134158814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9391d22dfe6b41904b3dcda286fb7c52b13be7a2fb39f72fa370e3120c450c23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:09 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:14 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:14 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:51:15 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:15 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:51:16 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:51:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:51:16 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c04d53bd348ede1a43030cbec2ae5a42e4fd4754e0bbbe3df4686546117f14`  
		Last Modified: Wed, 31 Aug 2016 20:51:23 GMT  
		Size: 10.0 MB (10004233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3401fd2089cc21b1fc8e800e9cbd8b027d0cf74e9bfd328948850786580f496`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c462393c9e6d22249153a576e0d291705b1c1ca1486c91eaf39ff8e3d691ee54`  
		Last Modified: Wed, 31 Aug 2016 20:51:22 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26fb6df1012571282eea3f69ce6d567e37f5593d5bbfdf0fa249e45f727206`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea6110298109810f8e7b0c03a046f52e4bd8793e77885f962fdce3de030de1`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:f012cca471cd41a8838a4dc0b866aef7389bd7c0b6d7203eef6e6e38bc998c6f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134158814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9391d22dfe6b41904b3dcda286fb7c52b13be7a2fb39f72fa370e3120c450c23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:09 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:14 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:14 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:51:15 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:15 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:51:16 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:51:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:51:16 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c04d53bd348ede1a43030cbec2ae5a42e4fd4754e0bbbe3df4686546117f14`  
		Last Modified: Wed, 31 Aug 2016 20:51:23 GMT  
		Size: 10.0 MB (10004233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3401fd2089cc21b1fc8e800e9cbd8b027d0cf74e9bfd328948850786580f496`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c462393c9e6d22249153a576e0d291705b1c1ca1486c91eaf39ff8e3d691ee54`  
		Last Modified: Wed, 31 Aug 2016 20:51:22 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26fb6df1012571282eea3f69ce6d567e37f5593d5bbfdf0fa249e45f727206`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea6110298109810f8e7b0c03a046f52e4bd8793e77885f962fdce3de030de1`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre8`

```console
$ docker pull jetty@sha256:f012cca471cd41a8838a4dc0b866aef7389bd7c0b6d7203eef6e6e38bc998c6f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134158814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9391d22dfe6b41904b3dcda286fb7c52b13be7a2fb39f72fa370e3120c450c23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:09 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:14 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:14 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:51:15 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:15 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:51:16 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:51:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:51:16 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c04d53bd348ede1a43030cbec2ae5a42e4fd4754e0bbbe3df4686546117f14`  
		Last Modified: Wed, 31 Aug 2016 20:51:23 GMT  
		Size: 10.0 MB (10004233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3401fd2089cc21b1fc8e800e9cbd8b027d0cf74e9bfd328948850786580f496`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c462393c9e6d22249153a576e0d291705b1c1ca1486c91eaf39ff8e3d691ee54`  
		Last Modified: Wed, 31 Aug 2016 20:51:22 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26fb6df1012571282eea3f69ce6d567e37f5593d5bbfdf0fa249e45f727206`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea6110298109810f8e7b0c03a046f52e4bd8793e77885f962fdce3de030de1`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:f012cca471cd41a8838a4dc0b866aef7389bd7c0b6d7203eef6e6e38bc998c6f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134158814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9391d22dfe6b41904b3dcda286fb7c52b13be7a2fb39f72fa370e3120c450c23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:06 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:16:08 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:16:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:51:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:51:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:51:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:51:04 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:51:05 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:51:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:51:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:51:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:09 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:51:14 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:51:14 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:51:15 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:51:15 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:51:16 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:51:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:51:16 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfcc7cbc59b7a596fd525d7565bb8df98f7cc2eef6aecde5b2428910a55d40f`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b7a9efc4af31d0be1ab9c42ea79d4fd37ab4f37819484dee0432c6f970887b`  
		Last Modified: Wed, 31 Aug 2016 17:29:32 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e55fe528577cd1aef5bb088da95b07521d9489bb895d68885ba7cd3cf296c`  
		Last Modified: Wed, 31 Aug 2016 17:29:56 GMT  
		Size: 53.4 MB (53402358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5cbb866b5570e0aced559ab8b213a73d5fd87a9a7b9465c3e3a47c532b4c4e`  
		Last Modified: Wed, 31 Aug 2016 17:29:33 GMT  
		Size: 284.3 KB (284257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1b868bb644dee5e6a070e4dcf3fcb49c1b88c2b3a9f9753e8e37f318097308`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff2fb0f04a0b5a0d2d5427d98a8302454f38a808ad5acb82545dc9994288450`  
		Last Modified: Wed, 31 Aug 2016 20:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c04d53bd348ede1a43030cbec2ae5a42e4fd4754e0bbbe3df4686546117f14`  
		Last Modified: Wed, 31 Aug 2016 20:51:23 GMT  
		Size: 10.0 MB (10004233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3401fd2089cc21b1fc8e800e9cbd8b027d0cf74e9bfd328948850786580f496`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c462393c9e6d22249153a576e0d291705b1c1ca1486c91eaf39ff8e3d691ee54`  
		Last Modified: Wed, 31 Aug 2016 20:51:22 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26fb6df1012571282eea3f69ce6d567e37f5593d5bbfdf0fa249e45f727206`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea6110298109810f8e7b0c03a046f52e4bd8793e77885f962fdce3de030de1`  
		Last Modified: Wed, 31 Aug 2016 20:51:21 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre7`

```console
$ docker pull jetty@sha256:a50c2225eca8629707827075c7ce1fda3d81a7a1dec14e6e1e334edfbfd39bf3
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158185034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252074490a22cf73cac50061cdfbcd04c456e07b88407961dfb50b24c0776f75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:55 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:13:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:13:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:15:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 20:53:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:54:01 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:54:01 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:54:01 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:54:05 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:54:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:54:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:06 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:54:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:54:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:54:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:11 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:54:11 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:54:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f65ec902a1b1e7ebbd6d2f0be784334776d98e700d95657308a4e93becdf32`  
		Last Modified: Wed, 31 Aug 2016 17:24:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e29d14c31c0752f233600a073a4e0e439dcf16305d5fe8e081684071e6381f`  
		Last Modified: Wed, 31 Aug 2016 17:24:48 GMT  
		Size: 77.7 MB (77713068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dce28e54d1f9227089efdaba6f3265623d5fe4083e0adda89daea59cc503ab4`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112226fdbf95e35d78343aafd8f995972e393dc27a2a7d38028175653c187119`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96e1340437b42d8ff918e66bc23ae812e3d1b4551f3893912659c4c5b29a34`  
		Last Modified: Wed, 31 Aug 2016 20:54:18 GMT  
		Size: 10.0 MB (10004221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215e18171f5a5c5f27a0b37468109fd60b0c82346ef9188dfb16421ed25531e7`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2356ee4bae12e9ce0991a0f9f95f9fad7685d604b4e1283e964199cd4520f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58921901f7be4e1febd005b95fd8e6237b1e2ba61e84ae2d2de7c39c45f5d7d0`  
		Last Modified: Wed, 31 Aug 2016 20:54:16 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e44b56a5e8245925aa93a7c0552f9e2135de25dfa954922ad69347a0087f3f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:a50c2225eca8629707827075c7ce1fda3d81a7a1dec14e6e1e334edfbfd39bf3
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158185034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252074490a22cf73cac50061cdfbcd04c456e07b88407961dfb50b24c0776f75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:55 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:13:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:13:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:15:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 20:53:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:54:01 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:54:01 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:54:01 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:54:05 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:54:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:54:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:06 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:54:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:54:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:54:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:11 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:54:11 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:54:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f65ec902a1b1e7ebbd6d2f0be784334776d98e700d95657308a4e93becdf32`  
		Last Modified: Wed, 31 Aug 2016 17:24:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e29d14c31c0752f233600a073a4e0e439dcf16305d5fe8e081684071e6381f`  
		Last Modified: Wed, 31 Aug 2016 17:24:48 GMT  
		Size: 77.7 MB (77713068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dce28e54d1f9227089efdaba6f3265623d5fe4083e0adda89daea59cc503ab4`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112226fdbf95e35d78343aafd8f995972e393dc27a2a7d38028175653c187119`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96e1340437b42d8ff918e66bc23ae812e3d1b4551f3893912659c4c5b29a34`  
		Last Modified: Wed, 31 Aug 2016 20:54:18 GMT  
		Size: 10.0 MB (10004221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215e18171f5a5c5f27a0b37468109fd60b0c82346ef9188dfb16421ed25531e7`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2356ee4bae12e9ce0991a0f9f95f9fad7685d604b4e1283e964199cd4520f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58921901f7be4e1febd005b95fd8e6237b1e2ba61e84ae2d2de7c39c45f5d7d0`  
		Last Modified: Wed, 31 Aug 2016 20:54:16 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e44b56a5e8245925aa93a7c0552f9e2135de25dfa954922ad69347a0087f3f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:a50c2225eca8629707827075c7ce1fda3d81a7a1dec14e6e1e334edfbfd39bf3
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158185034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252074490a22cf73cac50061cdfbcd04c456e07b88407961dfb50b24c0776f75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:55 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:13:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:13:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:15:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 20:53:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:54:01 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:54:01 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:54:01 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:54:05 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:54:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:54:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:06 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:54:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:54:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:54:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:11 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:54:11 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:54:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f65ec902a1b1e7ebbd6d2f0be784334776d98e700d95657308a4e93becdf32`  
		Last Modified: Wed, 31 Aug 2016 17:24:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e29d14c31c0752f233600a073a4e0e439dcf16305d5fe8e081684071e6381f`  
		Last Modified: Wed, 31 Aug 2016 17:24:48 GMT  
		Size: 77.7 MB (77713068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dce28e54d1f9227089efdaba6f3265623d5fe4083e0adda89daea59cc503ab4`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112226fdbf95e35d78343aafd8f995972e393dc27a2a7d38028175653c187119`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96e1340437b42d8ff918e66bc23ae812e3d1b4551f3893912659c4c5b29a34`  
		Last Modified: Wed, 31 Aug 2016 20:54:18 GMT  
		Size: 10.0 MB (10004221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215e18171f5a5c5f27a0b37468109fd60b0c82346ef9188dfb16421ed25531e7`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2356ee4bae12e9ce0991a0f9f95f9fad7685d604b4e1283e964199cd4520f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58921901f7be4e1febd005b95fd8e6237b1e2ba61e84ae2d2de7c39c45f5d7d0`  
		Last Modified: Wed, 31 Aug 2016 20:54:16 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e44b56a5e8245925aa93a7c0552f9e2135de25dfa954922ad69347a0087f3f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:a50c2225eca8629707827075c7ce1fda3d81a7a1dec14e6e1e334edfbfd39bf3
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158185034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252074490a22cf73cac50061cdfbcd04c456e07b88407961dfb50b24c0776f75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:13:55 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:13:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:13:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:13:57 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:15:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 20:53:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 31 Aug 2016 20:54:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 20:54:01 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 31 Aug 2016 20:54:01 GMT
WORKDIR /usr/local/jetty
# Wed, 31 Aug 2016 20:54:01 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Wed, 31 Aug 2016 20:54:02 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 31 Aug 2016 20:54:05 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 31 Aug 2016 20:54:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 31 Aug 2016 20:54:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:06 GMT
WORKDIR /var/lib/jetty
# Wed, 31 Aug 2016 20:54:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 31 Aug 2016 20:54:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 31 Aug 2016 20:54:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 31 Aug 2016 20:54:11 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 31 Aug 2016 20:54:11 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:54:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:54:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165e84cccc10bc56e89091e37339ab98afbef36d1f06cd9c1c531af4dc18aa1`  
		Last Modified: Wed, 31 Aug 2016 17:24:31 GMT  
		Size: 566.9 KB (566898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f65ec902a1b1e7ebbd6d2f0be784334776d98e700d95657308a4e93becdf32`  
		Last Modified: Wed, 31 Aug 2016 17:24:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e29d14c31c0752f233600a073a4e0e439dcf16305d5fe8e081684071e6381f`  
		Last Modified: Wed, 31 Aug 2016 17:24:48 GMT  
		Size: 77.7 MB (77713068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dce28e54d1f9227089efdaba6f3265623d5fe4083e0adda89daea59cc503ab4`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112226fdbf95e35d78343aafd8f995972e393dc27a2a7d38028175653c187119`  
		Last Modified: Wed, 31 Aug 2016 20:54:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed96e1340437b42d8ff918e66bc23ae812e3d1b4551f3893912659c4c5b29a34`  
		Last Modified: Wed, 31 Aug 2016 20:54:18 GMT  
		Size: 10.0 MB (10004221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215e18171f5a5c5f27a0b37468109fd60b0c82346ef9188dfb16421ed25531e7`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2356ee4bae12e9ce0991a0f9f95f9fad7685d604b4e1283e964199cd4520f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58921901f7be4e1febd005b95fd8e6237b1e2ba61e84ae2d2de7c39c45f5d7d0`  
		Last Modified: Wed, 31 Aug 2016 20:54:16 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e44b56a5e8245925aa93a7c0552f9e2135de25dfa954922ad69347a0087f3f`  
		Last Modified: Wed, 31 Aug 2016 20:54:17 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
