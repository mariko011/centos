## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:fc6d08653d7f1062118cac17dbedc9b6055f5be4c88d7915bcf686135188becf
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97283872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395e0312f5e55f5df05290f2b4232c88262ea86d1ce4cb0f15800b84b773e463`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:10 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:52:12 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:52:12 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e59ae05cd6e039a8ef6cd5a536b416c0b7f9107e5ba08b877b93a2ef53f4d8`  
		Last Modified: Wed, 14 Dec 2016 03:03:04 GMT  
		Size: 360.2 KB (360177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f51925f915a0f73d9889420c126924eecafbdff43972efdad641e016870de9f`  
		Last Modified: Wed, 14 Dec 2016 03:03:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190d8b78badd121fd666067ebba42ed1dfe1f0393df4e39f3d71c0796069b7b5`  
		Last Modified: Wed, 14 Dec 2016 03:03:19 GMT  
		Size: 52.8 MB (52816098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
