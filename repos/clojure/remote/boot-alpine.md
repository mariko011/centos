## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:ee948a37b332b70b63cdeddea79c87a4f3a6f68ab68d7653a9d866e200a727a7
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86610021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5212f5ecf8ce0b643057a2ab7d4d4509b2019de57459aa4e322e1ae9927b85`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:58:01 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Fri, 03 Mar 2017 23:58:24 GMT
ENV BOOT_VERSION=2.7.1
# Fri, 03 Mar 2017 23:58:24 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 03 Mar 2017 23:58:24 GMT
WORKDIR /tmp
# Fri, 03 Mar 2017 23:58:27 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Fri, 03 Mar 2017 23:58:28 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 03 Mar 2017 23:58:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 03 Mar 2017 23:58:29 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 04 Mar 2017 00:06:32 GMT
RUN boot
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791070d67684cffcb95e1a2c191601f09758215e6317f5b806585a2d5f3ceb47`  
		Last Modified: Sat, 04 Mar 2017 06:46:59 GMT  
		Size: 1.6 MB (1606805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8f95428f75e2a846d6403728e529f618d9540048f785454aacaac10aaf8873`  
		Last Modified: Sat, 04 Mar 2017 06:46:57 GMT  
		Size: 6.3 KB (6329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2844b7b7d53f58e79f01d15c2050178d8dc3e16b6eeabc7465f83df31f034385`  
		Last Modified: Sat, 04 Mar 2017 06:47:02 GMT  
		Size: 33.3 MB (33322634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
