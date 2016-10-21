## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:d68bb952732542db5a14e510b7a0d52fa98b79dae21cba1218e5c5bf24fd87ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148188341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359322a7bea06c91d49f066665098864463f200e07432ab5b8dbf96d01981bcb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:10:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:10:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:10:26 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:10:27 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:11:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dfd23791b53c2fae237e583621203cd5e4434fcdc0254d94ca83b147286666`  
		Last Modified: Fri, 21 Oct 2016 20:11:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0aca12f0dd9d53ec59f50958e2a10bbacbdc29757327b216c13f6ca8214f4c`  
		Last Modified: Fri, 21 Oct 2016 20:11:31 GMT  
		Size: 77.7 MB (77740287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
