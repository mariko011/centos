## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:0d59dce3c530b6f7e53c283cfd920b8692cef2b2881a71badd6a1f7e93f73a5f
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212882257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ae415edef7e31103f2adaa80a3c197e3d6e81b78807deed87b9fc6d7dabc13`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:02:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:02:35 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:02:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:02:38 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:02:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 14:02:39 GMT
ENV JAVA_VERSION=9~b168
# Wed, 10 May 2017 14:02:40 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Wed, 10 May 2017 14:03:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe13d87883c9e70d0b7bdf485b6dd6ce43dd5fce01ac4f9841b36057ebba18ce`  
		Last Modified: Fri, 12 May 2017 15:26:45 GMT  
		Size: 627.7 KB (627748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61bf4f9b91abade4a3639c940c71e977a56c1790eb3f8f0d6e2ee9f8361468`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301dec7b829e2fd43b5a9f0e79b21ddd0213ea5e1a45d66ac49230d2a893dc8b`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0451b2a7a53ce5b3a7db6d36ce6f5653e383286c5eb44bd7a2721c1891b9675`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a567a6ec003e38f49bf513e62f83cb0ec767b0000a2c68a67bff5f34a5743ae`  
		Last Modified: Fri, 12 May 2017 15:27:00 GMT  
		Size: 155.7 MB (155733950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
