## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:216f344fdeee30ee062a3ae5e16bb3585600e989f2b9a47ec207afa068283ef4
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91746229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04c3e9148fe7b1c43fbed57741131d131a41b467fb1b68d7a824f2cb5280e3d`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:36:51 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 07 Mar 2017 17:40:14 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 07 Mar 2017 17:40:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 07 Mar 2017 17:40:15 GMT
WORKDIR /tmp
# Tue, 07 Mar 2017 17:40:18 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 07 Mar 2017 17:40:35 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 07 Mar 2017 17:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 07 Mar 2017 17:40:36 GMT
ENV LEIN_ROOT=1
# Tue, 07 Mar 2017 17:40:38 GMT
RUN lein
# Tue, 07 Mar 2017 17:40:39 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 07 Mar 2017 17:40:39 GMT
WORKDIR /usr/src/app
# Tue, 07 Mar 2017 17:40:39 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 07 Mar 2017 17:40:40 GMT
ONBUILD RUN lein deps
# Tue, 07 Mar 2017 17:40:40 GMT
ONBUILD COPY . /usr/src/app
# Tue, 07 Mar 2017 17:40:40 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49583b477d0dbd6f74c59c388b6e370322fe0b741678c63157a9096331cab08`  
		Last Modified: Tue, 07 Mar 2017 17:43:20 GMT  
		Size: 6.5 MB (6470013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa0fa00efc1c9471dcc24a7a813a8a44c1ec7b446c8f4288dcc55e4a63e3d5`  
		Last Modified: Tue, 07 Mar 2017 17:43:21 GMT  
		Size: 13.8 MB (13805508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80875fef471acf880f6fbe67b2e6216ef748cf6302270853c1558471bc638b45`  
		Last Modified: Tue, 07 Mar 2017 17:43:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc996ea4dd36da27c176d56215065b41a8ed1b8ef44cce2efc5cd385bbae334`  
		Last Modified: Tue, 07 Mar 2017 17:44:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
