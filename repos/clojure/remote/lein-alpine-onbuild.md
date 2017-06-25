## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:5b044d5e51210bf5a2a48cf1215f9608842111571bbcc48be8f668d310eb9457
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf7b39d6f18167650808aba8e39a2558636afeab110df7a4fd0f29299af710`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:43:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 20 Jun 2017 17:43:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:43:12 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:43:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:43:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Jun 2017 17:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:43:28 GMT
ENV LEIN_ROOT=1
# Tue, 20 Jun 2017 17:43:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 20 Jun 2017 17:44:02 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:44:03 GMT
WORKDIR /usr/src/app
# Tue, 20 Jun 2017 17:44:04 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Jun 2017 17:44:05 GMT
ONBUILD RUN lein deps
# Tue, 20 Jun 2017 17:44:06 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Jun 2017 17:44:06 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195a431bfa0fac9f92210ea815447b8ddb4332ac887649697cddef429110665f`  
		Last Modified: Sun, 25 Jun 2017 07:18:58 GMT  
		Size: 6.9 MB (6911336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0bebfa9be70c879acb237787711c1668545f84e82cc2c09856654a82b477fb`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 13.8 MB (13810985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca1a7d529b80044683e6ec60a9f2f900b4201c12e96638601ef81d9ff3deb6`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 3.3 MB (3340981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc417d137f601f218b98d1442b1d5b487d96ffaf83b4145e946ebca74079c4d`  
		Last Modified: Sun, 25 Jun 2017 07:20:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
