## `openjdk:7u131-alpine`

```console
$ docker pull openjdk@sha256:57815f2fdc171e813049f5ae2facee282106fe67ee27aaa50fe44a73bc171fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7u131-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:693a2c5dbfedf7a99fe9f544a3339532fa628b3b8d91641b697fe9fc1f63517d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79424480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8fe724657a714cf19cc09cb97d2c8f9b4d38adcb5ac6687df20306b837fc45`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 12 Sep 2017 23:48:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_VERSION=7u131
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Tue, 12 Sep 2017 23:48:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0028340879864dcf160cb49baa12ba5fe473833c8e40da6f0b5325a378b1cd3`  
		Last Modified: Wed, 13 Sep 2017 00:01:56 GMT  
		Size: 77.4 MB (77433839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
