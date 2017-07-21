## `openjdk:7-slim`

```console
$ docker pull openjdk@sha256:e3538a3d98ef02dac3545cdfa0010556b7b8d7eab0dac68d3d0c471df6eb183e
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151823527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8a3daabd0bd89f9e8f41cdb38458fe681674d88b336355fb2793570a05ba7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 21 Jul 2017 22:04:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 22:04:24 GMT
ENV LANG=C.UTF-8
# Fri, 21 Jul 2017 22:04:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Jul 2017 22:04:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 21 Jul 2017 22:04:32 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 21 Jul 2017 22:04:33 GMT
ENV JAVA_VERSION=7u131
# Fri, 21 Jul 2017 22:04:33 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:06:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b714a52fb14b677015de1237cbeb071fa85144519caa13becf2a191d09d0dab7`  
		Last Modified: Fri, 21 Jul 2017 22:25:22 GMT  
		Size: 258.6 KB (258649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83772d59e62bcf968d57bafd4e47918ef9631ac527f8ea02d2eb2af9dd5f66ab`  
		Last Modified: Fri, 21 Jul 2017 22:25:21 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdd7c82fbcc2bc23d3619cf73fa945d72718a89d5f1832e6027d8f4a20f51bb`  
		Last Modified: Fri, 21 Jul 2017 22:25:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55672240582bd9ab7b5815742ff8e51735eeb88fdc4b7d117c02c0acf6b8f8de`  
		Last Modified: Fri, 21 Jul 2017 22:25:52 GMT  
		Size: 121.4 MB (121434218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
