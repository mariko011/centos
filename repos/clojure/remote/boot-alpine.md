## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:4a6e8565eafce529f285a4aa81fb6767044894a6b19d3382143436fd83eee729
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108367028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6485ab76d4a8afbb481a3713de553250c74eee6c9f39d02780fe3736c8de66fa`
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
# Mon, 21 Aug 2017 16:55:41 GMT
ENV BOOT_VERSION=2.7.2
# Mon, 21 Aug 2017 16:55:42 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 21 Aug 2017 16:55:42 GMT
WORKDIR /tmp
# Mon, 21 Aug 2017 16:55:50 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Tue, 22 Aug 2017 18:15:05 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 22 Aug 2017 18:15:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 22 Aug 2017 18:15:05 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 22 Aug 2017 18:16:37 GMT
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
	-	`sha256:bfdcb49dce1599bd0b0a990c87200ba79a5bdd40653ade0557cc16aedc996685`  
		Last Modified: Mon, 21 Aug 2017 16:59:22 GMT  
		Size: 2.9 MB (2916214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905ecc02262b435c1ed0c7c1b83baf90286243c3f31c6726d55997162812f1f4`  
		Last Modified: Tue, 22 Aug 2017 18:18:28 GMT  
		Size: 6.6 KB (6638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d316ffd2fc12c400de34263902c6d23315432fba0ec6c94544e923ffed57bba2`  
		Last Modified: Tue, 22 Aug 2017 18:18:30 GMT  
		Size: 33.4 MB (33403363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
