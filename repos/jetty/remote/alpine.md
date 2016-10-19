## `jetty:alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
