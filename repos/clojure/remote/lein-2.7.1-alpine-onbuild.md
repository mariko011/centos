## `clojure:lein-2.7.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:ae803f46781590e75348473b076703eafd5853af152351e0ebb287740710ff73
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70655366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eaed5d397635fef64a32222c0c3c531bb505d0718f55ca38f7db958f120435`
-	Default Command: `["lein","run"]`

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
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 17:17:54 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 19 Dec 2016 17:17:54 GMT
ENV LEIN_VERSION=2.7.1
# Mon, 19 Dec 2016 17:17:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 19 Dec 2016 17:17:55 GMT
WORKDIR /tmp
# Mon, 19 Dec 2016 17:17:59 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Mon, 19 Dec 2016 17:18:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Mon, 19 Dec 2016 17:18:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Mon, 19 Dec 2016 17:18:10 GMT
ENV LEIN_ROOT=1
# Mon, 19 Dec 2016 17:18:17 GMT
RUN lein
# Mon, 19 Dec 2016 17:18:17 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 19 Dec 2016 17:18:18 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 17:18:18 GMT
ONBUILD COPY project.clj /usr/src/app/
# Mon, 19 Dec 2016 17:18:18 GMT
ONBUILD RUN lein deps
# Mon, 19 Dec 2016 17:18:19 GMT
ONBUILD COPY . /usr/src/app
# Mon, 19 Dec 2016 17:18:19 GMT
CMD ["lein" "run"]
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
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abed1cbf1a0310d6faf6f7f87e7655fd29e557b5b42e1488fb963a77c5c5cbb0`  
		Last Modified: Mon, 19 Dec 2016 17:20:29 GMT  
		Size: 5.2 MB (5180670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4cd1130d793326523634d599855549e28400c743a59cd4de8a845ecf9e806`  
		Last Modified: Mon, 19 Dec 2016 17:20:30 GMT  
		Size: 13.8 MB (13805508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c329b04286a1d2a2c8187d66bac1073be10d3a67803feb1dd46ca931388cc62c`  
		Last Modified: Mon, 19 Dec 2016 17:20:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c84efca3b59a23eb7c70e107274f5393ed0f3e69f081010abd200b46567d01`  
		Last Modified: Mon, 19 Dec 2016 17:21:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
