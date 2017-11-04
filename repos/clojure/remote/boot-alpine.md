## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:49bcdc09b126508c55c395b6f77cd65a8b30a16bd6017a839642a0d086881260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:5890cd14a7e59c265348b4c0694a74316e7134b79d69e25ae0600dd2e070e1ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108401925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f35954af81ddbf8c89a0baa6d34d57d9035326717c705733844e69c920dd568`
-	Default Command: `["\/bin\/sh"]`

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
# Sat, 04 Nov 2017 06:15:20 GMT
ENV BOOT_VERSION=2.7.2
# Sat, 04 Nov 2017 06:15:21 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 04 Nov 2017 06:15:21 GMT
WORKDIR /tmp
# Sat, 04 Nov 2017 06:15:25 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 06:15:26 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 04 Nov 2017 06:15:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Sat, 04 Nov 2017 06:15:26 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 04 Nov 2017 06:16:58 GMT
RUN boot
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
	-	`sha256:9b05821de6033201c641e4fc2565ef002d7afbfe2e751d0c7623ac28876e9f8b`  
		Last Modified: Sat, 04 Nov 2017 06:18:36 GMT  
		Size: 2.9 MB (2939541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d2c4c2818de0fe216e6ac311c2ef3b7728ec6cdc5ab00d1cd40718378f1fa2`  
		Last Modified: Sat, 04 Nov 2017 06:18:36 GMT  
		Size: 6.7 KB (6652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0d4c2bd71ec77a10725785291c1adb2743dc9270970dbe26653dbd9129081d`  
		Last Modified: Sat, 04 Nov 2017 06:18:39 GMT  
		Size: 33.4 MB (33410293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
