## `java:7-jre`

```console
$ docker pull java@sha256:45fc6533d8b2647e860a70d77a7f1b089ef4bd08c4af111efa3f09b14014daf3
```

-	Platforms:
	-	linux; amd64

### `java:7-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148161281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7d0c57b9574d8b4ccf1a01bdcd22f2f9f32d4f632c7c2a4aa471af25369c28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:30:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:30:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_VERSION=7u111
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 20 Sep 2016 16:31:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d498b9713add59b4abadeba59d820dc875924913669266c242c29a8b8e1d9`  
		Last Modified: Wed, 21 Sep 2016 22:57:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd673cdbe71463679cafe30cfd8fbe8f57ac586f83fa3703e6aca0c608ff1a5`  
		Last Modified: Wed, 21 Sep 2016 22:57:29 GMT  
		Size: 77.7 MB (77712374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
