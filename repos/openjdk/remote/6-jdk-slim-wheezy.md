## `openjdk:6-jdk-slim-wheezy`

```console
$ docker pull openjdk@sha256:8757c1ee3fa2d581cd4a1a65762debc586df2eba36d9af75befa78179e6257f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jdk-slim-wheezy` - linux; amd64

```console
$ docker pull openjdk@sha256:ab7f34bb8a1034dffb1fda3ab5569f77261654a0d381337788dca3e7f8a68cb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116288392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b55adf5c5f6ba3bb127c4f87a57052a06e9f21ab708c6a83059ad40b705e0e4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:22:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:22:07 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:22:07 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:22:08 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 05:22:08 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 05:22:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ab31a7467b755cf13f9578f99299095595a6594a518958a383c74fccae00d3`  
		Last Modified: Tue, 12 Dec 2017 05:44:46 GMT  
		Size: 401.1 KB (401149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86ff4ae90bddf1b252aadf18122772766c05a133e63f6ef460fe5323b825390`  
		Last Modified: Tue, 12 Dec 2017 05:44:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f831342cbb14a17ea53bdd6a57939188f09323ebd8f90634249849b957a043`  
		Last Modified: Tue, 12 Dec 2017 05:44:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95355cb0ccb79b47922d16313185395e6812e93996cac467953ba97c7234aa03`  
		Last Modified: Tue, 12 Dec 2017 05:45:01 GMT  
		Size: 96.7 MB (96722187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk-slim-wheezy` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:d13b83a9af8d767f4178fec0233461e0b6d917d801a393eca8bd2dfd2acce819
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101609729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2acafade6bbfccff2cb7fadcdf6a3c2c3a82a3dc262ae5e2c3286b372d3f57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:04:57 GMT
ADD file:034be7821a623247cf0d02da69abf8e5b98770eee716fa930bdb7923b249e89e in / 
# Tue, 12 Dec 2017 21:04:57 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:22:51 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:22:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:22:53 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:22:59 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:23:00 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 23:23:00 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 23:23:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a1bfd7785ff6a76712f96a578a476b0d88e18c6102bf9bfa6fbb16f679c83374`  
		Last Modified: Tue, 12 Dec 2017 21:15:45 GMT  
		Size: 18.0 MB (18021989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1afe7ad94f73f183c8bb55202a291e87b91b376306664e77965d321f51fb44d`  
		Last Modified: Tue, 12 Dec 2017 23:47:51 GMT  
		Size: 403.4 KB (403398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff256064e266117f6d86640814a5b3386f3d9f95a0c906b922e23255f1edea`  
		Last Modified: Tue, 12 Dec 2017 23:47:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826c99014d5a8e13ad6dc1d9baf3a0dd5b50052196995d01106226a2faef08be`  
		Last Modified: Tue, 12 Dec 2017 23:47:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b681e3777602742a2e584ae9bac9627a074f97701def87458247166567bcc8e`  
		Last Modified: Tue, 12 Dec 2017 23:48:09 GMT  
		Size: 83.2 MB (83183962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk-slim-wheezy` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:baa6525b31204dc76c71a8e3d4cf297a3705e614e443c7a338b937156fcb7dc4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98310527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ce7d656afd06327e8bd9b82bd14fbbacf8e3c7485deda4d70c373f6309bb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:52 GMT
ADD file:52eaf771571129528a0836b8ecc4fbee481902e6a38fbf1d40a9353131575be0 in / 
# Tue, 12 Dec 2017 13:36:52 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:02:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:02:54 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:03:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:03:14 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:03:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:03:24 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:03:24 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:04:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:adf381d5b09feaa2e2e96c85bb8c1f1d9ea18b076cc45d5fcbaa8afa7c5d4a31`  
		Last Modified: Tue, 12 Dec 2017 13:49:05 GMT  
		Size: 16.8 MB (16762408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374ba9957d8911e4e75b860de69b28fdf8bb202469b1d47e380c5f578dd8e347`  
		Last Modified: Tue, 12 Dec 2017 15:27:23 GMT  
		Size: 391.0 KB (390955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6efae5015b1b6884963bca92d23ece4cfc9bc844491b354d84e61aff93e8ef0`  
		Last Modified: Tue, 12 Dec 2017 15:27:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1758be8cfd1c0ff8c0bbe9514a2934d7d2eb09e2e8e58dd456c7d47ef3801c85`  
		Last Modified: Tue, 12 Dec 2017 15:27:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7d1e080876959197d7ec6a3b8bf1a71fe354c6709d86b545e3bcfac30dc746`  
		Last Modified: Tue, 12 Dec 2017 15:27:35 GMT  
		Size: 81.2 MB (81156787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk-slim-wheezy` - linux; 386

```console
$ docker pull openjdk@sha256:5a2380bc2206067f403d9b2ef5ca9beafd0e8498d7586fdc22a8bf23f75017af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125220229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c28e03b75b6e87db879fbe8171c40611858a08a0c3affabb157592af44f2f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:44:19 GMT
ADD file:9d29dc533b2a2ca0a10b15ec9735af473f9e03f53fab1d9c5c2a9e197ec8af4a in / 
# Tue, 12 Dec 2017 14:44:19 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:07:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:07:03 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:07:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:07:05 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:07:05 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:07:05 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 18:07:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 18:07:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:521cb70f31f0c44c4dca106cb3178b148a7fadbb00e18f61ed0f5ea3c8f1e7c1`  
		Last Modified: Tue, 12 Dec 2017 15:14:04 GMT  
		Size: 18.5 MB (18498114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2702e742007e0167cba4555070211e0f410c51ea26a79799a7be691c34bd9e49`  
		Last Modified: Tue, 12 Dec 2017 19:19:59 GMT  
		Size: 391.9 KB (391900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53080b49b8cc84948c273c0b21453ca3cfd9a1d6f3bc13e3485f3f6593d8e45d`  
		Last Modified: Tue, 12 Dec 2017 19:19:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd1df5257dd8f248c3e2ae8cc6dc16f33c211ac6cc332e051b68e456e6ff6e3`  
		Last Modified: Tue, 12 Dec 2017 19:19:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca362c806da688a09723bffb807bce87bd2bd9c22a956eb898cff6fd6de87c2`  
		Last Modified: Tue, 12 Dec 2017 19:20:24 GMT  
		Size: 106.3 MB (106329836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
