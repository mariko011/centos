## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:cb5140da7d3f0772ff9b79ceceecfc83556d03ac37e0be041ca303e778ea678b
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79646271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddcda9031b7f949c5af53804bea2383ead48868a12bc1187b406adf166253d57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:25:26 GMT
ADD file:54d82a3a8fe8d47aaa58650783f2a7198891e89ca95d6e7455f8999651c2fc98 in / 
# Tue, 20 Jun 2017 20:25:27 GMT
CMD ["bash"]
# Fri, 21 Jul 2017 22:11:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 22:11:12 GMT
ENV LANG=C.UTF-8
# Fri, 21 Jul 2017 22:11:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Jul 2017 22:11:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 21 Jul 2017 22:13:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 21 Jul 2017 22:13:09 GMT
ENV JAVA_VERSION=8u131
# Fri, 21 Jul 2017 22:13:10 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Fri, 21 Jul 2017 22:13:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:13:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:13:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:e6e142a992028745fdbaf21d647cd3c61086cd0c1b50a25f07a5d7dbaa446cdd`  
		Last Modified: Tue, 20 Jun 2017 20:56:34 GMT  
		Size: 22.5 MB (22501182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5e2c7f785b895315b978a93ea7652a8dd7a5d0f818a09189d0bad2f9c38239`  
		Last Modified: Fri, 21 Jul 2017 22:30:36 GMT  
		Size: 266.5 KB (266490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b0a1f886519c1047044932113e8c131319c42863b520df49f9dafe239f48e0`  
		Last Modified: Fri, 21 Jul 2017 22:30:35 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e420ec45c8fcf38b8000d60732ee31d48a71ac9f46ccad6f3aad990bf9c4de90`  
		Last Modified: Fri, 21 Jul 2017 22:30:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ccb736d8142b0df061d0bb5013c1534877ece414262b1b033ed0b77fe7d559`  
		Last Modified: Fri, 21 Jul 2017 22:34:10 GMT  
		Size: 56.6 MB (56606179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00473c8cc6b2e9f86e3a0a20f2a4d8d731002bcb3155c9fac8dbc7c26c43c143`  
		Last Modified: Fri, 21 Jul 2017 22:33:55 GMT  
		Size: 272.0 KB (272048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
