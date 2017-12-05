## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:1efa7dd6c4bc20e2880248bdcc19b2fdfb04e1cbb880bc5cc11f5ad57fa23806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:892f12aa2a8d6abe7086a4eb3568f4de2ed62bb9ac9484b4851f2b2047ae8830
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108755608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8970861bd20ec8552008967ee864fa4c38b70bfb918df898a2af9f732dd1614e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:05:15 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 05 Dec 2017 04:05:47 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 05 Dec 2017 04:05:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 05 Dec 2017 04:05:48 GMT
WORKDIR /tmp
# Tue, 05 Dec 2017 04:05:52 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 04:05:53 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 05 Dec 2017 04:05:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 05 Dec 2017 04:05:54 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 05 Dec 2017 04:09:50 GMT
RUN boot
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69c25ea50beed04d17bbc3b923a356e321d4373ebc9df6cb1985e39fa26f314`  
		Last Modified: Tue, 05 Dec 2017 04:11:10 GMT  
		Size: 3.0 MB (3045482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a511b0888528307b28680884382c2397ef98255aabbf1a8fc15a2fc4e864c9`  
		Last Modified: Tue, 05 Dec 2017 04:11:10 GMT  
		Size: 6.7 KB (6657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a54d0a584c59488021377683640313641ce5ab362c09dc04e4ce38eb75430b`  
		Last Modified: Tue, 05 Dec 2017 04:11:13 GMT  
		Size: 33.4 MB (33410443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
