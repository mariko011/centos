## `clojure:lein-2.7.0-alpine-onbuild`

```console
$ docker pull clojure@sha256:a3c0f36b2020dd9d78227e0403a44bea4751314537c5e8e338bd95457320ad9f
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebdc0bad850adc5ee779fb0479ccc07ae883f155f3beb0789e3c6e847fa5985`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:42:12 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:42:12 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 16:42:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 16:42:13 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 16:42:16 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 16:42:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Sep 2016 16:42:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Sep 2016 16:42:32 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 16:42:37 GMT
RUN lein
# Tue, 20 Sep 2016 16:43:06 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:43:06 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 16:43:06 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Sep 2016 16:43:07 GMT
ONBUILD RUN lein deps
# Tue, 20 Sep 2016 16:43:07 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Sep 2016 16:43:07 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f3f0e832c39af2fa8060d6f5a590c7383af1f492cb6095b52aa2e2e99b336`  
		Last Modified: Tue, 20 Sep 2016 16:42:46 GMT  
		Size: 5.2 MB (5181762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba066b4040c142624ab9e1a13ee5665e0c6565d51624918efaa9cb305a31f95`  
		Last Modified: Tue, 20 Sep 2016 16:42:47 GMT  
		Size: 13.8 MB (13801361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd67145aa5378acd12ccfbcd6be5b7123a4365f3ae9dea2af00f72e3b8b6c2`  
		Last Modified: Tue, 20 Sep 2016 16:42:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d0cf501adb93ba018316af13ed3c3ab78d9b70834aea83789f1b678a5fcb2`  
		Last Modified: Tue, 20 Sep 2016 16:43:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
