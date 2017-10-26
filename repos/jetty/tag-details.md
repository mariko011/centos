<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9`](#jetty9)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.22`](#jetty9222)
-	[`jetty:9.2.22-jre7`](#jetty9222-jre7)
-	[`jetty:9.2.22-jre8`](#jetty9222-jre8)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9.3.21`](#jetty9321)
-	[`jetty:9.3.21-alpine`](#jetty9321-alpine)
-	[`jetty:9.3.21-jre8`](#jetty9321-jre8)
-	[`jetty:9.3.21-jre8-alpine`](#jetty9321-jre8-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9.4`](#jetty94)
-	[`jetty:9.4.7`](#jetty947)
-	[`jetty:9.4.7-alpine`](#jetty947-alpine)
-	[`jetty:9.4.7-jre8`](#jetty947-jre8)
-	[`jetty:9.4.7-jre8-alpine`](#jetty947-jre8-alpine)
-	[`jetty:9.4-alpine`](#jetty94-alpine)
-	[`jetty:9.4-jre8`](#jetty94-jre8)
-	[`jetty:9.4-jre8-alpine`](#jetty94-jre8-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre7`](#jettyjre7)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:latest`](#jettylatest)

## `jetty:9`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:d7a079dd9cba501a1c2f03ceb8b2d293a77ce2033005e0f4fa6c07ebf83b8572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

```console
$ docker pull jetty@sha256:9634cb94417e1c57afc31e36b54f4171fc05cfb24127cc44c7fbb0894766faf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238196157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3ad2bd3aad0834478c05b0bcf4021b7233c833188bca4d6b1122bb5e04a213`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:00:26 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:00:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:00:27 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:33 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:16 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:16 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:16 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:17 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c12f38159c9e6018d3dccaf3088f47896932b4458818fe7b0fd79c76d0c7c4`  
		Last Modified: Tue, 10 Oct 2017 09:11:06 GMT  
		Size: 10.0 MB (10026469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bd56a9c099ff836e188479bf1414ac00a5f740ffab43dd44a9ecb4906808e2`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35deceed6db497f8ee8f5b0192836091dad1acfc19b2c238de5ea9d4b11b3882`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02824261274c6fd43398ae4fcd4cc4a3a97535fa3ee4cd1de436961afde504f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b21ac60a46ffe15ab790a7e0f6220a0cefe0727b9951d4a1004783a52f7d84`  
		Last Modified: Fri, 13 Oct 2017 19:35:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22`

```console
$ docker pull jetty@sha256:d7a079dd9cba501a1c2f03ceb8b2d293a77ce2033005e0f4fa6c07ebf83b8572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.22` - linux; amd64

```console
$ docker pull jetty@sha256:9634cb94417e1c57afc31e36b54f4171fc05cfb24127cc44c7fbb0894766faf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238196157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3ad2bd3aad0834478c05b0bcf4021b7233c833188bca4d6b1122bb5e04a213`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:00:26 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:00:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:00:27 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:33 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:16 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:16 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:16 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:17 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c12f38159c9e6018d3dccaf3088f47896932b4458818fe7b0fd79c76d0c7c4`  
		Last Modified: Tue, 10 Oct 2017 09:11:06 GMT  
		Size: 10.0 MB (10026469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bd56a9c099ff836e188479bf1414ac00a5f740ffab43dd44a9ecb4906808e2`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35deceed6db497f8ee8f5b0192836091dad1acfc19b2c238de5ea9d4b11b3882`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02824261274c6fd43398ae4fcd4cc4a3a97535fa3ee4cd1de436961afde504f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b21ac60a46ffe15ab790a7e0f6220a0cefe0727b9951d4a1004783a52f7d84`  
		Last Modified: Fri, 13 Oct 2017 19:35:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22-jre7`

```console
$ docker pull jetty@sha256:302bb4b3b03eaabcf3dfde071091977c275fcd2be2bd45f12e9985305bdd46fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.22-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:a55fb02a32ed91f9d120e2344c954c6d44dcbf39c275f58b51e3589c5d79fae6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199571564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b675ea54f86d199075b66fe0393f0250ca89e23b62fa01341afc6dd69aefda97`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 09:00:51 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:00:52 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 09:00:57 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:01:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:01:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:01:04 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:01:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:11 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:01:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:24 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:24 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:24 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670876237f8cf77cdda8878a4f621620363659110a4b496dd6db42ef8d3722a8`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9492640bec90e8b3302468d8e8770e251f964a00cdd53aae65bbed719d74f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8900f5d81a825c71bb7f298da946c2e69dbe19eb35012f753225802103f62a35`  
		Last Modified: Tue, 10 Oct 2017 09:11:46 GMT  
		Size: 10.0 MB (10026503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4254561ffa2523eb1834a0b62207ea54a8e0a153b4e3a9227d819765bb0640a1`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcd644227f56b1d94f5d8bedc8aa8dab84a636816c3dec8125f864ee4a46fe0`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 1.5 KB (1464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00b7db3c8093e33494032a135c761ea5fca49652fcdf8e5539d7af5edcbf336`  
		Last Modified: Tue, 10 Oct 2017 09:11:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f41a4e205ac376173a4eef8769c578b6bdda8405e27a5ffc5627e144ada263`  
		Last Modified: Fri, 13 Oct 2017 19:35:47 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22-jre8`

```console
$ docker pull jetty@sha256:d7a079dd9cba501a1c2f03ceb8b2d293a77ce2033005e0f4fa6c07ebf83b8572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.22-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:9634cb94417e1c57afc31e36b54f4171fc05cfb24127cc44c7fbb0894766faf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238196157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3ad2bd3aad0834478c05b0bcf4021b7233c833188bca4d6b1122bb5e04a213`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:00:26 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:00:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:00:27 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:33 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:16 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:16 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:16 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:17 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c12f38159c9e6018d3dccaf3088f47896932b4458818fe7b0fd79c76d0c7c4`  
		Last Modified: Tue, 10 Oct 2017 09:11:06 GMT  
		Size: 10.0 MB (10026469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bd56a9c099ff836e188479bf1414ac00a5f740ffab43dd44a9ecb4906808e2`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35deceed6db497f8ee8f5b0192836091dad1acfc19b2c238de5ea9d4b11b3882`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02824261274c6fd43398ae4fcd4cc4a3a97535fa3ee4cd1de436961afde504f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b21ac60a46ffe15ab790a7e0f6220a0cefe0727b9951d4a1004783a52f7d84`  
		Last Modified: Fri, 13 Oct 2017 19:35:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:302bb4b3b03eaabcf3dfde071091977c275fcd2be2bd45f12e9985305bdd46fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:a55fb02a32ed91f9d120e2344c954c6d44dcbf39c275f58b51e3589c5d79fae6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199571564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b675ea54f86d199075b66fe0393f0250ca89e23b62fa01341afc6dd69aefda97`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 09:00:51 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:00:52 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 09:00:57 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:01:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:01:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:01:04 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:01:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:11 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:01:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:24 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:24 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:24 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670876237f8cf77cdda8878a4f621620363659110a4b496dd6db42ef8d3722a8`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9492640bec90e8b3302468d8e8770e251f964a00cdd53aae65bbed719d74f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8900f5d81a825c71bb7f298da946c2e69dbe19eb35012f753225802103f62a35`  
		Last Modified: Tue, 10 Oct 2017 09:11:46 GMT  
		Size: 10.0 MB (10026503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4254561ffa2523eb1834a0b62207ea54a8e0a153b4e3a9227d819765bb0640a1`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcd644227f56b1d94f5d8bedc8aa8dab84a636816c3dec8125f864ee4a46fe0`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 1.5 KB (1464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00b7db3c8093e33494032a135c761ea5fca49652fcdf8e5539d7af5edcbf336`  
		Last Modified: Tue, 10 Oct 2017 09:11:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f41a4e205ac376173a4eef8769c578b6bdda8405e27a5ffc5627e144ada263`  
		Last Modified: Fri, 13 Oct 2017 19:35:47 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:d7a079dd9cba501a1c2f03ceb8b2d293a77ce2033005e0f4fa6c07ebf83b8572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:9634cb94417e1c57afc31e36b54f4171fc05cfb24127cc44c7fbb0894766faf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238196157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3ad2bd3aad0834478c05b0bcf4021b7233c833188bca4d6b1122bb5e04a213`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:00:26 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:00:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:00:27 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:00:33 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:00:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:16 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:16 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:16 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:17 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c12f38159c9e6018d3dccaf3088f47896932b4458818fe7b0fd79c76d0c7c4`  
		Last Modified: Tue, 10 Oct 2017 09:11:06 GMT  
		Size: 10.0 MB (10026469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bd56a9c099ff836e188479bf1414ac00a5f740ffab43dd44a9ecb4906808e2`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35deceed6db497f8ee8f5b0192836091dad1acfc19b2c238de5ea9d4b11b3882`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02824261274c6fd43398ae4fcd4cc4a3a97535fa3ee4cd1de436961afde504f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b21ac60a46ffe15ab790a7e0f6220a0cefe0727b9951d4a1004783a52f7d84`  
		Last Modified: Fri, 13 Oct 2017 19:35:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:056adf87fa08362467fa4e56f57dc7e28d3c3088a997f644ab63b0b71c76e8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

```console
$ docker pull jetty@sha256:079f1e286e1f3898e1bc9f9b47063a0842808cefee55b31f0b83aa277c4e59e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236185587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba01f8904535f046b6bd4bdb9262d5030d82ae2043510b1ad78804c7a9b74d7a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:48 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:57 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:01 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:01 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:01 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93259ef7b87aa206c9482f8e451876815bd66bbd0dd59bdfeeed30f2a4b2362`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 8.0 MB (8015611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d380735ecbfbdf789b9095df71eccca1f6f352e4797515493f31bb66f87b6cd`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90901d1dbe50f05c45152b9af24c877635aaf9cd68c6dbc9849d847bcdf1b27a`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce4f8b55cfbff082697b1145a5f3a19b4e6d704515b1c02eea7f519789310d6`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b384d156a93716ef477e86851f69300dd88b4e050b7f65747f0faaf67b2612d9`  
		Last Modified: Fri, 13 Oct 2017 19:33:57 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21`

```console
$ docker pull jetty@sha256:056adf87fa08362467fa4e56f57dc7e28d3c3088a997f644ab63b0b71c76e8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21` - linux; amd64

```console
$ docker pull jetty@sha256:079f1e286e1f3898e1bc9f9b47063a0842808cefee55b31f0b83aa277c4e59e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236185587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba01f8904535f046b6bd4bdb9262d5030d82ae2043510b1ad78804c7a9b74d7a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:48 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:57 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:01 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:01 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:01 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93259ef7b87aa206c9482f8e451876815bd66bbd0dd59bdfeeed30f2a4b2362`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 8.0 MB (8015611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d380735ecbfbdf789b9095df71eccca1f6f352e4797515493f31bb66f87b6cd`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90901d1dbe50f05c45152b9af24c877635aaf9cd68c6dbc9849d847bcdf1b27a`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce4f8b55cfbff082697b1145a5f3a19b4e6d704515b1c02eea7f519789310d6`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b384d156a93716ef477e86851f69300dd88b4e050b7f65747f0faaf67b2612d9`  
		Last Modified: Fri, 13 Oct 2017 19:33:57 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21-alpine`

```console
$ docker pull jetty@sha256:635e9202f4afa3e163dd0dbb9d6ec527bc1fcac8ff7f8d56a9826cb2a8205143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:d46f1bede82b79fb547a765ba5640b5333d75437c917d2fb4d537c97ad8b6ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0baa0dd28337e76891c69dcebade951632d3e132d2c4ed3f75a7af229c9826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:30:20 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:30:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:30:21 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:30:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:25 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:30:26 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:30:26 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:30:26 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:30:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b5ff16b4b3308cbfe0c8460fb7b8722389124f5cbfeb114ce1efeae37aeca`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 8.0 MB (8048751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7f9d3de81b1a3368cc59b1f63ed22c09f44b9be837d4582158ea364ba2d832`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2c22a5b9277fadaf4212eeb238ac451753943f308186b31890689dedd5a002`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 37.0 KB (36968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae83b16ea3392fda04016baaacca3110e61c6c99ddb33cf8b876119789c230d`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a12f7f19b00a5f201f9a0a9923bc953c03485777bb5c30933342ba5e479eeb9`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21-jre8`

```console
$ docker pull jetty@sha256:056adf87fa08362467fa4e56f57dc7e28d3c3088a997f644ab63b0b71c76e8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:079f1e286e1f3898e1bc9f9b47063a0842808cefee55b31f0b83aa277c4e59e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236185587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba01f8904535f046b6bd4bdb9262d5030d82ae2043510b1ad78804c7a9b74d7a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:48 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:57 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:01 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:01 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:01 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93259ef7b87aa206c9482f8e451876815bd66bbd0dd59bdfeeed30f2a4b2362`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 8.0 MB (8015611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d380735ecbfbdf789b9095df71eccca1f6f352e4797515493f31bb66f87b6cd`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90901d1dbe50f05c45152b9af24c877635aaf9cd68c6dbc9849d847bcdf1b27a`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce4f8b55cfbff082697b1145a5f3a19b4e6d704515b1c02eea7f519789310d6`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b384d156a93716ef477e86851f69300dd88b4e050b7f65747f0faaf67b2612d9`  
		Last Modified: Fri, 13 Oct 2017 19:33:57 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21-jre8-alpine`

```console
$ docker pull jetty@sha256:635e9202f4afa3e163dd0dbb9d6ec527bc1fcac8ff7f8d56a9826cb2a8205143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:d46f1bede82b79fb547a765ba5640b5333d75437c917d2fb4d537c97ad8b6ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0baa0dd28337e76891c69dcebade951632d3e132d2c4ed3f75a7af229c9826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:30:20 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:30:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:30:21 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:30:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:25 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:30:26 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:30:26 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:30:26 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:30:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b5ff16b4b3308cbfe0c8460fb7b8722389124f5cbfeb114ce1efeae37aeca`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 8.0 MB (8048751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7f9d3de81b1a3368cc59b1f63ed22c09f44b9be837d4582158ea364ba2d832`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2c22a5b9277fadaf4212eeb238ac451753943f308186b31890689dedd5a002`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 37.0 KB (36968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae83b16ea3392fda04016baaacca3110e61c6c99ddb33cf8b876119789c230d`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a12f7f19b00a5f201f9a0a9923bc953c03485777bb5c30933342ba5e479eeb9`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:635e9202f4afa3e163dd0dbb9d6ec527bc1fcac8ff7f8d56a9826cb2a8205143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:d46f1bede82b79fb547a765ba5640b5333d75437c917d2fb4d537c97ad8b6ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0baa0dd28337e76891c69dcebade951632d3e132d2c4ed3f75a7af229c9826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:30:20 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:30:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:30:21 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:30:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:25 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:30:26 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:30:26 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:30:26 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:30:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b5ff16b4b3308cbfe0c8460fb7b8722389124f5cbfeb114ce1efeae37aeca`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 8.0 MB (8048751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7f9d3de81b1a3368cc59b1f63ed22c09f44b9be837d4582158ea364ba2d832`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2c22a5b9277fadaf4212eeb238ac451753943f308186b31890689dedd5a002`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 37.0 KB (36968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae83b16ea3392fda04016baaacca3110e61c6c99ddb33cf8b876119789c230d`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a12f7f19b00a5f201f9a0a9923bc953c03485777bb5c30933342ba5e479eeb9`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:056adf87fa08362467fa4e56f57dc7e28d3c3088a997f644ab63b0b71c76e8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:079f1e286e1f3898e1bc9f9b47063a0842808cefee55b31f0b83aa277c4e59e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236185587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba01f8904535f046b6bd4bdb9262d5030d82ae2043510b1ad78804c7a9b74d7a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 10 Oct 2017 08:59:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:48 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:57 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:58 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:01 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:01 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:01 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93259ef7b87aa206c9482f8e451876815bd66bbd0dd59bdfeeed30f2a4b2362`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 8.0 MB (8015611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d380735ecbfbdf789b9095df71eccca1f6f352e4797515493f31bb66f87b6cd`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90901d1dbe50f05c45152b9af24c877635aaf9cd68c6dbc9849d847bcdf1b27a`  
		Last Modified: Tue, 10 Oct 2017 09:06:07 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce4f8b55cfbff082697b1145a5f3a19b4e6d704515b1c02eea7f519789310d6`  
		Last Modified: Tue, 10 Oct 2017 09:06:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b384d156a93716ef477e86851f69300dd88b4e050b7f65747f0faaf67b2612d9`  
		Last Modified: Fri, 13 Oct 2017 19:33:57 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:635e9202f4afa3e163dd0dbb9d6ec527bc1fcac8ff7f8d56a9826cb2a8205143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:d46f1bede82b79fb547a765ba5640b5333d75437c917d2fb4d537c97ad8b6ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0baa0dd28337e76891c69dcebade951632d3e132d2c4ed3f75a7af229c9826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Thu, 26 Oct 2017 04:30:07 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:30:20 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:30:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:30:21 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:30:24 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:30:25 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:30:26 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:30:26 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:30:26 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:30:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b5ff16b4b3308cbfe0c8460fb7b8722389124f5cbfeb114ce1efeae37aeca`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 8.0 MB (8048751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7f9d3de81b1a3368cc59b1f63ed22c09f44b9be837d4582158ea364ba2d832`  
		Last Modified: Thu, 26 Oct 2017 04:32:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2c22a5b9277fadaf4212eeb238ac451753943f308186b31890689dedd5a002`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 37.0 KB (36968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae83b16ea3392fda04016baaacca3110e61c6c99ddb33cf8b876119789c230d`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a12f7f19b00a5f201f9a0a9923bc953c03485777bb5c30933342ba5e479eeb9`  
		Last Modified: Thu, 26 Oct 2017 04:32:15 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7-jre8`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7-jre8-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:302bb4b3b03eaabcf3dfde071091977c275fcd2be2bd45f12e9985305bdd46fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:a55fb02a32ed91f9d120e2344c954c6d44dcbf39c275f58b51e3589c5d79fae6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199571564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b675ea54f86d199075b66fe0393f0250ca89e23b62fa01341afc6dd69aefda97`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 09:00:51 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:00:52 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 09:00:57 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:01:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:01:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:01:04 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:01:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:11 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:01:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:24 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:24 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:24 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670876237f8cf77cdda8878a4f621620363659110a4b496dd6db42ef8d3722a8`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9492640bec90e8b3302468d8e8770e251f964a00cdd53aae65bbed719d74f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8900f5d81a825c71bb7f298da946c2e69dbe19eb35012f753225802103f62a35`  
		Last Modified: Tue, 10 Oct 2017 09:11:46 GMT  
		Size: 10.0 MB (10026503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4254561ffa2523eb1834a0b62207ea54a8e0a153b4e3a9227d819765bb0640a1`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcd644227f56b1d94f5d8bedc8aa8dab84a636816c3dec8125f864ee4a46fe0`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 1.5 KB (1464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00b7db3c8093e33494032a135c761ea5fca49652fcdf8e5539d7af5edcbf336`  
		Last Modified: Tue, 10 Oct 2017 09:11:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f41a4e205ac376173a4eef8769c578b6bdda8405e27a5ffc5627e144ada263`  
		Last Modified: Fri, 13 Oct 2017 19:35:47 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:302bb4b3b03eaabcf3dfde071091977c275fcd2be2bd45f12e9985305bdd46fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:a55fb02a32ed91f9d120e2344c954c6d44dcbf39c275f58b51e3589c5d79fae6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199571564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b675ea54f86d199075b66fe0393f0250ca89e23b62fa01341afc6dd69aefda97`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 09:00:51 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 09:00:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:00:52 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 09:00:57 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 10 Oct 2017 09:00:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 09:01:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 09:01:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 09:01:04 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 09:01:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 09:01:11 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 09:01:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:31:24 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:31:24 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:31:24 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:31:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:31:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670876237f8cf77cdda8878a4f621620363659110a4b496dd6db42ef8d3722a8`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 2.2 KB (2152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9492640bec90e8b3302468d8e8770e251f964a00cdd53aae65bbed719d74f6`  
		Last Modified: Tue, 10 Oct 2017 09:11:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8900f5d81a825c71bb7f298da946c2e69dbe19eb35012f753225802103f62a35`  
		Last Modified: Tue, 10 Oct 2017 09:11:46 GMT  
		Size: 10.0 MB (10026503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4254561ffa2523eb1834a0b62207ea54a8e0a153b4e3a9227d819765bb0640a1`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcd644227f56b1d94f5d8bedc8aa8dab84a636816c3dec8125f864ee4a46fe0`  
		Last Modified: Tue, 10 Oct 2017 09:11:45 GMT  
		Size: 1.5 KB (1464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00b7db3c8093e33494032a135c761ea5fca49652fcdf8e5539d7af5edcbf336`  
		Last Modified: Tue, 10 Oct 2017 09:11:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f41a4e205ac376173a4eef8769c578b6bdda8405e27a5ffc5627e144ada263`  
		Last Modified: Fri, 13 Oct 2017 19:35:47 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:204a6f3e039922e51c07258882477f0deac823a2dee87c6284b4ba031957225e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

```console
$ docker pull jetty@sha256:ade72f072c74d917664128591c793d6d13ab0f38a6eea597923718781d1d106c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236266277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d1de4ea6a693225ebc411dd2f5460ccbc60987d72ac099fd6857a36089f2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 10 Oct 2017 08:59:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Oct 2017 08:59:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:59:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 10 Oct 2017 08:59:14 GMT
WORKDIR /usr/local/jetty
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 10 Oct 2017 08:59:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 10 Oct 2017 08:59:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Oct 2017 08:59:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 10 Oct 2017 08:59:21 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Oct 2017 08:59:27 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 10 Oct 2017 08:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Oct 2017 08:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 13 Oct 2017 19:30:45 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 13 Oct 2017 19:30:45 GMT
USER [jetty]
# Fri, 13 Oct 2017 19:30:45 GMT
EXPOSE 8080/tcp
# Fri, 13 Oct 2017 19:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Oct 2017 19:30:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:d618e171c0bfb3cc91e9e45845f59e95e06ca6984be3b7ebfc394ea7e9f7a908`  
		Last Modified: Tue, 10 Oct 2017 09:01:34 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5f1c4ed08afdd4b023664f8243017ae0baf20a110916ffa3063bdda56f80b`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645764c146bc1bd3cb23f55956474128e4ec089927d0ccdf2f4291edba9e5f0c`  
		Last Modified: Tue, 10 Oct 2017 09:01:33 GMT  
		Size: 8.1 MB (8095987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f198b7079dc8a823d4ba40cb69c585a9360f084685b440ef30f6191bb04c83f`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d913fef86d8c294d246969df098025b42cef046e1c67a325e5094b232f8bfc92`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc2a0f95518290310fc94bcae0e730e97b429358fa5330fa78d98bf1ded90ea`  
		Last Modified: Tue, 10 Oct 2017 09:01:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3c9fe446e4bf6e9b383fd8dd426d3415969bbbcf4dd1b898ff9db82185181`  
		Last Modified: Fri, 13 Oct 2017 19:31:39 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
