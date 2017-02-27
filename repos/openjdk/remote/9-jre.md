## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:2af92946d146971cb68bc4f66abb41e515e79f3a430c595e3063df75f60d374d
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222422243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2597e0568124e74b710e44629aa9599988a89343d661c8d8270c4bdde15c4d87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:51:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:51:49 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 18:51:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 18:51:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 18:51:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 27 Feb 2017 17:59:24 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:59:25 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39200d8f67516fdcbeec7e6383c4ce3eae294f926dc7c594c52d5ec4ffa4d6a4`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 618.2 KB (618221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ffd7d6069960efc779ed0c475cf9f5e4785cbc62b465c4e05dae3b77475d89`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a501d73e8fd8ef3a19133e3355930596f4dbda50c33419f46f51b091141228db`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be5c686fa7163e893a524170ab5b8fdcf2f9ba74d2044b540e85d27809be147`  
		Last Modified: Mon, 27 Feb 2017 18:11:58 GMT  
		Size: 154.8 MB (154769603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
