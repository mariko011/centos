## `openjdk:9-b177-slim`

```console
$ docker pull openjdk@sha256:966e04108d4955ee50becd21089e2bf27c3ebcc30ea87452409d9047af86a4d9
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b177-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182338452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96a502d7cf63f3a478f73748ce63d4b505a70cf6d32f89de3370f2bbda9318a`
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
# Fri, 21 Jul 2017 22:15:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:8f8743131d43c6286ee79e715acc6f75d9dab71daa6c969961a0ef99cced9a31`  
		Last Modified: Fri, 21 Jul 2017 22:37:21 GMT  
		Size: 159.6 MB (159583446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
