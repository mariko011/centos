## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:cf5846e403a891ed6dcc8a9a86974fb1aa58d8c44ddf7d4bd1484e088f37b1de
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108229988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e752cc38599bf5a198a8c83898cd36ba995252ad44b2cc585251000e5f3ee6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:01:37 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 11 May 2017 00:10:40 GMT
ENV BOOT_VERSION=2.7.1
# Thu, 11 May 2017 00:10:40 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 11 May 2017 00:10:41 GMT
WORKDIR /tmp
# Thu, 11 May 2017 00:10:44 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 11 May 2017 00:10:47 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 11 May 2017 00:10:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 11 May 2017 00:10:48 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 11 May 2017 00:12:52 GMT
RUN boot
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8f8e530827aff593f28fe39c0fcdbc2946b662f228e42a935f2fff8242e678`  
		Last Modified: Sat, 13 May 2017 15:06:06 GMT  
		Size: 2.9 MB (2915538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8be8d83eff1d1106107a3e81de42425dbd189f26b8cda98167fdebbe756034`  
		Last Modified: Sat, 13 May 2017 15:06:06 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f46c6aa4a5ccfd642f647d79d5d3b88b3c985f7a980183ba8a41a2a1ca340d5`  
		Last Modified: Sat, 13 May 2017 15:06:08 GMT  
		Size: 33.3 MB (33335818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
