<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `flink`

-	[`flink:1.2`](#flink12)
-	[`flink:1.2.1`](#flink121)
-	[`flink:1.2.1-hadoop2`](#flink121-hadoop2)
-	[`flink:1.2.1-hadoop24`](#flink121-hadoop24)
-	[`flink:1.2.1-hadoop24-scala_2.10`](#flink121-hadoop24-scala_210)
-	[`flink:1.2.1-hadoop24-scala_2.11`](#flink121-hadoop24-scala_211)
-	[`flink:1.2.1-hadoop26`](#flink121-hadoop26)
-	[`flink:1.2.1-hadoop26-scala_2.10`](#flink121-hadoop26-scala_210)
-	[`flink:1.2.1-hadoop26-scala_2.11`](#flink121-hadoop26-scala_211)
-	[`flink:1.2.1-hadoop27`](#flink121-hadoop27)
-	[`flink:1.2.1-hadoop27-scala_2.10`](#flink121-hadoop27-scala_210)
-	[`flink:1.2.1-hadoop27-scala_2.11`](#flink121-hadoop27-scala_211)
-	[`flink:1.2.1-hadoop2-scala_2.10`](#flink121-hadoop2-scala_210)
-	[`flink:1.2.1-hadoop2-scala_2.11`](#flink121-hadoop2-scala_211)
-	[`flink:1.2.1-scala_2.10`](#flink121-scala_210)
-	[`flink:1.2.1-scala_2.11`](#flink121-scala_211)
-	[`flink:1.2-hadoop2`](#flink12-hadoop2)
-	[`flink:1.2-hadoop24`](#flink12-hadoop24)
-	[`flink:1.2-hadoop26`](#flink12-hadoop26)
-	[`flink:1.2-hadoop27`](#flink12-hadoop27)
-	[`flink:1.2-scala_2.10`](#flink12-scala_210)
-	[`flink:1.2-scala_2.11`](#flink12-scala_211)
-	[`flink:1.3`](#flink13)
-	[`flink:1.3.2`](#flink132)
-	[`flink:1.3.2-hadoop2`](#flink132-hadoop2)
-	[`flink:1.3.2-hadoop24`](#flink132-hadoop24)
-	[`flink:1.3.2-hadoop24-scala_2.10`](#flink132-hadoop24-scala_210)
-	[`flink:1.3.2-hadoop24-scala_2.11`](#flink132-hadoop24-scala_211)
-	[`flink:1.3.2-hadoop26`](#flink132-hadoop26)
-	[`flink:1.3.2-hadoop26-scala_2.10`](#flink132-hadoop26-scala_210)
-	[`flink:1.3.2-hadoop26-scala_2.11`](#flink132-hadoop26-scala_211)
-	[`flink:1.3.2-hadoop27`](#flink132-hadoop27)
-	[`flink:1.3.2-hadoop27-scala_2.10`](#flink132-hadoop27-scala_210)
-	[`flink:1.3.2-hadoop27-scala_2.11`](#flink132-hadoop27-scala_211)
-	[`flink:1.3.2-hadoop2-scala_2.10`](#flink132-hadoop2-scala_210)
-	[`flink:1.3.2-hadoop2-scala_2.11`](#flink132-hadoop2-scala_211)
-	[`flink:1.3.2-scala_2.10`](#flink132-scala_210)
-	[`flink:1.3.2-scala_2.11`](#flink132-scala_211)
-	[`flink:1.3-hadoop2`](#flink13-hadoop2)
-	[`flink:1.3-hadoop24`](#flink13-hadoop24)
-	[`flink:1.3-hadoop26`](#flink13-hadoop26)
-	[`flink:1.3-hadoop27`](#flink13-hadoop27)
-	[`flink:1.3-scala_2.10`](#flink13-scala_210)
-	[`flink:1.3-scala_2.11`](#flink13-scala_211)
-	[`flink:hadoop2`](#flinkhadoop2)
-	[`flink:hadoop24`](#flinkhadoop24)
-	[`flink:hadoop26`](#flinkhadoop26)
-	[`flink:hadoop27`](#flinkhadoop27)
-	[`flink:latest`](#flinklatest)
-	[`flink:scala_2.10`](#flinkscala_210)
-	[`flink:scala_2.11`](#flinkscala_211)

## `flink:1.2`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop2`

```console
$ docker pull flink@sha256:cdd260aff4a65cf6f81d2c42d2d05c3544b9a728e5b31897bbc92363185e11a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop2` - linux; amd64

```console
$ docker pull flink@sha256:0f2713b40948137c43c6153b05caca7b1bc3c09ddf8fbfc967a1e54c941b9afe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.0 MB (349002157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52c4478cbb46c7a411fbab3722ff8db854f90f88f750eb4f4295c59fc99625e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:11 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:17:11 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:11 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:12 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:12 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:17:12 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:17:13 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:17:30 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:17:30 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:17:30 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:17:30 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a49a044d475719a8bfe14fcf39e14d31b2aa32090d292b4812586fc09df3e06`  
		Last Modified: Tue, 10 Oct 2017 08:35:47 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15a4543066d646408ec59dc0a057407bcff1fecd93d18e76752e4d1e59ab840`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 109.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19cb53556a1789977c6ac882af36d68c78ce4718f8ce30ee0c792b89f87af7`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572d3172ad12c80889e3ad20d83b844a593e370dd43890436e64aa8f072f80c3`  
		Last Modified: Tue, 10 Oct 2017 08:35:58 GMT  
		Size: 119.5 MB (119480538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9e84b12c3d1ea1c7b90053e0f83948c22d9d3ed1a73312cfbc294deb35f44`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop24`

```console
$ docker pull flink@sha256:0a009a4c636d403b89b827005c719f2890476a2c9c0d7e74605be21e3d9c264a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:5f867c73aa8f4967a9fc50d280099af07252b9b2dd6460e4f855b77f9a992fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350587930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0746cfd1272a0a4376fad7350133b6c3609ef5722e874f2d277cf1e20c1f2ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:17:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:59 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:59 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:59 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:17:59 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:17:59 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:18:07 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:18:07 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:18:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:18:08 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:18:08 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c7353df877ba4fcaddeb71a2839df03ca49e2a5d40e1148950afdd40b66ffc`  
		Last Modified: Tue, 10 Oct 2017 08:36:56 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede030a1ea7607fc267fc4b7922379829de606a97eca65289ea48a8314a9ca8d`  
		Last Modified: Tue, 10 Oct 2017 08:36:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b071d3f7d5e51b358bd20235513a631b2e0b3a793f7d5c99453d06d6b0a036f2`  
		Last Modified: Tue, 10 Oct 2017 08:36:55 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db4019d1def48bd5202c8eca5ec50eb74398da3031c676e1feaecb84711f2c`  
		Last Modified: Tue, 10 Oct 2017 08:37:05 GMT  
		Size: 121.1 MB (121066297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f02184164def31a11f6cc9147b0731a5086426a293a2ca517c5bb62d80f444`  
		Last Modified: Tue, 10 Oct 2017 08:36:57 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop24-scala_2.10`

```console
$ docker pull flink@sha256:03e49d201897c097563b36f850451d4b82118356c3c73a4be78701b9b2fad4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop24-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:ff91816769f51e7859e8e539e2f9c13de3d927a203475c0305fa624c5142d963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350034526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588c48c70ca33c8e1ccf16be245c94e868758a6fa45c28e26f7e680b45e54cfb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:39 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:17:39 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:39 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:40 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:40 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.10.tgz
# Tue, 10 Oct 2017 08:17:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:17:41 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:17:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:17:51 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:17:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:17:51 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:17:51 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6855fab63a890e509bd8663a2ef546ed9361fcc7c31820a837112279c22f6f3`  
		Last Modified: Tue, 10 Oct 2017 08:36:31 GMT  
		Size: 4.6 KB (4644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257a07eb198101597c4096b43179dc6b4df137327cea0eac6f502de3b6eca6f`  
		Last Modified: Tue, 10 Oct 2017 08:36:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c172cab89e899894a0f57838a79e0cf3802f96aabc9c33199f7a3fba3691fdf`  
		Last Modified: Tue, 10 Oct 2017 08:36:30 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de76a858474cf2cb758151941bf27e01dcadc19363a522e49b17089422dbcb6`  
		Last Modified: Tue, 10 Oct 2017 08:36:41 GMT  
		Size: 120.5 MB (120512896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9269bac95809f12c64ef2c5ac52656fce7863a3432d1f42130555f6582d90c7e`  
		Last Modified: Tue, 10 Oct 2017 08:36:30 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop24-scala_2.11`

```console
$ docker pull flink@sha256:0a009a4c636d403b89b827005c719f2890476a2c9c0d7e74605be21e3d9c264a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop24-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:5f867c73aa8f4967a9fc50d280099af07252b9b2dd6460e4f855b77f9a992fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350587930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0746cfd1272a0a4376fad7350133b6c3609ef5722e874f2d277cf1e20c1f2ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:17:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:59 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:59 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:59 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:17:59 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:17:59 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:18:07 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:18:07 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:18:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:18:08 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:18:08 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c7353df877ba4fcaddeb71a2839df03ca49e2a5d40e1148950afdd40b66ffc`  
		Last Modified: Tue, 10 Oct 2017 08:36:56 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede030a1ea7607fc267fc4b7922379829de606a97eca65289ea48a8314a9ca8d`  
		Last Modified: Tue, 10 Oct 2017 08:36:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b071d3f7d5e51b358bd20235513a631b2e0b3a793f7d5c99453d06d6b0a036f2`  
		Last Modified: Tue, 10 Oct 2017 08:36:55 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db4019d1def48bd5202c8eca5ec50eb74398da3031c676e1feaecb84711f2c`  
		Last Modified: Tue, 10 Oct 2017 08:37:05 GMT  
		Size: 121.1 MB (121066297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f02184164def31a11f6cc9147b0731a5086426a293a2ca517c5bb62d80f444`  
		Last Modified: Tue, 10 Oct 2017 08:36:57 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop26`

```console
$ docker pull flink@sha256:ce8d3c1d955b8a8f7740deb9e3aa0437e19a6894f441916118fde1a460ecc834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:7f7888f451fc465f17adc13cfb2dee5be18bf73491ddeee4cc77e80ae95ac6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.1 MB (355110908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d289d7094385476fe5d25009011d4e601799f6cc0cc72dedd98fd9bddd9fbf7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:18:39 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:18:39 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:18:40 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:18:40 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:18:40 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:18:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 10 Oct 2017 08:18:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:18:41 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:19:09 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:19:10 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:19:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:19:10 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:19:10 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694d78067f9312fe32db5f80d061a73a3e070954da24d957c457087f4dadf0e3`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae15923455c2cbe3c04e2f7fb7835048037cada35e0719a2cf302a6784ad78d`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02e56312ddb5603d1a13021b86283c428245bc152b121e259fe6991a1584564`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d21934fea733acd6633a8cab0b931cedb358b12905ca8c019a8161540b9831`  
		Last Modified: Tue, 10 Oct 2017 08:38:16 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c75e5585119ec87115fe303cb4f67fda188cdce6564138c0c8a7badf0a310b`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop26-scala_2.10`

```console
$ docker pull flink@sha256:a6aaa57fd0827a024a23f899b931f12c7278bfa550a6cae67719ca68aa0704ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop26-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:85bf22416356cf898c98d4ca51837b45f228e87e4e7638b21ce3cef1a37c6945
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.6 MB (354557352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bcbf83987eaf39e6fcdc48c6209e9037330253e557759cb907e6049a30888cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:18:16 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:18:16 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:18:16 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:18:17 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:18:18 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:18:18 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.10.tgz
# Tue, 10 Oct 2017 08:18:18 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:18:18 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:18:25 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:18:33 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:18:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:18:33 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:18:33 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227a37dc03dfde28ce957e7caf5dde0d41034a708e9055fa4a750165da17e05b`  
		Last Modified: Tue, 10 Oct 2017 08:37:41 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e061f24490fc236dd832df02c0769f487ef5aa13d7df520ef7b9a82d0a31c9d`  
		Last Modified: Tue, 10 Oct 2017 08:37:41 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8829dd2c602302a25b703911d627c9dc3f76150cd223cda9daed5ebb834e2d`  
		Last Modified: Tue, 10 Oct 2017 08:37:41 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71997d09f5233387efbf48d691d83660eb060f46d1b9f6dfe69e22da96a4c861`  
		Last Modified: Tue, 10 Oct 2017 08:37:52 GMT  
		Size: 125.0 MB (125035724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd237e01d7730ab60ff4146c5426c75f35dc2e9aca98e5b88a08fe93861b301`  
		Last Modified: Tue, 10 Oct 2017 08:37:41 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop26-scala_2.11`

```console
$ docker pull flink@sha256:ce8d3c1d955b8a8f7740deb9e3aa0437e19a6894f441916118fde1a460ecc834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop26-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:7f7888f451fc465f17adc13cfb2dee5be18bf73491ddeee4cc77e80ae95ac6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.1 MB (355110908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d289d7094385476fe5d25009011d4e601799f6cc0cc72dedd98fd9bddd9fbf7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:18:39 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:18:39 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:18:40 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:18:40 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:18:40 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:18:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 10 Oct 2017 08:18:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:18:41 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:19:09 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:19:10 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:19:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:19:10 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:19:10 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694d78067f9312fe32db5f80d061a73a3e070954da24d957c457087f4dadf0e3`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae15923455c2cbe3c04e2f7fb7835048037cada35e0719a2cf302a6784ad78d`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02e56312ddb5603d1a13021b86283c428245bc152b121e259fe6991a1584564`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d21934fea733acd6633a8cab0b931cedb358b12905ca8c019a8161540b9831`  
		Last Modified: Tue, 10 Oct 2017 08:38:16 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c75e5585119ec87115fe303cb4f67fda188cdce6564138c0c8a7badf0a310b`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop27`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop27-scala_2.10`

```console
$ docker pull flink@sha256:83657fd44c1af3b1dee332e921d777907f09e171f2c7cb0749d503ed84ff93e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop27-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:92ef5e206bef28d8787ac8bb0c713fd2b2cd85a6fcbf69e358482ae134126ad9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357249140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8301bedda90b83bfd5935b513c9f4da8793fd9795d447df5852d81d0c4d0a86a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:19:17 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:19:17 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:19:17 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:19:18 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:19:18 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:19:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 10 Oct 2017 08:19:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:19:19 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:18 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:19 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:19 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf0006eb224281b0b68d8cd16e77621303d6832958ed43dfd67ba53a21ba603`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 4.6 KB (4643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3393104590b2f08fbb7fbb78fa98f9771c5f4dde8b5d5867e1f72a43c493f`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69aafd03faeca32e4d965a6dae03097612f06b26408fce30c6a7bae5a1f0d37`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7bb77bf8347f175ca4f12fb8b8f5aef26bb29a9dfc7bec2e68f2399298ee5b`  
		Last Modified: Tue, 10 Oct 2017 08:39:40 GMT  
		Size: 127.7 MB (127727512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd061939308bc934f6058c36941f1bbde349f9bf57ebf19fb173564e227253`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop27-scala_2.11`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop27-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop2-scala_2.10`

```console
$ docker pull flink@sha256:327dc2d2984f2eb3cd4a41921727d820fed9c6cc9009b9bc8445084ab858d2f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop2-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:7ac1f20f29b24305ca5c4c0cd3bc4f5df67a9ae0859e5c675c442118635be88b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.4 MB (348448653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b57e37b39de514690d452903ea9ab43d6c2fa40c16cc26bf01e38493842989f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:16:35 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:16:35 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:16:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:16:36 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:16:37 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:16:37 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.10.tgz
# Tue, 10 Oct 2017 08:16:37 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:16:37 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:16:58 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:16:58 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:16:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:16:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:16:59 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5833dc37e6b023087ad2ae4070f49a7f15f14f578757861864eb952efd56c567`  
		Last Modified: Tue, 10 Oct 2017 08:35:22 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a34378983cd33a209e5d0486135a4674ff80f8357b884a8c41773ba28a3a9e2`  
		Last Modified: Tue, 10 Oct 2017 08:35:20 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f01b8ef164e527ef6270870ee0ca239983bfd16f4948fe05ad6610f7c819b15`  
		Last Modified: Tue, 10 Oct 2017 08:35:21 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be3c17811e257e73a630311f6c4f8f18322003e322226a28da5472e9ca8c4c4`  
		Last Modified: Tue, 10 Oct 2017 08:35:31 GMT  
		Size: 118.9 MB (118927025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110cba9b146a7dba7bc38369381bb97eda6066b88dec14417b73b521cc94975`  
		Last Modified: Tue, 10 Oct 2017 08:35:20 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-hadoop2-scala_2.11`

```console
$ docker pull flink@sha256:cdd260aff4a65cf6f81d2c42d2d05c3544b9a728e5b31897bbc92363185e11a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-hadoop2-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:0f2713b40948137c43c6153b05caca7b1bc3c09ddf8fbfc967a1e54c941b9afe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.0 MB (349002157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52c4478cbb46c7a411fbab3722ff8db854f90f88f750eb4f4295c59fc99625e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:11 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:17:11 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:11 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:12 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:12 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:17:12 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:17:13 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:17:30 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:17:30 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:17:30 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:17:30 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a49a044d475719a8bfe14fcf39e14d31b2aa32090d292b4812586fc09df3e06`  
		Last Modified: Tue, 10 Oct 2017 08:35:47 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15a4543066d646408ec59dc0a057407bcff1fecd93d18e76752e4d1e59ab840`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 109.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19cb53556a1789977c6ac882af36d68c78ce4718f8ce30ee0c792b89f87af7`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572d3172ad12c80889e3ad20d83b844a593e370dd43890436e64aa8f072f80c3`  
		Last Modified: Tue, 10 Oct 2017 08:35:58 GMT  
		Size: 119.5 MB (119480538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9e84b12c3d1ea1c7b90053e0f83948c22d9d3ed1a73312cfbc294deb35f44`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-scala_2.10`

```console
$ docker pull flink@sha256:83657fd44c1af3b1dee332e921d777907f09e171f2c7cb0749d503ed84ff93e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:92ef5e206bef28d8787ac8bb0c713fd2b2cd85a6fcbf69e358482ae134126ad9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357249140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8301bedda90b83bfd5935b513c9f4da8793fd9795d447df5852d81d0c4d0a86a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:19:17 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:19:17 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:19:17 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:19:18 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:19:18 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:19:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 10 Oct 2017 08:19:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:19:19 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:18 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:19 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:19 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf0006eb224281b0b68d8cd16e77621303d6832958ed43dfd67ba53a21ba603`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 4.6 KB (4643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3393104590b2f08fbb7fbb78fa98f9771c5f4dde8b5d5867e1f72a43c493f`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69aafd03faeca32e4d965a6dae03097612f06b26408fce30c6a7bae5a1f0d37`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7bb77bf8347f175ca4f12fb8b8f5aef26bb29a9dfc7bec2e68f2399298ee5b`  
		Last Modified: Tue, 10 Oct 2017 08:39:40 GMT  
		Size: 127.7 MB (127727512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd061939308bc934f6058c36941f1bbde349f9bf57ebf19fb173564e227253`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2.1-scala_2.11`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2.1-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop2`

```console
$ docker pull flink@sha256:cdd260aff4a65cf6f81d2c42d2d05c3544b9a728e5b31897bbc92363185e11a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop2` - linux; amd64

```console
$ docker pull flink@sha256:0f2713b40948137c43c6153b05caca7b1bc3c09ddf8fbfc967a1e54c941b9afe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.0 MB (349002157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52c4478cbb46c7a411fbab3722ff8db854f90f88f750eb4f4295c59fc99625e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:11 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:17:11 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:11 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:12 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:12 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:17:12 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:17:13 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:17:30 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:17:30 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:17:30 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:17:30 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a49a044d475719a8bfe14fcf39e14d31b2aa32090d292b4812586fc09df3e06`  
		Last Modified: Tue, 10 Oct 2017 08:35:47 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15a4543066d646408ec59dc0a057407bcff1fecd93d18e76752e4d1e59ab840`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 109.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b19cb53556a1789977c6ac882af36d68c78ce4718f8ce30ee0c792b89f87af7`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 48.9 KB (48850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572d3172ad12c80889e3ad20d83b844a593e370dd43890436e64aa8f072f80c3`  
		Last Modified: Tue, 10 Oct 2017 08:35:58 GMT  
		Size: 119.5 MB (119480538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9e84b12c3d1ea1c7b90053e0f83948c22d9d3ed1a73312cfbc294deb35f44`  
		Last Modified: Tue, 10 Oct 2017 08:35:46 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop24`

```console
$ docker pull flink@sha256:0a009a4c636d403b89b827005c719f2890476a2c9c0d7e74605be21e3d9c264a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:5f867c73aa8f4967a9fc50d280099af07252b9b2dd6460e4f855b77f9a992fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350587930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0746cfd1272a0a4376fad7350133b6c3609ef5722e874f2d277cf1e20c1f2ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:17:57 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:17:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:17:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:17:59 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:17:59 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:17:59 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:17:59 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:17:59 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:18:07 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:18:07 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:18:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:18:08 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:18:08 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c7353df877ba4fcaddeb71a2839df03ca49e2a5d40e1148950afdd40b66ffc`  
		Last Modified: Tue, 10 Oct 2017 08:36:56 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede030a1ea7607fc267fc4b7922379829de606a97eca65289ea48a8314a9ca8d`  
		Last Modified: Tue, 10 Oct 2017 08:36:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b071d3f7d5e51b358bd20235513a631b2e0b3a793f7d5c99453d06d6b0a036f2`  
		Last Modified: Tue, 10 Oct 2017 08:36:55 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db4019d1def48bd5202c8eca5ec50eb74398da3031c676e1feaecb84711f2c`  
		Last Modified: Tue, 10 Oct 2017 08:37:05 GMT  
		Size: 121.1 MB (121066297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f02184164def31a11f6cc9147b0731a5086426a293a2ca517c5bb62d80f444`  
		Last Modified: Tue, 10 Oct 2017 08:36:57 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop26`

```console
$ docker pull flink@sha256:ce8d3c1d955b8a8f7740deb9e3aa0437e19a6894f441916118fde1a460ecc834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:7f7888f451fc465f17adc13cfb2dee5be18bf73491ddeee4cc77e80ae95ac6d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.1 MB (355110908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d289d7094385476fe5d25009011d4e601799f6cc0cc72dedd98fd9bddd9fbf7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:18:39 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:18:39 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:18:40 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:18:40 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:18:40 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:18:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz
# Tue, 10 Oct 2017 08:18:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:18:41 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:19:09 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:19:10 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:19:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:19:10 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:19:10 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694d78067f9312fe32db5f80d061a73a3e070954da24d957c457087f4dadf0e3`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae15923455c2cbe3c04e2f7fb7835048037cada35e0719a2cf302a6784ad78d`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02e56312ddb5603d1a13021b86283c428245bc152b121e259fe6991a1584564`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d21934fea733acd6633a8cab0b931cedb358b12905ca8c019a8161540b9831`  
		Last Modified: Tue, 10 Oct 2017 08:38:16 GMT  
		Size: 125.6 MB (125589277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c75e5585119ec87115fe303cb4f67fda188cdce6564138c0c8a7badf0a310b`  
		Last Modified: Tue, 10 Oct 2017 08:38:05 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-hadoop27`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2-hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-scala_2.10`

```console
$ docker pull flink@sha256:83657fd44c1af3b1dee332e921d777907f09e171f2c7cb0749d503ed84ff93e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:92ef5e206bef28d8787ac8bb0c713fd2b2cd85a6fcbf69e358482ae134126ad9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357249140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8301bedda90b83bfd5935b513c9f4da8793fd9795d447df5852d81d0c4d0a86a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:19:17 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:19:17 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:19:17 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:19:18 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:19:18 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:19:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz
# Tue, 10 Oct 2017 08:19:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:19:19 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:18 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:19 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:19 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf0006eb224281b0b68d8cd16e77621303d6832958ed43dfd67ba53a21ba603`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 4.6 KB (4643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f3393104590b2f08fbb7fbb78fa98f9771c5f4dde8b5d5867e1f72a43c493f`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69aafd03faeca32e4d965a6dae03097612f06b26408fce30c6a7bae5a1f0d37`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7bb77bf8347f175ca4f12fb8b8f5aef26bb29a9dfc7bec2e68f2399298ee5b`  
		Last Modified: Tue, 10 Oct 2017 08:39:40 GMT  
		Size: 127.7 MB (127727512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dd061939308bc934f6058c36941f1bbde349f9bf57ebf19fb173564e227253`  
		Last Modified: Tue, 10 Oct 2017 08:39:30 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.2-scala_2.11`

```console
$ docker pull flink@sha256:fa9b39572ff3effde009e6ed17a4838bbb52455870840ed46c2b64724178ea2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.2-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:624435c16ff09acab302fae24ca98efc1d698f52a7fbcb113a8d78170d7f61bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3cdc5a546d187f6e654bbfa9965b1c7c903dbec15298a894ff5969eec529d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_VERSION=1.2.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:21:34 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:35 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz
# Tue, 10 Oct 2017 08:21:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.2.1/flink-1.2.1-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:21:36 GMT
COPY file:22c552c887979c8fbaa961276686f26badf8e846cdc00b8410c37479ebfa98ec in /KEYS 
# Tue, 10 Oct 2017 08:21:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:21:44 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:21:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:21:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:21:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f93163567216fa715ad77fdf84c8305522e894942a11604dcc4b60ced111cbb`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 4.6 KB (4647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7993544c08946c5a72a180fa780ccf2a8b17e4674605b92233bb047a887321c1`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7efaf3a907a7dabc6179e94e8bf6b0aca04b754ab407e49b807a1da7bc62f`  
		Last Modified: Tue, 10 Oct 2017 08:40:11 GMT  
		Size: 48.9 KB (48851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab208597eca8e6b02d570da5275cf9fcf8f86d5ae96cd0fbc3e4363bca5e9c4`  
		Last Modified: Tue, 10 Oct 2017 08:40:21 GMT  
		Size: 128.3 MB (128294002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a876c0bf3b50db348e5398327d49bf4eee8fafe8697894061c3a0c76b377e2d6`  
		Last Modified: Tue, 10 Oct 2017 08:40:12 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop2`

```console
$ docker pull flink@sha256:8a3e246b8e50a850af7f76b59be8495afb08eb709f02ac278a1a43851c8560bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop2` - linux; amd64

```console
$ docker pull flink@sha256:ef01bb66e8b2edbe82505f12247eec9e92246a800b8afdfc563fd9a0e029840e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365634325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f809dcc7b6acf0764fff79b435e4dce9785c7d9dd33cca5ca94f2578d4d0a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:22:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:22:23 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:22:24 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:22:24 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:22:33 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:22:36 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:22:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:22:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:22:37 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed320873c79b7cb00728809ecb0cc5e980b01c007300f1bb41d527345a241f6`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde45ac90c6c9e4cc02c6bc9d4198559ed87adf4f09da3d47a25daf272f2333b`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc754f02fe1172f15b7469132a9bf59f94d234d966118f066c2708ce97ed9178`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527b6e29a32b71d95a4c8baec9b1733bc0632a95d34e06dc10a528b799b4be82`  
		Last Modified: Tue, 10 Oct 2017 08:42:00 GMT  
		Size: 136.1 MB (136106843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbfa993e9a4ea5e4909cf65aaa7f8cb1ea780d8c95a9d251416d360f44969c`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop24`

```console
$ docker pull flink@sha256:984e2f893869d33c98713d7519df1b5405a47616082d4e994225ceeeb2cca2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:97e70fb61c9d25bc1fd4600c5779922a967c2fa8f1724e582e5e3f99f3181fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.2 MB (367221682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7895b7136049d5632a2103765ee57a052a705192a2933f85a7b60f87a6dff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:27:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:27:49 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:27:50 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:27:50 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:32:19 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:32:22 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:32:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:32:22 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:32:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fe5195ecfde41c4927e21f454371b8739fd88c7e9d549d09860bdb8e4f697`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d874d523654fa46472ef6479a0b8a79ab422d35cff910f9b63681fe76ca18b5`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24842dcde2d44c69d96aee376139b993afe800b66d021e421e0599ebb580fb`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f01e8641759c9720c5f2f191aa57ae7139cba046dc3ce418aecd32eea202f12`  
		Last Modified: Tue, 10 Oct 2017 08:43:15 GMT  
		Size: 137.7 MB (137694204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd26e8d983e1cd7a9b3bff8b7be97aa476d6924631feb5f886c8fda55acd218`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop24-scala_2.10`

```console
$ docker pull flink@sha256:21ef5f54ccb4323a94715bbd94949f07e45ef8c13f60bfacaee47ef8ce39f4e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop24-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:571f0ccbfbe54f0b2e9f1f2915f828eef1458a5f8755ccfb9a80cf008009d62c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.6 MB (366604636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7d9aab7581f3f152003cc1bf7a1b68cf42bc8018c6ea5f1e7d7e3846560971`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:22:43 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=24 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:22:43 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:22:43 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:22:44 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:22:44 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:22:45 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.10.tgz
# Tue, 10 Oct 2017 08:22:45 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:22:45 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:23:03 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:23:03 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:23:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:23:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:23:04 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5eacf2235b6e1565291795b7e0b7b84601ca0250cd8e1424116521ab6ae9099`  
		Last Modified: Tue, 10 Oct 2017 08:42:40 GMT  
		Size: 4.6 KB (4648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7234dc82db2a8d18e921e59135e7f566ae5b79666e799cef470519da1ff65bb`  
		Last Modified: Tue, 10 Oct 2017 08:42:40 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03d055a0e4f2874b8f573872bf689be7ac23ad3e49a922b164c006c880e4f82`  
		Last Modified: Tue, 10 Oct 2017 08:42:41 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c110191a046889a3818d3917d3ab56cef22fb1dbd6c0196ffefe027ea55d1335`  
		Last Modified: Tue, 10 Oct 2017 08:42:50 GMT  
		Size: 137.1 MB (137077153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621c0d2dfd253f5eaec41fb6073817e34cd7b1c48706f19a581de0795653c40e`  
		Last Modified: Tue, 10 Oct 2017 08:42:41 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop24-scala_2.11`

```console
$ docker pull flink@sha256:984e2f893869d33c98713d7519df1b5405a47616082d4e994225ceeeb2cca2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop24-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:97e70fb61c9d25bc1fd4600c5779922a967c2fa8f1724e582e5e3f99f3181fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.2 MB (367221682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7895b7136049d5632a2103765ee57a052a705192a2933f85a7b60f87a6dff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:27:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:27:49 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:27:50 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:27:50 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:32:19 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:32:22 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:32:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:32:22 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:32:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fe5195ecfde41c4927e21f454371b8739fd88c7e9d549d09860bdb8e4f697`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d874d523654fa46472ef6479a0b8a79ab422d35cff910f9b63681fe76ca18b5`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24842dcde2d44c69d96aee376139b993afe800b66d021e421e0599ebb580fb`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f01e8641759c9720c5f2f191aa57ae7139cba046dc3ce418aecd32eea202f12`  
		Last Modified: Tue, 10 Oct 2017 08:43:15 GMT  
		Size: 137.7 MB (137694204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd26e8d983e1cd7a9b3bff8b7be97aa476d6924631feb5f886c8fda55acd218`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop26`

```console
$ docker pull flink@sha256:f22b427ec0fb950ad5b808a78f76356e6548f8ce48d571617a30f88c3c1128c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:244aac7ed1be16f67c03bef1014876808fc33a0c8fe166b04bb5a0a9a994f58e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372852630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0538e65fb38756bc725d6ce5bbebc0e001e17456606ccf77c87a5f7c7852b80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:08 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:09 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:10 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:11 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:27 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:28 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:28 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:28 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c703282d6508ed050ccbba79f1d30e9efea9a97787a4c9557305f116a7d381`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c066cc984c870666f54db2ed154fe76e97c274d6e5005f20b0df440459621b1`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268437daef6bcd49875721a3c34bc6a39c15ddcaa1ffc787a7f73e5484297ad6`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 54.7 KB (54700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653dd56688812d8744f61c5d7ed9468e89c467a3afd6c82771e4c41053eeabba`  
		Last Modified: Thu, 14 Sep 2017 06:32:25 GMT  
		Size: 143.3 MB (143330751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de783f5967592daf9952b6650ee52091bcbed46c6a5d0aa1f5d67a95d31271bb`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop26-scala_2.10`

```console
$ docker pull flink@sha256:fa5b085f3d067f90f3ccdcbe875f7472f66c17d754a2ae2be6ba6b1bd1276a1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop26-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:1c182f07e104dc7c77e8e62793599de837cf39c32e35a657dbff7c64f1fd377c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.2 MB (372235602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd8a012f2834d5dfa89904ceb9d0bd3a5912623b717e55cab1be1ce4bcda2e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:20:20 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=26 SCALA_VERSION=2.10
# Thu, 14 Sep 2017 06:20:20 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:20:21 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:20:22 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:20:22 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:20:22 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.10.tgz
# Thu, 14 Sep 2017 06:20:22 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.10.tgz.asc
# Thu, 14 Sep 2017 06:20:22 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:05 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:05 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:06 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:06 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18a1af3bb486d731e5ad50c95bd2045ab5a96bf3a60be341cb632b521fd1113`  
		Last Modified: Thu, 14 Sep 2017 06:31:44 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9060771a2d1113d006e2899ec6654c1837f243efd4119dbbf5a58559089ad88c`  
		Last Modified: Thu, 14 Sep 2017 06:31:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf43642d3a56bbe5e31d4f23f270a3468dfe1e8327cf083c606c6bc6118459d`  
		Last Modified: Thu, 14 Sep 2017 06:31:45 GMT  
		Size: 54.7 KB (54699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce5898c691d8f24db2508ab8de1b25f9a441944d792d98c9f48b80c46bf4d7f`  
		Last Modified: Thu, 14 Sep 2017 06:31:58 GMT  
		Size: 142.7 MB (142713725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e922e9b0c6bee368c015906fa7bdfd9ab23d8cf3ccd4285db2261437bb8881fb`  
		Last Modified: Thu, 14 Sep 2017 06:31:44 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop26-scala_2.11`

```console
$ docker pull flink@sha256:f22b427ec0fb950ad5b808a78f76356e6548f8ce48d571617a30f88c3c1128c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop26-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:244aac7ed1be16f67c03bef1014876808fc33a0c8fe166b04bb5a0a9a994f58e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372852630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0538e65fb38756bc725d6ce5bbebc0e001e17456606ccf77c87a5f7c7852b80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:08 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:09 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:10 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:11 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:27 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:28 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:28 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:28 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c703282d6508ed050ccbba79f1d30e9efea9a97787a4c9557305f116a7d381`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c066cc984c870666f54db2ed154fe76e97c274d6e5005f20b0df440459621b1`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268437daef6bcd49875721a3c34bc6a39c15ddcaa1ffc787a7f73e5484297ad6`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 54.7 KB (54700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653dd56688812d8744f61c5d7ed9468e89c467a3afd6c82771e4c41053eeabba`  
		Last Modified: Thu, 14 Sep 2017 06:32:25 GMT  
		Size: 143.3 MB (143330751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de783f5967592daf9952b6650ee52091bcbed46c6a5d0aa1f5d67a95d31271bb`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop27`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop27-scala_2.10`

```console
$ docker pull flink@sha256:cd1afb8450afb148f5abbed2342e23230ef569f8f2d586d397fae2dd6e6ae598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop27-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:84bb7ff6c20620fa0bd972925a79fdfea0c41bbf64bdf6b47a11116bd81839fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376699469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5c501462286a733f6b9e64986a4233592719f2f93608fa8a0d081f30548d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:30 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Thu, 14 Sep 2017 06:24:32 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:33 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz.asc
# Thu, 14 Sep 2017 06:24:34 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:49 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:50 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350e4ac873250d15842e21afee9c8528f245cf4fa25cc1c9dcc48a4b2586bd8d`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f95d509cfb46752a4ed3e33510797a34cff6be27872df6a2159b002677a0d2`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611a3f58d937cb2abe6a8add8abc07fc92c550323d570d83f2a4ba6a73ab251`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e7deb5a54c6cb5870a73cb6a1609792987ea01ac2d4679ebdace55b5ede60c`  
		Last Modified: Thu, 14 Sep 2017 06:33:19 GMT  
		Size: 147.2 MB (147177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c54e655c20c74df7520ce6b66ff1279a3e1fe075e4b2dfad92c57f148f9cd1`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop27-scala_2.11`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop27-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop2-scala_2.10`

```console
$ docker pull flink@sha256:b60f4615c9770cfb9b7626f5db88868ddbe7c32f3ba9adbe9995d62802ecbff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop2-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:17009ddfe579173a3f3dcc8015c3ad95dfa378ffa35828e66f2eb443531c67d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.0 MB (365018550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31773e14bff2c602f4193dcfe67ad089ee2d662fe50d3f47a867a29ed0f49f01`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:21:54 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=2 SCALA_VERSION=2.10
# Tue, 10 Oct 2017 08:21:55 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:21:55 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:21:56 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:21:56 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:21:57 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.10.tgz
# Tue, 10 Oct 2017 08:21:57 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.10.tgz.asc
# Tue, 10 Oct 2017 08:21:57 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:22:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:22:16 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:22:16 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:22:16 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5ea76d1385d59e770bede80de014a888eb6233bace9621fea1b7e472cce360`  
		Last Modified: Tue, 10 Oct 2017 08:41:24 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b360a3c112e88db4885585be75064d537fbdc99d35d8efbe0ccd0629ae4c738`  
		Last Modified: Tue, 10 Oct 2017 08:41:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61292745ac76ba3ee959bc5524de4ff354866f6a129ef4a8a7b6885192402a80`  
		Last Modified: Tue, 10 Oct 2017 08:41:25 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec0a1412e0773acd6fb8ef9dc3d9c8d318751b25d4c4a893c67a7f51fe424cd`  
		Last Modified: Tue, 10 Oct 2017 08:41:35 GMT  
		Size: 135.5 MB (135491065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0acc84959c9a5b2a5c3c6d52c276fffa1204ae8965917082b411e97b550530`  
		Last Modified: Tue, 10 Oct 2017 08:41:25 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-hadoop2-scala_2.11`

```console
$ docker pull flink@sha256:8a3e246b8e50a850af7f76b59be8495afb08eb709f02ac278a1a43851c8560bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-hadoop2-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:ef01bb66e8b2edbe82505f12247eec9e92246a800b8afdfc563fd9a0e029840e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365634325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f809dcc7b6acf0764fff79b435e4dce9785c7d9dd33cca5ca94f2578d4d0a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:22:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:22:23 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:22:24 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:22:24 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:22:33 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:22:36 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:22:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:22:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:22:37 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed320873c79b7cb00728809ecb0cc5e980b01c007300f1bb41d527345a241f6`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde45ac90c6c9e4cc02c6bc9d4198559ed87adf4f09da3d47a25daf272f2333b`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc754f02fe1172f15b7469132a9bf59f94d234d966118f066c2708ce97ed9178`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527b6e29a32b71d95a4c8baec9b1733bc0632a95d34e06dc10a528b799b4be82`  
		Last Modified: Tue, 10 Oct 2017 08:42:00 GMT  
		Size: 136.1 MB (136106843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbfa993e9a4ea5e4909cf65aaa7f8cb1ea780d8c95a9d251416d360f44969c`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-scala_2.10`

```console
$ docker pull flink@sha256:cd1afb8450afb148f5abbed2342e23230ef569f8f2d586d397fae2dd6e6ae598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:84bb7ff6c20620fa0bd972925a79fdfea0c41bbf64bdf6b47a11116bd81839fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376699469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5c501462286a733f6b9e64986a4233592719f2f93608fa8a0d081f30548d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:30 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Thu, 14 Sep 2017 06:24:32 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:33 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz.asc
# Thu, 14 Sep 2017 06:24:34 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:49 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:50 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350e4ac873250d15842e21afee9c8528f245cf4fa25cc1c9dcc48a4b2586bd8d`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f95d509cfb46752a4ed3e33510797a34cff6be27872df6a2159b002677a0d2`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611a3f58d937cb2abe6a8add8abc07fc92c550323d570d83f2a4ba6a73ab251`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e7deb5a54c6cb5870a73cb6a1609792987ea01ac2d4679ebdace55b5ede60c`  
		Last Modified: Thu, 14 Sep 2017 06:33:19 GMT  
		Size: 147.2 MB (147177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c54e655c20c74df7520ce6b66ff1279a3e1fe075e4b2dfad92c57f148f9cd1`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3.2-scala_2.11`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3.2-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop2`

```console
$ docker pull flink@sha256:8a3e246b8e50a850af7f76b59be8495afb08eb709f02ac278a1a43851c8560bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3-hadoop2` - linux; amd64

```console
$ docker pull flink@sha256:ef01bb66e8b2edbe82505f12247eec9e92246a800b8afdfc563fd9a0e029840e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365634325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f809dcc7b6acf0764fff79b435e4dce9785c7d9dd33cca5ca94f2578d4d0a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:22:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:22:23 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:22:24 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:22:24 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:22:33 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:22:36 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:22:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:22:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:22:37 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed320873c79b7cb00728809ecb0cc5e980b01c007300f1bb41d527345a241f6`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde45ac90c6c9e4cc02c6bc9d4198559ed87adf4f09da3d47a25daf272f2333b`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc754f02fe1172f15b7469132a9bf59f94d234d966118f066c2708ce97ed9178`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527b6e29a32b71d95a4c8baec9b1733bc0632a95d34e06dc10a528b799b4be82`  
		Last Modified: Tue, 10 Oct 2017 08:42:00 GMT  
		Size: 136.1 MB (136106843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbfa993e9a4ea5e4909cf65aaa7f8cb1ea780d8c95a9d251416d360f44969c`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop24`

```console
$ docker pull flink@sha256:984e2f893869d33c98713d7519df1b5405a47616082d4e994225ceeeb2cca2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3-hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:97e70fb61c9d25bc1fd4600c5779922a967c2fa8f1724e582e5e3f99f3181fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.2 MB (367221682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7895b7136049d5632a2103765ee57a052a705192a2933f85a7b60f87a6dff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:27:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:27:49 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:27:50 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:27:50 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:32:19 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:32:22 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:32:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:32:22 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:32:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fe5195ecfde41c4927e21f454371b8739fd88c7e9d549d09860bdb8e4f697`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d874d523654fa46472ef6479a0b8a79ab422d35cff910f9b63681fe76ca18b5`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24842dcde2d44c69d96aee376139b993afe800b66d021e421e0599ebb580fb`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f01e8641759c9720c5f2f191aa57ae7139cba046dc3ce418aecd32eea202f12`  
		Last Modified: Tue, 10 Oct 2017 08:43:15 GMT  
		Size: 137.7 MB (137694204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd26e8d983e1cd7a9b3bff8b7be97aa476d6924631feb5f886c8fda55acd218`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop26`

```console
$ docker pull flink@sha256:f22b427ec0fb950ad5b808a78f76356e6548f8ce48d571617a30f88c3c1128c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3-hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:244aac7ed1be16f67c03bef1014876808fc33a0c8fe166b04bb5a0a9a994f58e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372852630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0538e65fb38756bc725d6ce5bbebc0e001e17456606ccf77c87a5f7c7852b80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:08 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:09 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:10 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:11 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:27 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:28 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:28 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:28 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c703282d6508ed050ccbba79f1d30e9efea9a97787a4c9557305f116a7d381`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c066cc984c870666f54db2ed154fe76e97c274d6e5005f20b0df440459621b1`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268437daef6bcd49875721a3c34bc6a39c15ddcaa1ffc787a7f73e5484297ad6`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 54.7 KB (54700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653dd56688812d8744f61c5d7ed9468e89c467a3afd6c82771e4c41053eeabba`  
		Last Modified: Thu, 14 Sep 2017 06:32:25 GMT  
		Size: 143.3 MB (143330751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de783f5967592daf9952b6650ee52091bcbed46c6a5d0aa1f5d67a95d31271bb`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-hadoop27`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3-hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-scala_2.10`

```console
$ docker pull flink@sha256:cd1afb8450afb148f5abbed2342e23230ef569f8f2d586d397fae2dd6e6ae598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3-scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:84bb7ff6c20620fa0bd972925a79fdfea0c41bbf64bdf6b47a11116bd81839fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376699469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5c501462286a733f6b9e64986a4233592719f2f93608fa8a0d081f30548d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:30 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Thu, 14 Sep 2017 06:24:32 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:33 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz.asc
# Thu, 14 Sep 2017 06:24:34 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:49 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:50 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350e4ac873250d15842e21afee9c8528f245cf4fa25cc1c9dcc48a4b2586bd8d`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f95d509cfb46752a4ed3e33510797a34cff6be27872df6a2159b002677a0d2`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611a3f58d937cb2abe6a8add8abc07fc92c550323d570d83f2a4ba6a73ab251`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e7deb5a54c6cb5870a73cb6a1609792987ea01ac2d4679ebdace55b5ede60c`  
		Last Modified: Thu, 14 Sep 2017 06:33:19 GMT  
		Size: 147.2 MB (147177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c54e655c20c74df7520ce6b66ff1279a3e1fe075e4b2dfad92c57f148f9cd1`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.3-scala_2.11`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.3-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop2`

```console
$ docker pull flink@sha256:8a3e246b8e50a850af7f76b59be8495afb08eb709f02ac278a1a43851c8560bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop2` - linux; amd64

```console
$ docker pull flink@sha256:ef01bb66e8b2edbe82505f12247eec9e92246a800b8afdfc563fd9a0e029840e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365634325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f809dcc7b6acf0764fff79b435e4dce9785c7d9dd33cca5ca94f2578d4d0a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=2 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:22:22 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:22:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:22:23 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:22:24 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz
# Tue, 10 Oct 2017 08:22:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop2-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:22:24 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:22:33 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:22:36 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:22:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:22:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:22:37 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed320873c79b7cb00728809ecb0cc5e980b01c007300f1bb41d527345a241f6`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde45ac90c6c9e4cc02c6bc9d4198559ed87adf4f09da3d47a25daf272f2333b`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc754f02fe1172f15b7469132a9bf59f94d234d966118f066c2708ce97ed9178`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527b6e29a32b71d95a4c8baec9b1733bc0632a95d34e06dc10a528b799b4be82`  
		Last Modified: Tue, 10 Oct 2017 08:42:00 GMT  
		Size: 136.1 MB (136106843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbfa993e9a4ea5e4909cf65aaa7f8cb1ea780d8c95a9d251416d360f44969c`  
		Last Modified: Tue, 10 Oct 2017 08:41:49 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop24`

```console
$ docker pull flink@sha256:984e2f893869d33c98713d7519df1b5405a47616082d4e994225ceeeb2cca2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:97e70fb61c9d25bc1fd4600c5779922a967c2fa8f1724e582e5e3f99f3181fcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.2 MB (367221682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc7895b7136049d5632a2103765ee57a052a705192a2933f85a7b60f87a6dff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:16:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 08:16:32 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 10 Oct 2017 08:16:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Tue, 10 Oct 2017 08:27:48 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 10 Oct 2017 08:27:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:27:49 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 10 Oct 2017 08:27:50 GMT
WORKDIR /opt/flink
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz
# Tue, 10 Oct 2017 08:27:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 10 Oct 2017 08:27:50 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 10 Oct 2017 08:32:19 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 10 Oct 2017 08:32:22 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Tue, 10 Oct 2017 08:32:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Oct 2017 08:32:22 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 10 Oct 2017 08:32:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90504e31318289aae0c381968e0b541e2eb90aa8078f1072f0c0567396642dec`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 819.2 KB (819173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9892c83a291df21ee5627ff9c3a30db28c4fa000a9297e520ccc098854e351d`  
		Last Modified: Tue, 10 Oct 2017 08:35:23 GMT  
		Size: 483.1 KB (483121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6fe5195ecfde41c4927e21f454371b8739fd88c7e9d549d09860bdb8e4f697`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d874d523654fa46472ef6479a0b8a79ab422d35cff910f9b63681fe76ca18b5`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24842dcde2d44c69d96aee376139b993afe800b66d021e421e0599ebb580fb`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f01e8641759c9720c5f2f191aa57ae7139cba046dc3ce418aecd32eea202f12`  
		Last Modified: Tue, 10 Oct 2017 08:43:15 GMT  
		Size: 137.7 MB (137694204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd26e8d983e1cd7a9b3bff8b7be97aa476d6924631feb5f886c8fda55acd218`  
		Last Modified: Tue, 10 Oct 2017 08:43:03 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop26`

```console
$ docker pull flink@sha256:f22b427ec0fb950ad5b808a78f76356e6548f8ce48d571617a30f88c3c1128c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:244aac7ed1be16f67c03bef1014876808fc33a0c8fe166b04bb5a0a9a994f58e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.9 MB (372852630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0538e65fb38756bc725d6ce5bbebc0e001e17456606ccf77c87a5f7c7852b80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:08 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=26 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:09 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:10 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop26-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:11 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:27 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:28 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:28 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:28 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c703282d6508ed050ccbba79f1d30e9efea9a97787a4c9557305f116a7d381`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 4.6 KB (4646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c066cc984c870666f54db2ed154fe76e97c274d6e5005f20b0df440459621b1`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268437daef6bcd49875721a3c34bc6a39c15ddcaa1ffc787a7f73e5484297ad6`  
		Last Modified: Thu, 14 Sep 2017 06:32:12 GMT  
		Size: 54.7 KB (54700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653dd56688812d8744f61c5d7ed9468e89c467a3afd6c82771e4c41053eeabba`  
		Last Modified: Thu, 14 Sep 2017 06:32:25 GMT  
		Size: 143.3 MB (143330751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de783f5967592daf9952b6650ee52091bcbed46c6a5d0aa1f5d67a95d31271bb`  
		Last Modified: Thu, 14 Sep 2017 06:32:13 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop27`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:latest`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:latest` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:scala_2.10`

```console
$ docker pull flink@sha256:cd1afb8450afb148f5abbed2342e23230ef569f8f2d586d397fae2dd6e6ae598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:scala_2.10` - linux; amd64

```console
$ docker pull flink@sha256:84bb7ff6c20620fa0bd972925a79fdfea0c41bbf64bdf6b47a11116bd81839fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376699469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5c501462286a733f6b9e64986a4233592719f2f93608fa8a0d081f30548d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:30 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.10
# Thu, 14 Sep 2017 06:24:32 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:33 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz
# Thu, 14 Sep 2017 06:24:33 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.10.tgz.asc
# Thu, 14 Sep 2017 06:24:34 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:24:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:24:49 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:24:49 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:24:50 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350e4ac873250d15842e21afee9c8528f245cf4fa25cc1c9dcc48a4b2586bd8d`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f95d509cfb46752a4ed3e33510797a34cff6be27872df6a2159b002677a0d2`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b611a3f58d937cb2abe6a8add8abc07fc92c550323d570d83f2a4ba6a73ab251`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e7deb5a54c6cb5870a73cb6a1609792987ea01ac2d4679ebdace55b5ede60c`  
		Last Modified: Thu, 14 Sep 2017 06:33:19 GMT  
		Size: 147.2 MB (147177590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c54e655c20c74df7520ce6b66ff1279a3e1fe075e4b2dfad92c57f148f9cd1`  
		Last Modified: Thu, 14 Sep 2017 06:32:52 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:scala_2.11`

```console
$ docker pull flink@sha256:aae51ca826367892c92e01eba3c74000f7a4d8bb8b45ac25470e902071aca0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:d1e52d66ecf616824a759a64cf7338f7e2ff429228f904176dfe5237628c36bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377315781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008b765714342a8ba0c3be2261e79b745b177f56c58c9a6ac200beea61374a48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:15:06 GMT
ENV GOSU_VERSION=1.7
# Thu, 14 Sep 2017 06:15:30 GMT
RUN set -ex;   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 14 Sep 2017 06:15:38 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Thu, 14 Sep 2017 06:24:52 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 14 Sep 2017 06:24:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:24:53 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 14 Sep 2017 06:24:53 GMT
WORKDIR /opt/flink
# Thu, 14 Sep 2017 06:24:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Thu, 14 Sep 2017 06:24:54 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Thu, 14 Sep 2017 06:24:54 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Thu, 14 Sep 2017 06:25:04 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -r "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 14 Sep 2017 06:25:04 GMT
COPY file:fe1fb6d5958f8d4352415a749ef7bd4569e1b11eec1c10c18e9e296765c72a61 in / 
# Thu, 14 Sep 2017 06:25:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:25:04 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 14 Sep 2017 06:25:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc57915deb1749ae9d9953dcc108d061f39c8c84db15dc901afc7dcf74f5f2b`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ee41a59add7c66c8aec8e75d1dc0f620aa2ab0a7e6f7b33c57aea0d25c800d`  
		Last Modified: Thu, 14 Sep 2017 06:25:27 GMT  
		Size: 483.0 KB (483010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f50bd2b5bebdf2418006d199e45de6e1c5758f9cd4cb3c0c50cd14c99115e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 4.6 KB (4642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fd48e3307c4813ad5d70e3b763d2b2582f0283ae2db77ba0ba1ea924e34e93`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8580112d1b85a3055ba376997e7a4d4c661a8d0c4e2795405c1d43a5c8b196e`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 54.7 KB (54698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3079c34652dde01601e24a29d15a5a411bcf4b36b552a555553cbcda16004e`  
		Last Modified: Thu, 14 Sep 2017 06:34:01 GMT  
		Size: 147.8 MB (147793908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2418bb0747621b0eef483db9f4940a3468766facb308dd1a528f85576536bb23`  
		Last Modified: Thu, 14 Sep 2017 06:33:43 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
