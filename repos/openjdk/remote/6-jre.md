## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:1c11120af6550fcf32608fa4ee232b5c14d10a896dded295dcc46ac81129b6a4
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97273345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0775312fafe0fd2847b003b465aedf0fe491417eadf87d9157672e0940b4ca54`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:31 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 20:54:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 20:54:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 21 Mar 2017 20:54:33 GMT
ENV JAVA_VERSION=6b38
# Tue, 21 Mar 2017 20:54:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 21 Mar 2017 20:54:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184513fd2c1a93bfadc46abe342b768f67a5a2830160b8a4b314391b0b4d56ee`  
		Last Modified: Thu, 23 Mar 2017 23:31:40 GMT  
		Size: 360.4 KB (360375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc9efce45b4bf285dae5dd5d44bd9bf352c77b5b03638b5c500d462d8d61381`  
		Last Modified: Thu, 23 Mar 2017 23:31:40 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b52db32b8e1addce9f14f8c1eaf45793e9637d017fdb17221a9451ddff7e587`  
		Last Modified: Thu, 23 Mar 2017 23:31:52 GMT  
		Size: 52.8 MB (52816522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
