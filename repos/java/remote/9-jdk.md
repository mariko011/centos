## `java:9-jdk`

```console
$ docker pull java@sha256:5765808e80498c529e6bde4b7873b0d0f543460e4c9be2aa1e5cdfcba7fa28e6
```

-	Platforms:
	-	linux; amd64

### `java:9-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243409563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6102180e084c0d3ecc8d504d421bdb6fb183086be968d44ed78c11a7c0a994`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:55 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:40:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:dc1bde82dbdb2519006f9578e8408db12a546bf1b5ae03940b08f3f20ca8b3dc`  
		Last Modified: Mon, 17 Oct 2016 23:41:03 GMT  
		Size: 48.3 MB (48288494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af9bebd3ac92605303612e9f49a36146006a2e79a5854e87e6027cc653ba2f`  
		Last Modified: Tue, 18 Oct 2016 20:54:37 GMT  
		Size: 635.2 KB (635211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b889a51ee353190d16aa15308ec9241f3a2680f3f9dc9cd9bb3e24e3ec29050`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc026d2351a5dd01f4af953f724448819eb1b8c4365ead6c3d6fcc3853485e`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a699791b3056d24d6dea245cf78f739702bdb17da72776ca7098cf7436291f4`  
		Last Modified: Tue, 18 Oct 2016 20:54:57 GMT  
		Size: 130.7 MB (130709349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
