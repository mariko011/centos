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
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:cf8e74307c040c65219f7851a56a956f04ec0d0a3050077054606b233ba7e00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

```console
$ docker pull jetty@sha256:bb4d67a3eb578d4bb3e80ae0219144f9e067f150481e0bb72c53a6e6346a0de5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237120578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee865407a569e52bb514014761f17c90552e9df021c7b46afe9a19e182da4c45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:58 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:30:00 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:30:02 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:30:02 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:30:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:30:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:30:04 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:30:04 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:30:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a139675e046e3a3bd492384474ac643adea9b401c4181f13ff77bb1a1037a2`  
		Last Modified: Tue, 07 Nov 2017 18:31:11 GMT  
		Size: 10.0 MB (10026516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd38d7de25141d249508931efeded1cf1e48f42aa42dde3f73273a45401ea883`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ab1e3b03467be4afdf561ec4a632efcb8e955cc500dc890e89620eb91a75b`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e9aec334da2989370929309bdc423e7069255532a342a276589b6822d29c2e`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee60ff0553bae64123946f46b3c2b2bab4423fa8b84994715486d1b7d2db65c9`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22`

```console
$ docker pull jetty@sha256:cf8e74307c040c65219f7851a56a956f04ec0d0a3050077054606b233ba7e00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.22` - linux; amd64

```console
$ docker pull jetty@sha256:bb4d67a3eb578d4bb3e80ae0219144f9e067f150481e0bb72c53a6e6346a0de5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237120578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee865407a569e52bb514014761f17c90552e9df021c7b46afe9a19e182da4c45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:58 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:30:00 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:30:02 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:30:02 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:30:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:30:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:30:04 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:30:04 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:30:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a139675e046e3a3bd492384474ac643adea9b401c4181f13ff77bb1a1037a2`  
		Last Modified: Tue, 07 Nov 2017 18:31:11 GMT  
		Size: 10.0 MB (10026516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd38d7de25141d249508931efeded1cf1e48f42aa42dde3f73273a45401ea883`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ab1e3b03467be4afdf561ec4a632efcb8e955cc500dc890e89620eb91a75b`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e9aec334da2989370929309bdc423e7069255532a342a276589b6822d29c2e`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee60ff0553bae64123946f46b3c2b2bab4423fa8b84994715486d1b7d2db65c9`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22-jre7`

```console
$ docker pull jetty@sha256:9acad1602ca8a90b6793d90ceeb559bfae1200b2285e2dc368b326122bbdab00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.22-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:f7b67ebc8bfa31151c6de5e302c87528c401ec3779cc71225f8d14ae9bca298c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200037185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91c344f79e47cb9ec88c23c118bdfdfa12364001afcbb2161483946ea676f7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:47:16 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 00:30:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 28 Nov 2017 00:30:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 28 Nov 2017 00:30:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 00:30:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 28 Nov 2017 00:30:14 GMT
WORKDIR /usr/local/jetty
# Tue, 28 Nov 2017 00:30:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 28 Nov 2017 00:30:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 28 Nov 2017 00:30:23 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 28 Nov 2017 00:30:24 GMT
WORKDIR /var/lib/jetty
# Tue, 28 Nov 2017 00:30:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:28 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 28 Nov 2017 00:30:29 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 28 Nov 2017 00:30:30 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 28 Nov 2017 00:30:30 GMT
USER [jetty]
# Tue, 28 Nov 2017 00:30:30 GMT
EXPOSE 8080/tcp
# Tue, 28 Nov 2017 00:30:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Nov 2017 00:30:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2611810f545eb47835fbd635a50d2f4c50b8bf65f78c09fc1e61cd31994ff5`  
		Last Modified: Mon, 27 Nov 2017 23:51:45 GMT  
		Size: 117.3 MB (117349464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f059392ef85edb3b397aa964a5e46390cab228c62273737d784ab70fd761c8b`  
		Last Modified: Tue, 28 Nov 2017 00:31:10 GMT  
		Size: 2.1 KB (2148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ba000132fd811c60c0415c91a8ff37c75bf1275a63e20ab1826ee4ff003a2`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc5d6f7e369461d61855eb841fec4e748da93aae7253b9fc37151f749f7ee8c`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 10.0 MB (10026513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0866dea0ee60f99c81a94ca8facaf75dfa4eaafc1ec51dddf94b830e46b6fc4`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a515cbc2b2afd8b01d7a4ec34c703cec36930575c128c4191b17ea16ee78e`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d997be168ac90a89fcdf45f6cc2e79c9d3eec65ed04badba27728df31b619bb`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6311d71374ccf67239b9e9d922ea6a71ba85f2d4855de26ac5584476cbe8ac1d`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.22-jre8`

```console
$ docker pull jetty@sha256:cf8e74307c040c65219f7851a56a956f04ec0d0a3050077054606b233ba7e00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.22-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:bb4d67a3eb578d4bb3e80ae0219144f9e067f150481e0bb72c53a6e6346a0de5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237120578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee865407a569e52bb514014761f17c90552e9df021c7b46afe9a19e182da4c45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:58 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:30:00 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:30:02 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:30:02 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:30:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:30:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:30:04 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:30:04 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:30:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a139675e046e3a3bd492384474ac643adea9b401c4181f13ff77bb1a1037a2`  
		Last Modified: Tue, 07 Nov 2017 18:31:11 GMT  
		Size: 10.0 MB (10026516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd38d7de25141d249508931efeded1cf1e48f42aa42dde3f73273a45401ea883`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ab1e3b03467be4afdf561ec4a632efcb8e955cc500dc890e89620eb91a75b`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e9aec334da2989370929309bdc423e7069255532a342a276589b6822d29c2e`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee60ff0553bae64123946f46b3c2b2bab4423fa8b84994715486d1b7d2db65c9`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:9acad1602ca8a90b6793d90ceeb559bfae1200b2285e2dc368b326122bbdab00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:f7b67ebc8bfa31151c6de5e302c87528c401ec3779cc71225f8d14ae9bca298c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200037185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91c344f79e47cb9ec88c23c118bdfdfa12364001afcbb2161483946ea676f7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:47:16 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 00:30:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 28 Nov 2017 00:30:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 28 Nov 2017 00:30:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 00:30:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 28 Nov 2017 00:30:14 GMT
WORKDIR /usr/local/jetty
# Tue, 28 Nov 2017 00:30:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 28 Nov 2017 00:30:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 28 Nov 2017 00:30:23 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 28 Nov 2017 00:30:24 GMT
WORKDIR /var/lib/jetty
# Tue, 28 Nov 2017 00:30:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:28 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 28 Nov 2017 00:30:29 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 28 Nov 2017 00:30:30 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 28 Nov 2017 00:30:30 GMT
USER [jetty]
# Tue, 28 Nov 2017 00:30:30 GMT
EXPOSE 8080/tcp
# Tue, 28 Nov 2017 00:30:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Nov 2017 00:30:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2611810f545eb47835fbd635a50d2f4c50b8bf65f78c09fc1e61cd31994ff5`  
		Last Modified: Mon, 27 Nov 2017 23:51:45 GMT  
		Size: 117.3 MB (117349464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f059392ef85edb3b397aa964a5e46390cab228c62273737d784ab70fd761c8b`  
		Last Modified: Tue, 28 Nov 2017 00:31:10 GMT  
		Size: 2.1 KB (2148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ba000132fd811c60c0415c91a8ff37c75bf1275a63e20ab1826ee4ff003a2`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc5d6f7e369461d61855eb841fec4e748da93aae7253b9fc37151f749f7ee8c`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 10.0 MB (10026513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0866dea0ee60f99c81a94ca8facaf75dfa4eaafc1ec51dddf94b830e46b6fc4`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a515cbc2b2afd8b01d7a4ec34c703cec36930575c128c4191b17ea16ee78e`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d997be168ac90a89fcdf45f6cc2e79c9d3eec65ed04badba27728df31b619bb`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6311d71374ccf67239b9e9d922ea6a71ba85f2d4855de26ac5584476cbe8ac1d`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:cf8e74307c040c65219f7851a56a956f04ec0d0a3050077054606b233ba7e00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:bb4d67a3eb578d4bb3e80ae0219144f9e067f150481e0bb72c53a6e6346a0de5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237120578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee865407a569e52bb514014761f17c90552e9df021c7b46afe9a19e182da4c45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 07 Nov 2017 18:29:49 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:58 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:30:00 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:30:02 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:30:02 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:30:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:30:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:30:04 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:30:04 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:30:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a139675e046e3a3bd492384474ac643adea9b401c4181f13ff77bb1a1037a2`  
		Last Modified: Tue, 07 Nov 2017 18:31:11 GMT  
		Size: 10.0 MB (10026516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd38d7de25141d249508931efeded1cf1e48f42aa42dde3f73273a45401ea883`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ab1e3b03467be4afdf561ec4a632efcb8e955cc500dc890e89620eb91a75b`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e9aec334da2989370929309bdc423e7069255532a342a276589b6822d29c2e`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee60ff0553bae64123946f46b3c2b2bab4423fa8b84994715486d1b7d2db65c9`  
		Last Modified: Tue, 07 Nov 2017 18:31:09 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:eef2d11610ab395a40fe00d72247c2934276cf3a75b5b9b479c67f4dfd02f147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

```console
$ docker pull jetty@sha256:89baa6c0e76ac3a4044e96001e637856007629d8280cc6fa48dda5523e022bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235109951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8d3138c6e17447c4583d1a6ed0d3deb11dcc6d824d40c054daff4e07347326`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 07 Nov 2017 18:29:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:27 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:29:29 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:29:35 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:29:36 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:29:37 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:29:37 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:29:38 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:29:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:29:38 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd510512429766c761fa3b5978e8e27ee1f0a7abbab46f586c13c3674f63599d`  
		Last Modified: Tue, 07 Nov 2017 18:30:28 GMT  
		Size: 8.0 MB (8015603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b951b07d6281d2f2f84e1768b4450e1b621e977cdddc38a107b6844411b64`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a504adafea8b98f6a9c8841eec31f604f7b9b69e4fa1ec6a92bfc6bd7b8ae18`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a74be9b3daa9079d27ac782d5598bc02cac92b39d7a2c8595f63cf7f7069a`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a45a9bf4295396c7a41c04e9f8db9f7614572bbf12592282cfa2e3e80167e7`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21`

```console
$ docker pull jetty@sha256:eef2d11610ab395a40fe00d72247c2934276cf3a75b5b9b479c67f4dfd02f147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21` - linux; amd64

```console
$ docker pull jetty@sha256:89baa6c0e76ac3a4044e96001e637856007629d8280cc6fa48dda5523e022bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235109951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8d3138c6e17447c4583d1a6ed0d3deb11dcc6d824d40c054daff4e07347326`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 07 Nov 2017 18:29:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:27 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:29:29 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:29:35 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:29:36 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:29:37 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:29:37 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:29:38 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:29:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:29:38 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd510512429766c761fa3b5978e8e27ee1f0a7abbab46f586c13c3674f63599d`  
		Last Modified: Tue, 07 Nov 2017 18:30:28 GMT  
		Size: 8.0 MB (8015603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b951b07d6281d2f2f84e1768b4450e1b621e977cdddc38a107b6844411b64`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a504adafea8b98f6a9c8841eec31f604f7b9b69e4fa1ec6a92bfc6bd7b8ae18`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a74be9b3daa9079d27ac782d5598bc02cac92b39d7a2c8595f63cf7f7069a`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a45a9bf4295396c7a41c04e9f8db9f7614572bbf12592282cfa2e3e80167e7`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21-alpine`

```console
$ docker pull jetty@sha256:92702957e1038e2e45ce81ee6ba1d7ea393bcdb82bc466f8ed40c616693db263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:42458b928417fb14e6b27dff0c7201268c4a01c9928c70adf3a7eac31af38344
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc3c122f9ac735614ef1e8c460b9f003c00ec9978cbd439cf6c09bc81b88bb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:52:19 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 01 Dec 2017 23:52:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 01 Dec 2017 23:52:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 23:52:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 01 Dec 2017 23:52:20 GMT
WORKDIR /usr/local/jetty
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 01 Dec 2017 23:53:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 01 Dec 2017 23:53:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 01 Dec 2017 23:53:04 GMT
WORKDIR /var/lib/jetty
# Fri, 01 Dec 2017 23:53:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:11 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 01 Dec 2017 23:53:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 01 Dec 2017 23:53:12 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 01 Dec 2017 23:53:13 GMT
USER [jetty]
# Fri, 01 Dec 2017 23:53:13 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 23:53:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:53:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a07856e1967d0ed070e63df6d48827c746ee364517e2e02b4387ce4f4d31c`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d56bc6010cb356fc7026a62c7547a1e2787efd751f3f04faa5c263602c777f7`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c2c6f4449ddc11c77c81e06efae8b2b3c16010b83b657046edeb8ad0694333`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 8.0 MB (8048746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a5de3aa7204cdf36133af1da58dd4dc06ae39f3f982d8faa0cc12992ce2a2`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299d02e9a5a4beb80f20474efce12d98058b495fb89f4e896b192e3ba136f681`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 37.0 KB (36976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac860df89058ad430497288ec00f269c0f2b493bb400fb09c15fa4f362818a1`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffe56e76391286764a8e866af9399875966fb7465d982886f214cd2b2bd73e6`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21-jre8`

```console
$ docker pull jetty@sha256:eef2d11610ab395a40fe00d72247c2934276cf3a75b5b9b479c67f4dfd02f147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:89baa6c0e76ac3a4044e96001e637856007629d8280cc6fa48dda5523e022bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235109951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8d3138c6e17447c4583d1a6ed0d3deb11dcc6d824d40c054daff4e07347326`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 07 Nov 2017 18:29:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:27 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:29:29 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:29:35 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:29:36 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:29:37 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:29:37 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:29:38 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:29:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:29:38 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd510512429766c761fa3b5978e8e27ee1f0a7abbab46f586c13c3674f63599d`  
		Last Modified: Tue, 07 Nov 2017 18:30:28 GMT  
		Size: 8.0 MB (8015603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b951b07d6281d2f2f84e1768b4450e1b621e977cdddc38a107b6844411b64`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a504adafea8b98f6a9c8841eec31f604f7b9b69e4fa1ec6a92bfc6bd7b8ae18`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a74be9b3daa9079d27ac782d5598bc02cac92b39d7a2c8595f63cf7f7069a`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a45a9bf4295396c7a41c04e9f8db9f7614572bbf12592282cfa2e3e80167e7`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.21-jre8-alpine`

```console
$ docker pull jetty@sha256:92702957e1038e2e45ce81ee6ba1d7ea393bcdb82bc466f8ed40c616693db263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.21-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:42458b928417fb14e6b27dff0c7201268c4a01c9928c70adf3a7eac31af38344
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc3c122f9ac735614ef1e8c460b9f003c00ec9978cbd439cf6c09bc81b88bb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:52:19 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 01 Dec 2017 23:52:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 01 Dec 2017 23:52:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 23:52:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 01 Dec 2017 23:52:20 GMT
WORKDIR /usr/local/jetty
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 01 Dec 2017 23:53:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 01 Dec 2017 23:53:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 01 Dec 2017 23:53:04 GMT
WORKDIR /var/lib/jetty
# Fri, 01 Dec 2017 23:53:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:11 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 01 Dec 2017 23:53:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 01 Dec 2017 23:53:12 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 01 Dec 2017 23:53:13 GMT
USER [jetty]
# Fri, 01 Dec 2017 23:53:13 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 23:53:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:53:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a07856e1967d0ed070e63df6d48827c746ee364517e2e02b4387ce4f4d31c`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d56bc6010cb356fc7026a62c7547a1e2787efd751f3f04faa5c263602c777f7`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c2c6f4449ddc11c77c81e06efae8b2b3c16010b83b657046edeb8ad0694333`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 8.0 MB (8048746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a5de3aa7204cdf36133af1da58dd4dc06ae39f3f982d8faa0cc12992ce2a2`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299d02e9a5a4beb80f20474efce12d98058b495fb89f4e896b192e3ba136f681`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 37.0 KB (36976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac860df89058ad430497288ec00f269c0f2b493bb400fb09c15fa4f362818a1`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffe56e76391286764a8e866af9399875966fb7465d982886f214cd2b2bd73e6`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:92702957e1038e2e45ce81ee6ba1d7ea393bcdb82bc466f8ed40c616693db263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:42458b928417fb14e6b27dff0c7201268c4a01c9928c70adf3a7eac31af38344
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc3c122f9ac735614ef1e8c460b9f003c00ec9978cbd439cf6c09bc81b88bb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:52:19 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 01 Dec 2017 23:52:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 01 Dec 2017 23:52:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 23:52:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 01 Dec 2017 23:52:20 GMT
WORKDIR /usr/local/jetty
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 01 Dec 2017 23:53:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 01 Dec 2017 23:53:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 01 Dec 2017 23:53:04 GMT
WORKDIR /var/lib/jetty
# Fri, 01 Dec 2017 23:53:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:11 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 01 Dec 2017 23:53:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 01 Dec 2017 23:53:12 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 01 Dec 2017 23:53:13 GMT
USER [jetty]
# Fri, 01 Dec 2017 23:53:13 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 23:53:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:53:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a07856e1967d0ed070e63df6d48827c746ee364517e2e02b4387ce4f4d31c`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d56bc6010cb356fc7026a62c7547a1e2787efd751f3f04faa5c263602c777f7`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c2c6f4449ddc11c77c81e06efae8b2b3c16010b83b657046edeb8ad0694333`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 8.0 MB (8048746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a5de3aa7204cdf36133af1da58dd4dc06ae39f3f982d8faa0cc12992ce2a2`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299d02e9a5a4beb80f20474efce12d98058b495fb89f4e896b192e3ba136f681`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 37.0 KB (36976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac860df89058ad430497288ec00f269c0f2b493bb400fb09c15fa4f362818a1`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffe56e76391286764a8e866af9399875966fb7465d982886f214cd2b2bd73e6`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:eef2d11610ab395a40fe00d72247c2934276cf3a75b5b9b479c67f4dfd02f147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:89baa6c0e76ac3a4044e96001e637856007629d8280cc6fa48dda5523e022bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235109951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8d3138c6e17447c4583d1a6ed0d3deb11dcc6d824d40c054daff4e07347326`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Tue, 07 Nov 2017 18:29:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Tue, 07 Nov 2017 18:29:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 07 Nov 2017 18:29:27 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 07 Nov 2017 18:29:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 07 Nov 2017 18:29:29 GMT
WORKDIR /var/lib/jetty
# Tue, 07 Nov 2017 18:29:35 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 07 Nov 2017 18:29:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 07 Nov 2017 18:29:36 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 07 Nov 2017 18:29:37 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 07 Nov 2017 18:29:37 GMT
USER [jetty]
# Tue, 07 Nov 2017 18:29:38 GMT
EXPOSE 8080/tcp
# Tue, 07 Nov 2017 18:29:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:29:38 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd510512429766c761fa3b5978e8e27ee1f0a7abbab46f586c13c3674f63599d`  
		Last Modified: Tue, 07 Nov 2017 18:30:28 GMT  
		Size: 8.0 MB (8015603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8b951b07d6281d2f2f84e1768b4450e1b621e977cdddc38a107b6844411b64`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a504adafea8b98f6a9c8841eec31f604f7b9b69e4fa1ec6a92bfc6bd7b8ae18`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a74be9b3daa9079d27ac782d5598bc02cac92b39d7a2c8595f63cf7f7069a`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a45a9bf4295396c7a41c04e9f8db9f7614572bbf12592282cfa2e3e80167e7`  
		Last Modified: Tue, 07 Nov 2017 18:30:25 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:92702957e1038e2e45ce81ee6ba1d7ea393bcdb82bc466f8ed40c616693db263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:42458b928417fb14e6b27dff0c7201268c4a01c9928c70adf3a7eac31af38344
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64366758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc3c122f9ac735614ef1e8c460b9f003c00ec9978cbd439cf6c09bc81b88bb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:52:19 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 01 Dec 2017 23:52:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 01 Dec 2017 23:52:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 23:52:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 01 Dec 2017 23:52:20 GMT
WORKDIR /usr/local/jetty
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_VERSION=9.3.21.v20170918
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.21.v20170918/jetty-distribution-9.3.21.v20170918.tar.gz
# Fri, 01 Dec 2017 23:52:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 01 Dec 2017 23:53:03 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 01 Dec 2017 23:53:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 01 Dec 2017 23:53:04 GMT
WORKDIR /var/lib/jetty
# Fri, 01 Dec 2017 23:53:11 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Dec 2017 23:53:11 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 01 Dec 2017 23:53:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 01 Dec 2017 23:53:12 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 01 Dec 2017 23:53:13 GMT
USER [jetty]
# Fri, 01 Dec 2017 23:53:13 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 23:53:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:53:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a07856e1967d0ed070e63df6d48827c746ee364517e2e02b4387ce4f4d31c`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d56bc6010cb356fc7026a62c7547a1e2787efd751f3f04faa5c263602c777f7`  
		Last Modified: Fri, 01 Dec 2017 23:53:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c2c6f4449ddc11c77c81e06efae8b2b3c16010b83b657046edeb8ad0694333`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 8.0 MB (8048746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a5de3aa7204cdf36133af1da58dd4dc06ae39f3f982d8faa0cc12992ce2a2`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299d02e9a5a4beb80f20474efce12d98058b495fb89f4e896b192e3ba136f681`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 37.0 KB (36976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac860df89058ad430497288ec00f269c0f2b493bb400fb09c15fa4f362818a1`  
		Last Modified: Fri, 01 Dec 2017 23:54:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffe56e76391286764a8e866af9399875966fb7465d982886f214cd2b2bd73e6`  
		Last Modified: Fri, 01 Dec 2017 23:54:41 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7-jre8`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.7-jre8-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.7-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:9acad1602ca8a90b6793d90ceeb559bfae1200b2285e2dc368b326122bbdab00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:f7b67ebc8bfa31151c6de5e302c87528c401ec3779cc71225f8d14ae9bca298c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200037185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91c344f79e47cb9ec88c23c118bdfdfa12364001afcbb2161483946ea676f7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:47:16 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 00:30:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 28 Nov 2017 00:30:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 28 Nov 2017 00:30:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 00:30:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 28 Nov 2017 00:30:14 GMT
WORKDIR /usr/local/jetty
# Tue, 28 Nov 2017 00:30:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 28 Nov 2017 00:30:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 28 Nov 2017 00:30:23 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 28 Nov 2017 00:30:24 GMT
WORKDIR /var/lib/jetty
# Tue, 28 Nov 2017 00:30:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:28 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 28 Nov 2017 00:30:29 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 28 Nov 2017 00:30:30 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 28 Nov 2017 00:30:30 GMT
USER [jetty]
# Tue, 28 Nov 2017 00:30:30 GMT
EXPOSE 8080/tcp
# Tue, 28 Nov 2017 00:30:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Nov 2017 00:30:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2611810f545eb47835fbd635a50d2f4c50b8bf65f78c09fc1e61cd31994ff5`  
		Last Modified: Mon, 27 Nov 2017 23:51:45 GMT  
		Size: 117.3 MB (117349464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f059392ef85edb3b397aa964a5e46390cab228c62273737d784ab70fd761c8b`  
		Last Modified: Tue, 28 Nov 2017 00:31:10 GMT  
		Size: 2.1 KB (2148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ba000132fd811c60c0415c91a8ff37c75bf1275a63e20ab1826ee4ff003a2`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc5d6f7e369461d61855eb841fec4e748da93aae7253b9fc37151f749f7ee8c`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 10.0 MB (10026513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0866dea0ee60f99c81a94ca8facaf75dfa4eaafc1ec51dddf94b830e46b6fc4`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a515cbc2b2afd8b01d7a4ec34c703cec36930575c128c4191b17ea16ee78e`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d997be168ac90a89fcdf45f6cc2e79c9d3eec65ed04badba27728df31b619bb`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6311d71374ccf67239b9e9d922ea6a71ba85f2d4855de26ac5584476cbe8ac1d`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:9acad1602ca8a90b6793d90ceeb559bfae1200b2285e2dc368b326122bbdab00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:f7b67ebc8bfa31151c6de5e302c87528c401ec3779cc71225f8d14ae9bca298c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200037185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91c344f79e47cb9ec88c23c118bdfdfa12364001afcbb2161483946ea676f7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:47:16 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 00:30:12 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 28 Nov 2017 00:30:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 28 Nov 2017 00:30:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Nov 2017 00:30:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 28 Nov 2017 00:30:14 GMT
WORKDIR /usr/local/jetty
# Tue, 28 Nov 2017 00:30:14 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Tue, 28 Nov 2017 00:30:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 28 Nov 2017 00:30:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 28 Nov 2017 00:30:23 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 28 Nov 2017 00:30:24 GMT
WORKDIR /var/lib/jetty
# Tue, 28 Nov 2017 00:30:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 28 Nov 2017 00:30:28 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 28 Nov 2017 00:30:29 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 28 Nov 2017 00:30:30 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 28 Nov 2017 00:30:30 GMT
USER [jetty]
# Tue, 28 Nov 2017 00:30:30 GMT
EXPOSE 8080/tcp
# Tue, 28 Nov 2017 00:30:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Nov 2017 00:30:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2611810f545eb47835fbd635a50d2f4c50b8bf65f78c09fc1e61cd31994ff5`  
		Last Modified: Mon, 27 Nov 2017 23:51:45 GMT  
		Size: 117.3 MB (117349464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f059392ef85edb3b397aa964a5e46390cab228c62273737d784ab70fd761c8b`  
		Last Modified: Tue, 28 Nov 2017 00:31:10 GMT  
		Size: 2.1 KB (2148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5ba000132fd811c60c0415c91a8ff37c75bf1275a63e20ab1826ee4ff003a2`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc5d6f7e369461d61855eb841fec4e748da93aae7253b9fc37151f749f7ee8c`  
		Last Modified: Tue, 28 Nov 2017 00:31:09 GMT  
		Size: 10.0 MB (10026513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0866dea0ee60f99c81a94ca8facaf75dfa4eaafc1ec51dddf94b830e46b6fc4`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a515cbc2b2afd8b01d7a4ec34c703cec36930575c128c4191b17ea16ee78e`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d997be168ac90a89fcdf45f6cc2e79c9d3eec65ed04badba27728df31b619bb`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6311d71374ccf67239b9e9d922ea6a71ba85f2d4855de26ac5584476cbe8ac1d`  
		Last Modified: Tue, 28 Nov 2017 00:31:07 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:5010b31b404749cbc9dcc944065cf3b9a3daa113a28de0d5f6283751799ab5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

```console
$ docker pull jetty@sha256:3f7d80771554bcd483d2e2e48f5f8c8b4aff14ec3138edb31a5fdf6c98a02e9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235190692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96b83714b9753c1544245353f2d551183a91f72e6a82f4c10aa127b58e95a1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 18:28:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Nov 2017 18:28:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Nov 2017 18:28:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:28:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Nov 2017 18:28:39 GMT
WORKDIR /usr/local/jetty
# Tue, 07 Nov 2017 18:28:39 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 07 Nov 2017 18:28:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 13 Nov 2017 15:31:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 13 Nov 2017 15:31:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 13 Nov 2017 15:31:04 GMT
WORKDIR /var/lib/jetty
# Mon, 13 Nov 2017 15:31:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 13 Nov 2017 15:31:13 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 13 Nov 2017 15:31:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 13 Nov 2017 15:31:14 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 13 Nov 2017 15:31:14 GMT
USER [jetty]
# Mon, 13 Nov 2017 15:31:14 GMT
EXPOSE 8080/tcp
# Mon, 13 Nov 2017 15:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 15:31:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f81776dc822e99819219b7984360c4416df7e7f12757b23a86a03e09d96c15f`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621a20884b528e6e155ff9fea62d8907c7d29be3aaab877f0f1bc01f7a7ab8b`  
		Last Modified: Tue, 07 Nov 2017 18:30:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9926194a5f6568f62dbdd4f990ec51ddbd2ce59f48d40e736fe3515ee9ced49e`  
		Last Modified: Mon, 13 Nov 2017 15:31:36 GMT  
		Size: 8.1 MB (8096021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3963df76996ab27ddc35f686d4512e6603b618d7b66a12133ccad301b9d07fc`  
		Last Modified: Mon, 13 Nov 2017 15:31:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7245fa86a37e517975da63f527809906ffdaac1b0db478545032383f240d2217`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19bcc05fa0c581a75a07fa366f7c5713b6dd2e9b4c615ae40cfe8767aa9a5e`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5211961b00ff5d596e0ee08abc57ec5658674b3ef2be69d49111909cc7acb2`  
		Last Modified: Mon, 13 Nov 2017 15:31:35 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
