## `clojure:alpine`

```console
$ docker pull clojure@sha256:eb4732393b2e48701b25aa433e792f5020ba723f1a0d104b6132ad8507861317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

```console
$ docker pull clojure@sha256:511b6d9774c310457e116eff88c1b55b5949ed0c017412751d375be15250e270
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96445673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17882fdbcfab684544050d637525b33398f0aebb263c7d6845d338de76eb1f1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:05:15 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 05 Dec 2017 04:05:15 GMT
ENV LEIN_VERSION=2.8.1
# Tue, 05 Dec 2017 04:05:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 05 Dec 2017 04:05:15 GMT
WORKDIR /tmp
# Tue, 05 Dec 2017 04:05:19 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 04:05:27 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 05 Dec 2017 04:05:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 05 Dec 2017 04:05:27 GMT
ENV LEIN_ROOT=1
# Tue, 05 Dec 2017 04:05:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7c0a708ad04eea4adf41a6fa3f51b5c896399b0e35754dc4489e4575bdd9d2`  
		Last Modified: Tue, 05 Dec 2017 04:10:16 GMT  
		Size: 8.7 MB (8674165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18bdc7e214fc8ec0aa2e2e5b08059acbcd75ef0e5b8f00adc642612256b3bda`  
		Last Modified: Tue, 05 Dec 2017 04:10:15 GMT  
		Size: 12.1 MB (12137467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3843e75e9bcaf27d6e859d87eed3f29b9fb699f5191bfb3afff8bc9521b97279`  
		Last Modified: Tue, 05 Dec 2017 04:10:14 GMT  
		Size: 3.3 MB (3341015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
