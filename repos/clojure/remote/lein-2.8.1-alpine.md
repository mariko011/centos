## `clojure:lein-2.8.1-alpine`

```console
$ docker pull clojure@sha256:3a8e7ac6b518df58b7e78f170a5a4e527e260000983bccfdd6ba35e6e2d20ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.8.1-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:ac98f42e2d4aca45b35a2f491345e4abcf50cce63f745429a124e157aac71d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94464493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c6e2e137351d81d8bfac68cadcf9fd61db992ac679da7ad2b3bf902a9af12b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:19:41 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Fri, 01 Dec 2017 23:19:42 GMT
ENV LEIN_VERSION=2.8.1
# Fri, 01 Dec 2017 23:19:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 01 Dec 2017 23:19:42 GMT
WORKDIR /tmp
# Fri, 01 Dec 2017 23:19:46 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Fri, 01 Dec 2017 23:19:58 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 01 Dec 2017 23:20:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 01 Dec 2017 23:20:02 GMT
ENV LEIN_ROOT=1
# Fri, 01 Dec 2017 23:20:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2d1b37d62c9766f9e29826b75b5c76407fe3a4681f9bd8ef633bd7c9f07003`  
		Last Modified: Fri, 01 Dec 2017 23:24:24 GMT  
		Size: 6.9 MB (6936678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e40acf008a1720925d3a7fcba12a8dbb6efc39a77f8917a0684167d0993d1a8`  
		Last Modified: Fri, 01 Dec 2017 23:24:24 GMT  
		Size: 12.1 MB (12141202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f9154411c387e76202ee78eb9da7b97fdab4159ec6cb66791d616556c52ecf`  
		Last Modified: Fri, 01 Dec 2017 23:24:23 GMT  
		Size: 3.3 MB (3341032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
