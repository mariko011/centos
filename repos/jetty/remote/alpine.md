## `jetty:alpine`

```console
$ docker pull jetty@sha256:902c4c06dc4032aa833957e5cae51e33e16b680a24f1134fe55769c67a8d5473
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50039603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0572f9828c8b92566705d8e53a31e979e7d81531d6bac47fe149371a07617f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 06 Feb 2017 17:49:11 GMT
ENV JETTY_VERSION=9.4.1.v20170120
# Mon, 06 Feb 2017 17:49:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.1.v20170120/jetty-home-9.4.1.v20170120.tar.gz
# Mon, 06 Feb 2017 17:49:12 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	2A684B57436A81FA8706B53C61C3351A438A3B7D
# Mon, 06 Feb 2017 17:49:39 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 06 Feb 2017 17:49:46 GMT
WORKDIR /var/lib/jetty
# Mon, 06 Feb 2017 17:49:47 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 06 Feb 2017 17:49:48 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 06 Feb 2017 17:49:49 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 06 Feb 2017 17:49:50 GMT
EXPOSE 8080/tcp
# Mon, 06 Feb 2017 17:49:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Feb 2017 17:49:51 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d28d2c2c12de4738ef22d4cf81cfa8bfe72c4a14625fc9a32e3d5054ff0d4a6`  
		Last Modified: Mon, 06 Feb 2017 17:54:30 GMT  
		Size: 8.1 MB (8051873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb825906e3449dc51a4b45abe5ca49f64adf62ce7780000b19cfdb9aa59e638`  
		Last Modified: Mon, 06 Feb 2017 17:54:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64be77d389554e733d78b1bc1355ed5f7078f534a7890a34967cd9ebddf682a`  
		Last Modified: Mon, 06 Feb 2017 17:54:29 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
