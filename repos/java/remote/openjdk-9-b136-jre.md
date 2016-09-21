## `java:openjdk-9-b136-jre`

```console
$ docker pull java@sha256:b4c40ee1b69c29667adb47ae1709c2cef99c3b1fe1a239ea6b6fd8c1b32795fb
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-9-b136-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193233299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289a58e581008e0ee27c690354274d20e6e2ca4c08b04077b5674c5f0c36cee3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:55 GMT
ADD file:e1f71b04b8aa93bcaa59d04d2b86b5bbbb572eda80ef31b43328c5702ce3bc6d in / 
# Mon, 19 Sep 2016 17:42:55 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:50:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:50:44 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 20 Sep 2016 04:50:45 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 04:50:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 04:50:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 21 Sep 2016 22:51:24 GMT
ENV JAVA_VERSION=9~b136
# Wed, 21 Sep 2016 22:51:24 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Wed, 21 Sep 2016 22:51:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:dca6e68f53db97e624204489d149932fd6643c0f737cef6a6531dc870e2b9c3c`  
		Last Modified: Mon, 19 Sep 2016 17:46:11 GMT  
		Size: 43.2 MB (43235728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af28ad81fae6afb462f86ef33bee9f301f34dd27a9192d84c69ec4475910959`  
		Last Modified: Mon, 19 Sep 2016 17:56:58 GMT  
		Size: 20.5 MB (20547434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b81bf78c81fe3a6f6ec31a94bd218af9c0f6cb7ca0ae68c9cbfd4c7c4d290bc`  
		Last Modified: Wed, 21 Sep 2016 23:04:38 GMT  
		Size: 559.1 KB (559090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6ba5b0d8607e553ed739a8082d2e0631904a981f5d28a97a1003f223355a6d`  
		Last Modified: Wed, 21 Sep 2016 23:04:37 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74a62b1bf5d7f2badfbcfbc022a8fda011fc8cd01ff6bba98816f90013de0c5`  
		Last Modified: Wed, 21 Sep 2016 23:04:37 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5718a4c5be835a4364593435a58731a09d315c0e3fbeca0a22448fd9976e3b`  
		Last Modified: Wed, 21 Sep 2016 23:04:57 GMT  
		Size: 128.9 MB (128890588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
