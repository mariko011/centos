## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:311302e3934480a0f2648ead681c9cbafe94166f749b932fb3e7ce015869f20e
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97286293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc4c826c29c5f6d7819a3f05830a8bc84da1f1db2ea6db618fa569210d4c8e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:27 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 28 Feb 2017 03:41:28 GMT
ENV JAVA_VERSION=6b38
# Tue, 28 Feb 2017 03:41:29 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 28 Feb 2017 03:41:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9804d437698c011aa6c032d3b06c68ea7231ce91edc115e04e041972287fa`  
		Last Modified: Thu, 02 Mar 2017 02:40:06 GMT  
		Size: 360.4 KB (360381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064c2d486c4c6361a734751468a29fbbce66a9e36be75b14493ef75f28e634f`  
		Last Modified: Thu, 02 Mar 2017 02:40:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5863506809853bbbec1780c346eb63b5380f31bb47e05f5e689b1a70e3dfd68`  
		Last Modified: Thu, 02 Mar 2017 02:40:17 GMT  
		Size: 52.8 MB (52816937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
