## `openjdk:9-jre-slim`

```console
$ docker pull openjdk@sha256:fdd0bb09adfbbf40c1c026c1fb10d993b96a75a826c0cd8317e5b5bd1c1dd768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:9-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:3feaec8e0409967032b4919ae0d7f8684a00102e17cd052a3fba5e8b745c2b29
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101901289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca4abf2fa744046e4b92091ff5edaf4ebf65521c8e2596dc497e4b00dc9d54d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:16 GMT
ADD file:4f5c99023af857b40a8bb5ef610e4fc8a4ab4bcec326fcffddd3c18162eb5a90 in / 
# Sat, 04 Nov 2017 05:26:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:52:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:52:46 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:52:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:52:48 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:52:48 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:52:48 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:52:48 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:54:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3f84388a33351f025313af89e330691da0d2d0f7309fa0d0f6cbb15e0160473d`  
		Last Modified: Mon, 09 Oct 2017 21:40:21 GMT  
		Size: 24.9 MB (24897397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2a453fe79fc30d4f012fe130ad4f023aa3a345cb5ca95f379c325ab7c99ae7`  
		Last Modified: Sat, 04 Nov 2017 06:06:11 GMT  
		Size: 460.4 KB (460376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3685d649c8ca827bf516114bca2ed6146e79ee2f7a91a9fcc332e41c60ea040`  
		Last Modified: Sat, 04 Nov 2017 06:06:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394d7fced41f1e1b9e48654146516aaeec2d32cb66d0023baeca5eef6c7fd64`  
		Last Modified: Sat, 04 Nov 2017 06:06:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162da0f91fbfd4e315d9b8dd0c1fb7f540f84ab802e8e8ea68754a26f5f5b4f2`  
		Last Modified: Sat, 04 Nov 2017 06:08:17 GMT  
		Size: 76.5 MB (76543137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:8fad5c34a3cdee89945f44c15691b385a3d7cbc069660b1a949e2edb11b7221e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85679100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3a5392651aaf407dbadc2697d4198d89881b8c9004e3d8735997cb7e0ff972`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:49 GMT
ADD file:53515d12c277346acef474e8405d99646f72a11380a3b75d1dad8756510e6870 in / 
# Mon, 09 Oct 2017 21:43:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:35 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:30:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:30:37 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:30:38 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:03:28 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:03:28 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:07:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ea37965471e13f9e6050ef152f0f00007063aed293f9ab9254f7ae0062caffe9`  
		Last Modified: Mon, 09 Oct 2017 21:49:34 GMT  
		Size: 23.3 MB (23348454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec082c0f8a485cb2fc949ff337b67626da849d056263c1e0248f98c847b5c21`  
		Last Modified: Mon, 09 Oct 2017 22:35:30 GMT  
		Size: 453.8 KB (453840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f6cc6201a4bb264d660ccd911867d17fbe817ca21b715fc9434b49ebed1a78`  
		Last Modified: Mon, 09 Oct 2017 22:35:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147ee1897b6272956335a08816ffbef1187d77ddafd822f9312e36e7034eb1d`  
		Last Modified: Mon, 09 Oct 2017 22:35:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5cdf3018b3d8932bb418c4a7eab5a82dd43fadfe781828f18808367b8196b`  
		Last Modified: Sat, 04 Nov 2017 10:15:46 GMT  
		Size: 61.9 MB (61876427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:30b7107560bc4e3bc0a83726e084c3c7506cc5e7576fd9a2d2b4f973e91cdaf6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (85994294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58506f98e90f6e2bdb8a8873b2b25d0a348aa405f3c328d90bcb5cd5581e2fd7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:28 GMT
ADD file:5d5c4a7233c6c9a2682e39e732a1f23db741e074dbc5b6f16309bb53d0bdaf18 in / 
# Mon, 09 Oct 2017 21:44:29 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:10:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:10:27 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:10:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:10:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:10:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 01:31:01 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 01:31:01 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 01:33:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d96a59f9a30fc164a930c5f4118584e683bec40d1797f9d9bca30f65f3a647af`  
		Last Modified: Mon, 09 Oct 2017 21:51:14 GMT  
		Size: 21.6 MB (21639073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c164bdc72bb7e7c356d01b6f09f139b666b9b352a4ddc54537fdaa48e8a0ad6`  
		Last Modified: Mon, 09 Oct 2017 23:27:15 GMT  
		Size: 436.4 KB (436444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40759634bf5c1bbde4c10d3cb802e1d71d31216cf2c389d566820272f1239ca`  
		Last Modified: Mon, 09 Oct 2017 23:27:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaabb110ae529eef899672bd02ae789a08f5b8093187fded0073a6352a26493d`  
		Last Modified: Mon, 09 Oct 2017 23:27:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851c479b26c9f6a27840ef00b088273fd4f2d37430a1355554da284d5295f57e`  
		Last Modified: Sat, 04 Nov 2017 01:41:30 GMT  
		Size: 63.9 MB (63918399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cbbefa70c53ef80b5b8c80c67540ecb3676062c278b3be1d4a587e2086675014
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88494982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf17d1cb85465360a673adfe0bf3c2e37c6a8dd433c18719338fbce25d92966`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:50 GMT
ADD file:7734ca257bd7327a8da07cdcc881d2054c6cf50201f5bb0aeda8637c7e40cc06 in / 
# Mon, 09 Oct 2017 21:45:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:49:51 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:49:55 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:49:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 12:49:20 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 12:49:21 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 13:01:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9dc315cd342ed5fdb1c77afafbe657c1c29de0747c81d85f1f9ae06ad1d01fa4`  
		Last Modified: Mon, 09 Oct 2017 21:59:06 GMT  
		Size: 22.7 MB (22709128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f96b1ccf72714886ea440013736b3705900f6f9751ec2664a26a9cb3042e3f0`  
		Last Modified: Tue, 10 Oct 2017 02:22:06 GMT  
		Size: 445.3 KB (445252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d7984bd0489b39fe260c46dcb9772e8656599426233067ad9af68b557e2d73`  
		Last Modified: Tue, 10 Oct 2017 02:22:06 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3682b3ee64dc20e447d8a52e66fd89da4f08cb2341fc1836b460609fc12eb0d`  
		Last Modified: Tue, 10 Oct 2017 02:22:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b8617dc0461c1abcbdd9a102ef48263a4f5cee098b0c191295a3997316ef9e`  
		Last Modified: Sat, 04 Nov 2017 13:24:48 GMT  
		Size: 65.3 MB (65340225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:e53c17e57cfe2f56ba27a3bb578ced989065fd4b9ab9c512fda57732f6b40658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107614638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8afd8154374a401e6e016f148e5708862c2aad549112b2b545608af9ac0eae`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:42 GMT
ADD file:19c55eeae4bfb6e75c713222705ba8d4849604df30a58a50860ac7bd205dfda4 in / 
# Mon, 09 Oct 2017 21:44:42 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:28:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:28:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:28:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:28:10 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:19:28 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:19:28 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:30:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8dbd94837ca8315beb351e1b4a4633d7694cecb75bd76e51339f9fc3d1362ea4`  
		Last Modified: Mon, 09 Oct 2017 21:51:23 GMT  
		Size: 25.7 MB (25658987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4541ed9bcc08c4b1df4164753e37f6503b3dc167e45d1ee73bae5df2235d4bd5`  
		Last Modified: Tue, 10 Oct 2017 02:03:41 GMT  
		Size: 469.1 KB (469054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc19ed4e40f01efc0a9b7e8728b3a714e8988d9988c655294a7cd0557e4fd4`  
		Last Modified: Tue, 10 Oct 2017 02:03:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6adbd212b15cf15807ba58d5148c502ce8708f3fb6e4b929f35ab3e2806ba9c`  
		Last Modified: Tue, 10 Oct 2017 02:03:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2789d9984498a350723b8afc5485501d34532175f73692e81321b869556bd3a6`  
		Last Modified: Sat, 04 Nov 2017 10:59:39 GMT  
		Size: 81.5 MB (81486219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6033e5301fbc49d41b2a8a70214d5d7bb79da78944cb8bf4d05c54b900a745de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92910231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed2fc527ab09d4a7c1572cd25e77b9a1205ec779a53cacb1971ba19c5e45cc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:975af260e7927569ddcee28239226e9deaf2ba539f038b467169340d69bc7072 in / 
# Mon, 09 Oct 2017 21:44:37 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:37:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:37:48 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 04:37:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 04:38:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 11:11:26 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 11:11:27 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 11:20:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:58316d9a92e4d6154c1ca7f3d20c3fe96a2931387507b6226b9bcb094ebf13a1`  
		Last Modified: Mon, 09 Oct 2017 21:51:05 GMT  
		Size: 25.9 MB (25935856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cb131ef3a79b457ff98e269a64ece4b6e5a2b846dfeffe8d816ad700c89eb1`  
		Last Modified: Tue, 10 Oct 2017 05:22:45 GMT  
		Size: 455.2 KB (455170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af6ed7bad84f73f72309cd6fd34c5f02d380a962d70be083f47f50011e29f8b`  
		Last Modified: Tue, 10 Oct 2017 05:22:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c81bf7c16727685616c16f67bbedf2377b69b2b65856f76e421844e15d28208`  
		Last Modified: Tue, 10 Oct 2017 05:22:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875b696c3b5055d03b500e39181ca4e999000da51f6f2acdab279537d426df6d`  
		Last Modified: Sat, 04 Nov 2017 11:30:10 GMT  
		Size: 66.5 MB (66518825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:40c42c4a26a1d9ac7e022a3d86621dff0ff9be276a287b8ba0a42f080524ebe8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91490914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379e9149ecc8ffab26789c1e58003ba91bacde6213d8353097fcfa6d87bbe72f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:37 GMT
ADD file:b4deb6fb528f8c816ba7db3484f7590bf072a683b2d2bf4b616ac44850e10494 in / 
# Mon, 09 Oct 2017 21:43:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:56:38 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:56:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:56:41 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:56:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 17:00:03 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 17:00:03 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 17:02:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:044c9ae4e8107afdcd4e6b93a76f7d598ae117778f3cf7dacd9d6087e3ac4f3b`  
		Last Modified: Mon, 09 Oct 2017 21:47:55 GMT  
		Size: 24.6 MB (24643207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9070e5b963f9d96e62e6d5bd2a1e800f7745293b6bf97e423d883ad4cb6a280d`  
		Last Modified: Mon, 09 Oct 2017 23:04:14 GMT  
		Size: 471.4 KB (471352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2624213d4686ead64a27d4dac297ad322ddab0cf41272465a4cd53620bcbd47b`  
		Last Modified: Mon, 09 Oct 2017 23:04:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c076a1ba6889dcaf5124d6f37956b4265b3b023a96bbdd23780ad89cb3cf18`  
		Last Modified: Mon, 09 Oct 2017 23:04:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3c3c76bf5cff4435c88c8cd450f0f3e326e8547d8882f0c16ba602e2fbde3d`  
		Last Modified: Sat, 04 Nov 2017 17:08:01 GMT  
		Size: 66.4 MB (66375976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
