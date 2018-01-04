## `openjdk:7-jdk-alpine3.7`

```console
$ docker pull openjdk@sha256:6dd78552f404699ba95a8a3d585367036d8ef738ff1109c55db7079e794402a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk-alpine3.7` - linux; amd64

```console
$ docker pull openjdk@sha256:8b29a30c71f4447e73395b4123e0892f0f8b7a7e4312c92b8ae8c376fa2b390c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79469379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd442f82e53d7b9b7bfd7f0005120baf09ae82e57ad0385d0cecb311122841cc`
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
# Tue, 05 Dec 2017 03:42:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 03:42:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 03:42:46 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 03:42:46 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 03:43:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:f5176a718d97095c6e24a35aff7276746d1ef705923fe2c0e2775e0b312029e7`  
		Last Modified: Tue, 05 Dec 2017 03:44:30 GMT  
		Size: 77.4 MB (77404229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
