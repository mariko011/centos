## `clojure:lein-2.8.0-alpine-onbuild`

```console
$ docker pull clojure@sha256:050199523f4655790238a8c8579815689cfd85490455d89d123b298a1be1df6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.8.0-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:a6d7a516d22b64642571f0b3c9a3a8a062aeb672256ad12f9e43d7161fede3b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94461824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eafb08777eef46fa5348fa929de1297f84c134c76fb94e5715f8c0fc437e0`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:37:29 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 26 Oct 2017 04:37:29 GMT
ENV LEIN_VERSION=2.8.0
# Thu, 26 Oct 2017 04:37:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 26 Oct 2017 04:37:30 GMT
WORKDIR /tmp
# Thu, 26 Oct 2017 04:37:34 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 07:20:25 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "2efff6ca3a77d66d041d705abf7a92cb7efafabb *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 26 Oct 2017 07:20:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 26 Oct 2017 07:20:29 GMT
ENV LEIN_ROOT=1
# Thu, 26 Oct 2017 07:20:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 26 Oct 2017 07:20:56 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 26 Oct 2017 07:20:57 GMT
WORKDIR /usr/src/app
# Thu, 26 Oct 2017 07:20:57 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 26 Oct 2017 07:20:57 GMT
ONBUILD RUN lein deps
# Thu, 26 Oct 2017 07:20:57 GMT
ONBUILD COPY . /usr/src/app
# Thu, 26 Oct 2017 07:20:57 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff47899e5f31a268548dc924e5a8f8e74f21880694518b8693aa4fbed7111178`  
		Last Modified: Thu, 26 Oct 2017 07:21:24 GMT  
		Size: 6.9 MB (6934049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e67f6a6a42b40549d5423a402be42adccd43af7cfd34c01b65cac1521101702`  
		Last Modified: Thu, 26 Oct 2017 07:21:23 GMT  
		Size: 12.1 MB (12141160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13c5d1c70f7d856900d6c5a8db0d3acba2bc82eb78e3be32ae2af29d7769fb`  
		Last Modified: Thu, 26 Oct 2017 07:21:22 GMT  
		Size: 3.3 MB (3341001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46a5d7cc8335f6354a165fff60029c3a9a6d39e6e6c57eea0d3608a762f69d5`  
		Last Modified: Thu, 26 Oct 2017 07:21:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
