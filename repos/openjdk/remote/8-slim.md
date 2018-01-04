## `openjdk:8-slim`

```console
$ docker pull openjdk@sha256:e7cc575e6bdd96a1d1987cdcb633906a8787de2c4b6a540bbd09f6d8dfe285ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:8-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:53dce04d2798b0e248fb2dd1b47ea384e7870f4f3a6f7028331eb6a5a2d1d3ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90878632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b853332a64f7750f0495129e6d76f57eb519a4a7aec7907c3f5a8d817e33a4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:34:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:34:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 05:34:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 05:35:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:35:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a7df1b51f6278abe3864a0d83f04c9b9d4885b4d64cf68cb40ac650f91a5`  
		Last Modified: Tue, 12 Dec 2017 05:49:02 GMT  
		Size: 454.8 KB (454819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c98005fcff8d144c0e901a6f8b6c20f7aab34f1c93f9d8679f342cd4640c5c`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dcc90226db797991bfa856bcbec2e3a60afa66c263912ec507073813bbe945`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23649b2102b013e3493311cafe0d31f68b2057584f631154722e6b2b74a7202d`  
		Last Modified: Tue, 12 Dec 2017 05:49:14 GMT  
		Size: 67.7 MB (67665559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0e3cd819e2fa1e5e82ece54f3a80242398bd69b658a8123c1ec054eff071`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 272.2 KB (272156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
