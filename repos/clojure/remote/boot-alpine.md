## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:9b0b6f2614c0241612eeedea4f011758f553298361b253aa8c07cbeda8cd7193
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108299712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243f8619ab4954b1c6ec9e37772f0cf9230174ef0aacd2a6aa692db53b1420b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:47:46 GMT
ENV BOOT_VERSION=2.7.1
# Thu, 29 Jun 2017 01:47:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:47:48 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:48:19 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:48:45 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 29 Jun 2017 01:48:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:49:19 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 29 Jun 2017 01:52:56 GMT
RUN boot
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cd8b2dc9a15b1dac4e994ef5f04bcd8e45c6333c3f1b2ec4698f09e7c5d8f8`  
		Last Modified: Fri, 30 Jun 2017 15:58:39 GMT  
		Size: 2.9 MB (2916420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25354a85696db3a82238977896c674381e341963b8a9ecc894cb9b6ddefd398`  
		Last Modified: Fri, 30 Jun 2017 15:58:38 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb153e721ae1a45479f65921afbea975a453b7529acbdf0998ef42a119cf282`  
		Last Modified: Fri, 30 Jun 2017 15:58:42 GMT  
		Size: 33.3 MB (33336132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
