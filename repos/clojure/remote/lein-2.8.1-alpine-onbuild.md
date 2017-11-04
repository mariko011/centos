## `clojure:lein-2.8.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:d37d3e2363eafec3d6dd49b644a837c3aa695e919cffb36c4e277ff08f7b3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.8.1-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:aeebbc0929dda65abab78008afd756f25ccd03611e3a60d40e4a1e4401c0ccde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94461836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d273516e1d17f0f219d262f04affd3d264e5ed884ee9e7daee7dc38fa658e70a`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 06:12:10 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Sat, 04 Nov 2017 06:12:11 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 04 Nov 2017 06:12:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 04 Nov 2017 06:12:11 GMT
WORKDIR /tmp
# Sat, 04 Nov 2017 06:12:16 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 06:12:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 04 Nov 2017 06:12:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Sat, 04 Nov 2017 06:12:30 GMT
ENV LEIN_ROOT=1
# Sat, 04 Nov 2017 06:12:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 04 Nov 2017 06:12:39 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Sat, 04 Nov 2017 06:12:40 GMT
WORKDIR /usr/src/app
# Sat, 04 Nov 2017 06:12:40 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 04 Nov 2017 06:12:40 GMT
ONBUILD RUN lein deps
# Sat, 04 Nov 2017 06:12:40 GMT
ONBUILD COPY . /usr/src/app
# Sat, 04 Nov 2017 06:12:40 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dfc341378ba676ccbddb51968e027a550dbcc71c38630d557707d14714d34`  
		Last Modified: Sat, 04 Nov 2017 06:17:56 GMT  
		Size: 6.9 MB (6934097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa49e4b10a17809eb36fa94479f2131d7f3e0e72595fe918e0690e8e9c9a2e58`  
		Last Modified: Sat, 04 Nov 2017 06:17:55 GMT  
		Size: 12.1 MB (12141198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2453f0494e00cbec6535bde52d4585d688ca723ab7b2b0031655b07022ce54`  
		Last Modified: Sat, 04 Nov 2017 06:17:54 GMT  
		Size: 3.3 MB (3340976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57eb368083de5258d4bc7b072d5b554c6dfaab2eb3bb090968bb888b0716b3b`  
		Last Modified: Sat, 04 Nov 2017 06:18:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
