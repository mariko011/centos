## `openjdk:8u141-jdk-slim`

```console
$ docker pull openjdk@sha256:9a71ba7cfba6a773bd63db9a1884ca126f5d612e40952fef3c1aab6248e5d6c9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u141-jdk-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91482703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32241009a73f22b8d9be0688620ac6c927ffc9262b8a336e122439b12ecffa72`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:56:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:56:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:56:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:56:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:57:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:57:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea00d9930d41613090f3c1a19433ea355976ff7be686a2c3b5a457a7f4c72a5`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 267.3 KB (267320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def04828dfb0ee9a02d7a2841031c5c5957cb0442bf8471fe72e71cdf182cfb1`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97cb98f633da303c199faf9e12723cbfe38b65415935432911a4494bb0d8f2f`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212aa720df289e2251fd9227cdc0ba7a0442dae05e9a85019bc422c74f822d5f`  
		Last Modified: Sat, 09 Sep 2017 00:36:21 GMT  
		Size: 68.5 MB (68454940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe3f7320a87ad839b014fe2ae6fa1a186fd698410d51d261d4b924237359c30`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
