## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:636e65b98d24d664fc25c327b3bac037439d7568836aa56a699f74abe407e8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:6e4243e2466422998eb6a99849a1868216724719bb57c6ba0beefb04cc178446
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108402362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe00d2d0c01b347ab299bd6094a098aede0d90cbfc544f106829fb0b4c196bc`
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
# Thu, 26 Oct 2017 04:38:44 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 26 Oct 2017 04:38:44 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 26 Oct 2017 04:38:44 GMT
WORKDIR /tmp
# Thu, 26 Oct 2017 04:38:48 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 04:38:53 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 26 Oct 2017 04:38:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 26 Oct 2017 04:38:59 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 26 Oct 2017 04:41:23 GMT
RUN boot
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
	-	`sha256:a2d3643880b19e040a116ad25d86e8d4d459c35b98808fcc8fd7f6669d129f06`  
		Last Modified: Thu, 26 Oct 2017 04:41:47 GMT  
		Size: 2.9 MB (2939546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9010c58fb970417dcf5c507d8fe100a83dd299944cde38f7c208352ac204b26d`  
		Last Modified: Thu, 26 Oct 2017 04:41:46 GMT  
		Size: 6.7 KB (6650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4986155ca533f03d257a09e757a09e6baa7774b9287d1a205aad7f29d3a8d1`  
		Last Modified: Thu, 26 Oct 2017 04:41:49 GMT  
		Size: 33.4 MB (33410678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
