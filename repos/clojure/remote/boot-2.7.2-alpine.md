## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:6cfd03ba0a333dc7ecfd5e101632ab23bdad88ff37144bd38921907c878382a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:cf928f300f8a87c47983f0ecd080b86db5c5860a9c1bb25e966010fa12c6d31b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108404464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bda4b48ccc463d5f40fc52e0937cfc9b8c9dceaaaafff5ca05361e6ecd46499`
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
# Fri, 01 Dec 2017 23:20:34 GMT
ENV BOOT_VERSION=2.7.2
# Fri, 01 Dec 2017 23:20:34 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 01 Dec 2017 23:20:34 GMT
WORKDIR /tmp
# Fri, 01 Dec 2017 23:20:38 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Fri, 01 Dec 2017 23:20:39 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 01 Dec 2017 23:20:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Fri, 01 Dec 2017 23:20:40 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 01 Dec 2017 23:23:15 GMT
RUN boot
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
	-	`sha256:affdb8d14e02680c2fc7283a24317a399bd4917972a486c53cf17bc348b50d35`  
		Last Modified: Fri, 01 Dec 2017 23:25:59 GMT  
		Size: 2.9 MB (2941551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61a9618f9465ce12374424908f637742ce9ad0a9982b25bc9bf94438224e8b`  
		Last Modified: Fri, 01 Dec 2017 23:25:57 GMT  
		Size: 6.7 KB (6651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc03e5466e00d58ca2bb0cf8886893b06a23cb13c17ff52485a035986f2435a`  
		Last Modified: Fri, 01 Dec 2017 23:26:02 GMT  
		Size: 33.4 MB (33410681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
