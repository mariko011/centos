## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:9a2bb2e750b7df561f65c42698f5feb3dd20034bdfa3c6acf034cbdc209e9584
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97499447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469910c09ac0fc4c01660548434425492a4e690f710c173c10048fabd808eca5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:33 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:50:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:50:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 08 Nov 2016 18:50:34 GMT
ENV JAVA_VERSION=6b38
# Tue, 08 Nov 2016 18:50:35 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 08 Nov 2016 18:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575e21780826ec55d18d4d10b5138169f8d087a62ef37ffa7a7ca195e3e737`  
		Last Modified: Tue, 08 Nov 2016 18:58:21 GMT  
		Size: 360.0 KB (360037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d17adb59f61603837a927ed328e3aaa2cac53e629eeb8d253b282ca780b476`  
		Last Modified: Tue, 08 Nov 2016 18:58:20 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39c8695ad1f5e305a0387d6fcee6d99270863a9645dcf941cdeaccb8ad52940`  
		Last Modified: Tue, 08 Nov 2016 18:58:31 GMT  
		Size: 53.2 MB (53180741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
