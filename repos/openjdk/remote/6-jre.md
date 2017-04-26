## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:82dbdd4090eed2670bd30a0745fe58d083b30aface1d5fca61c48a0a70db2499
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98578725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefa59a91ddf0e057bb5b590d5d60b5ac0e83efe888d874d29365cefb8ec9219`
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
# Mon, 24 Apr 2017 23:39:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Mon, 24 Apr 2017 23:39:37 GMT
ENV JAVA_VERSION=6b38
# Mon, 24 Apr 2017 23:39:37 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 26 Apr 2017 23:06:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:4b1f3a59eaf9db17ae17d90c11b66ecb95e1b831e9e8dbf58a026ae8c27d7397`  
		Last Modified: Wed, 26 Apr 2017 23:14:33 GMT  
		Size: 53.1 MB (53141628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
