## `openjdk:7u151-jre-alpine`

```console
$ docker pull openjdk@sha256:f19dce995a0b69224c9fc8102ce9dc167ee252db84a1368ad2aa6211647044b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7u151-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:9afe8c3f66b08189a9b3f24f2e011e694be2da542dfb3f7c9fbf16a3d246bf2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63161935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef2f9059549a840aaa7e746e41dcfa67fc456ff7e7be5d5e634992a14d04dde`
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
# Tue, 05 Dec 2017 03:43:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 05 Dec 2017 03:43:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 03:43:13 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 03:43:14 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 03:43:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:f427a59481705fe49b6f567840e62d181cc4ba9325af3b1648672165b1386b6a`  
		Last Modified: Tue, 05 Dec 2017 03:45:12 GMT  
		Size: 61.1 MB (61096785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
