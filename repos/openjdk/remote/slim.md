## `openjdk:slim`

```console
$ docker pull openjdk@sha256:d4670c3a29a752472ebec6c68ad750e54336e58dfe4a47085c0ca2010ed7b6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:slim` - linux; amd64

```console
$ docker pull openjdk@sha256:e8e733e46f9993ac88da5814b69d384909aa2fa96cecc090679ca958dff3c307
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90885158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f79f57057d71c26df8b00993c2bc7164951c064beb5e7b31aebb9785c7e55b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:47:31 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:47:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:47:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:47:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:47:34 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:47:34 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:47:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:48:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:48:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbd22648d7be2d478f0c5b6169d74b9a6b0daafb6754f9fbd54cb086509bdb8`  
		Last Modified: Sat, 04 Nov 2017 06:01:43 GMT  
		Size: 454.8 KB (454793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a1b344d366b8ce57b981bb46969493bdb146bda90e10ebab98bbde57c99f0`  
		Last Modified: Sat, 04 Nov 2017 06:01:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d8309ec3509b18b351f72dd0f4fa3fdc6a1c88d47169780c70976f15f54d8d`  
		Last Modified: Sat, 04 Nov 2017 06:01:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133b2f9ec79c5b63568ce1b6cc8c17056b87e41945a180c0aeea408ff1ec7e4`  
		Last Modified: Sat, 04 Nov 2017 06:01:54 GMT  
		Size: 67.7 MB (67665491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3736776b7752876be5233303524ab5f0d62e61150984896d737a2d5c0a50b908`  
		Last Modified: Sat, 04 Nov 2017 06:01:43 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
