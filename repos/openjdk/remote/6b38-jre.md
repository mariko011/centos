## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:9088bd13eb2b1b1dda0c00ff966e9b7f984526ea3d755d7a52b0330d5d001649
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98549749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b99543b74b5cfff63e3655bbccd0b8f5dd65c1bffb14b3efab167277413f01b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:51:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:51:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 01:51:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 01:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 01:51:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 01:51:27 GMT
ENV JAVA_VERSION=6b38
# Fri, 23 Jun 2017 01:51:28 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 23 Jun 2017 01:51:39 GMT
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
	-	`sha256:e6fef330bab08d338006694718dbe2d64ff6d05af1077c94133de4fd99f45e21`  
		Last Modified: Sat, 24 Jun 2017 16:53:39 GMT  
		Size: 360.7 KB (360676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1feeacbe26f6b3dcd5f301782afd6f0b5b3e95c1d7d81afa7ff110ad52724ef`  
		Last Modified: Sat, 24 Jun 2017 16:53:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ab9d16af5b9f0c09b22288b659042db7230d52f719f1d38d5bc78ab22b5f39`  
		Last Modified: Sat, 24 Jun 2017 16:53:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10102a47542ace223ca6528027a7d6fcdadb7820205941a54d7547b3d0f63153`  
		Last Modified: Sat, 24 Jun 2017 16:53:46 GMT  
		Size: 53.1 MB (53136293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
