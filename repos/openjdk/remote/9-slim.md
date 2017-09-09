## `openjdk:9-slim`

```console
$ docker pull openjdk@sha256:7dd51272a3ba8b193edbc963ec16869ed6a72a3e87337ae68a9bb1152bdd4bbd
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.6 MB (181565175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a16de150bd423d80e53bd07062b2b66ef52c47b48a1539261bea90f9899bd0d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:37 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Thu, 07 Sep 2017 23:06:37 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:58:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:58:03 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:58:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:58:05 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:58:05 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:58:05 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 08:58:06 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 08:58:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:58:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab98f2ee4ec292ed66852375d9ea89505547b3ab170128c165c65a90b7f7352`  
		Last Modified: Sat, 09 Sep 2017 00:38:42 GMT  
		Size: 270.9 KB (270938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c213aa5eb4331d20d1ed4cdc14b70eb890752a7223364a8a305343747ddb2f6f`  
		Last Modified: Sat, 09 Sep 2017 00:38:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325f3cfab0e868ba6e787fd24c749d510bfd54799361d94e981b702d6f2ded14`  
		Last Modified: Sat, 09 Sep 2017 00:38:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bdda7ae66d279f70d88bd56abd8aefa0f30f50bb8e66ad962ce4080fac21ef`  
		Last Modified: Sat, 09 Sep 2017 00:39:03 GMT  
		Size: 156.4 MB (156411923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
