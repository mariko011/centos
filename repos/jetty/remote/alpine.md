## `jetty:alpine`

```console
$ docker pull jetty@sha256:5d3ab6a5bacd7c532e4b0f506c89688b73e3c50eeb0aad90c1123be60fbfc614
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49970206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22d3b41a041c999745381027d377d71cccac03b4b710caed0db5857fe68d77d`
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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:11:02 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 18 Nov 2016 01:11:02 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 18 Nov 2016 01:11:02 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 01:11:03 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 18 Nov 2016 01:11:04 GMT
WORKDIR /usr/local/jetty
# Fri, 18 Nov 2016 01:11:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 18 Nov 2016 01:11:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 18 Nov 2016 01:11:05 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Fri, 18 Nov 2016 01:11:06 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Fri, 18 Nov 2016 01:11:06 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 18 Nov 2016 01:12:16 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 18 Nov 2016 01:12:16 GMT
WORKDIR /var/lib/jetty
# Fri, 18 Nov 2016 01:12:17 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 18 Nov 2016 01:12:18 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 18 Nov 2016 01:12:18 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 18 Nov 2016 01:12:19 GMT
EXPOSE 8080/tcp
# Fri, 18 Nov 2016 01:12:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Nov 2016 01:12:19 GMT
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bc7ab14ad4c5498e11f923d10d46567586b78da471bef26ff1045a45ed660d`  
		Last Modified: Fri, 18 Nov 2016 01:16:26 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16c869868c356a1320efed0333c84187794ab7ed750c01b57c6f68fbcd98921`  
		Last Modified: Fri, 18 Nov 2016 01:16:23 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d495e934bca7a92a73d922eb2c997cb002fb46058e0449d5d053e68cefe7d3f`  
		Last Modified: Fri, 18 Nov 2016 01:16:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47caa6f11270d7be832ae1c3c3456bfa5ff13507fba31bc81f20cabeff7f2b50`  
		Last Modified: Fri, 18 Nov 2016 01:16:25 GMT  
		Size: 8.0 MB (7983031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9796438a3ab2524a507fe8f99e02eba1069570ecd9c03c4c729417270c7099`  
		Last Modified: Fri, 18 Nov 2016 01:16:23 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2b3ee5179b34f2712f0972da09d20c909dbe68046437518f070a29cffdf430`  
		Last Modified: Fri, 18 Nov 2016 01:16:23 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
