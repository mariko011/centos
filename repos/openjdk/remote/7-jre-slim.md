## `openjdk:7-jre-slim`

```console
$ docker pull openjdk@sha256:309f7e07770930bf9e587b0771c89e1e0c0bd19b69dfc49ee1dc906ce46baceb
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104048800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c02d0f27b1e1f1199d51dea8ce57d4164e7cd0dabd2aabdfd719a2c110c044`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:05:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:05:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:05:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:05:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:08:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:08:51 GMT
ENV JAVA_VERSION=7u131
# Mon, 24 Jul 2017 18:08:52 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 24 Jul 2017 18:09:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20055ea57cdd9023a55d53812c505f2807309828d7ebfc12e07d648c3a2fa47`  
		Last Modified: Mon, 24 Jul 2017 18:19:44 GMT  
		Size: 258.7 KB (258712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ba1fdad565b81e919ee6c089a3683eaa761c5cfe19663abdd6b9bb8a9bea36`  
		Last Modified: Mon, 24 Jul 2017 18:19:44 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d04cbc8329a17c4546e4ec235fa64aac43b87c23114b9d64f1ea5ea30633fd`  
		Last Modified: Mon, 24 Jul 2017 18:19:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a76e6fbcc6aec0f84598c52dab52851391de5acb69fc86a5d6057a7910d509`  
		Last Modified: Mon, 24 Jul 2017 18:21:37 GMT  
		Size: 73.7 MB (73667998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
