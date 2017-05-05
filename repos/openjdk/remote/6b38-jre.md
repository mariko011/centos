## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:0b6507574faabc072985ca362f582be22fb821e9d41081272dfec64d5f2a253f
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98578710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b0e34665cf2df93529ad2ababa57a3b53548df1be6f36a93c79ec320220cab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:39:34 GMT
ENV LANG=C.UTF-8
# Mon, 24 Apr 2017 23:39:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:22:30 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:22:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:22:32 GMT
ENV JAVA_VERSION=6b38
# Fri, 05 May 2017 22:22:49 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 05 May 2017 22:23:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1469c39010f9f4f63411f7eff7d9ef02b32c4b589bcb36ff8927f78476f42c6f`  
		Last Modified: Tue, 25 Apr 2017 00:47:08 GMT  
		Size: 365.9 KB (365871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926c333b33a7b8ec590d2eabe8b2dbbf26f1c45ea4ca30f8bf51069f4a6c7352`  
		Last Modified: Tue, 25 Apr 2017 00:47:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae41926788ea75c40825dbfd576e91724c9a8cbb08c69f55b91234d4e80cd1a`  
		Last Modified: Fri, 05 May 2017 22:47:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7db5c53c83fca2502572371777ab5ee31870854af8a54eea496b3e8aaeca108`  
		Last Modified: Fri, 05 May 2017 22:47:22 GMT  
		Size: 53.1 MB (53141483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
