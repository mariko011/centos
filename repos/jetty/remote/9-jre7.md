## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:838a5f27a2dd3069a2a8e51a216d7720487128fca7de3cf586094b43e1d0b078
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158246009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1260bf7ee405ba59932e0dc1aa71464d1c5bb4e762e740a5571d2db6fe9fdda1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:33 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:53:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:54:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 16:42:19 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Mon, 19 Dec 2016 16:42:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 19 Dec 2016 16:42:20 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:42:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 19 Dec 2016 16:42:21 GMT
WORKDIR /usr/local/jetty
# Tue, 27 Dec 2016 17:36:43 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Tue, 27 Dec 2016 17:36:43 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Tue, 27 Dec 2016 17:36:43 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 17:36:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 27 Dec 2016 17:36:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 17:36:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 17:36:50 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 17:36:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 27 Dec 2016 17:36:53 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 17:36:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 17:36:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 17:36:55 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 17:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 17:36:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fa5cecedd85684f8657b51c8913a90807544607c279583d437ee21f694309d`  
		Last Modified: Wed, 14 Dec 2016 03:09:14 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e150de9a63750af26b5fcac4da8ec7489695bb73c0377f02cf94ffc4957708`  
		Last Modified: Wed, 14 Dec 2016 03:09:31 GMT  
		Size: 77.8 MB (77761012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598d7d4fae70e3ae18faf0b2bcde5a76df5a0b30e00538cd8f7510ce09cfc3ca`  
		Last Modified: Mon, 19 Dec 2016 23:05:42 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5566c5eecf72f591baa3f21d065a6a7deac4bd623b04d4f3506d7afb8139fb4c`  
		Last Modified: Mon, 19 Dec 2016 23:05:41 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb63467d552c5042e31eea598404c8c38ce6087cb8589b08f394f398fe01634`  
		Last Modified: Tue, 27 Dec 2016 17:43:17 GMT  
		Size: 10.0 MB (10018592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccbf7feb4847e0ee52ec01f03969cdbb253a2159c751cf0151d99371a48052e`  
		Last Modified: Tue, 27 Dec 2016 17:43:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c4ad28782d18d98dcace7f2a5e475df07c8f118812c2aa3cec185d60875a1`  
		Last Modified: Tue, 27 Dec 2016 17:43:13 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1440e0c501ed5f07af2edc669ad73b5b2749e4d45d4e6c71d5085da2a0fbc7`  
		Last Modified: Tue, 27 Dec 2016 17:43:13 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d5a0625f6a2fd90b7a37927c6e0f90a4581f090b6face8aaed8c81dcb820db`  
		Last Modified: Tue, 27 Dec 2016 17:43:13 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
