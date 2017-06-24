## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:5b91f42bf2224f1a1aa041fa1d7d1531e8488e0e708e8bca88ac715b4b4d6606
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212849169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca71a548b4eeaec1d2d365a68e5de719dbf4a83ed7bd1348d8bde30ddc2556c4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:44:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Jun 2017 02:44:54 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:44:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:44:57 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:44:58 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:44:59 GMT
ENV JAVA_VERSION=9~b170
# Fri, 23 Jun 2017 02:45:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Fri, 23 Jun 2017 02:45:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c67fe3f3f62d3be0f69949af11321139d94e653d745f2834e9d47f4b2b1647`  
		Last Modified: Sat, 24 Jun 2017 17:14:03 GMT  
		Size: 623.5 KB (623538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a3966ec751f91829596ae560909a4d208ac497d0775f350492aaa34046e955`  
		Last Modified: Sat, 24 Jun 2017 17:14:02 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b564aa3d7e7366f8e1ae2c477ed6c8704ef8c55e9b92314eaaf7221dcc64307f`  
		Last Modified: Sat, 24 Jun 2017 17:14:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a1ebf5960e2805eaca7722d72001288c8ba85e52bdcd0f250aa2aa998ad60`  
		Last Modified: Sat, 24 Jun 2017 17:14:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e478ffca1675f8994ae2e72c91c4ac4f8087fcec0d9f70a57c0783cf27cb8`  
		Last Modified: Sat, 24 Jun 2017 17:14:21 GMT  
		Size: 155.8 MB (155793518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
