## `openjdk:9-b177-jre-slim`

```console
$ docker pull openjdk@sha256:485cfa5a48a7cd6688f2597bd6131978f2123d0279113f40ae2d42e4f8bc8ab1
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b177-jre-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.0 MB (181997889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebb3e0b4f443b89bf0ece00bbc14ed54ab9f1964ade444fe5c5ce95a1b0a6fb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:21:02 GMT
ADD file:29ac02e338e0889dadc0275c186bf94e3e288d86fcc3cb2e133eba440b078128 in / 
# Tue, 20 Jun 2017 20:21:03 GMT
CMD ["bash"]
# Fri, 21 Jul 2017 22:15:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 22:15:03 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 21 Jul 2017 22:15:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Jul 2017 22:15:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Jul 2017 22:15:09 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 21 Jul 2017 22:15:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 21 Jul 2017 22:15:14 GMT
ENV JAVA_VERSION=9-b177
# Fri, 21 Jul 2017 22:15:16 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:17:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e26bcb77d89dcbb302f3c7f85283bcc5e74d43cba91630980920f7805f500587`  
		Last Modified: Tue, 20 Jun 2017 20:47:19 GMT  
		Size: 22.5 MB (22487842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6883c2bb9de9e893c2865fc03e8a856dcfabaf44b813e0b03e6346252a66b7`  
		Last Modified: Fri, 21 Jul 2017 22:36:54 GMT  
		Size: 266.6 KB (266577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2589742f6eda3b032f99979e77767e2a2a7ab60175ef0143e465c7184b04f070`  
		Last Modified: Fri, 21 Jul 2017 22:36:54 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eac54691b2f3021b3fe6fb96e0930aefcb40ef33d0d546b88cf9ca57656bdf`  
		Last Modified: Fri, 21 Jul 2017 22:36:54 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f173512ad885e04cc70923240af99a0b579ed097f1e49b3a6acedced2b1188`  
		Last Modified: Fri, 21 Jul 2017 22:36:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ac9d07f1be5ef07cfd5fbe55a54fe99b93c530871dce940bc23cf520527d3b`  
		Last Modified: Fri, 21 Jul 2017 22:39:41 GMT  
		Size: 159.2 MB (159242883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
