## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:04d9e318da6e9f66db79761013f80ed96545fb4317bfec8e4ce0e5ed9dc79382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:6f611faddea16efe9af796c1205b62ef888b2cf0ee4f722c8a7eb730770b183f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94461747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937b2bee514a52a127aff0fdbd16d7b80313163a4d534b61b7f44da2fc4c2507`
-	Default Command: `["\/bin\/sh"]`

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
# Fri, 27 Oct 2017 22:44:26 GMT
ENV LEIN_VERSION=2.8.1
# Fri, 27 Oct 2017 22:44:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 27 Oct 2017 22:44:26 GMT
WORKDIR /tmp
# Fri, 27 Oct 2017 22:44:31 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Fri, 27 Oct 2017 22:45:03 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 27 Oct 2017 22:45:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 27 Oct 2017 22:45:03 GMT
ENV LEIN_ROOT=1
# Fri, 27 Oct 2017 22:45:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
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
	-	`sha256:83f868976797da84ccdb86a695e27cc2de8e065eb1cbcf82ffe8537741409efc`  
		Last Modified: Fri, 27 Oct 2017 22:46:56 GMT  
		Size: 6.9 MB (6934078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9979a3efe77ae6e25f7d7265b0579bf034163ec7c9a02e683a6975a6a5726371`  
		Last Modified: Fri, 27 Oct 2017 22:46:55 GMT  
		Size: 12.1 MB (12141198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4872fd36ebab31dd9e81cf81a6409fa506c38d8a4995b2d4109589cb6b7505da`  
		Last Modified: Fri, 27 Oct 2017 22:46:54 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
