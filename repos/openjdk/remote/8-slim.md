## `openjdk:8-slim`

```console
$ docker pull openjdk@sha256:bacc57a7c7e8c660f39d43cfbf6b1c12cb1c5c51f14af55c00709556c6ef37a6
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

### `openjdk:8-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:0ecbdb9ecbba0da0dedc18fb1ee41f3c0b636b525ae4e6b53ed0888bf1d0f186
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91675052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6a18e83c0d0662588565f2c6b3d175f89f5f83aa2c5ae00c2c191f27ea05c8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:49:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:49:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:49:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:49:54 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:49:54 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:49:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:50:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244331a890e4aec0df6e10bce14d07eaa1bde905780d45fc41f12fd615d732c`  
		Last Modified: Tue, 10 Oct 2017 01:22:35 GMT  
		Size: 454.8 KB (454783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f111692a5874ce9859050b16b85e181a6ccadf449e850fa65a2a49a72b0d77c`  
		Last Modified: Tue, 10 Oct 2017 01:22:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838df694d9c3f97ab5439d7a43ad258fd52186bb900ccb303cabb1e04246953b`  
		Last Modified: Tue, 10 Oct 2017 01:22:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e28e4f90e03290c2a0417b0aa708fa3b838e9405592370a49feb22ed2d84d5`  
		Last Modified: Tue, 10 Oct 2017 01:22:48 GMT  
		Size: 68.5 MB (68455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc233c0a95c1214fb9aeb4a724cdc41914d89f910f7352351de93f8d798d7dd2`  
		Last Modified: Tue, 10 Oct 2017 01:22:35 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:92e14547f7fe0ebbe7f9f97fde8b75cf7dc65bb216b6f6f7060177cee0a451d0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78422460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927c38b4bb049aeee486bb2fc72dc09cffcce9086d1289113cff94dfcb80c259`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:40 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:28:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:28:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:28:42 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:28:43 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:28:43 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:28:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:29:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:29:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5157015f0bd49750479bdb4a232fc207026b23874b5511f0c27a1036727e350`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 447.6 KB (447638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbbd094d7ff14181d978a21b9b418571f16a4ed689f7f43cc92bad967710265`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426de7c4048293b8f750a1a91fb8046e1a1f7374ebcd47a78ec8177ed43b1ef`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f306bc3b64c5283be70f0fba7a87dd9a307f3abae8d6681ea951a5bba9a6f7a`  
		Last Modified: Mon, 09 Oct 2017 22:34:47 GMT  
		Size: 56.5 MB (56536016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982392af1508a542f3c6f876092e251f05477cc0b4faa4ce8571be0075a44477`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:02ffe5844a7f0fa7ca29a06d50baa9070a52f7e7d3f3bdc0d232910cf59ebaea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75480060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564c9b4ae546d6b3e91a71b336619413ce67d40143e43851767e9c0337fc06a7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:05:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:05:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:05:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:06:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:06:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6226915187b9d61d290e04413a4ccdf021b5e0fc267ba8129cc0126cab1f1a93`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 430.6 KB (430580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98b9b3c90ff2ee65efc9f88b2383f6f1760df78bcd965fa0b22e001977eaf96`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377cafaae0c7321b0549f3949d78826675109fe908cb8521f39fe433ccfced7c`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b54cd082813272ec0eee997651297edb9bab1e57b36937aeb96ef819318ed1e`  
		Last Modified: Mon, 09 Oct 2017 23:24:18 GMT  
		Size: 55.5 MB (55499788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc34b3797b251df09cbf29653d3faf2fabcdf80cb0f026c5bd5a61c741cea657`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 272.2 KB (272179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:42b515ff7c02bd7ec659fe8c878d3da3696b1ea6a3dc6de977dc78917fcfdbf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79301489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae740a6a58dcb145dd6edf0ee4ee2d1fea2014f9e08c80d1ec8ab3a2bd43337`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:28:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:28:29 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:28:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:28:50 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:28:58 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:28:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:30:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:30:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a727a90fab15cbfc5f05ababc5c02416ee800f138c5c7a5439eb1b2e323a3e`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 440.8 KB (440793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5692da35bab82003fb0cc285002d5c2cf8a001ac800c9e3e14fd5026f41bc7ed`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc3ffc0cbcf7695d1498de6039806f2bf5a6cb7d2862b331372f29c402c382f`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df63a56890e45b20a4610ec6523295d5bdb9412389c065b50e660e99f6b46b57`  
		Last Modified: Tue, 10 Oct 2017 02:16:25 GMT  
		Size: 58.3 MB (58251080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238e5c9b4f5366fbfd8f99bad5b6594a4f73bb67b014c07ef0b9cde90ea8b7b4`  
		Last Modified: Tue, 10 Oct 2017 02:15:52 GMT  
		Size: 272.1 KB (272095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim` - linux; 386

```console
$ docker pull openjdk@sha256:0f1f66ede19a7cbe1b1a30578d4d45ffbfd95aa684435c74219d44a5939d3952
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91564978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419e169377d32e9ff0684a9d822a4dc83b43c21ac7f4fbdefae5a4cf4fde19e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:12:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:12:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:12:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:12:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:12:59 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:12:59 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:12:59 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:12:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:13:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7853b0a86faa843cda410f263a64ed5ba757a019c60eecb5902c191e41d5e1eb`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 463.5 KB (463454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca21864f4b88fad8ba103bfc79ee0908fd694c165ef5a0b46919f203e822188a`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18652bc80c9f29e1dcf29225e3e5e82bdbcde149fe8b95219bd5c0f808b5211c`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b09cbe459d2d6e66b4a6e57c52702ef821cf730cbca002bf20fa3cc0dd55ec6`  
		Last Modified: Tue, 10 Oct 2017 01:53:44 GMT  
		Size: 67.7 MB (67700322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7565a346cded999c65118b00d6c89a56a19eca1746f9e7440cac91e2db0df326`  
		Last Modified: Tue, 10 Oct 2017 01:53:30 GMT  
		Size: 272.1 KB (272146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:efdf9dbecbdba4021d6902a1135e283806feded9cc7195492ca215162ff98946
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82105606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73207e7857e76231761fb46fb6c224c5036374c9cb6a083cc696b6494344d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:38:37 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:38:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:38:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:39:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:39:06 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:39:10 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:39:14 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:46:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:46:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73df072fb69cadf906dd2f3522f93ee911666af83ba9ab5f97bfe839d32822c5`  
		Last Modified: Tue, 10 Oct 2017 05:12:41 GMT  
		Size: 449.8 KB (449799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d776a3d19316e343e85e29960b7bb8553c71cac10990b3fa919e5c4fa4338f5`  
		Last Modified: Tue, 10 Oct 2017 05:12:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a45b43bf439e946d85916a7ecd48ef55110070ba9ce3c85651345d07aaa08f2`  
		Last Modified: Tue, 10 Oct 2017 05:12:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea08692df95d904d7400cb9c97c9489586e6e53f1d43aa25f1fcc1d7badd45`  
		Last Modified: Tue, 10 Oct 2017 05:13:03 GMT  
		Size: 58.6 MB (58637166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b00316d28023ece407adba774e7077cd98d2e14b1c938d3d0db584cde298ab`  
		Last Modified: Tue, 10 Oct 2017 05:12:41 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:8527e35375c356774a7ddd9ee0f45e70e2d85c8c7739485441ff733861957d8f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80675865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34719e628539f989f01f78133ba9970858288a021684a4fa5b4087140b070bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:52:36 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:52:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:52:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:52:37 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:52:38 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:52:38 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:52:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:53:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:53:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b68a7778da3a2e44964f508fbd3bc92882c4ad1dbd961716e950115a17786c`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 465.7 KB (465695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cbedee24083ce9a877823999b311c5211df0a60c7d39f0f1a7ffc40e5d3d98`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b4c73c20e2fb65e204d4f0e9530411503632baa0c81a5cd04aa4258ad9c478`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff107e8605f877b67a64c0bea37d46ff610f742062cfbd1ad4cec4e2d4338982`  
		Last Modified: Mon, 09 Oct 2017 23:02:13 GMT  
		Size: 57.6 MB (57597680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36553e27252d10ca7d945672d977007dc866b9a6cd833eb6f236c242394dbccd`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
