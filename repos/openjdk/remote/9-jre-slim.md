## `openjdk:9-jre-slim`

```console
$ docker pull openjdk@sha256:4f95fdc98de9a2bfc46e46547a7b3e9ad2919177bd518c2033791f4e7c711348
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
$ docker pull openjdk@sha256:486d8d969a6ed5ec53c810fe80c001424a16322ace010ca072c86cd452f84ac0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181446298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e1d5aaeae0297ef78e3f95ab49ce1d28f0e6294ad7b1c9c7c5687a01ca45430`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:38 GMT
ADD file:4f5c99023af857b40a8bb5ef610e4fc8a4ab4bcec326fcffddd3c18162eb5a90 in / 
# Mon, 09 Oct 2017 21:32:38 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:53:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:53:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:53:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:53:14 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:53:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:53:15 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:53:15 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 01:02:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3f84388a33351f025313af89e330691da0d2d0f7309fa0d0f6cbb15e0160473d`  
		Last Modified: Mon, 09 Oct 2017 21:40:21 GMT  
		Size: 24.9 MB (24897397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7807a0ec32711dd39dcdd82043f6ae89e4b101f7105e75f29c0a6ecd9b132`  
		Last Modified: Tue, 10 Oct 2017 01:28:41 GMT  
		Size: 460.4 KB (460389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d580f15c0bb3bdb994dfaefd68e8459d5901df7fc39b4bd6a4b758786f8225`  
		Last Modified: Tue, 10 Oct 2017 01:28:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a3b03fc984224fd6836153e97c1a8d632351cacc82689281efaf1a82b3ca5e`  
		Last Modified: Tue, 10 Oct 2017 01:28:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f806ef0b5d74869e729a2d61fbc266ab40b49a1abcf073b61315bbced4e93c0`  
		Last Modified: Tue, 10 Oct 2017 01:36:45 GMT  
		Size: 156.1 MB (156088134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:e08cf7ae91b92c83fd00dfb6532d5c3aefff84d0e01ae82d9ab37e3251ef57be
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154741428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1a28632b658bfad3be3b80514333c2890df31f8b5425b05a79b0b9d4301f90`
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
# Mon, 09 Oct 2017 22:30:38 GMT
ENV JAVA_VERSION=9-b181
# Mon, 09 Oct 2017 22:30:38 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Mon, 09 Oct 2017 22:32:29 GMT
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
	-	`sha256:8c2f07c6e8c86986faab6981d8d3fa63ef1cce97a7d155a7b9d7df214014aab0`  
		Last Modified: Mon, 09 Oct 2017 22:36:35 GMT  
		Size: 130.9 MB (130938755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:0ac87617484ad25273c124f941ea4b7a07d738439d20a9df06299d7abc779108
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158365551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f5656fcccebeb8a5d748ff5428ea0984a40654ae2ce2fc4bae9a62c394746b`
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
# Mon, 09 Oct 2017 23:10:30 GMT
ENV JAVA_VERSION=9-b181
# Mon, 09 Oct 2017 23:10:31 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Mon, 09 Oct 2017 23:13:34 GMT
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
	-	`sha256:5a6e1fe732e41b13f05cab57e7100990cb2a87ad2784e6fa36eccc8fe1ce8b53`  
		Last Modified: Mon, 09 Oct 2017 23:29:27 GMT  
		Size: 136.3 MB (136289656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:acc710f4b520adf83d26a4c6d783fbddfd36e1afb176c2fa9c3552369d0f389d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161343791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987eeff615942263b09df87f3acb1705f66ada5f04b576446c86b4e8ea78eb78`
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
# Tue, 10 Oct 2017 01:49:56 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 01:49:57 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 02:02:32 GMT
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
	-	`sha256:34726b08a67812aeceb2cb7e9eedf363e3e7dcf657c8e5dd648a85a9da88d275`  
		Last Modified: Tue, 10 Oct 2017 02:26:40 GMT  
		Size: 138.2 MB (138189034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:378fd2ed4107aa8cecf18aa68b18d238636dbc63f04bf24133513fef276ec69d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184857008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd234216ae0920650ac83f6f16488eed50560a489b0c757e4a8e05c17c4991d4`
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
# Tue, 10 Oct 2017 01:28:10 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 01:28:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 01:35:30 GMT
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
	-	`sha256:159679665d47c6078b12a6679c0a65cf307dc44f72bb5cdccd5f5b584f09d464`  
		Last Modified: Tue, 10 Oct 2017 02:09:38 GMT  
		Size: 158.7 MB (158728589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:8d0d2b79db9f7584b064a039e27dd57bc1e95cdf4312f20bbf1d8cd41ef42180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165792040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d727f486559b3c92139fba10a8b2d3c399a59c0aa0e878555df9e519a1014250`
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
# Tue, 10 Oct 2017 04:38:08 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 04:38:10 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 05:07:36 GMT
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
	-	`sha256:7e548f68d347e4befcc0f0b0ca38c4609043781172dce668646e9dd87be36411`  
		Last Modified: Tue, 10 Oct 2017 05:26:06 GMT  
		Size: 139.4 MB (139400634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:33514240922a666de0a324b333bc7126275136c21c2f01f23a80ca72094f3b7a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165313769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12801d4f8e66679d7490ee8938443c3348d8400684b69441b508cf0e450c062`
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
# Mon, 09 Oct 2017 22:56:46 GMT
ENV JAVA_VERSION=9-b181
# Mon, 09 Oct 2017 22:56:48 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Mon, 09 Oct 2017 22:59:11 GMT
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
	-	`sha256:d4da5624d5ec23633206cead4ff439af4da77cc945fb039da2a69a06e6ed034e`  
		Last Modified: Mon, 09 Oct 2017 23:05:43 GMT  
		Size: 140.2 MB (140198831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
