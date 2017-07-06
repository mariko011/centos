## `openjdk:jre`

```console
$ docker pull openjdk@sha256:41e655974c2b6d28cdd86ea464049693b2732d7e596f1436a54fd752fe2e7169
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112232217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92a7fdfc3b34e1ced59a60607cee3aefb91927ec5427b77a0f2ff5788131db8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 20:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 20:16:18 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 20:16:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 20:16:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 20:16:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 20:16:23 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 20:16:24 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 20:16:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 06 Jul 2017 20:16:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 20:16:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47cfaff294f16ba26581885792003b7a8e2df11a52a6040f63731cbd2d4e227`  
		Last Modified: Thu, 06 Jul 2017 20:39:42 GMT  
		Size: 623.3 KB (623285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada7fb941f99136622574188b493abe4269467804b3564a1317a522ba443be41`  
		Last Modified: Thu, 06 Jul 2017 20:39:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ac8952a42663224f2016f158a6250371276819129491126fa04e14f3e0d657`  
		Last Modified: Thu, 06 Jul 2017 20:39:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac832915dd0b475bbec85df81ec51150dde73599c15448469ead38802a56632`  
		Last Modified: Thu, 06 Jul 2017 20:39:52 GMT  
		Size: 55.1 MB (55088167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90e76ca83020ae7c34add42164a9c2006495c31efb155d302bc835f29af3154`  
		Last Modified: Thu, 06 Jul 2017 20:39:40 GMT  
		Size: 272.0 KB (272026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
