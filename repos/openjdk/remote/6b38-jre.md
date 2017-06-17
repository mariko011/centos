## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:b864d2f95720ebf6de94643cf93347e9032ab731266f556ebceb763be5d1a157
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98550733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e1a91d3ddb924153ba025687166c096abc8b6969dc2f9880a5bbc8ab150ffe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:51:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:51:52 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:51:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:51:55 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:51:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 16:51:57 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:51:57 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:52:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24913414cfd2db2274458103a6cc08764137de6032792cc8c1983b718b462cb`  
		Last Modified: Wed, 14 Jun 2017 17:46:39 GMT  
		Size: 360.7 KB (360689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0a1f6bcf79c353f9435a9f9308d4a53f1c6bf4a7c1df1a8d96f64daaa503`  
		Last Modified: Wed, 14 Jun 2017 17:46:40 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5231e6b679683d3e6f9effe05132681cd208861aece8debabc7a3e41269d6d7`  
		Last Modified: Wed, 14 Jun 2017 17:46:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c90fec99a0a8036ed0980cd768acf972cb9cf53a436af8ad9408c2d4049a58c`  
		Last Modified: Wed, 14 Jun 2017 17:46:48 GMT  
		Size: 53.1 MB (53136104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
