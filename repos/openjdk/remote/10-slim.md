## `openjdk:10-slim`

```console
$ docker pull openjdk@sha256:b9376bec530a521210b82a63704373ec72b9220d9174714a9d814de7a592f531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `openjdk:10-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:38a3eec12f28b362f647647b6858c9b32a1ea3c5e41da986049c1a327b06a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.5 MB (281496142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21194f22c358d6ae18693dfe5348d3d0d1ddb1ff90bf6c7938a98099172adb3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:25 GMT
ADD file:f105fa3aa445df54e1e78b4ba607c2724f1dc586b1e060c482c798966d97c635 in / 
# Tue, 12 Dec 2017 01:43:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 20:24:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 18 Jan 2018 20:24:13 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jan 2018 20:24:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 18 Jan 2018 20:24:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 18 Jan 2018 20:24:16 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 18 Jan 2018 20:37:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 20:39:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7dadf3208611439968d74844a1c976f4664c77dbe43c9e5b63a825002a5cd02f`  
		Last Modified: Tue, 12 Dec 2017 01:51:57 GMT  
		Size: 25.2 MB (25200134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349fcab9b82f6a693cf54bf9000507a4d7f9156532a75463f72361a998cf0067`  
		Last Modified: Tue, 12 Dec 2017 05:56:46 GMT  
		Size: 461.4 KB (461353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701eb131c0fa109136fbeb16463be04da3eb927af807bf1e8ef59dd7845cfa2a`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed0d59c5136e482909a148e9f903702243e76483db269f5f8467c67b1d6bd7e`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348cf3a40bd34f3548984028ade1190d13604c41bee3dbd03208f25e2dccd1f7`  
		Last Modified: Thu, 18 Jan 2018 20:54:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416c2c6b52f759937294ff6dcf12aa999f24f86dddcd43628cc7069158ef5662`  
		Last Modified: Thu, 18 Jan 2018 21:04:17 GMT  
		Size: 255.8 MB (255834050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a53b4db84d2c17189472634f4a2c4f9b9c44508d620355e8e66da65cfc1121d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247942262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf2bd96f53b4c98118ff7c2ac8d2da22224e44806d9d353694f28a67fedb40`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 13:31:16 GMT
ADD file:eb741b8fe83ce46b665a7bdd2a99528846dd7547771a65092065e4bc8e15c367 in / 
# Tue, 12 Dec 2017 13:31:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:22:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 02:25:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 02:25:09 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 02:25:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 02:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 02:25:11 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 02:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 02:29:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3ecac93191c5706244513457d41a41cc88efb0c7ceee2302e73b23e9ec168fae`  
		Last Modified: Tue, 12 Dec 2017 13:43:05 GMT  
		Size: 21.7 MB (21702273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1188f6ec9d3ba1e73240169767a8a14ae35c21abcbe369aa29a1dc5733d0bd65`  
		Last Modified: Tue, 12 Dec 2017 15:39:04 GMT  
		Size: 437.4 KB (437418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c5cb78f0289d85a609977d97bc771292fa67003342738ed7f40670b7750f45`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5c4b00891efeee4fb0e8b1d518023212514dac7097a6338ff5d1463bfeb1bb`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d4d7aab3f2e9861c83c9cb2dad8b896f7d29f35421d0b86a22925b5f6bb6e9`  
		Last Modified: Fri, 19 Jan 2018 02:34:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77107e57831fb260a26fc4025817ec3dc96394718cceae42b7edc25153a451`  
		Last Modified: Fri, 19 Jan 2018 02:37:49 GMT  
		Size: 225.8 MB (225801968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
