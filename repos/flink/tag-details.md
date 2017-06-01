<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `flink`

-	[`flink:1.2.1-hadoop2-scala_2.10`](#flink121-hadoop2-scala_210)
-	[`flink:1.2.1-hadoop2-scala_2.11`](#flink121-hadoop2-scala_211)
-	[`flink:1.2.1-hadoop2`](#flink121-hadoop2)
-	[`flink:1.2-hadoop2`](#flink12-hadoop2)
-	[`flink:1.2.1-hadoop24-scala_2.10`](#flink121-hadoop24-scala_210)
-	[`flink:1.2.1-hadoop24-scala_2.11`](#flink121-hadoop24-scala_211)
-	[`flink:1.2.1-hadoop24`](#flink121-hadoop24)
-	[`flink:1.2-hadoop24`](#flink12-hadoop24)
-	[`flink:1.2.1-hadoop26-scala_2.10`](#flink121-hadoop26-scala_210)
-	[`flink:1.2.1-hadoop26-scala_2.11`](#flink121-hadoop26-scala_211)
-	[`flink:1.2.1-hadoop26`](#flink121-hadoop26)
-	[`flink:1.2-hadoop26`](#flink12-hadoop26)
-	[`flink:1.2.1-hadoop27-scala_2.10`](#flink121-hadoop27-scala_210)
-	[`flink:1.2.1-scala_2.10`](#flink121-scala_210)
-	[`flink:1.2-scala_2.10`](#flink12-scala_210)
-	[`flink:1.2.1-hadoop27-scala_2.11`](#flink121-hadoop27-scala_211)
-	[`flink:1.2.1-scala_2.11`](#flink121-scala_211)
-	[`flink:1.2-scala_2.11`](#flink12-scala_211)
-	[`flink:1.2.1-hadoop27`](#flink121-hadoop27)
-	[`flink:1.2-hadoop27`](#flink12-hadoop27)
-	[`flink:1.2.1`](#flink121)
-	[`flink:1.2`](#flink12)
-	[`flink:1.3.0-hadoop2-scala_2.10`](#flink130-hadoop2-scala_210)
-	[`flink:1.3.0-hadoop2-scala_2.11`](#flink130-hadoop2-scala_211)
-	[`flink:1.3.0-hadoop2`](#flink130-hadoop2)
-	[`flink:1.3-hadoop2`](#flink13-hadoop2)
-	[`flink:hadoop2`](#flinkhadoop2)
-	[`flink:1.3.0-hadoop24-scala_2.10`](#flink130-hadoop24-scala_210)
-	[`flink:1.3.0-hadoop24-scala_2.11`](#flink130-hadoop24-scala_211)
-	[`flink:1.3.0-hadoop24`](#flink130-hadoop24)
-	[`flink:1.3-hadoop24`](#flink13-hadoop24)
-	[`flink:hadoop24`](#flinkhadoop24)
-	[`flink:1.3.0-hadoop26-scala_2.10`](#flink130-hadoop26-scala_210)
-	[`flink:1.3.0-hadoop26-scala_2.11`](#flink130-hadoop26-scala_211)
-	[`flink:1.3.0-hadoop26`](#flink130-hadoop26)
-	[`flink:1.3-hadoop26`](#flink13-hadoop26)
-	[`flink:hadoop26`](#flinkhadoop26)
-	[`flink:1.3.0-hadoop27-scala_2.10`](#flink130-hadoop27-scala_210)
-	[`flink:1.3.0-scala_2.10`](#flink130-scala_210)
-	[`flink:1.3-scala_2.10`](#flink13-scala_210)
-	[`flink:scala_2.10`](#flinkscala_210)
-	[`flink:1.3.0-hadoop27-scala_2.11`](#flink130-hadoop27-scala_211)
-	[`flink:1.3.0-scala_2.11`](#flink130-scala_211)
-	[`flink:1.3-scala_2.11`](#flink13-scala_211)
-	[`flink:scala_2.11`](#flinkscala_211)
-	[`flink:1.3.0-hadoop27`](#flink130-hadoop27)
-	[`flink:1.3-hadoop27`](#flink13-hadoop27)
-	[`flink:hadoop27`](#flinkhadoop27)
-	[`flink:1.3.0`](#flink130)
-	[`flink:1.3`](#flink13)
-	[`flink:latest`](#flinklatest)

## `flink:1.2.1-hadoop2-scala_2.10`

```console
$ docker pull flink@sha256:c03b87456db12a399fdc6b6b4bd3ce3231c699dacbd68b1e90001e0800ac29bc
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop2-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246748728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc814a6ea1a385a42d7a1ee282366e0502b08c9d8dc97532137eaa778c1d160`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:36:55 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:36:56 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:36:57 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:36:59 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:36:59 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:37:00 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.10.tgz
# Tue, 16 May 2017 20:37:01 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:37:02 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:37:14 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:37:29 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:37:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:37:31 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:37:32 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037c2ce4dcde8b568b98273548894d98b7188cac6d30162b7ebcd260c77e2bbc`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70472313fe98acd02f4bc5320c67ec0e1554289808847d03fb00bd27df3528a`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d5bce75c52479cd4d9adcae1e19333580409b708458e71366a51d2f060704`  
		Last Modified: Tue, 16 May 2017 20:56:27 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5459f4812d868589e62aba3890d38cdde9ee3665ef1b2212821027e016478f`  
		Last Modified: Tue, 16 May 2017 20:56:37 GMT  
		Size: 118.9 MB (118927049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150eb380110821a0432926ebfaf4ce31aba21df907cd61443d50000bbb7c2eb2`  
		Last Modified: Tue, 16 May 2017 20:56:27 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop2-scala_2.11`

```console
$ docker pull flink@sha256:b19c556980c5bb958a19634aa57d49fb99d08d45ce2603059014be0da08c6cbe
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop2-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247302215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8d9b2fabf2a95ce2489f32eb80a114d71d2de70602773189185fe9a9b3e205`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:37:53 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:37:54 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:37:55 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:37:57 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:38:18 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:38:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz
# Tue, 16 May 2017 20:38:20 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:38:21 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:39:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:39:24 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:39:25 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:39:26 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a121fa165436b601dd6b4fb6d2b13ba642b004e4c16458318d6480381ad6c66`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a6ca092f5606c9e91f0d2c14ceae96f83a1cd1169a64e7cff44988a362b928`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bced74ff73fc2cb866aff4db5ca97218925ad0a5f3c296f86ddf7686fb29de7`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db379fe8615b7f8bb488d2f365a27ed5c0372220013aba58b5a41170f13b3cc`  
		Last Modified: Tue, 16 May 2017 20:57:21 GMT  
		Size: 119.5 MB (119480533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dea806b5856b90ba0fcc01e531a9304a581bda82a24defcba515d413a2d2278`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop2`

```console
$ docker pull flink@sha256:b19c556980c5bb958a19634aa57d49fb99d08d45ce2603059014be0da08c6cbe
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247302215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8d9b2fabf2a95ce2489f32eb80a114d71d2de70602773189185fe9a9b3e205`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:37:53 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:37:54 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:37:55 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:37:57 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:38:18 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:38:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz
# Tue, 16 May 2017 20:38:20 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:38:21 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:39:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:39:24 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:39:25 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:39:26 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a121fa165436b601dd6b4fb6d2b13ba642b004e4c16458318d6480381ad6c66`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a6ca092f5606c9e91f0d2c14ceae96f83a1cd1169a64e7cff44988a362b928`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bced74ff73fc2cb866aff4db5ca97218925ad0a5f3c296f86ddf7686fb29de7`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db379fe8615b7f8bb488d2f365a27ed5c0372220013aba58b5a41170f13b3cc`  
		Last Modified: Tue, 16 May 2017 20:57:21 GMT  
		Size: 119.5 MB (119480533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dea806b5856b90ba0fcc01e531a9304a581bda82a24defcba515d413a2d2278`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop2`

```console
$ docker pull flink@sha256:b19c556980c5bb958a19634aa57d49fb99d08d45ce2603059014be0da08c6cbe
```

-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247302215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8d9b2fabf2a95ce2489f32eb80a114d71d2de70602773189185fe9a9b3e205`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:37:53 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:37:54 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:37:55 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:37:57 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:38:18 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:38:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz
# Tue, 16 May 2017 20:38:20 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:38:21 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:39:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:39:24 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:39:25 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:39:26 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a121fa165436b601dd6b4fb6d2b13ba642b004e4c16458318d6480381ad6c66`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a6ca092f5606c9e91f0d2c14ceae96f83a1cd1169a64e7cff44988a362b928`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bced74ff73fc2cb866aff4db5ca97218925ad0a5f3c296f86ddf7686fb29de7`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db379fe8615b7f8bb488d2f365a27ed5c0372220013aba58b5a41170f13b3cc`  
		Last Modified: Tue, 16 May 2017 20:57:21 GMT  
		Size: 119.5 MB (119480533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dea806b5856b90ba0fcc01e531a9304a581bda82a24defcba515d413a2d2278`  
		Last Modified: Tue, 16 May 2017 20:57:11 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop24-scala_2.10`

```console
$ docker pull flink@sha256:9e50cb6e30b039441338c37702da2a2e06cb264e59a5bc37285e4fadd845a3bf
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop24-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248334549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77fce3cdd617d2e6f01057e3ac487b135e1ae42418a68e31b69b59a367c0a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:40:27 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:40:47 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:41:08 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:41:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:41:11 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:41:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.10.tgz
# Tue, 16 May 2017 20:41:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:41:14 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:41:41 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:42:02 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:42:23 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:42:24 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4897c5631a67b4fb7e47af3d3e398d0d75fd9c7cea3e578049ed8db85749696`  
		Last Modified: Tue, 16 May 2017 20:59:06 GMT  
		Size: 5.0 KB (4981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a38c87184b6d18e1a2d22ccad54186138e2ca7ab4b23577ea782f1f87c50072`  
		Last Modified: Tue, 16 May 2017 20:59:07 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7574582683ea17928410dccc55109d1c83b48e173223aa18800722c967ad3b41`  
		Last Modified: Tue, 16 May 2017 20:59:06 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49efa54f19ecb4e822556f7b02f71b87eefb5af5e644c139f0d853246e9a1fff`  
		Last Modified: Tue, 16 May 2017 20:59:15 GMT  
		Size: 120.5 MB (120512866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbd94ec560c690884390bd9193d7b4abe54df64ffdf6426dca02e6abb01bbe3`  
		Last Modified: Tue, 16 May 2017 20:59:06 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop24-scala_2.11`

```console
$ docker pull flink@sha256:d098a5fb2d277859cbea66f571cc6a88f378504690a450f0fdc81462bf773051
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop24-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248887968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68c5427ac5f8001aac871617e2d9a179136a4ce3d3d60a084eaca5ff1e456a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:44:27 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:44:28 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:44:28 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:44:30 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:44:50 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:44:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 16 May 2017 20:44:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:44:53 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:45:24 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:45:42 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:45:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:45:43 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:46:04 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e8e757b080ce6ee536cc6a2476b9094b49624e1b310cf435e8fd98ef3dab92`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 5.0 KB (4971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6fd16327805595275ca4dbad1e4cc5cb2856f9d37a246b2648c268636764f2`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62b7a53a56607db1f8d30e8b12e93afe7ea42d9a19b6d96621cdd9d89d651ea`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5b952622285031ee6620645dd0a4a23c208ec5625e63e88f23612a06bdf1fe`  
		Last Modified: Tue, 16 May 2017 20:59:52 GMT  
		Size: 121.1 MB (121066295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ea3d29daec9fe55a02c265d2e00bbc3a713ffd3cb2a1a8dfdd2f2d9eb0b065`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop24`

```console
$ docker pull flink@sha256:d098a5fb2d277859cbea66f571cc6a88f378504690a450f0fdc81462bf773051
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248887968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68c5427ac5f8001aac871617e2d9a179136a4ce3d3d60a084eaca5ff1e456a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:44:27 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:44:28 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:44:28 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:44:30 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:44:50 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:44:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 16 May 2017 20:44:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:44:53 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:45:24 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:45:42 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:45:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:45:43 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:46:04 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e8e757b080ce6ee536cc6a2476b9094b49624e1b310cf435e8fd98ef3dab92`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 5.0 KB (4971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6fd16327805595275ca4dbad1e4cc5cb2856f9d37a246b2648c268636764f2`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62b7a53a56607db1f8d30e8b12e93afe7ea42d9a19b6d96621cdd9d89d651ea`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5b952622285031ee6620645dd0a4a23c208ec5625e63e88f23612a06bdf1fe`  
		Last Modified: Tue, 16 May 2017 20:59:52 GMT  
		Size: 121.1 MB (121066295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ea3d29daec9fe55a02c265d2e00bbc3a713ffd3cb2a1a8dfdd2f2d9eb0b065`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop24`

```console
$ docker pull flink@sha256:d098a5fb2d277859cbea66f571cc6a88f378504690a450f0fdc81462bf773051
```

-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248887968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68c5427ac5f8001aac871617e2d9a179136a4ce3d3d60a084eaca5ff1e456a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:44:27 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:44:28 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:44:28 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:44:30 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:44:50 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:44:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 16 May 2017 20:44:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:44:53 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:45:24 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:45:42 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:45:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:45:43 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:46:04 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e8e757b080ce6ee536cc6a2476b9094b49624e1b310cf435e8fd98ef3dab92`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 5.0 KB (4971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6fd16327805595275ca4dbad1e4cc5cb2856f9d37a246b2648c268636764f2`  
		Last Modified: Tue, 16 May 2017 20:59:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62b7a53a56607db1f8d30e8b12e93afe7ea42d9a19b6d96621cdd9d89d651ea`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5b952622285031ee6620645dd0a4a23c208ec5625e63e88f23612a06bdf1fe`  
		Last Modified: Tue, 16 May 2017 20:59:52 GMT  
		Size: 121.1 MB (121066295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ea3d29daec9fe55a02c265d2e00bbc3a713ffd3cb2a1a8dfdd2f2d9eb0b065`  
		Last Modified: Tue, 16 May 2017 20:59:44 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop26-scala_2.10`

```console
$ docker pull flink@sha256:ab4015ece07310b32f3467ffdabeec919ecb7d684a7feeadfa6f6fcec6c8cad8
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop26-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252857369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71da4f51696f09200dad7693b136437b6fa0cc6c3a89d5b7c7a652c00b2d18bc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:46:45 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:46:45 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:46:46 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:46:48 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:47:08 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:47:09 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.10.tgz
# Tue, 16 May 2017 20:47:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:47:11 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:47:40 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:47:55 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:47:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:47:57 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:47:58 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d98e48f2954109347d37196418f0d13ecc009d75f80a8ed77cdef8449ba86d`  
		Last Modified: Tue, 16 May 2017 21:01:27 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ffbef9a044774b730a62534c9c1f1ca185df27cc59c632ee5a8226fe586920`  
		Last Modified: Tue, 16 May 2017 21:01:27 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6991115dc059aac652a2fd88d1c978920042a1ab6fa7e3652678e72cecc3113`  
		Last Modified: Tue, 16 May 2017 21:01:28 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882bc629576fdc91bbcf6ffe6ecbda7cf05795694d55a6c00ee3ac4dad74835c`  
		Last Modified: Tue, 16 May 2017 21:01:37 GMT  
		Size: 125.0 MB (125035692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29771add06aa59b49d1d4060b6733e9aff54946161840be16e542d6a538379cf`  
		Last Modified: Tue, 16 May 2017 21:01:28 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop26-scala_2.11`

```console
$ docker pull flink@sha256:5b991d99ebc13066f90d37ed5be4e7d4d0fb41498add3a2b79df17e54e4bb5d6
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop26-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253410955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7479c789e490a4b27b9dfc172f73d04459a9347ed8522e9a18035693223e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:48:58 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:48:59 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:48:59 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:49:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:49:21 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:49:22 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 16 May 2017 20:49:23 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:49:24 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:50:32 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:50:33 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:50:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:50:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:50:36 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a814852ee0f1a26d9c11839bee3d1647d6c9b2e37b1629c929d4c9bbada30fb`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c9133a7335b9b9d53ec206c4583facf6f58e66d0bcf35d8fc31a5717759a1f`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7930ae9948c5c9cf172746e80cf27b50cf80ff9e8e9b2ee56c47be17a563df3`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a94235f45bd82f8a132078cd945103401862b7ec28c17f82229d66b2372d8`  
		Last Modified: Tue, 16 May 2017 21:02:15 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b4aa3e9e6c778f19688579480dbedd93e53b3dde3b60a08d73273e13f8285`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop26`

```console
$ docker pull flink@sha256:5b991d99ebc13066f90d37ed5be4e7d4d0fb41498add3a2b79df17e54e4bb5d6
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop26` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253410955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7479c789e490a4b27b9dfc172f73d04459a9347ed8522e9a18035693223e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:48:58 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:48:59 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:48:59 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:49:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:49:21 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:49:22 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 16 May 2017 20:49:23 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:49:24 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:50:32 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:50:33 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:50:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:50:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:50:36 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a814852ee0f1a26d9c11839bee3d1647d6c9b2e37b1629c929d4c9bbada30fb`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c9133a7335b9b9d53ec206c4583facf6f58e66d0bcf35d8fc31a5717759a1f`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7930ae9948c5c9cf172746e80cf27b50cf80ff9e8e9b2ee56c47be17a563df3`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a94235f45bd82f8a132078cd945103401862b7ec28c17f82229d66b2372d8`  
		Last Modified: Tue, 16 May 2017 21:02:15 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b4aa3e9e6c778f19688579480dbedd93e53b3dde3b60a08d73273e13f8285`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop26`

```console
$ docker pull flink@sha256:5b991d99ebc13066f90d37ed5be4e7d4d0fb41498add3a2b79df17e54e4bb5d6
```

-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop26` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253410955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7479c789e490a4b27b9dfc172f73d04459a9347ed8522e9a18035693223e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:48:58 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:48:59 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:48:59 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:49:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:49:21 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:49:22 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 16 May 2017 20:49:23 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:49:24 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:50:32 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:50:33 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:50:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:50:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:50:36 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a814852ee0f1a26d9c11839bee3d1647d6c9b2e37b1629c929d4c9bbada30fb`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c9133a7335b9b9d53ec206c4583facf6f58e66d0bcf35d8fc31a5717759a1f`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7930ae9948c5c9cf172746e80cf27b50cf80ff9e8e9b2ee56c47be17a563df3`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a94235f45bd82f8a132078cd945103401862b7ec28c17f82229d66b2372d8`  
		Last Modified: Tue, 16 May 2017 21:02:15 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b4aa3e9e6c778f19688579480dbedd93e53b3dde3b60a08d73273e13f8285`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop27-scala_2.10`

```console
$ docker pull flink@sha256:8e704ef3916180f5a4d1a44cc81a3ea919e45bbc1288b56c4a2b7e4d7f29f4bb
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop27-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255549187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0818a41af3a8e1eb35b6a7609b8fc775566aee5109128b9a9c54b8450c8d4ed6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:50:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:50:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:50:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:00 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:01 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:51:04 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:51:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:51:17 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:51:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:51:18 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:51:19 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1163bfd29745238e5f3022f31088d95179d9d153e9bc64b0569fbe1c8b725d47`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5eedf603c247100ec97795f0a8fd93bd6cc87c8157b57ad781928d2b78e32e`  
		Last Modified: Tue, 16 May 2017 21:03:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b9618ab3f589010c0f5fad390c4d531ba431846f5f764a7a2319ee9305f4e3`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2e60a133cd3482eb1d8d9d7be0ef0c9eefbece0c93fe3047c3c7484c16ef1`  
		Last Modified: Tue, 16 May 2017 21:04:00 GMT  
		Size: 127.7 MB (127727513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22605a4d81c76a2a61f87e355d9fe9ffa8826e92b12ead0ff4b468157ec2928`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-scala_2.10`

```console
$ docker pull flink@sha256:8e704ef3916180f5a4d1a44cc81a3ea919e45bbc1288b56c4a2b7e4d7f29f4bb
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255549187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0818a41af3a8e1eb35b6a7609b8fc775566aee5109128b9a9c54b8450c8d4ed6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:50:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:50:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:50:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:00 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:01 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:51:04 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:51:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:51:17 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:51:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:51:18 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:51:19 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1163bfd29745238e5f3022f31088d95179d9d153e9bc64b0569fbe1c8b725d47`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5eedf603c247100ec97795f0a8fd93bd6cc87c8157b57ad781928d2b78e32e`  
		Last Modified: Tue, 16 May 2017 21:03:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b9618ab3f589010c0f5fad390c4d531ba431846f5f764a7a2319ee9305f4e3`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2e60a133cd3482eb1d8d9d7be0ef0c9eefbece0c93fe3047c3c7484c16ef1`  
		Last Modified: Tue, 16 May 2017 21:04:00 GMT  
		Size: 127.7 MB (127727513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22605a4d81c76a2a61f87e355d9fe9ffa8826e92b12ead0ff4b468157ec2928`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-scala_2.10`

```console
$ docker pull flink@sha256:8e704ef3916180f5a4d1a44cc81a3ea919e45bbc1288b56c4a2b7e4d7f29f4bb
```

-	Platforms:
	-	linux; amd64

### `flink:1.2-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255549187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0818a41af3a8e1eb35b6a7609b8fc775566aee5109128b9a9c54b8450c8d4ed6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:50:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:50:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:50:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:00 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:01 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:51:04 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:51:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:51:17 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:51:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:51:18 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:51:19 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1163bfd29745238e5f3022f31088d95179d9d153e9bc64b0569fbe1c8b725d47`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5eedf603c247100ec97795f0a8fd93bd6cc87c8157b57ad781928d2b78e32e`  
		Last Modified: Tue, 16 May 2017 21:03:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b9618ab3f589010c0f5fad390c4d531ba431846f5f764a7a2319ee9305f4e3`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2e60a133cd3482eb1d8d9d7be0ef0c9eefbece0c93fe3047c3c7484c16ef1`  
		Last Modified: Tue, 16 May 2017 21:04:00 GMT  
		Size: 127.7 MB (127727513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22605a4d81c76a2a61f87e355d9fe9ffa8826e92b12ead0ff4b468157ec2928`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop27-scala_2.11`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop27-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-scala_2.11`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-scala_2.11`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop27`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop27` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop27`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop27` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:1.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop2-scala_2.10`

```console
$ docker pull flink@sha256:38354ba5b4918e83cac47434b9842b8de07fa2c8caea5f448c74deaa50d20d72
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop2-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262987326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18bcdbdff321ac5902e963614b129d855e5dc38b135ad243c62a38e2ad07d33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:07:51 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=2 SCALA_VERSION=2.10
# Thu, 01 Jun 2017 19:07:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:07:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:07:55 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:07:55 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:07:56 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.10.tgz
# Thu, 01 Jun 2017 19:07:57 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.10.tgz.asc
# Thu, 01 Jun 2017 19:07:58 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:08:08 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:08:09 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:08:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:08:11 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:08:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3107167381fd86a25cea1199695d56fa0c656208016f9f1ab520ff1e87af6d5c`  
		Last Modified: Thu, 01 Jun 2017 19:23:35 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed9f7b018b6d41229de51b9ffdddfa351b693f94a2dc177648b7137604acaa1`  
		Last Modified: Thu, 01 Jun 2017 19:23:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8e8bdcd852936b604035be1888fa47b66ae80f8dad98ab334c51c28a649c53`  
		Last Modified: Thu, 01 Jun 2017 19:23:35 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af67bde02d5576b8cabfd42f55b3de5ee6dd7211765373cfe698a82c45d6690`  
		Last Modified: Thu, 01 Jun 2017 19:23:54 GMT  
		Size: 135.2 MB (135165643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15dde404b6f45a0942dc85f62abd9925c4abadb7a71d3dd4a34dfca3cad4c27`  
		Last Modified: Thu, 01 Jun 2017 19:23:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop2-scala_2.11`

```console
$ docker pull flink@sha256:55f205cde22044df5971d49940f215ec07535cd189c496a7da38159f14da3e02
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop2-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263601429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e9195ea47b381c576365e4ee81e58a229b6264b0b2d9fa03008b3fce637032`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:08:33 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:08:34 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:08:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:08:36 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:08:37 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:08:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz
# Thu, 01 Jun 2017 19:08:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:08:40 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:08:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:08:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:08:50 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:08:51 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32872340053e2048d3c30461474ca0ff4fd723ea3230d81c427437c1cab2e430`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 5.0 KB (4982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b4fc589c86e07ec9656fa8f85fa9cba374f062698aa1a8087cfaee9c95677`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d458795b492875b5f122eca252e20bc25a408e0c614bdb102ea0a033879c3d4f`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e65d085736d62a10853705288d6e108691ab346d221121bff1c4f5eee56b043`  
		Last Modified: Thu, 01 Jun 2017 19:24:44 GMT  
		Size: 135.8 MB (135779746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c523a95778d787fd3a0ba6e154b86d779349ee58bb2dabfdeeae0414855ef662`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop2`

```console
$ docker pull flink@sha256:55f205cde22044df5971d49940f215ec07535cd189c496a7da38159f14da3e02
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263601429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e9195ea47b381c576365e4ee81e58a229b6264b0b2d9fa03008b3fce637032`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:08:33 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:08:34 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:08:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:08:36 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:08:37 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:08:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz
# Thu, 01 Jun 2017 19:08:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:08:40 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:08:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:08:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:08:50 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:08:51 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32872340053e2048d3c30461474ca0ff4fd723ea3230d81c427437c1cab2e430`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 5.0 KB (4982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b4fc589c86e07ec9656fa8f85fa9cba374f062698aa1a8087cfaee9c95677`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d458795b492875b5f122eca252e20bc25a408e0c614bdb102ea0a033879c3d4f`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e65d085736d62a10853705288d6e108691ab346d221121bff1c4f5eee56b043`  
		Last Modified: Thu, 01 Jun 2017 19:24:44 GMT  
		Size: 135.8 MB (135779746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c523a95778d787fd3a0ba6e154b86d779349ee58bb2dabfdeeae0414855ef662`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop2`

```console
$ docker pull flink@sha256:55f205cde22044df5971d49940f215ec07535cd189c496a7da38159f14da3e02
```

-	Platforms:
	-	linux; amd64

### `flink:1.3-hadoop2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263601429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e9195ea47b381c576365e4ee81e58a229b6264b0b2d9fa03008b3fce637032`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:08:33 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:08:34 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:08:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:08:36 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:08:37 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:08:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz
# Thu, 01 Jun 2017 19:08:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:08:40 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:08:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:08:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:08:50 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:08:51 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32872340053e2048d3c30461474ca0ff4fd723ea3230d81c427437c1cab2e430`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 5.0 KB (4982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b4fc589c86e07ec9656fa8f85fa9cba374f062698aa1a8087cfaee9c95677`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d458795b492875b5f122eca252e20bc25a408e0c614bdb102ea0a033879c3d4f`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e65d085736d62a10853705288d6e108691ab346d221121bff1c4f5eee56b043`  
		Last Modified: Thu, 01 Jun 2017 19:24:44 GMT  
		Size: 135.8 MB (135779746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c523a95778d787fd3a0ba6e154b86d779349ee58bb2dabfdeeae0414855ef662`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop2`

```console
$ docker pull flink@sha256:55f205cde22044df5971d49940f215ec07535cd189c496a7da38159f14da3e02
```

-	Platforms:
	-	linux; amd64

### `flink:hadoop2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263601429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e9195ea47b381c576365e4ee81e58a229b6264b0b2d9fa03008b3fce637032`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:08:33 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:08:34 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:08:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:08:36 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:08:37 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:08:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz
# Thu, 01 Jun 2017 19:08:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop2-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:08:40 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:08:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:08:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:08:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:08:50 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:08:51 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32872340053e2048d3c30461474ca0ff4fd723ea3230d81c427437c1cab2e430`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 5.0 KB (4982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b4fc589c86e07ec9656fa8f85fa9cba374f062698aa1a8087cfaee9c95677`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d458795b492875b5f122eca252e20bc25a408e0c614bdb102ea0a033879c3d4f`  
		Last Modified: Thu, 01 Jun 2017 19:24:27 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e65d085736d62a10853705288d6e108691ab346d221121bff1c4f5eee56b043`  
		Last Modified: Thu, 01 Jun 2017 19:24:44 GMT  
		Size: 135.8 MB (135779746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c523a95778d787fd3a0ba6e154b86d779349ee58bb2dabfdeeae0414855ef662`  
		Last Modified: Thu, 01 Jun 2017 19:24:26 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop24-scala_2.10`

```console
$ docker pull flink@sha256:cdba9b4a79f1a6297cfd30b03d69595e87eee8a16b4b739518afcf780ec0d0b8
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop24-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264573318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9c44adf8dd09d8e72431689a6614d91dea65ec01175709e213198e8e679145`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:09:14 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=24 SCALA_VERSION=2.10
# Thu, 01 Jun 2017 19:09:15 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:09:15 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:09:17 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:09:18 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:09:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.10.tgz
# Thu, 01 Jun 2017 19:09:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.10.tgz.asc
# Thu, 01 Jun 2017 19:09:21 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:09:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:09:35 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:09:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:09:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:09:38 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543251329d7f31f2ef16a0dbeb93e2e9e5f77c1d2b56bb6bb3b2df775fc331b9`  
		Last Modified: Thu, 01 Jun 2017 19:26:23 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faf3a04caa5691976648bf051708a9f759eed8c9da963bd3a36e409b6296afe`  
		Last Modified: Thu, 01 Jun 2017 19:26:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88139f202b75ed8827203b35661a5ea06bcd6c7255d29f65101b3349584bf16a`  
		Last Modified: Thu, 01 Jun 2017 19:26:23 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7812894175aa4506a42be1b5f5388cd9927c5f6e061ac454cfea23a26b38ac3`  
		Last Modified: Thu, 01 Jun 2017 19:26:35 GMT  
		Size: 136.8 MB (136751639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0490ffb6b94b740aa3c920f49e977869f551f6e270a2d1aecf7823906b9f3`  
		Last Modified: Thu, 01 Jun 2017 19:26:23 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop24-scala_2.11`

```console
$ docker pull flink@sha256:dbb1ff296a90979dbee2d78c831f42c1c95142eecfd808c6f60d56a93b2f3361
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop24-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265188564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00612c71acadd13178e2f6e2c08950ee960d606ebf364ca7e5f2098a584d8ae8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:09:59 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:10:00 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:10:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:10:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:10:03 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:10:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz
# Thu, 01 Jun 2017 19:10:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:10:06 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:10:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:10:18 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:10:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:10:20 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:10:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f2a87c069228e3f41ed747fee8b003b01e4cbd506c5042cfd92348caa68a15`  
		Last Modified: Thu, 01 Jun 2017 19:27:05 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00226c567c792c9c2e355966248e7cb675c06329fc507e30fe8679a99b73ab7`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd2c9d78274443c8c2d2426bbb741fba44c3eda7c3a64c0f2c32abf2425147`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87efeb70a736b61b35065da73db89a1dea9bf046af9e64f435acd30f013c79d`  
		Last Modified: Thu, 01 Jun 2017 19:27:17 GMT  
		Size: 137.4 MB (137366881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b111bc9aab79b94e58966cf1cd9356edd3457b9c3325ff52db232891a7e8475`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop24`

```console
$ docker pull flink@sha256:dbb1ff296a90979dbee2d78c831f42c1c95142eecfd808c6f60d56a93b2f3361
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265188564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00612c71acadd13178e2f6e2c08950ee960d606ebf364ca7e5f2098a584d8ae8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:09:59 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:10:00 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:10:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:10:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:10:03 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:10:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz
# Thu, 01 Jun 2017 19:10:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:10:06 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:10:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:10:18 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:10:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:10:20 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:10:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f2a87c069228e3f41ed747fee8b003b01e4cbd506c5042cfd92348caa68a15`  
		Last Modified: Thu, 01 Jun 2017 19:27:05 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00226c567c792c9c2e355966248e7cb675c06329fc507e30fe8679a99b73ab7`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd2c9d78274443c8c2d2426bbb741fba44c3eda7c3a64c0f2c32abf2425147`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87efeb70a736b61b35065da73db89a1dea9bf046af9e64f435acd30f013c79d`  
		Last Modified: Thu, 01 Jun 2017 19:27:17 GMT  
		Size: 137.4 MB (137366881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b111bc9aab79b94e58966cf1cd9356edd3457b9c3325ff52db232891a7e8475`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop24`

```console
$ docker pull flink@sha256:dbb1ff296a90979dbee2d78c831f42c1c95142eecfd808c6f60d56a93b2f3361
```

-	Platforms:
	-	linux; amd64

### `flink:1.3-hadoop24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265188564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00612c71acadd13178e2f6e2c08950ee960d606ebf364ca7e5f2098a584d8ae8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:09:59 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:10:00 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:10:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:10:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:10:03 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:10:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz
# Thu, 01 Jun 2017 19:10:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:10:06 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:10:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:10:18 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:10:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:10:20 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:10:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f2a87c069228e3f41ed747fee8b003b01e4cbd506c5042cfd92348caa68a15`  
		Last Modified: Thu, 01 Jun 2017 19:27:05 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00226c567c792c9c2e355966248e7cb675c06329fc507e30fe8679a99b73ab7`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd2c9d78274443c8c2d2426bbb741fba44c3eda7c3a64c0f2c32abf2425147`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87efeb70a736b61b35065da73db89a1dea9bf046af9e64f435acd30f013c79d`  
		Last Modified: Thu, 01 Jun 2017 19:27:17 GMT  
		Size: 137.4 MB (137366881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b111bc9aab79b94e58966cf1cd9356edd3457b9c3325ff52db232891a7e8475`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop24`

```console
$ docker pull flink@sha256:dbb1ff296a90979dbee2d78c831f42c1c95142eecfd808c6f60d56a93b2f3361
```

-	Platforms:
	-	linux; amd64

### `flink:hadoop24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265188564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00612c71acadd13178e2f6e2c08950ee960d606ebf364ca7e5f2098a584d8ae8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:09:59 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:10:00 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:10:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:10:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:10:03 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:10:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz
# Thu, 01 Jun 2017 19:10:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop24-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:10:06 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:10:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:10:18 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:10:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:10:20 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:10:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f2a87c069228e3f41ed747fee8b003b01e4cbd506c5042cfd92348caa68a15`  
		Last Modified: Thu, 01 Jun 2017 19:27:05 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00226c567c792c9c2e355966248e7cb675c06329fc507e30fe8679a99b73ab7`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd2c9d78274443c8c2d2426bbb741fba44c3eda7c3a64c0f2c32abf2425147`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87efeb70a736b61b35065da73db89a1dea9bf046af9e64f435acd30f013c79d`  
		Last Modified: Thu, 01 Jun 2017 19:27:17 GMT  
		Size: 137.4 MB (137366881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b111bc9aab79b94e58966cf1cd9356edd3457b9c3325ff52db232891a7e8475`  
		Last Modified: Thu, 01 Jun 2017 19:27:04 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop26-scala_2.10`

```console
$ docker pull flink@sha256:d10ee4baa7f76f40b6a47146428fa630b80151cf052456e00102bfbd4ab250a0
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop26-scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270210080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbdaef8d525fbe9be07cfd195384ce32d6247799c7d125593ba3fbeefb2f1c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:10:43 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=26 SCALA_VERSION=2.10
# Thu, 01 Jun 2017 19:10:44 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:10:44 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:10:46 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:10:47 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:10:48 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.10.tgz
# Thu, 01 Jun 2017 19:10:48 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.10.tgz.asc
# Thu, 01 Jun 2017 19:10:49 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:11:21 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:11:22 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:11:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:11:24 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:11:25 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aefd4540436196399e733b74acd94a78df4a5d8959e1b0e0b58f3535391ae49`  
		Last Modified: Thu, 01 Jun 2017 19:28:57 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004d5ae613a8f2c023dcba3439f6acb4377ac3a098c43fbba414bea5ef64eec0`  
		Last Modified: Thu, 01 Jun 2017 19:28:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d1cebe584e87ca061889599c52ebe4f7d3d5ff4c62ebb55eb6c52203f98d`  
		Last Modified: Thu, 01 Jun 2017 19:28:58 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1202897ccd5a3d0737e50a06c99badc088122a32d9631732459e7de1808db5d`  
		Last Modified: Thu, 01 Jun 2017 19:29:07 GMT  
		Size: 142.4 MB (142388398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01702d407122d40c3e7f27cb6cb53a63fb250c85825fe4cd5b95cb5fbb46792f`  
		Last Modified: Thu, 01 Jun 2017 19:28:57 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop26-scala_2.11`

```console
$ docker pull flink@sha256:6d6c4a338eb92def27e8f3c43d752f387bfbfcecf061c2e210b1f7403c936918
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop26-scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270826085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1a8cb924f44994e02d7deaa32b6d703ca5b0787179605a211ad53f2af98402`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:11:46 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:11:47 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:11:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:11:50 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:11:50 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:11:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.11.tgz
# Thu, 01 Jun 2017 19:11:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:11:53 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:12:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:12:50 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:12:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:12:51 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:12:52 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92763bd70befb4c351572306f7c87a018e69e44c73d6bfb841dab5091e2e6c84`  
		Last Modified: Thu, 01 Jun 2017 19:29:36 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237890f2d2b66712521de211ae6ff9f35e96c4c2ab741c637cd44ba14edb278`  
		Last Modified: Thu, 01 Jun 2017 19:29:36 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b6ca816d01a38892efa8f321fb6b03a56403ee888f7f5709b497dc1df9fc5`  
		Last Modified: Thu, 01 Jun 2017 19:29:36 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaf97716d55fbab23bfd55b40e95b618ad1b944844f2a8e28119d78cb351355`  
		Last Modified: Thu, 01 Jun 2017 19:29:47 GMT  
		Size: 143.0 MB (143004404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaee9d2708843810f01b5c3e731ac7940fe50c17e450162462a0722dd1261d65`  
		Last Modified: Thu, 01 Jun 2017 19:29:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop26`

```console
$ docker pull flink@sha256:6d6c4a338eb92def27e8f3c43d752f387bfbfcecf061c2e210b1f7403c936918
```

-	Platforms:
	-	linux; amd64

### `flink:1.3.0-hadoop26` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270826085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1a8cb924f44994e02d7deaa32b6d703ca5b0787179605a211ad53f2af98402`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Thu, 01 Jun 2017 19:11:46 GMT
ENV FLINK_VERSION=1.3.0 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Thu, 01 Jun 2017 19:11:47 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 01 Jun 2017 19:11:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Jun 2017 19:11:50 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 01 Jun 2017 19:11:50 GMT
WORKDIR /opt/flink
# Thu, 01 Jun 2017 19:11:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.11.tgz
# Thu, 01 Jun 2017 19:11:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.0/flink-1.3.0-bin-hadoop26-scala_2.11.tgz.asc
# Thu, 01 Jun 2017 19:11:53 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Thu, 01 Jun 2017 19:12:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 01 Jun 2017 19:12:50 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 01 Jun 2017 19:12:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Jun 2017 19:12:51 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 01 Jun 2017 19:12:52 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92763bd70befb4c351572306f7c87a018e69e44c73d6bfb841dab5091e2e6c84`  
		Last Modified: Thu, 01 Jun 2017 19:29:36 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4237890f2d2b66712521de211ae6ff9f35e96c4c2ab741c637cd44ba14edb278`  
		Last Modified: Thu, 01 Jun 2017 19:29:36 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b6ca816d01a38892efa8f321fb6b03a56403ee888f7f5709b497dc1df9fc5`  
		Last Modified: Thu, 01 Jun 2017 19:29:36 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaf97716d55fbab23bfd55b40e95b618ad1b944844f2a8e28119d78cb351355`  
		Last Modified: Thu, 01 Jun 2017 19:29:47 GMT  
		Size: 143.0 MB (143004404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaee9d2708843810f01b5c3e731ac7940fe50c17e450162462a0722dd1261d65`  
		Last Modified: Thu, 01 Jun 2017 19:29:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop26`

**does not exist** (yet?)

## `flink:hadoop26`

```console
$ docker pull flink@sha256:5b991d99ebc13066f90d37ed5be4e7d4d0fb41498add3a2b79df17e54e4bb5d6
```

-	Platforms:
	-	linux; amd64

### `flink:hadoop26` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253410955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad7479c789e490a4b27b9dfc172f73d04459a9347ed8522e9a18035693223e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:48:58 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:48:59 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:48:59 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:49:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:49:21 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:49:22 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 16 May 2017 20:49:23 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:49:24 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:50:32 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:50:33 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:50:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:50:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:50:36 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a814852ee0f1a26d9c11839bee3d1647d6c9b2e37b1629c929d4c9bbada30fb`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c9133a7335b9b9d53ec206c4583facf6f58e66d0bcf35d8fc31a5717759a1f`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7930ae9948c5c9cf172746e80cf27b50cf80ff9e8e9b2ee56c47be17a563df3`  
		Last Modified: Tue, 16 May 2017 21:02:08 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a94235f45bd82f8a132078cd945103401862b7ec28c17f82229d66b2372d8`  
		Last Modified: Tue, 16 May 2017 21:02:15 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b4aa3e9e6c778f19688579480dbedd93e53b3dde3b60a08d73273e13f8285`  
		Last Modified: Tue, 16 May 2017 21:02:07 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop27-scala_2.10`

**does not exist** (yet?)

## `flink:1.3.0-scala_2.10`

**does not exist** (yet?)

## `flink:1.3-scala_2.10`

**does not exist** (yet?)

## `flink:scala_2.10`

```console
$ docker pull flink@sha256:8e704ef3916180f5a4d1a44cc81a3ea919e45bbc1288b56c4a2b7e4d7f29f4bb
```

-	Platforms:
	-	linux; amd64

### `flink:scala_2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255549187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0818a41af3a8e1eb35b6a7609b8fc775566aee5109128b9a9c54b8450c8d4ed6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:50:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 16 May 2017 20:50:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:50:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:00 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:01 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 16 May 2017 20:51:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 16 May 2017 20:51:04 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:51:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:51:17 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:51:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:51:18 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:51:19 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1163bfd29745238e5f3022f31088d95179d9d153e9bc64b0569fbe1c8b725d47`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5eedf603c247100ec97795f0a8fd93bd6cc87c8157b57ad781928d2b78e32e`  
		Last Modified: Tue, 16 May 2017 21:03:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b9618ab3f589010c0f5fad390c4d531ba431846f5f764a7a2319ee9305f4e3`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2e60a133cd3482eb1d8d9d7be0ef0c9eefbece0c93fe3047c3c7484c16ef1`  
		Last Modified: Tue, 16 May 2017 21:04:00 GMT  
		Size: 127.7 MB (127727513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22605a4d81c76a2a61f87e355d9fe9ffa8826e92b12ead0ff4b468157ec2928`  
		Last Modified: Tue, 16 May 2017 21:03:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop27-scala_2.11`

**does not exist** (yet?)

## `flink:1.3.0-scala_2.11`

**does not exist** (yet?)

## `flink:1.3-scala_2.11`

**does not exist** (yet?)

## `flink:scala_2.11`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:scala_2.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0-hadoop27`

**does not exist** (yet?)

## `flink:1.3-hadoop27`

**does not exist** (yet?)

## `flink:hadoop27`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:hadoop27` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.0`

**does not exist** (yet?)

## `flink:1.3`

**does not exist** (yet?)

## `flink:latest`

```console
$ docker pull flink@sha256:34bc71961c23a81e5148a3bded4995e616615bc774b8a4a0bd0aa1898e867451
```

-	Platforms:
	-	linux; amd64

### `flink:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256115680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29e8119d346d213d4e3a1f70650f27cb93f5e9e001335b540324287b5ca335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 20:20:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 May 2017 20:36:27 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 May 2017 20:36:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1;   rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 20:51:41 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 16 May 2017 20:51:42 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 May 2017 20:51:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 May 2017 20:51:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 May 2017 20:51:45 GMT
WORKDIR /opt/flink
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 16 May 2017 20:51:46 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 16 May 2017 20:51:48 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 16 May 2017 20:55:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 May 2017 20:55:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 16 May 2017 20:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 20:55:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 May 2017 20:56:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8524d3c1fb68ce5ca8b5d33afacfd3fc5c29fd81c99eef2b0b03b24c818ded`  
		Last Modified: Tue, 16 May 2017 20:56:29 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dba69fac19881543f49d11bde24b51b0257ef1407ed4946aec4a6e57acefc2`  
		Last Modified: Tue, 16 May 2017 20:56:26 GMT  
		Size: 153.8 KB (153833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d932c1b3f8faea4da7c52b46858391470529ce152e8c1956aeb124985b0a2046`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de940cc75eedd0c2cd26b53ff8951212811ee385b4c969c022e0da76a3abde`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d8212bddab87ca175529c01609a7772f4f30269f144aa317f1546acb4a5879`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 48.8 KB (48849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee8f9e2be8b98b6f7b21fdf42d23fd6fc3f3c470e9431c718003a6fd9b96782`  
		Last Modified: Tue, 16 May 2017 21:05:43 GMT  
		Size: 128.3 MB (128294005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0681c1b416a7a35aabf9e4043633cbee9ab470b9ad2b60b7c416ddb0003cfd`  
		Last Modified: Tue, 16 May 2017 21:05:35 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
