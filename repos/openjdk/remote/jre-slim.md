## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:aa8654ef6c85de446ddc605713937daef62fef4590da00d1df1421f0591f6d3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:c1d4204a3bff922e204555a354e928e40a64536e1b98b3bea99b3455e8a37542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79218851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837969d6f96848f6286f6925774b20f587980496d21c5eabccf7f5c36896f481`
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
# Sat, 04 Nov 2017 05:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:50:25 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:50:25 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:50:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:50 GMT
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
	-	`sha256:fba43829b457316709577bd52372c2085a164bd60bd884dcc9490b186daaa04c`  
		Last Modified: Sat, 04 Nov 2017 06:04:09 GMT  
		Size: 56.0 MB (55999210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f068559008bb82455087f0fdde6e52e9480f68eebcee871ab2eb1d0e1f865e`  
		Last Modified: Sat, 04 Nov 2017 06:03:59 GMT  
		Size: 272.1 KB (272119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
