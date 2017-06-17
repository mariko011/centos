## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:a39e83964003d8ac96d4ad7740c0ce0a9ca84fc1d18157c7b288a745f9de0d9d
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151092295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f1dfbb2a1452f5538e2daa6ef9c6b7edc849d020196212ca99cf1d71a991ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:23:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:23:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 17:23:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 17:24:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9c588128772812f193d95bcf367d7b243e1cab14310eae2b228671b4ff0cd`  
		Last Modified: Wed, 14 Jun 2017 11:02:59 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f30f77b2d27a75b290e26c22d1328b194841516eeb2ad3ec3d8e9e34a41f3`  
		Last Modified: Wed, 14 Jun 2017 11:02:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf3e07a1b0ebab94df5f0e84bffed0cc1ce3136512a25dd04d99f12ecc6c937`  
		Last Modified: Wed, 14 Jun 2017 11:03:13 GMT  
		Size: 78.7 MB (78692266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
