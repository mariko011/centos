<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neo4j`

-	[`neo4j:3.0.6`](#neo4j306)
-	[`neo4j:3.0`](#neo4j30)
-	[`neo4j:latest`](#neo4jlatest)
-	[`neo4j:3.0.6-enterprise`](#neo4j306-enterprise)
-	[`neo4j:3.0-enterprise`](#neo4j30-enterprise)
-	[`neo4j:enterprise`](#neo4jenterprise)
-	[`neo4j:3.0.5`](#neo4j305)
-	[`neo4j:3.0.5-enterprise`](#neo4j305-enterprise)
-	[`neo4j:3.0.4`](#neo4j304)
-	[`neo4j:3.0.4-enterprise`](#neo4j304-enterprise)
-	[`neo4j:3.0.3`](#neo4j303)
-	[`neo4j:3.0.3-enterprise`](#neo4j303-enterprise)
-	[`neo4j:3.0.2`](#neo4j302)
-	[`neo4j:3.0.2-enterprise`](#neo4j302-enterprise)
-	[`neo4j:3.0.1`](#neo4j301)
-	[`neo4j:3.0.1-enterprise`](#neo4j301-enterprise)
-	[`neo4j:3.0.0`](#neo4j300)
-	[`neo4j:3.0.0-enterprise`](#neo4j300-enterprise)
-	[`neo4j:2.3.6`](#neo4j236)
-	[`neo4j:2.3`](#neo4j23)
-	[`neo4j:2.3.6-enterprise`](#neo4j236-enterprise)
-	[`neo4j:2.3-enterprise`](#neo4j23-enterprise)
-	[`neo4j:2.3.5`](#neo4j235)
-	[`neo4j:2.3.5-enterprise`](#neo4j235-enterprise)
-	[`neo4j:2.3.4`](#neo4j234)
-	[`neo4j:2.3.4-enterprise`](#neo4j234-enterprise)
-	[`neo4j:2.3.3`](#neo4j233)
-	[`neo4j:2.3.3-enterprise`](#neo4j233-enterprise)
-	[`neo4j:2.3.2`](#neo4j232)
-	[`neo4j:2.3.2-enterprise`](#neo4j232-enterprise)
-	[`neo4j:2.3.1`](#neo4j231)
-	[`neo4j:2.3.1-enterprise`](#neo4j231-enterprise)
-	[`neo4j:2.3.0`](#neo4j230)
-	[`neo4j:2.3.0-enterprise`](#neo4j230-enterprise)

## `neo4j:3.0.6`

```console
$ docker pull neo4j@sha256:aa2baaeba796a2cb98c7ff088b5585a0ba974fe174a1af8dacd6dd94c5e39749
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185692013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dec95b6dc1a36bdd93f92c3cd09e17814ad97afac5089ce3a34076a555423c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:09:27 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Tue, 01 Nov 2016 06:09:27 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:09:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:09:28 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:09:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:09:42 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:09:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:09:43 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:09:44 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:09:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:09:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:09:45 GMT
CMD ["neo4j"]
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
	-	`sha256:62cc12c4e095f077970655f26995f5061a2dd38aee6040a6036fc7119a52d2d8`  
		Last Modified: Tue, 01 Nov 2016 06:09:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30562a53f64b7ff8cc927b4da3a5f672922e15dbebbbf8b1b7b4a5193c07e832`  
		Last Modified: Tue, 01 Nov 2016 06:10:01 GMT  
		Size: 61.5 MB (61518176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498ec4b0e9a54c4931bc68bf3d59b8536db81100a6f9a4aba5487ff37a4f637`  
		Last Modified: Tue, 01 Nov 2016 06:09:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690ab1fd845bc243c5ea2da8954a12339ec32b49db5eaf5035d7ae55aed5c9c4`  
		Last Modified: Tue, 01 Nov 2016 06:09:56 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0`

```console
$ docker pull neo4j@sha256:7a4d0b6671db01af5b9434df6e2339047e5818b3033310f25f825ac65cd8f402
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185691963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f45b09b18a2ab92b1147749c9e0008655df98db2be346e66257656adf2c2f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 21 Oct 2016 22:18:58 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Fri, 21 Oct 2016 22:18:58 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Fri, 21 Oct 2016 22:18:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Fri, 21 Oct 2016 22:18:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 21 Oct 2016 22:19:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 21 Oct 2016 22:19:20 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Oct 2016 22:19:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Fri, 21 Oct 2016 22:19:21 GMT
VOLUME [/data]
# Fri, 21 Oct 2016 22:19:22 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 22:19:22 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Fri, 21 Oct 2016 22:19:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:19:23 GMT
CMD ["neo4j"]
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
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fa044e20a6eed338386510432f5cb4fc1994ed9d701e270624e85fc205d308`  
		Last Modified: Fri, 21 Oct 2016 22:19:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a9bd4fd615cce5e34b7548c68175c6bccce09b872d83ef85ef3cceecb01edb`  
		Last Modified: Fri, 21 Oct 2016 22:19:38 GMT  
		Size: 61.5 MB (61518141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa837dcfbd55d4c616adebee2fcaa8ffb5c3f1a3301aa770f6e4221b54d03af2`  
		Last Modified: Fri, 21 Oct 2016 22:19:33 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964066e9e1ba56e8ee2b5ecdc097956787e31f4aac11cfd4fd89a0634179a2e2`  
		Last Modified: Fri, 21 Oct 2016 22:19:33 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:latest`

```console
$ docker pull neo4j@sha256:aa2baaeba796a2cb98c7ff088b5585a0ba974fe174a1af8dacd6dd94c5e39749
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185692013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dec95b6dc1a36bdd93f92c3cd09e17814ad97afac5089ce3a34076a555423c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:09:27 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Tue, 01 Nov 2016 06:09:27 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:09:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:09:28 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:09:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:09:42 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:09:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:09:43 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:09:44 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:09:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:09:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:09:45 GMT
CMD ["neo4j"]
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
	-	`sha256:62cc12c4e095f077970655f26995f5061a2dd38aee6040a6036fc7119a52d2d8`  
		Last Modified: Tue, 01 Nov 2016 06:09:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30562a53f64b7ff8cc927b4da3a5f672922e15dbebbbf8b1b7b4a5193c07e832`  
		Last Modified: Tue, 01 Nov 2016 06:10:01 GMT  
		Size: 61.5 MB (61518176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498ec4b0e9a54c4931bc68bf3d59b8536db81100a6f9a4aba5487ff37a4f637`  
		Last Modified: Tue, 01 Nov 2016 06:09:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690ab1fd845bc243c5ea2da8954a12339ec32b49db5eaf5035d7ae55aed5c9c4`  
		Last Modified: Tue, 01 Nov 2016 06:09:56 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6-enterprise`

```console
$ docker pull neo4j@sha256:78d8b703266a7fa10a6700a4fad16ee55daf13ee0faa2a5df0e8e7f94ffd9a36
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188055846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9f7bc6401ff2b3ad0d1ae89bccbda4d428ec3a2089a493fbdaa7d1794c9a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:10:35 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Tue, 01 Nov 2016 06:10:36 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:10:36 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:10:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:10:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:10:51 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:10:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:10:52 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:10:53 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:10:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:10:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:10:54 GMT
CMD ["neo4j"]
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
	-	`sha256:bb2b709bba5ee4a34bd772cbca298fc7198e135ba063a2b128a0b42c9fb0e69a`  
		Last Modified: Tue, 01 Nov 2016 06:11:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3da494aadb386bd2292987bdc8830978a8811e0a11540f8d754267213ee7c11`  
		Last Modified: Tue, 01 Nov 2016 06:11:12 GMT  
		Size: 63.9 MB (63882005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c92fd40dbbb99bda258c49797258276f8e9fe910bab269f3d03b3b0370995ab`  
		Last Modified: Tue, 01 Nov 2016 06:11:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f81336a643fbda05b99aed09b14d2889f6a99c8e702a9fd76227c7f3c4e98f`  
		Last Modified: Tue, 01 Nov 2016 06:11:05 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0-enterprise`

```console
$ docker pull neo4j@sha256:78d8b703266a7fa10a6700a4fad16ee55daf13ee0faa2a5df0e8e7f94ffd9a36
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188055846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9f7bc6401ff2b3ad0d1ae89bccbda4d428ec3a2089a493fbdaa7d1794c9a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:10:35 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Tue, 01 Nov 2016 06:10:36 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:10:36 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 01 Nov 2016 06:10:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:10:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:10:51 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:10:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:10:52 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:10:53 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:10:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:10:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:10:54 GMT
CMD ["neo4j"]
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
	-	`sha256:bb2b709bba5ee4a34bd772cbca298fc7198e135ba063a2b128a0b42c9fb0e69a`  
		Last Modified: Tue, 01 Nov 2016 06:11:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3da494aadb386bd2292987bdc8830978a8811e0a11540f8d754267213ee7c11`  
		Last Modified: Tue, 01 Nov 2016 06:11:12 GMT  
		Size: 63.9 MB (63882005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c92fd40dbbb99bda258c49797258276f8e9fe910bab269f3d03b3b0370995ab`  
		Last Modified: Tue, 01 Nov 2016 06:11:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f81336a643fbda05b99aed09b14d2889f6a99c8e702a9fd76227c7f3c4e98f`  
		Last Modified: Tue, 01 Nov 2016 06:11:05 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:c43207017685ec08d983f662fe0c94984d26fd76486f871b5562f83c40e202c9
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188055849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa878b93832a1ccaac59c74f3fd95fb7b9ad991c3d049325840ccb3124767e4b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 21 Oct 2016 22:20:10 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Fri, 21 Oct 2016 22:20:11 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Fri, 21 Oct 2016 22:20:11 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Fri, 21 Oct 2016 22:20:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 21 Oct 2016 22:20:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 21 Oct 2016 22:20:25 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Oct 2016 22:20:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Fri, 21 Oct 2016 22:20:26 GMT
VOLUME [/data]
# Fri, 21 Oct 2016 22:20:27 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 22:20:27 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Fri, 21 Oct 2016 22:20:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:20:28 GMT
CMD ["neo4j"]
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
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e39efbee642bacd4922c8412dfe54a2c59e8eb7acea0a8a3bfac640de17569`  
		Last Modified: Fri, 21 Oct 2016 22:20:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512507d9325fc59ba02398649c3202a4081c00bd14b5a988b64af59e7a2215a5`  
		Last Modified: Fri, 21 Oct 2016 22:20:48 GMT  
		Size: 63.9 MB (63882026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a6aef4bdadc323102a0115539f88bfe107eddef1b39387547a7844eec8288e`  
		Last Modified: Fri, 21 Oct 2016 22:20:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c143ae13dc18cae5478de26996adb3a942265e15332c7097e56e3cdeee287d5a`  
		Last Modified: Fri, 21 Oct 2016 22:20:38 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5`

```console
$ docker pull neo4j@sha256:c12cefc9a668f1fd9261b51b54a75288819eadb4fd2e6a06f598946de5d88773
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185689062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4e5399d772a9a7a13a4b189168a2c725bd708e12d9a12f903d705eb88c8725`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 21 Oct 2016 22:28:33 GMT
ENV NEO4J_SHA256=65f6995f9d2e87b61cb8d9c7623e9861bced555a8c05f3476aa73240a77437d8
# Fri, 21 Oct 2016 22:28:34 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.5-unix.tar.gz
# Fri, 21 Oct 2016 22:28:34 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
# Fri, 21 Oct 2016 22:28:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 21 Oct 2016 22:28:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 21 Oct 2016 22:28:48 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Oct 2016 22:28:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Fri, 21 Oct 2016 22:28:49 GMT
VOLUME [/data]
# Fri, 21 Oct 2016 22:28:50 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 22:28:50 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Fri, 21 Oct 2016 22:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:28:51 GMT
CMD ["neo4j"]
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
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27105452bbb29c3cf7b1da834b88ce3fa8728034d7b2c20c8e95749a8743185`  
		Last Modified: Fri, 21 Oct 2016 22:29:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b35ed62fe0cdb37c5855ff6327df3ba50387d6d00335b1cfafca1d1f1c6461f`  
		Last Modified: Fri, 21 Oct 2016 22:29:06 GMT  
		Size: 61.5 MB (61515242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e1722f690c6840ba93daafc50907ae71dc6d8fdf3af80746ed32bfcf0e9892`  
		Last Modified: Fri, 21 Oct 2016 22:29:00 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe6d38ea521d11f224c46a7353d8a5c8de7d773021458317a07e14788af58b2`  
		Last Modified: Fri, 21 Oct 2016 22:29:00 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5-enterprise`

```console
$ docker pull neo4j@sha256:c4a014d1d6fb979712527e76c797ca0fdf3b218b2090f4eaaa9ba2ed1cb0e5ba
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188052373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6713f4a85747e510fbb70dc445cbfadc2b5a14022868ee5822702fdfe9d973a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:20:03 GMT
ENV NEO4J_SHA256=069cd8b1eab4e4b20e4abb50a6f1e7c985a21ad349d3fe3413943b96f1724e06
# Tue, 01 Nov 2016 06:20:04 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.5-unix.tar.gz
# Tue, 01 Nov 2016 06:20:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
# Tue, 01 Nov 2016 06:20:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:20:20 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:20:20 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:20:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:20:22 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:20:23 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:20:23 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:20:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:20:24 GMT
CMD ["neo4j"]
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
	-	`sha256:f7f414cded0a685f5f3f21ccf78ff309de76c9a6e2bf9010cef6684e7d1ac292`  
		Last Modified: Tue, 01 Nov 2016 06:20:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c46184e6c70e70be7bc1154df394db7c65f79cca845402e2d6657165fd2a5e`  
		Last Modified: Tue, 01 Nov 2016 06:20:42 GMT  
		Size: 63.9 MB (63878535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8100d277541e3a9c7a0695bc79a819941275cb1226b0be92606311bfa32682`  
		Last Modified: Tue, 01 Nov 2016 06:20:35 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e226358faff03ea42d9229f61320da34675bcfc9ff395aec2134dd307ba392`  
		Last Modified: Tue, 01 Nov 2016 06:20:35 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4`

```console
$ docker pull neo4j@sha256:80018001452b0fc962c1e749976842098b5422b34aa8f521666351ea0fb4b2ba
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185613497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e1c3087db9aa7e442075f553dcf08fe066c5c34aed32082152ee56439a50ccd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:17:48 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Tue, 01 Nov 2016 06:17:49 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Tue, 01 Nov 2016 06:18:02 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Tue, 01 Nov 2016 06:18:02 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:18:03 GMT
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:18:04 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:18:05 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:18:05 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:18:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:18:06 GMT
CMD ["neo4j"]
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
	-	`sha256:70ef237fbff4a0ef585d09e912a7580e65e7029c1ff6a00ad8a071c7b3e757f3`  
		Last Modified: Tue, 01 Nov 2016 06:18:24 GMT  
		Size: 61.4 MB (61439848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e50c1f6323fc3d7ba151f2965745bf7ac98c2c1f84e96fc2842ca3139465d7`  
		Last Modified: Tue, 01 Nov 2016 06:18:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f8003dd4b0181147618a3f20c7cd62e6a7fdf0e4c462bc96d0c081b7240aa3`  
		Last Modified: Tue, 01 Nov 2016 06:18:17 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4-enterprise`

```console
$ docker pull neo4j@sha256:f8e265601de0c456aa6f5effb4cfbaa361cf6bd58e87ff9215666862eba111ac
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187957317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9175abc021cab578818c28be7601dd1bb312c9efff68ee1b1596a069bce1ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:18:33 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Tue, 01 Nov 2016 06:18:33 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Tue, 01 Nov 2016 06:18:46 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Tue, 01 Nov 2016 06:18:46 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:18:47 GMT
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:18:48 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:18:48 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:18:49 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:18:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:18:50 GMT
CMD ["neo4j"]
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
	-	`sha256:a923061fa136ce4cf6fce24d58485f9c0bd965839170414163a248db564ee2ba`  
		Last Modified: Tue, 01 Nov 2016 06:19:11 GMT  
		Size: 63.8 MB (63783670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8d6e9fe24d9047b3b6714a1d21932cf83c49fc9658ac235ac8dfea15bafed1`  
		Last Modified: Tue, 01 Nov 2016 06:19:00 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d596c6f520991f85a283e5bb8793dac8236279e7ef7cc27bbf13c347ba2e5855`  
		Last Modified: Tue, 01 Nov 2016 06:19:00 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3`

```console
$ docker pull neo4j@sha256:475adc0538341f5d5ab15e7f9adeeafd947ffdd0a0d2be2fe7bdb8662f6f06b8
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.6 MB (185574627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46aca661976076a4259a62789c735fe41bff331cfebbbfd015bc6dc78f6bf8c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:16:19 GMT
ENV NEO4J_SHA256=20cd65c84a6e5345f17bb03c145190f74e58ec2754c2e515a64b317e34dae2ce
# Tue, 01 Nov 2016 06:16:19 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.3-unix.tar.gz
# Tue, 01 Nov 2016 06:16:19 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
# Tue, 01 Nov 2016 06:16:20 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:16:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:16:33 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:16:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:16:34 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:16:35 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:16:36 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:16:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:16:37 GMT
CMD ["neo4j"]
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
	-	`sha256:7db5c5db1ff4c7a1236043a8036cd604625def2ba59f09ee14563ac9afcdcd39`  
		Last Modified: Tue, 01 Nov 2016 06:16:47 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab7a3c6de8aafc75d22763e1abaf31c5b5782f29958a161f5527024d881cd6`  
		Last Modified: Tue, 01 Nov 2016 06:16:53 GMT  
		Size: 61.4 MB (61400849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d71990f79ad6803d478a27bf86677256251b4f215f51ec9d212fa72c17bc870`  
		Last Modified: Tue, 01 Nov 2016 06:16:47 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a7056ca2d67684820205e702063a138c28185d219c55e52987510a9c17e138`  
		Last Modified: Tue, 01 Nov 2016 06:16:47 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3-enterprise`

```console
$ docker pull neo4j@sha256:5c74c897c52cb8ba2ac36d62cd31dd949d464df03d02c362d53617ff201f2e82
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.9 MB (187907682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31716e3985754b53bba7975a35d32d92a309b34413cd26af737ab26d2660a9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:17:01 GMT
ENV NEO4J_SHA256=f73ed4faf94087bded5ee34bc2614f09bbedc3b6e25439058526ce5506eb127e
# Tue, 01 Nov 2016 06:17:01 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.3-unix.tar.gz
# Tue, 01 Nov 2016 06:17:02 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
# Tue, 01 Nov 2016 06:17:02 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:17:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:17:15 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:17:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:17:17 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:17:17 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:17:18 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:17:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:17:19 GMT
CMD ["neo4j"]
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
	-	`sha256:27e8e104fd58376728beef4fb13f179760417cc9589687901b57a682194dfa08`  
		Last Modified: Tue, 01 Nov 2016 06:17:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883acfdb910920fb95badc3baa58d8c965998d5745e13e8f205d0d4c038075e`  
		Last Modified: Tue, 01 Nov 2016 06:17:36 GMT  
		Size: 63.7 MB (63733904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88466ab0326a3ecddd2f2a4150ab1da0b7651f4f0d09afbe96855ea7192af641`  
		Last Modified: Tue, 01 Nov 2016 06:17:31 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7d2847f6ccb6cc9da5342db16fe4b46580b66866a02dcdf1cf8a3247b01f75`  
		Last Modified: Tue, 01 Nov 2016 06:17:29 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2`

```console
$ docker pull neo4j@sha256:46e70365aa834835d6ee83cbb01a6cf5be821591abbeb3efee8465e374707527
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186207990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca80447e1ec299c5402fe3251948427c865bb2d8698062ae388cd0f1a8f941d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:14:53 GMT
ENV NEO4J_SHA256=3daac469e0ad0f74eb8532ada8019b418e6ebd88da9bac52a4ee3393e18086aa
# Tue, 01 Nov 2016 06:14:53 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.2-unix.tar.gz
# Tue, 01 Nov 2016 06:14:53 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
# Tue, 01 Nov 2016 06:14:54 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:15:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:15:07 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:15:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:15:08 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:15:09 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:15:10 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:15:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:15:10 GMT
CMD ["neo4j"]
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
	-	`sha256:21c901a23a0e3a66019de41830babd14a0d9c0b59c823db089b49e4b4e6a3117`  
		Last Modified: Tue, 01 Nov 2016 06:15:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17b9f0d7b2c4c65d52cbdcba97835acc635c559a61b9d3e41c72a1ca13c6dcb`  
		Last Modified: Tue, 01 Nov 2016 06:15:27 GMT  
		Size: 62.0 MB (62034212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a3b49b473755dd00248ed20da8652c0657bd3289947333d50a666c318818aa`  
		Last Modified: Tue, 01 Nov 2016 06:15:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6ce32b3696aa72503265cd02b111699c4a40915071c4ddd04b59fe8e041daa`  
		Last Modified: Tue, 01 Nov 2016 06:15:21 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2-enterprise`

```console
$ docker pull neo4j@sha256:5e1c26b1272108d1591c1a58010b6c69aa3d7b6aab74b18f10a44ea01c8edeb3
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.5 MB (188544720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9eba6ad2db18021701dcb6330264943bf0124954b83d819808f4487649510cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:15:36 GMT
ENV NEO4J_SHA256=7e3cb1cb29c51ac267e57ec3d12c425bd31a4c92a2ecba70bb78360670b4b972
# Tue, 01 Nov 2016 06:15:37 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.2-unix.tar.gz
# Tue, 01 Nov 2016 06:15:37 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
# Tue, 01 Nov 2016 06:15:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:15:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:15:51 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:15:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:15:52 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:15:53 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:15:54 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:15:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:15:55 GMT
CMD ["neo4j"]
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
	-	`sha256:40dea9db935573d10b78023f771ee4cad3a8950610b9cc7db123e109c2a9c1df`  
		Last Modified: Tue, 01 Nov 2016 06:16:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df79e066c9dbfeac92381a4840c8582816989b4b9e66102397b81bfe2d4d0a4`  
		Last Modified: Tue, 01 Nov 2016 06:16:11 GMT  
		Size: 64.4 MB (64370943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d4fe97197cddf770b01729d15532796efc37f2ec4e107c89eab471f64da409`  
		Last Modified: Tue, 01 Nov 2016 06:16:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a84b8e7141258edb9a3f153478bb1291b2802f84e192ce94da3ba02d85d345`  
		Last Modified: Tue, 01 Nov 2016 06:16:05 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1`

```console
$ docker pull neo4j@sha256:85216bda613a7394ce22d87414fd481fe0d3abe43f57f3ffa091edb8e11eac36
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186697802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e235d5afe7ab8f137f6155210909396a62270552764da912535a0864954814`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 21 Oct 2016 22:22:47 GMT
ENV NEO4J_SHA256=ae9d966559c83a9f1c61e1ef4d67aafeb9185e568b6dec0cd6b50e4297a15895
# Fri, 21 Oct 2016 22:22:48 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.1-unix.tar.gz
# Fri, 21 Oct 2016 22:22:48 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
# Fri, 21 Oct 2016 22:22:49 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 21 Oct 2016 22:23:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 21 Oct 2016 22:23:02 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Oct 2016 22:23:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Fri, 21 Oct 2016 22:23:04 GMT
VOLUME [/data]
# Fri, 21 Oct 2016 22:23:04 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 22:23:05 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Fri, 21 Oct 2016 22:23:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:23:06 GMT
CMD ["neo4j"]
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
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c7f99389b8cd9db88ba9271e86e55d4cb2b2dee0da37c63a58832ac67dcc6`  
		Last Modified: Fri, 21 Oct 2016 22:23:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85583e403139a064f54b9ca036dd49c473c1433415034b5f6acc1280db233728`  
		Last Modified: Fri, 21 Oct 2016 22:23:23 GMT  
		Size: 62.5 MB (62524041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e3a5d7fbf7978f1e45f2fbba20c9bb91635d1e63b3960870f73fb87899741`  
		Last Modified: Fri, 21 Oct 2016 22:23:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811402e364f8a8718bf3d33115e32edcc407261cec7cd9d9705aa947c1570722`  
		Last Modified: Fri, 21 Oct 2016 22:23:16 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1-enterprise`

```console
$ docker pull neo4j@sha256:1598b8c9d2e7a2904270e301cac3674fba3cd02c8146118de681750f04ebfa64
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188912030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b0fdf8285712829c6a110ea3b2fa9145dc7f8c9e9b9f61e740731134f9ed21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:14:08 GMT
ENV NEO4J_SHA256=d88c107d10bc4d4919bbac775aa128b4c312a420abfd06897471b5fa96864b11
# Tue, 01 Nov 2016 06:14:08 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.1-unix.tar.gz
# Tue, 01 Nov 2016 06:14:08 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
# Tue, 01 Nov 2016 06:14:09 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:14:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:14:22 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:14:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:14:23 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:14:24 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:14:25 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:14:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:14:26 GMT
CMD ["neo4j"]
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
	-	`sha256:2f60827969466e630ae7acb41ae2ee1381b87d279681cae87a29dda4867448de`  
		Last Modified: Tue, 01 Nov 2016 06:14:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913d0edd08db01fd7ee556bad219890fb3a2a3c050c54f9c6a2f48fc9497d82a`  
		Last Modified: Tue, 01 Nov 2016 06:14:42 GMT  
		Size: 64.7 MB (64738252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f477a15767ad741976d60ad97493ee3b54b49a7266d30c8216a4beac7b5f74`  
		Last Modified: Tue, 01 Nov 2016 06:14:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e821562968d8ae2f2b114f7edd675fa47e3dc11d024c86de7346dc8b6463a9`  
		Last Modified: Tue, 01 Nov 2016 06:14:36 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0`

```console
$ docker pull neo4j@sha256:3f630173e775b86670d4ea8eb65c0f91dc95529c23f7a197f6303cc67aeda384
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186694872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32801474edbc65218a3ba7de48fe46713e44a7d3b9b8b4fd604a08a2d9fb9922`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:11:44 GMT
ENV NEO4J_SHA256=1f1aeb3c748d5b05c263b7dab8b195df788507f59228e80534ed8e506a80c517
# Tue, 01 Nov 2016 06:11:45 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.0-unix.tar.gz
# Tue, 01 Nov 2016 06:11:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
# Tue, 01 Nov 2016 06:11:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:11:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:12:00 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:12:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:12:01 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:12:02 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:12:02 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:12:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:12:03 GMT
CMD ["neo4j"]
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
	-	`sha256:ddf9b760b04d17f0c4a13bde612b9c45b19a3b3c41c859a9c376d0628315bfbc`  
		Last Modified: Tue, 01 Nov 2016 06:12:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a616d38a7f9f6b0cb8cee5da056a62f82dd475f83c39d4e9aa4a08c686eb866`  
		Last Modified: Tue, 01 Nov 2016 06:12:21 GMT  
		Size: 62.5 MB (62521095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f820f3406e0c073c7d4c0835659c11fc902bb2c5881e7cf7c9a6b5840c973687`  
		Last Modified: Tue, 01 Nov 2016 06:12:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcbabfb7946ee14b0a17cd5f1152769b6b47974ab5acdd5cbbb464d10dec44b`  
		Last Modified: Tue, 01 Nov 2016 06:12:14 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0-enterprise`

```console
$ docker pull neo4j@sha256:1c85f7f19ff1ffd7c83a1057934777015c0b9334ed81ee1b2872f7446ea47231
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188910325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4857ae2976fd951a085b7f1a2eca49bf5237115bcc254e2f82e7646c324bc141`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 06:12:31 GMT
ENV NEO4J_SHA256=376409e1849f2f13d5ea6ddc672b535646ffb9a24527520b661e044190bf617a
# Tue, 01 Nov 2016 06:12:31 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.0-unix.tar.gz
# Tue, 01 Nov 2016 06:12:32 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
# Tue, 01 Nov 2016 06:12:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:12:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:12:45 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:12:46 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:12:47 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:12:47 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:12:48 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 01 Nov 2016 06:12:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:12:49 GMT
CMD ["neo4j"]
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
	-	`sha256:200db88e02478a329ddc4e24d4aaef549423a7dd2a5b51dafb2f096baf7bee5c`  
		Last Modified: Tue, 01 Nov 2016 06:13:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092bd857d0bddb87abd91b03be2a13a76bfdc53b2c5e88cb4028ae5fa8b70187`  
		Last Modified: Tue, 01 Nov 2016 06:13:05 GMT  
		Size: 64.7 MB (64736547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b31b534cc6efdbe4f145d69d80b8d2352f699084484eaf43839908dc229f02`  
		Last Modified: Tue, 01 Nov 2016 06:13:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca3bb263228a7cff7b4f39a552fca886b778c13925c321a095557300431074b`  
		Last Modified: Tue, 01 Nov 2016 06:12:59 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6`

```console
$ docker pull neo4j@sha256:d00e67e3b6f98c166de8684a16470dfe87d1e5a3335dc2e2bf440ad0c0121b9f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191529319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8032a976862a35cac780de73df033a0ed22af9d6e659c01bedfe492b538b1207`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 21 Oct 2016 22:08:19 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:08:20 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Fri, 21 Oct 2016 22:08:20 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Fri, 21 Oct 2016 22:08:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Fri, 21 Oct 2016 22:08:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 21 Oct 2016 22:08:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 21 Oct 2016 22:08:34 GMT
WORKDIR /var/lib/neo4j
# Fri, 21 Oct 2016 22:08:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Fri, 21 Oct 2016 22:08:36 GMT
VOLUME [/data]
# Fri, 21 Oct 2016 22:08:37 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 22:08:37 GMT
EXPOSE 7473/tcp 7474/tcp
# Fri, 21 Oct 2016 22:08:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:08:38 GMT
CMD ["neo4j"]
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
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b5f0afacd3f75ef2312060232adc2f342e5c05652dbe2ae0e0ddf119a14bc`  
		Last Modified: Fri, 21 Oct 2016 22:08:51 GMT  
		Size: 8.6 MB (8633879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f90999713907a8cf2d3b97279801410e64ec899852994ebb68015c9ec852cb6`  
		Last Modified: Fri, 21 Oct 2016 22:08:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8964c8ac7765192d21006ee7a513db21a8c628320d97eb25edbf6e06c6fb23`  
		Last Modified: Fri, 21 Oct 2016 22:08:54 GMT  
		Size: 58.7 MB (58721217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ff9bc8fc6f6e1257d8266d5511786c48232adbb6f22631cd7db6ab51e5890e`  
		Last Modified: Fri, 21 Oct 2016 22:08:47 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6898a8223f61fa0460089d2c0bce7f54f4728fa6e9600cdf86588e3cf226408a`  
		Last Modified: Fri, 21 Oct 2016 22:08:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3`

```console
$ docker pull neo4j@sha256:52bdab7f790c6debf043f1ae02b8ba70e5606f299c5402aee295ff96cf4613d6
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191528837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5439c4403321dc6ed90e4d65c869f166bf6f2276868335a0d950d1db8ebe20b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 05:58:10 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Tue, 01 Nov 2016 05:58:10 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Tue, 01 Nov 2016 05:58:11 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Tue, 01 Nov 2016 05:58:11 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 05:58:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 05:58:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 05:58:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 05:58:27 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 05:58:27 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 05:58:28 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 05:58:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 05:58:30 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db08385a798a21643ceb4fb1af4049545f53567baa1a17f7fe62e0998892d502`  
		Last Modified: Tue, 01 Nov 2016 05:58:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c337342b36b8328018f0cdcb6315f0bb16c57643ebe5e248ecb81ff40caaf78`  
		Last Modified: Tue, 01 Nov 2016 05:58:46 GMT  
		Size: 58.7 MB (58721250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58a16b62cbd7863bc78568f01ea3e37d50c98a9db9bf3da772b8123953f0521`  
		Last Modified: Tue, 01 Nov 2016 05:58:40 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e3a8035987d3df958702f7a72f756ad277d2b162c2e4fc857602c5cf4a5995`  
		Last Modified: Tue, 01 Nov 2016 05:58:40 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6-enterprise`

```console
$ docker pull neo4j@sha256:4f59a71641e685a3c6c1470ea643850bd0a1316ab5d6342f73a2c48ce450bdb0
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194069976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4b58883433f00df9706e04bffcc081d7ee744f8f79c59ddb05d13acb809a0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 05:59:08 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Tue, 01 Nov 2016 05:59:08 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 01 Nov 2016 05:59:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 01 Nov 2016 05:59:09 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 05:59:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 05:59:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 05:59:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 05:59:25 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 05:59:25 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 05:59:26 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 05:59:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 05:59:27 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662bab86320c8f885eacbf7a2400acae23d4ce8e47a6084f3e91b827b90375f2`  
		Last Modified: Tue, 01 Nov 2016 05:59:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af50b045744f3ea0dfb9f6e7636e0d67f7c724b24cd853aaf405d603a1714b7`  
		Last Modified: Tue, 01 Nov 2016 05:59:43 GMT  
		Size: 61.3 MB (61262392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c57eeba9d26821f31294ee1c332db22233b919923d4aaa27305d702739b2f73`  
		Last Modified: Tue, 01 Nov 2016 05:59:37 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970f2eec36fe14b1f7cd5c0dad702d9cb9ebf5ba6761d50ea390b0b0ceecf67d`  
		Last Modified: Tue, 01 Nov 2016 05:59:37 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3-enterprise`

```console
$ docker pull neo4j@sha256:4f59a71641e685a3c6c1470ea643850bd0a1316ab5d6342f73a2c48ce450bdb0
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194069976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4b58883433f00df9706e04bffcc081d7ee744f8f79c59ddb05d13acb809a0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 05:59:08 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Tue, 01 Nov 2016 05:59:08 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 01 Nov 2016 05:59:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 01 Nov 2016 05:59:09 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 05:59:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 05:59:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 05:59:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 05:59:25 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 05:59:25 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 05:59:26 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 05:59:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 05:59:27 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662bab86320c8f885eacbf7a2400acae23d4ce8e47a6084f3e91b827b90375f2`  
		Last Modified: Tue, 01 Nov 2016 05:59:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af50b045744f3ea0dfb9f6e7636e0d67f7c724b24cd853aaf405d603a1714b7`  
		Last Modified: Tue, 01 Nov 2016 05:59:43 GMT  
		Size: 61.3 MB (61262392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c57eeba9d26821f31294ee1c332db22233b919923d4aaa27305d702739b2f73`  
		Last Modified: Tue, 01 Nov 2016 05:59:37 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970f2eec36fe14b1f7cd5c0dad702d9cb9ebf5ba6761d50ea390b0b0ceecf67d`  
		Last Modified: Tue, 01 Nov 2016 05:59:37 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5`

```console
$ docker pull neo4j@sha256:c478e0e03f6d726df55f14d76b4c7cf08cf0a60d66f153a852ef266f385721d7
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191491429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7482f8e1ea73781c81d88118148ce026278ad72fabf7cd4027db98846de14cd3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:07:58 GMT
ENV NEO4J_SHA256=969159bddc0526681795f039e4250d728c8b60c5e421450259caacfc488c18cf
# Tue, 01 Nov 2016 06:07:59 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.5-unix.tar.gz
# Tue, 01 Nov 2016 06:07:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
# Tue, 01 Nov 2016 06:08:00 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:08:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:08:14 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:08:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:08:16 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:08:16 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:08:17 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:08:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:08:18 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9214f3549db0127771ad33f9e8954385c5dd9767753820dc0fea717624694f`  
		Last Modified: Tue, 01 Nov 2016 06:08:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71efbe1022245b42bd1d38ba0015a9667ca30878ead8b3e7988c33c0e8ace626`  
		Last Modified: Tue, 01 Nov 2016 06:08:35 GMT  
		Size: 58.7 MB (58683843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0940d25fd1ace1d7b7680c41336453b1dbe49d3af2d9770768b0829cba26cca9`  
		Last Modified: Tue, 01 Nov 2016 06:08:28 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a4d14e42a55d04d529c1417e989122656ae93dc33080b566abf5634e99072`  
		Last Modified: Tue, 01 Nov 2016 06:08:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5-enterprise`

```console
$ docker pull neo4j@sha256:e405e190e15d5e871a5e0e26acf7c69f1a1211c42deaf48b461da676bb4a4d16
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194022924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816bda1f1ebbb9d5bf1179ee73e28346764f0c3bfb9204ca78373a6dbe103d41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:08:43 GMT
ENV NEO4J_SHA256=e12b962b01f5e3d1ab72f52aa311cfb270557ebca13874efb049b15b0cbfa471
# Tue, 01 Nov 2016 06:08:43 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.5-unix.tar.gz
# Tue, 01 Nov 2016 06:08:43 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
# Tue, 01 Nov 2016 06:08:44 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:08:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:08:58 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:08:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:08:59 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:09:00 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:09:00 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:09:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:09:01 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c775208d81d8ffe2a1836c71456ee733f6562bec6641f9e5e13b51b1c7f89e`  
		Last Modified: Tue, 01 Nov 2016 06:09:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4cad7897ae64800987a3505244dd4334b22e10f6f1f02d30c54ff2299e409a`  
		Last Modified: Tue, 01 Nov 2016 06:09:18 GMT  
		Size: 61.2 MB (61215341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04032dea50f7d01c6ecc2302a99f61bccd91d61ba979b2a1d940fe16962e89c0`  
		Last Modified: Tue, 01 Nov 2016 06:09:12 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8799e6d048412cba26ece3dda7095a8a9291a18b047d9fd918a01a9567a280ce`  
		Last Modified: Tue, 01 Nov 2016 06:09:12 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4`

```console
$ docker pull neo4j@sha256:f55c39c00b492a35b2fcf9eb481df4b3c7d7c8b291cabc74269e1abac360b8e3
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191468095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d33165b16c2b8db76b4adb76ccab265b4b6e90182966ff7af6adf5f53715ed2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:06:28 GMT
ENV NEO4J_SHA256=4a4b12e9d97771d9c293ee7786ef08ff7ad0f14a5db0f7fc01e8675e476f644b
# Tue, 01 Nov 2016 06:06:29 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.4-unix.tar.gz
# Tue, 01 Nov 2016 06:06:29 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
# Tue, 01 Nov 2016 06:06:30 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:06:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:06:43 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:06:44 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:06:44 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:06:45 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:06:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:06:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:06:46 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ff0c48bb6600f813d5eae8bafc86448926e55bbf5d00e53e23a74300cf799a`  
		Last Modified: Tue, 01 Nov 2016 06:06:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9922ae1914291b8fbed7fba2932004d6a26e29c0bd3b9cd6bdd4f1c127b53515`  
		Last Modified: Tue, 01 Nov 2016 06:07:04 GMT  
		Size: 58.7 MB (58660509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fcbba755e7858b70e157fb7097f801cad2f72ad88bb807d46205e1bf2653b2`  
		Last Modified: Tue, 01 Nov 2016 06:06:57 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df59bedcae043536346f7ae12602a8fa320f3544024a2f1ca497e96ec972e210`  
		Last Modified: Tue, 01 Nov 2016 06:06:57 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4-enterprise`

```console
$ docker pull neo4j@sha256:83f04607c489b1d878a975e11e89203ac214df79eea9fc0fdfabd4c66cc93395
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193997048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0df9dd46c720fc5fc79c53dd63ac7b6787e02dd17ccc545ea9102eaa3ff7943`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:07:15 GMT
ENV NEO4J_SHA256=640095b153eff5e9f81120d73a110e7d69b2868fc922cd9f54318d203b26f3c1
# Tue, 01 Nov 2016 06:07:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.4-unix.tar.gz
# Tue, 01 Nov 2016 06:07:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
# Tue, 01 Nov 2016 06:07:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:07:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:07:30 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:07:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:07:32 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:07:32 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:07:33 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:07:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:07:34 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03175f4d60fd6323310f2ea88627dc05fb3881a85f92d1f578d206058661f29a`  
		Last Modified: Tue, 01 Nov 2016 06:07:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cda517fbb645a937587121ba478caa29e11fbf0001b9691fe98d7271942284`  
		Last Modified: Tue, 01 Nov 2016 06:07:50 GMT  
		Size: 61.2 MB (61189463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7831cf2964bc6286ba0a7010241444db90d717bd11f0f202f5902349012fa70e`  
		Last Modified: Tue, 01 Nov 2016 06:07:44 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f215220603fdfb9839a45a12709a7129af2f586fd9e6ac944d0d71da388062`  
		Last Modified: Tue, 01 Nov 2016 06:07:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3`

```console
$ docker pull neo4j@sha256:37363d4a53ea2b5310f763c68b9e7f0a59aa05a663b18e6e80c43c2e5f8395d9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192008452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:802b1ab2177ad12dfc132e19162ebfd66b76fe49e1336b3904cae35fac9bc1de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:04:41 GMT
ENV NEO4J_SHA256=01559c55055516a42ee2dd100137b6b55d63f02959a3c6c6db7a152e045828d9
# Tue, 01 Nov 2016 06:04:41 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.3-unix.tar.gz
# Tue, 01 Nov 2016 06:04:42 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
# Tue, 01 Nov 2016 06:04:42 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:04:55 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:04:56 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:04:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:04:57 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:04:58 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:04:58 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:04:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:04:59 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5912f285bd3c4ffd2c6640fed1e889ccb15479d230e9fee1e976b9f433f07f76`  
		Last Modified: Tue, 01 Nov 2016 06:05:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a43f5b07d0eb38ff6c07e060afdddb2ea782216e3be87c08633b6a4b216804`  
		Last Modified: Tue, 01 Nov 2016 06:05:17 GMT  
		Size: 59.2 MB (59200865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649abc40641811972db12ecfc8f10bf1458f77adfa36e1feaf2141849e1f2bc7`  
		Last Modified: Tue, 01 Nov 2016 06:05:10 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165094723bfc849d497fa0276f8deae55f00fd9dd66b4e3f52c7d17c553607e8`  
		Last Modified: Tue, 01 Nov 2016 06:05:10 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3-enterprise`

```console
$ docker pull neo4j@sha256:5f05b05b458c0c41b960fce852e93c83ce9c82fdf03d7853ae670108d4557ee2
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194417985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b61b97b254645f16617527d594cbfb030f84e0b225eb916b401fb3ebd3d7af5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:05:38 GMT
ENV NEO4J_SHA256=864b7ebef3a12844c809e75016aa951c60ac90fb0d075a595108824859ce7875
# Tue, 01 Nov 2016 06:05:39 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.3-unix.tar.gz
# Tue, 01 Nov 2016 06:05:39 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
# Tue, 01 Nov 2016 06:05:40 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:05:54 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:05:54 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:05:55 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:05:55 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:05:56 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:05:56 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:05:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:05:58 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a30b7a1ea092870645a5248c42182b8eeee1a5c85d69cec5b5c28e47b81c54d`  
		Last Modified: Tue, 01 Nov 2016 06:06:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46d4ffc614d1cf63e4422d476c1b4a05a1a7ac94c02d7f340417d3b5e8213c5`  
		Last Modified: Tue, 01 Nov 2016 06:06:15 GMT  
		Size: 61.6 MB (61610402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7728f110479980542d979b06ab9cfd9cf43dc102512599c0eb92365d4eb8f181`  
		Last Modified: Tue, 01 Nov 2016 06:06:09 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089a6e414e57cb23f0e3d782893ec59ae0033eafbd7ef78a78692f3a77a640ea`  
		Last Modified: Tue, 01 Nov 2016 06:06:08 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2`

```console
$ docker pull neo4j@sha256:09ce9f4b50587d74c50e1e8a2f756bf8d4f25edb00f522240c8da9769093f8ec
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191890731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661e2d944cd38db21d2d92e1a62371af053508fe5795a3c3a44f5359d358a564`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:03:09 GMT
ENV NEO4J_SHA256=37e24d95c914c54d5cbbe99473d4beef89da78adb2db04eb87258a489225932a
# Tue, 01 Nov 2016 06:03:10 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.2-unix.tar.gz
# Tue, 01 Nov 2016 06:03:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
# Tue, 01 Nov 2016 06:03:11 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:03:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:03:24 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:03:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:03:25 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:03:26 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:03:27 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:03:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:03:28 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1ee0ad2ba0920fc271bea72f8882a5f639315768305c48e1d70412963399c4`  
		Last Modified: Tue, 01 Nov 2016 06:03:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b94dea61f3833a9225ff3c358471551dee1b7f146c1e97bfc2b1b42c7b4b3e`  
		Last Modified: Tue, 01 Nov 2016 06:03:45 GMT  
		Size: 59.1 MB (59083152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de0a99a4a2769fb68eac983ee6cff42997e6aaddf7c0cf4b72f2f96cc1c8dd9`  
		Last Modified: Tue, 01 Nov 2016 06:03:38 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11e1de60dfa9fdf9d4083300b0865a3b348039fda52638495fca11e6fca3772`  
		Last Modified: Tue, 01 Nov 2016 06:03:39 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2-enterprise`

```console
$ docker pull neo4j@sha256:9674ebb3bd69e585a321350105dbb763ce3510ee928f8355609070e563b359dc
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194338177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe7623d0bad01cd0fcc2f38a6986c6d853b8d625b4951753511b14cb53d5ced`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:03:55 GMT
ENV NEO4J_SHA256=ea80cfca918dd70ea5d10a125f5c3a5be02e45dd497b67dfa2d22770a891acea
# Tue, 01 Nov 2016 06:03:56 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.2-unix.tar.gz
# Tue, 01 Nov 2016 06:03:56 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
# Tue, 01 Nov 2016 06:03:57 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:04:10 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:04:11 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:04:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:04:13 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:04:13 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:04:14 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:04:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:04:15 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cba00d0eb0123c46ac13fc290bbde75cb3c18645ac7a9f0adeb62937b0e7ee`  
		Last Modified: Tue, 01 Nov 2016 06:04:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64881ad150f991fb751f25c7454bec6165128b6f189e85fa3ae6059b20c4f8c7`  
		Last Modified: Tue, 01 Nov 2016 06:04:32 GMT  
		Size: 61.5 MB (61530592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8401a45d0b9d5dc547f268f621c6d6553012cb89c6ef0d404b04e003ca6c8936`  
		Last Modified: Tue, 01 Nov 2016 06:04:26 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c8a58d5ba00da7dd66b8f33a1aaa8cc2a05af902f0049dfeaa7c39313e6181`  
		Last Modified: Tue, 01 Nov 2016 06:04:26 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1`

```console
$ docker pull neo4j@sha256:5d6550d8497974d26817bb269f02feb3035664002e16c3d8076e87fe95544872
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191814527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88bca29604931fb4ab9e2fd91675d57ca97dc9ebe250941d4cdadcd19661ccb2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:01:35 GMT
ENV NEO4J_SHA256=7b2f30d73af107eacd9a3a619475ef448a08eecb2cdb42ab1f8a38d091c70ecb
# Tue, 01 Nov 2016 06:01:35 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.1-unix.tar.gz
# Tue, 01 Nov 2016 06:01:36 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
# Tue, 01 Nov 2016 06:01:36 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:01:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:01:50 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:01:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:01:52 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:01:52 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:01:53 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:01:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:01:54 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baccbbbd15e8be60b369b57909a7298e2a09aa7fca6fdb5d4d968daecc1f0ddf`  
		Last Modified: Tue, 01 Nov 2016 06:02:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e30ea3cb7847a5806ac45985d1d2302cd7248494b4812302f805331bc2f4530`  
		Last Modified: Tue, 01 Nov 2016 06:02:11 GMT  
		Size: 59.0 MB (59006945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd9c0748179097a73f9e7cd96044579880f4cde4f556d375a7edcba1544e10d`  
		Last Modified: Tue, 01 Nov 2016 06:02:04 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7eab87e722e5073eee59eaf6611796ec1dae18deaa557355a03a827bc0fbce`  
		Last Modified: Tue, 01 Nov 2016 06:02:05 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1-enterprise`

```console
$ docker pull neo4j@sha256:c4ef0ef11e0f4554adb5ea5247a5f98b2bb8a64c0003a1617ead260e7fb9d0bf
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194250055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294a00f46c00395f173f5d21045f4dbb9994362454488940a8a3b982ce5101bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:02:21 GMT
ENV NEO4J_SHA256=93f0950b0c3a5a604f80183814b7cda2988a652e9278159c47d036daa96e3d29
# Tue, 01 Nov 2016 06:02:21 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.1-unix.tar.gz
# Tue, 01 Nov 2016 06:02:22 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
# Tue, 01 Nov 2016 06:02:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:02:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:02:36 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:02:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:02:38 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:02:39 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:02:39 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:02:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:02:40 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0bc623cc26013f0a6ebf1e25c109c14e1e67f93e99b95f851d3ea4468f25ac`  
		Last Modified: Tue, 01 Nov 2016 06:02:51 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f959b8dbd5bb1410a00495accaeb23b50cf5aaa16804b85c40867c7830b3a5`  
		Last Modified: Tue, 01 Nov 2016 06:02:57 GMT  
		Size: 61.4 MB (61442477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25401891950c7de3f08797d561b4059195d87be8d9a53571d345f72eedbaf5`  
		Last Modified: Tue, 01 Nov 2016 06:02:50 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe970080d898b922198d593e2a1404ddfb8def2f32275ce34b98aeda3780785`  
		Last Modified: Tue, 01 Nov 2016 06:02:51 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0`

```console
$ docker pull neo4j@sha256:050adbe9a93c4861f38a7dd6ba9c66075876b962b9904803d1235db67d11d0ac
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191396870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3246c2d19d4c80d3e95970297037a29f9bbbd669190354ab75e2c3e5a11c81ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:00:05 GMT
ENV NEO4J_SHA256=88fee93884700dae6a1f870dd84b3da9d094db33d57db1c88904954ef2cb4830
# Tue, 01 Nov 2016 06:00:06 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.0-unix.tar.gz
# Tue, 01 Nov 2016 06:00:06 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
# Tue, 01 Nov 2016 06:00:07 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:00:20 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:00:20 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:00:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:00:22 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:00:23 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:00:24 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:00:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:00:25 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e19795abd140c5aa57056254a10cd035f9f038cc6631a1f184dddf01371c8ef`  
		Last Modified: Tue, 01 Nov 2016 06:00:35 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bf1cf6a9d14d631197e3c7805fe780c0def3b2fbe3b3238816cd3d533d61e3`  
		Last Modified: Tue, 01 Nov 2016 06:00:41 GMT  
		Size: 58.6 MB (58589248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e829f0f31fdd89616fe7f7951c749e0806e1396edda464df574fcdafbd6d38e1`  
		Last Modified: Tue, 01 Nov 2016 06:00:35 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455b0b1a56fc425f36e3d0b7d1f8211d309bfacb4277ddecfbe734355a257a9a`  
		Last Modified: Tue, 01 Nov 2016 06:00:35 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0-enterprise`

```console
$ docker pull neo4j@sha256:6add3c8967bc32474ae826f1476b4100a33511a41b5ab8ea060a8ff224c3f5f5
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0-enterprise` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193855153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713a3070df8622fbcaa9dfeee93d041ecb0382ffdc6f59ef3c912ce498776113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 01 Nov 2016 05:58:10 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:00:49 GMT
ENV NEO4J_SHA256=0d3f370f8141d8bc37065f843af190c405cba098d1bb82065ffc0cb5b99950b7
# Tue, 01 Nov 2016 06:00:49 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.0-unix.tar.gz
# Tue, 01 Nov 2016 06:00:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
# Tue, 01 Nov 2016 06:00:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 01 Nov 2016 06:01:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 01 Nov 2016 06:01:04 GMT
WORKDIR /var/lib/neo4j
# Tue, 01 Nov 2016 06:01:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 01 Nov 2016 06:01:06 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 06:01:06 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 01 Nov 2016 06:01:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 01 Nov 2016 06:01:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:01:08 GMT
CMD ["neo4j"]
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
	-	`sha256:0ddc68a00489012df2cbf9c8ce84165f8ae8b7fb566e8cc2dba6c74127a95829`  
		Last Modified: Tue, 01 Nov 2016 05:58:44 GMT  
		Size: 8.6 MB (8633348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb24abd2fa6478f87052c907a2310fe5f6296c9956c37ea808d9072ef5007914`  
		Last Modified: Tue, 01 Nov 2016 06:01:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9630c242558271128580e845a51f29229f7728471e8ca44b0dfe52a4bee8adf2`  
		Last Modified: Tue, 01 Nov 2016 06:01:25 GMT  
		Size: 61.0 MB (61047527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e57e0b0404d5db70049f592112dd670355a9d1dec7e83ecba787eac4dfd2514`  
		Last Modified: Tue, 01 Nov 2016 06:01:18 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631eed498c2b5611695d74aebce8cc3643eeeb6c4c81a332c612f8913dddf8b8`  
		Last Modified: Tue, 01 Nov 2016 06:01:20 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
