## `openjdk:7u131-jre-slim`

```console
$ docker pull openjdk@sha256:b7259a63aa9d5a857e370510f2cbe9374d70fb073f600f45d7c7663698df0716
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131-jre-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104057066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25a0275a716067e96a20052d1bcfdcfab778d575bfd2ae22c7f9aae9099e1be`
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
# Fri, 21 Jul 2017 22:07:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 21 Jul 2017 22:07:43 GMT
ENV JAVA_VERSION=7u131
# Fri, 21 Jul 2017 22:07:44 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:08:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:9f6c81a608bcb0303e7efc3397519db2854ea9c7161b56b536a80ab534d77f0d`  
		Last Modified: Fri, 21 Jul 2017 22:28:05 GMT  
		Size: 73.7 MB (73667757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
