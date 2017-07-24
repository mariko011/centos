## `openjdk:8-jre-slim`

```console
$ docker pull openjdk@sha256:13c06033dbefc093b91028a16997f30a2c4964608f8ebc286e515800c8dfdd1a
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79634864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a48b5dd323c102086f852b222782ff8d0923609920a4d546734edd1373ae720`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:10:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:10:59 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:11:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:11:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:12:17 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:12:17 GMT
ENV JAVA_VERSION=8u131
# Mon, 24 Jul 2017 18:12:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Mon, 24 Jul 2017 18:12:17 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 24 Jul 2017 18:12:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 18:12:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d332e310197074543d205b349a75dd632fa7f1d6994983c1e0380c37517617`  
		Last Modified: Mon, 24 Jul 2017 18:23:17 GMT  
		Size: 266.5 KB (266542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ceb5bfa3f2022114c30a7c70ffadd8c94c1835edb68e8307647aeb2e51c05e4`  
		Last Modified: Mon, 24 Jul 2017 18:23:16 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b71ada13ea1466146a47b69db1a80df7e4805788f644dbc8980aab75baea9ae`  
		Last Modified: Mon, 24 Jul 2017 18:23:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67183e7d1b34def527cc1bd156a6890b05002603c7d76ed8f014b55ab604e41e`  
		Last Modified: Mon, 24 Jul 2017 18:25:04 GMT  
		Size: 56.6 MB (56604163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a024766e0f13da8e56afbddfad0d652bb06674ec9548ca4c848159d6d638e8bf`  
		Last Modified: Mon, 24 Jul 2017 18:24:52 GMT  
		Size: 272.0 KB (272043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
