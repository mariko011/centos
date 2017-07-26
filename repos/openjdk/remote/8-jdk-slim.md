## `openjdk:8-jdk-slim`

```console
$ docker pull openjdk@sha256:d11a24d043a52966828cbd20d7d766d219d424a835688fe3f020e863e435c3df
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91487703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b96f9aa881cfda10255b5138795623831efdc84435c145637c038b0ad175ef`
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
# Mon, 24 Jul 2017 18:11:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:33:22 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:33:23 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:33:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:44 GMT
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
	-	`sha256:1eca5fd8e446f1c66809328610bf428f3431cac949f1215978896b1e5b211e3e`  
		Last Modified: Wed, 26 Jul 2017 20:38:25 GMT  
		Size: 68.5 MB (68457003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8e0d18f5c5e2ae769da41b78aef06344f66d69232b93662f13e6ad3a5246fc`  
		Last Modified: Wed, 26 Jul 2017 20:38:14 GMT  
		Size: 272.0 KB (272042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
