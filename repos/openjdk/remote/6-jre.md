## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:61e31a9fb9ae7f7189706c79b1c85b3f427c8cebb5cb94032d915449db825b48
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98547663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7dac70a5aaf0fb085cfe926ceec72b94b3bb14c2165f5828f189277767677a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 02:16:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 03:54:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:54:36 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 03:54:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 03:54:40 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 03:54:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 03:54:42 GMT
ENV JAVA_VERSION=6b38
# Fri, 07 Jul 2017 03:54:43 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 07 Jul 2017 03:54:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847af1098f35d70519db6b09652f608f05097baa9631fa719f156d19da80fad8`  
		Last Modified: Fri, 07 Jul 2017 05:59:14 GMT  
		Size: 360.7 KB (360683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29276d9b483409172e9bca6c6d2f1f44ff2ea77e0cc4aadf28717dcbb68b60f`  
		Last Modified: Fri, 07 Jul 2017 05:59:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33dc940f8cf7f17818c8a9abe0a512029c500231dea29258ff82a68edfb55778`  
		Last Modified: Fri, 07 Jul 2017 05:59:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732087c68bd0a4b0bd9a0ee6574906a2e7fa7a340cadcb2fbe4e36ced4c5ffcd`  
		Last Modified: Fri, 07 Jul 2017 05:59:22 GMT  
		Size: 53.1 MB (53134200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
