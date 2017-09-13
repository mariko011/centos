## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:719c22e376211731c16c07c888734552bf5dd2b4c135c6f6a448dab4f26ce145
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

### `openjdk:9-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:db1f166ebc834180bcd24d3d1806164ebfe996fc1288f37e42cf79e076eb10c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340054418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e90e7f9564af2b269f773d34fbb1b937ba55960212ea04a5c224cdb9600877f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:57:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:57:02 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:57:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:57:03 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:57:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:57:04 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:57:04 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:57:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f46d55a8f545ff62d62b15e268f9fc121e744bf45fa304af720b9fc9b659c3e`  
		Last Modified: Wed, 13 Sep 2017 00:09:17 GMT  
		Size: 856.5 KB (856538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2948c78f46453a7030c6d1a2563779e420d705bef8e889151a1c9f7275186b5f`  
		Last Modified: Wed, 13 Sep 2017 00:09:16 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad44d56e0c8d3270b960046a3fdc59939e45a89e70853f28e036b55467b81da`  
		Last Modified: Wed, 13 Sep 2017 00:09:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160f5ac89a4f1c1e331b73079e20877cf2ae282ee3cf39b9bada232132efbe83`  
		Last Modified: Wed, 13 Sep 2017 00:10:02 GMT  
		Size: 273.3 MB (273274883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:7750c565c4f91254c12519d3f47d034857014b4b15b04212b8a0166edcb46a24
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283824299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b85e14acd5fb1577eb18fea0daf14032087ac911989a5620d6839594d26650`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 20:00:16 GMT
ADD file:72d1aead97c3fa90a9b15bb73f9f26a8bb4ba20ff47462cbba0bd0c3920941b7 in / 
# Mon, 24 Jul 2017 20:00:19 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 10:56:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 10:56:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Aug 2017 10:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:15:20 GMT
ENV LANG=C.UTF-8
# Mon, 28 Aug 2017 23:15:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 28 Aug 2017 23:15:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 28 Aug 2017 23:15:25 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 28 Aug 2017 23:15:26 GMT
ENV JAVA_VERSION=9-b181
# Mon, 28 Aug 2017 23:15:27 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 02:07:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6fc2ad12d24e75a4b60e0af1432af9fb64b0a77bcbf8e4fb006c7c323976d278`  
		Last Modified: Mon, 24 Jul 2017 20:13:25 GMT  
		Size: 47.0 MB (46975651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddc6f19c6c300f4e4990315613d67abc1e981dea4ccf14fc33d4e48bd562509`  
		Last Modified: Tue, 25 Jul 2017 11:35:39 GMT  
		Size: 7.7 MB (7742221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be198b7aa892d8f59b449bcc47b4ceb5fbccea89864c4afa14cebb453e3d2d`  
		Last Modified: Tue, 25 Jul 2017 11:35:37 GMT  
		Size: 4.5 MB (4460285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f07ec7a326d96b5ec5705bfb0fe820b15fecb9e82fc5d3aa4cc3325af2b43e`  
		Last Modified: Wed, 09 Aug 2017 10:24:56 GMT  
		Size: 843.5 KB (843524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e2bc7abc34a06711b6c72b8843fa531748dc74972cf25835cd718fd40f70e7`  
		Last Modified: Mon, 28 Aug 2017 23:29:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2a88f03c3f24e9638bc680f7f26309bd0fd06ca8e023bdb68e54738cf2653e`  
		Last Modified: Mon, 28 Aug 2017 23:29:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6d8e426d67ca4e25171bf19fc1e92ad4585a320b94c74f8592c1dfbaa3fb27`  
		Last Modified: Tue, 12 Sep 2017 02:35:49 GMT  
		Size: 223.8 MB (223802239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:572cf910be329d27f0a7278c23a43c19b344440a06fcd1dc571e80d218bc1d8e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.8 MB (304810959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5107b4a823f94bcb9b3bfcea3568f90fc4c72bcd1c53ad49b5ebe5362f42317e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:53:48 GMT
ADD file:7f60c30de028a27a17d6295a846736ffbcefda0d0be7010ae16b1bff6b696676 in / 
# Tue, 25 Jul 2017 12:53:50 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:25:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Aug 2017 03:01:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 02:09:31 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 02:09:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 29 Aug 2017 02:09:37 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 29 Aug 2017 02:09:38 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 29 Aug 2017 02:09:39 GMT
ENV JAVA_VERSION=9-b181
# Tue, 29 Aug 2017 02:09:40 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:50:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:30bcf7171e696bc59898b2067160c61b93616653ada7a607e11fbada605b61ba`  
		Last Modified: Tue, 25 Jul 2017 13:10:05 GMT  
		Size: 44.9 MB (44941605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6100e09857b8354fef65dbf89861b527016bbed2d7ed48a644d31a3cb8ac812c`  
		Last Modified: Fri, 11 Aug 2017 18:51:31 GMT  
		Size: 7.6 MB (7556138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda602ec49502ba5133ebc4c97e7f5808ee1eb4328783ede4e0cf1a40fc10054`  
		Last Modified: Fri, 11 Aug 2017 18:51:28 GMT  
		Size: 4.2 MB (4222067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0460d39d289fa61afb33ffa6d13f7e4629cab8c6e29ba29e3fbd5f3f3d5413`  
		Last Modified: Wed, 23 Aug 2017 03:30:07 GMT  
		Size: 827.9 KB (827873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f0742f38397f150b26eeafc8ae9fc723b455d0a1ba1480b6782b7ca2267fd8`  
		Last Modified: Tue, 29 Aug 2017 02:30:37 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481be4ffa654755d76a7fd7f0f22f7ad31b0243cac37ca5e3f662ea8561bbdba`  
		Last Modified: Tue, 29 Aug 2017 02:30:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc8c344e7c48cf38c7a5ce24f67f4a5c68ca67ee939e5ee6d56370ac046e446`  
		Last Modified: Wed, 13 Sep 2017 00:12:52 GMT  
		Size: 247.3 MB (247262895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e9753262a43f2d91411e69772d844e3210e40c5d018c274b1a306113019b1de5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.8 MB (309763221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337ab40b11d5ceabc11a3ddcf8252b54deff21cdbe073981ed219ba18ced9d64`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:23:45 GMT
ADD file:9317aca1096f5b4dd40c6e6341bb846fe7dff31a2229c363343fe76d70acd4de in / 
# Mon, 24 Jul 2017 17:23:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:08:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:08:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 19:17:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 22:54:58 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 22:55:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 22:55:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 22:55:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 22:55:03 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 22:55:03 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 10:21:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:be32d72e9988cc03c70e3de89ab4318721b54bb6ef8c93f7b042b75f86ce16f3`  
		Last Modified: Mon, 24 Jul 2017 17:28:59 GMT  
		Size: 46.0 MB (45992125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307c6e75a1bce5cef5ecc23f9be5914c5adf0a4055d70c1dbe091989194d5a70`  
		Last Modified: Mon, 24 Jul 2017 18:30:13 GMT  
		Size: 7.7 MB (7685408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ab5b47544c16558ee7ce8dd26b7d10cfa66b1f9ffee8910fa2d6a2fd82aacb`  
		Last Modified: Mon, 24 Jul 2017 18:30:12 GMT  
		Size: 4.4 MB (4394652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7236260a89a8edfc26e9954c0c236757b95c3b8ba348165e1cebd4b5cddc33`  
		Last Modified: Mon, 24 Jul 2017 19:30:14 GMT  
		Size: 836.6 KB (836587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ca98784f1a1b6df1e7b64e9a27581e113cee3412546f1193f3ad529732157`  
		Last Modified: Fri, 25 Aug 2017 23:04:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bcb61520f8b53cbe5a79ab972de19211949dd2435fc9cc3ca3bfc40c8ab68a`  
		Last Modified: Fri, 25 Aug 2017 23:04:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee19f414dcfd1e27df70cfc3aa17967adf28a4e2fafb4a42e80eddf99e8b73`  
		Last Modified: Sat, 09 Sep 2017 10:26:55 GMT  
		Size: 250.9 MB (250854071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; 386

```console
$ docker pull openjdk@sha256:070f8bc5daab79e2a2298e97fbb77441726fbd3521f21e1e0695392bc0e0e739
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348087142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed833b94ec9de2b5c64bb79049676a50974c6bf5773a2484ce5dfea304f7898d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:03 GMT
ADD file:e914d804cd8b6c794db616b0d7ff276be932d6365650fc16027e8f884ff5751a in / 
# Fri, 08 Sep 2017 13:19:03 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:58:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 15:17:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:17:59 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:17:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:18:02 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:18:02 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:18:03 GMT
ENV JAVA_VERSION=9-b181
# Sat, 09 Sep 2017 15:18:03 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 15:19:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:cc453eea7829cd3ac47b9e8510e4c25eef45f737546dec6b7dc2cacc93f2f875`  
		Last Modified: Fri, 08 Sep 2017 13:25:22 GMT  
		Size: 48.5 MB (48547718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11291bdfca353bac8763ab9feed3b42160962468af3c78227e6439d11e9a7277`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 8.5 MB (8520228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d531e5d41a15891ee1491b7823261943ad527fdefe9166c5941f7fd96917c27`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 10.1 MB (10147249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c16d6798b68cca158b5cb032a6274c3cbcec2f26a5be89615ed1d4a27f5ead`  
		Last Modified: Sat, 09 Sep 2017 15:39:01 GMT  
		Size: 865.1 KB (865088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4052523a0667cae40329fc401b2242eb6505e767faed09c13b30a9a25dfdaf31`  
		Last Modified: Sat, 09 Sep 2017 15:39:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f293f9886832053632195f845944cda4f31e3cbe07c3f490be0f46c417f8e06c`  
		Last Modified: Sat, 09 Sep 2017 15:39:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97be97b45d410875844c07e6095d9e12221d2b30b765e57fdcae2e6e3264e05c`  
		Last Modified: Sat, 09 Sep 2017 15:39:46 GMT  
		Size: 280.0 MB (280006481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; ppc64le

```console
$ docker pull openjdk@sha256:a5077b0ba808eec49124c25f7fc442cdc40fff29792e23b8d296e191e4028c7c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317181641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966804566a3b9b0796adea17d38eedd743c87caa622d3ce8a195b03d5af86c83`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:15 GMT
ADD file:f26611298831c7e479de36cdf344930971e612e49fec491aaef9d0d95eeab2e7 in / 
# Tue, 25 Jul 2017 00:32:15 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:02:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:02:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 10:49:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Sep 2017 20:32:44 GMT
ENV LANG=C.UTF-8
# Fri, 01 Sep 2017 20:32:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Sep 2017 20:32:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 01 Sep 2017 20:32:45 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 01 Sep 2017 20:32:46 GMT
ENV JAVA_VERSION=9-b181
# Fri, 01 Sep 2017 20:32:46 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b43b74b0f7fb58d6749537ddc76ae40e4b744774d9b8fdc7f5207e86121b2c18`  
		Last Modified: Tue, 25 Jul 2017 00:36:50 GMT  
		Size: 48.5 MB (48539165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08da7a72cf12341bb6aa3dbed6285b5ba349ddb3975deea1ccccd477b83d878e`  
		Last Modified: Tue, 25 Jul 2017 01:13:14 GMT  
		Size: 7.9 MB (7886884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6ac2ac627dc0026d7b015bec85d8929e4cb2a27709dd388c2348abadb82be`  
		Last Modified: Tue, 25 Jul 2017 01:13:10 GMT  
		Size: 4.6 MB (4600177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be21336eca845882e467f527f12836d345e6ffc80d5fc0e786aaca2512bdb8`  
		Last Modified: Wed, 26 Jul 2017 10:56:59 GMT  
		Size: 846.0 KB (846002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f65de317105d55243fa550dc4f6d353d48275e40df136044bb9254f9d467e9`  
		Last Modified: Fri, 01 Sep 2017 20:37:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604c9d9b8710088bbf7716211f2cc4731128953c72c9c436e29933413da68e2f`  
		Last Modified: Fri, 01 Sep 2017 20:37:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b705fed40cc34b96bccb57dbd1f55a2dc9b99b59e88193c7d92e957402eaa72`  
		Last Modified: Sat, 09 Sep 2017 10:56:29 GMT  
		Size: 255.3 MB (255309031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre` - linux; s390x

```console
$ docker pull openjdk@sha256:c0fe50cc294e4e21d192d9583ea45b6da4ccdd80e377c193fff281e8dccc9a78
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300534153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd0457e571ce4e800f6206e157f28a862ac8dba83022376c970eec20a3264ce`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:21 GMT
ADD file:21fffbf13a9dfb5037f5c17e01b497b8a6e81448b0258d6d12a130e07a751566 in / 
# Fri, 08 Sep 2017 05:22:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:50:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 17:33:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:33:10 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 17:33:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 17:33:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 17:33:11 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 17:33:11 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 17:33:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 05:41:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1c56ecd59b527c3f7815101ee47b3e1e3bbf73f1ecef57fcb4d9d726a847f94d`  
		Last Modified: Fri, 08 Sep 2017 05:25:49 GMT  
		Size: 47.5 MB (47521100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f321e426dfa3e4af576343844945e27cd24e95d2e83dd7fc364d32e51a80e4c1`  
		Last Modified: Fri, 08 Sep 2017 16:42:40 GMT  
		Size: 8.1 MB (8092551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aefe31130745c9dd202ee0131441ad33e364a0355feff851a41616e91640df`  
		Last Modified: Fri, 08 Sep 2017 16:42:40 GMT  
		Size: 9.8 MB (9810650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7678febd6b1b3b12ee91da86cd1d87d355e434cd55939d2e8fcbedfb5782ad24`  
		Last Modified: Fri, 08 Sep 2017 17:36:16 GMT  
		Size: 867.1 KB (867069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33b8dec0146ce4ec4702039938751c8b4d40b9b9a6ff5f008b1017037cd40b2`  
		Last Modified: Fri, 08 Sep 2017 17:36:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b8f1cb889e48d05d0996a0d77b7f66edfe820effae4ede9d35560fb61afafe`  
		Last Modified: Fri, 08 Sep 2017 17:36:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fc5750b3c34d0a37e0fc4031b0158a55bca0a346274b0d39ed210d72a10714`  
		Last Modified: Sat, 09 Sep 2017 05:44:08 GMT  
		Size: 234.2 MB (234242404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
