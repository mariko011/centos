## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:47b76a2e0b7a84a57bff253e2b7aa25d7b6f7be4b012937c4c83f17327273c64
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195492834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b76efc7cb30171cbe01a13901b083b9f76a774822b4b4f1381cd30b305427d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:41:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:41:33 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:41:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bb9b47ad60678a0250ff57c57bd70f3ca0f4d34a361905b0d5a502816051c4`  
		Last Modified: Tue, 18 Oct 2016 20:56:30 GMT  
		Size: 604.0 KB (603972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00667e41a675e055ce48c612623ffabc8aef6caf7f1eefff8b90966eac31791`  
		Last Modified: Tue, 18 Oct 2016 20:56:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6164f281e39e5202711be4657847d5a71eec419b1dac7ed86177da9633d7eb4`  
		Last Modified: Tue, 18 Oct 2016 20:56:29 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb6e6a4a3ce4c73b21f3663fda7b5755dcf19b2fe1b977614b020239616d42e`  
		Last Modified: Tue, 18 Oct 2016 20:56:49 GMT  
		Size: 131.1 MB (131112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
