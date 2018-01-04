## `openjdk:6-jre-wheezy`

```console
$ docker pull openjdk@sha256:e7a2f4a5cd12bace39f0793e04fefdbbd3d86dff13429903d1b613a352c741a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jre-wheezy` - linux; amd64

```console
$ docker pull openjdk@sha256:e69f6540ab037faf368f86f06d1ece7261666895746f911557fa8bbbd31398f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.8 MB (139776305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9069b6805935fa05c1bc1170778fc155cd9450d8639a59da54e38e911593b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:04 GMT
ADD file:281b987b09ac9b71793de5201331461636a08ec23af27a9e11a14484018993dd in / 
# Tue, 12 Dec 2017 01:46:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:56:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:01:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:01:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:01:47 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:01:48 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 15:01:48 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:01:48 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:02:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:762ae076e9a326e4eac3b3db9e3afe4b6dc930ec52dbb2aa27a300d1323a52b6`  
		Last Modified: Tue, 12 Dec 2017 01:59:44 GMT  
		Size: 38.1 MB (38109825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23de19d3f13a2be7ebc7920f3ba4c5b85177a11b50a1ade92d360c09aa349bf1`  
		Last Modified: Tue, 12 Dec 2017 08:06:02 GMT  
		Size: 7.0 MB (6950248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88eb6f7cbbff330da5be9ecbc972f6fc7cadec02022be4cca397fc000f60d469`  
		Last Modified: Tue, 12 Dec 2017 15:45:53 GMT  
		Size: 548.7 KB (548727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a068071674de62beaa2da19128e497fc2e22b754a4a343ac9e286bcb94c02e3`  
		Last Modified: Tue, 12 Dec 2017 15:45:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eee10f8e2e50d042ab6a5290cf314d494dd98898f784f39847dd8505176873`  
		Last Modified: Tue, 12 Dec 2017 15:45:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53360b376d7ff6ee4f30dcca65c633060527a63de1dc033c4f3550a7fc388b7`  
		Last Modified: Tue, 12 Dec 2017 15:46:17 GMT  
		Size: 94.2 MB (94167128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-wheezy` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0b5e17ddbf77d1cd21d4e7f9f51d2c81af4ff76137d2db78ff64a9ae5a972d57
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127390722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e01b1de0091b52d1d46d6b3f4d0268326c475efe452d557dee1975cb881a8d2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:04:23 GMT
ADD file:dfb8b543feb8007b990cb5a0dc88e61b84ec22ac2c756ad3ab084b5c46f0d66c in / 
# Tue, 12 Dec 2017 21:04:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:02:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:02:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 23:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:24:14 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:24:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:24:16 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:24:17 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 23:24:17 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 23:24:17 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 23:24:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8d01839394fae71ab18c6d4fa6e8f5ff303a13afca2fa23b3b65c12fae1b5fd5`  
		Last Modified: Tue, 12 Dec 2017 21:14:56 GMT  
		Size: 36.9 MB (36948993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16027710f36e4aaa3224e3f258959bc3af99b9007be1651f403ae4fdbd84b8ef`  
		Last Modified: Tue, 12 Dec 2017 23:12:42 GMT  
		Size: 6.6 MB (6587460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0636795daa96eec602451596bcf17a49f349dc03e74360333044fd0def45c5d4`  
		Last Modified: Tue, 12 Dec 2017 23:48:43 GMT  
		Size: 550.2 KB (550219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db69c1f56581aa70195f5ead073f6a04f414e588b2d72040d7ec85f63a01eef`  
		Last Modified: Tue, 12 Dec 2017 23:48:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddfc6811614482832cbae4d617651e6fa6fc9dc9a4970036a70407e4b1124cd`  
		Last Modified: Tue, 12 Dec 2017 23:48:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1340accdca2b83c0122e3284c24549b4eee051e21f484e0afdacfa39a3da8ee2`  
		Last Modified: Tue, 12 Dec 2017 23:49:01 GMT  
		Size: 83.3 MB (83303673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-wheezy` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:8eba7df5fd24adfbd9aa53756968627ff630a4384b5daae1d115442a038ca29d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124388063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81a7f63ab4f8c7755de0351100f15f7d4b8ff0c509aa13374e112e473c70a9d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:25:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:25:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:04:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:04:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:04:55 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:04:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 15:04:56 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:04:56 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae93d1aa9ba1e13bd1449ae6d27b5849b9a9acbf7f273c7059aa1c7a7f700e`  
		Last Modified: Tue, 12 Dec 2017 14:37:06 GMT  
		Size: 6.4 MB (6369943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2684ab20a2a3c6524f48748b9c85aad895ffebf49c489cbd6bf5e15a8f1acb`  
		Last Modified: Tue, 12 Dec 2017 15:28:20 GMT  
		Size: 537.7 KB (537699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b57491d9e899b46ea0e09e5a12576af86d1fea52dc4c0edd5f6e5863690fdd3`  
		Last Modified: Tue, 12 Dec 2017 15:28:20 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c09dfd4f0b24ae955e75a9175a62feb5d42ef65c1c27322508c395563b5dfb4`  
		Last Modified: Tue, 12 Dec 2017 15:28:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0a04a19dec16de420ce3e37e8c96bfb658d2ba47931b36f69b431b634e0546`  
		Last Modified: Tue, 12 Dec 2017 15:28:37 GMT  
		Size: 81.8 MB (81818239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-wheezy` - linux; 386

```console
$ docker pull openjdk@sha256:570d896094ced44bbcb10d720618f2ee14e826b659bafea5f4307aec25b19bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148799710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54112ab2df449b7efa4738133fd05e1d568d5fc486026283515e33482c881977`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:43:45 GMT
ADD file:1ef271fafe70405fd17417a29b02b0245708b5a9acd0d979e7c8ed32371cf210 in / 
# Tue, 12 Dec 2017 14:43:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:13:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:13:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 18:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:14:17 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:14:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:14:26 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:14:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 18:14:27 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 18:14:27 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 18:15:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:20f7e6bd30947be27e2a6eed841278c2fcff0db722334016a488feae3ae65859`  
		Last Modified: Tue, 12 Dec 2017 15:09:23 GMT  
		Size: 37.4 MB (37439308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8640205fde64920e3229a7bcc29a8c09e17639a3abb4aa06ce4be31b587a9d8`  
		Last Modified: Tue, 12 Dec 2017 17:40:09 GMT  
		Size: 8.8 MB (8799392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92e70453c2567232aa12054bacc6b8b32292081a9eaa8a0eafb3a15cc3bc289`  
		Last Modified: Tue, 12 Dec 2017 19:21:41 GMT  
		Size: 538.3 KB (538261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a25583c2b1331496ddc9d9251fa92dc8e9d733633d01ca198a77c2f33fda59`  
		Last Modified: Tue, 12 Dec 2017 19:21:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceff3782b477906bc5ea7f69410b73ed212c82bc74b671846dd6687cfb505d39`  
		Last Modified: Tue, 12 Dec 2017 19:21:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207dbe61337761ff2234e3d80b794752a28e14d12d31045c2ef9adcb683d2982`  
		Last Modified: Tue, 12 Dec 2017 19:22:04 GMT  
		Size: 102.0 MB (102022370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
