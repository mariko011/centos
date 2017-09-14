## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:721045a315e343f234e9e0fa7e5b522c9f59f7701892dfd4c8347630666ba4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:5aad6a2e61596e5c43473e22cd213126f2cb870ccfb98fedf7205dc768892c77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108376828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd4e809c0315c82d62cdc499399b042b38d3f2272c968cad49c43933b7cc956`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:15:35 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 14 Sep 2017 06:15:35 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:15:35 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:15:40 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:15:41 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 14 Sep 2017 06:15:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:15:42 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 14 Sep 2017 06:17:12 GMT
RUN boot
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccd702bb1f1431a57482dd2dd1bc40c97c81dcd67abcd7644b508a9b08646b4`  
		Last Modified: Thu, 14 Sep 2017 06:18:55 GMT  
		Size: 2.9 MB (2917938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272ba519b4889704a505a82fe08069aa68d147597080d6841471d318151d8ae`  
		Last Modified: Thu, 14 Sep 2017 06:18:56 GMT  
		Size: 6.7 KB (6655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47e73ef99532708069fd6fbcac924311fd9efba6eba726727293d391d761f6e`  
		Last Modified: Thu, 14 Sep 2017 06:18:57 GMT  
		Size: 33.4 MB (33410232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
