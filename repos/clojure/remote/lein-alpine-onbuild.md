## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:6be7c0fa6a2f64501d527de47805bd5bd3a2cf456a4fb721187ceff14839437a
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70655383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0643bfe0b6936cc0481fd652131b7ba864aedeb7bfc32f3f017489ee9a923a`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:12:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 27 Dec 2016 22:12:59 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 27 Dec 2016 22:12:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Dec 2016 22:12:59 GMT
WORKDIR /tmp
# Tue, 27 Dec 2016 22:13:14 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 27 Dec 2016 22:13:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 27 Dec 2016 22:13:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 27 Dec 2016 22:13:32 GMT
ENV LEIN_ROOT=1
# Tue, 27 Dec 2016 22:13:40 GMT
RUN lein
# Tue, 27 Dec 2016 22:13:48 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 27 Dec 2016 22:13:48 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:13:49 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 27 Dec 2016 22:13:49 GMT
ONBUILD RUN lein deps
# Tue, 27 Dec 2016 22:13:50 GMT
ONBUILD COPY . /usr/src/app
# Tue, 27 Dec 2016 22:14:01 GMT
CMD ["lein" "run"]
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
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8887cb1aada8f3ab35e5f5fcf6d55114312ef98db0b924d619d00e46e732face`  
		Last Modified: Tue, 27 Dec 2016 22:40:33 GMT  
		Size: 5.2 MB (5180623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3739dfdac52acfab610b3643157bbfc24e8fd04e9a30dadf85beac4c4509c7f`  
		Last Modified: Tue, 27 Dec 2016 22:40:34 GMT  
		Size: 13.8 MB (13805504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53f4627251d9cbea443969a0e5a5c9aa671b963b6e822c02dd4652e51a6a59c`  
		Last Modified: Tue, 27 Dec 2016 22:40:31 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4034bd9fe3ac76866e5b91a9cd9a0737ce0ee56e32c23e20f91940a4b63b8b`  
		Last Modified: Tue, 27 Dec 2016 22:41:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
