## `clojure:lein-2.7.1-alpine`

```console
$ docker pull clojure@sha256:62acdcee133981ce6a39306cd25273122dee7604d053f0d5bebb6abda73a4e4d
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70629025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1f502eb75ffe5fbf18ae56d90e76a10ee84c0bd8079f400d7cf8d857687390`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 18 Oct 2016 23:21:46 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 18 Oct 2016 23:21:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 18 Oct 2016 23:21:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Oct 2016 23:21:47 GMT
WORKDIR /tmp
# Tue, 18 Oct 2016 23:21:50 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 18 Oct 2016 23:22:03 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 18 Oct 2016 23:22:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 18 Oct 2016 23:22:04 GMT
ENV LEIN_ROOT=1
# Tue, 18 Oct 2016 23:22:07 GMT
RUN lein
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
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ed66601f133fce089502311a0e889a2c00618d561ba7ee987605f01ef5eaa3`  
		Last Modified: Tue, 18 Oct 2016 23:22:19 GMT  
		Size: 5.2 MB (5182375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c237cd38eae0fa81240f1d03706fd9c761e567bd79930a3d9897625b11e3cd92`  
		Last Modified: Tue, 18 Oct 2016 23:22:20 GMT  
		Size: 13.8 MB (13805510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae0a1fd5aec9480ea167d546440219bf7934f4d6dba7d4ed8cdd492cdd4bfc`  
		Last Modified: Tue, 18 Oct 2016 23:22:17 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
