## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:9a1342cd936ea88c6fa27c7c8a5a2fbee63df8174e19aea4c05fb0c96a74b382
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158301405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d9527b4eccdbdff7327df573d030f60bd7d82b453b89613a09e30e0c450e744`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 22:55:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Feb 2017 22:55:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 Feb 2017 22:55:53 GMT
WORKDIR /usr/local/jetty
# Wed, 08 Feb 2017 22:55:54 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 08 Feb 2017 22:55:54 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 08 Feb 2017 22:55:55 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 08 Feb 2017 22:56:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 08 Feb 2017 22:56:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 Feb 2017 22:56:02 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 Feb 2017 22:56:03 GMT
WORKDIR /var/lib/jetty
# Wed, 08 Feb 2017 22:56:04 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 08 Feb 2017 22:56:05 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 Feb 2017 22:56:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 08 Feb 2017 22:56:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 08 Feb 2017 22:56:07 GMT
EXPOSE 8080/tcp
# Wed, 08 Feb 2017 22:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Feb 2017 22:56:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43dcf834c20b6902b8a546d554f47014558b1bf72773773a72f7889a46cbd85`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb5e53b241119b81f225fc02c9d40c1ffe3e261058f4b3bfa1dfcb762443702`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18775a2cace5b6b29a6a7882c0dd26c13d24a0f4ba0034e46ecb8847322c3c20`  
		Last Modified: Wed, 08 Feb 2017 22:57:33 GMT  
		Size: 10.0 MB (10018570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97e50ec51b3bc72b1a989d6efb72b197b6fe6815edc3cbf0dcf5787dc2d4044`  
		Last Modified: Wed, 08 Feb 2017 22:57:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3304d3ec9e5bb8306d702219b76ffc9dde77642727d2deac422ad6acf91ef519`  
		Last Modified: Wed, 08 Feb 2017 22:57:32 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71eb4fc05f67af32f37f60e38e971cf1a711181f2cb165d18d7b4e157ffe752e`  
		Last Modified: Wed, 08 Feb 2017 22:57:32 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dd538204e17d8db9e03ac15d356e17e8848942fa7fa02b4f09288ce07e5b8c`  
		Last Modified: Wed, 08 Feb 2017 22:57:31 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
