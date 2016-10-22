## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
