## `openjdk:9-b181-jre-slim`

```console
$ docker pull openjdk@sha256:3b26ac0d62b992adfd4c7b313a297002a2060c87a6cd59de9d2c119e09daa763
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

### `openjdk:9-b181-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:03ef6b4690cf3082310a05e48e963b35f19d51019d480b9e990a9edca4f865b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181410807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbcd36f1c1b5126b9d39500da6f094be477741de3e82493f680c65fec84b7449`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:25 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Wed, 13 Sep 2017 08:41:25 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 04:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:30:06 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:30:07 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:30:08 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:30:08 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 04:30:08 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 04:37:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc417a6144688d37dc802238dde1ee6a447349b680c4e8f601cc5d08eb022a94`  
		Last Modified: Thu, 14 Sep 2017 05:03:48 GMT  
		Size: 461.0 KB (461000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dda1c5fb53e4df1fd8682b35fb5b859ea5f82efa6c740fe0cdc6ae3b7a13ebf`  
		Last Modified: Thu, 14 Sep 2017 05:03:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6709ec82ab0a92e77eab8a2a6f6cfd09ed0408fc9e9945ce60e0bf8791c42c1f`  
		Last Modified: Thu, 14 Sep 2017 05:03:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab77cdc2430932ef89b2f1c31492352b6c369ebe3f23cc6ff48924eaab4fdfc`  
		Last Modified: Thu, 14 Sep 2017 05:06:38 GMT  
		Size: 156.1 MB (156067487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-b181-jre-slim` - linux; arm variant v5

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

### `openjdk:9-b181-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:ba3d3fd9d785b271951be88be86fb35eebdbe1e2a5e3d97a321b6ed9c19340ab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158746742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1134073f5470b334d9883de36109116edaad8df9865970ccf51a57471575e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:13:57 GMT
ADD file:7a2024ff375a18ee2843afbee8dab8497beeaeb1ca65657dc48ca7aa5ce9efc3 in / 
# Wed, 27 Sep 2017 04:13:57 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:28:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:28:53 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:28:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:28:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:28:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:28:56 GMT
ENV JAVA_VERSION=9-b181
# Wed, 27 Sep 2017 05:28:56 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Wed, 27 Sep 2017 05:31:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:363b04344ddcb2cfc7f49292ad4bbbb6bd1e24dc1bef5b37707dbb3fafc0edca`  
		Last Modified: Wed, 27 Sep 2017 04:19:34 GMT  
		Size: 22.0 MB (21957111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebad3afe0dde99b22f08beb3d3722464d2beef17c71cb82ffeefef5fda87252`  
		Last Modified: Wed, 27 Sep 2017 05:41:12 GMT  
		Size: 437.1 KB (437068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b433c3f1eac6182a52b4ded7e999684c73a93b7fd60dda33c9e8d48dc26bb8f`  
		Last Modified: Wed, 27 Sep 2017 05:41:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0381fd84fd01de7603a818e3636528314c7088c17ecf6085db0fa8da1160ab5`  
		Last Modified: Wed, 27 Sep 2017 05:41:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc0fd0e3b9ce55e1cd439d03bbc613191302bd317191c75291eb96989290c28`  
		Last Modified: Wed, 27 Sep 2017 05:43:19 GMT  
		Size: 136.4 MB (136352184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-b181-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:84a7c0c678f115da919824287d8d1ce2c7588dac3d1061903b12a4b7d0c138cc
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161275592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf99aaea8ca38b2385a9a491c2f0055607ce0a431a92b7c8e52f5d292d213a1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:26:41 GMT
ADD file:7cce27d82405d7a3f39c369fde3e7b7511bfca1ffdb04673918e1de5aff383bd in / 
# Fri, 08 Sep 2017 17:26:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:47:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:47:58 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:48:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:48:04 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:48:04 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 22:48:05 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 22:48:06 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 22:53:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e5868fb8dbe395628ad2da569e09fc6c1d0398612b14bfb6fb8b990ac3dee588`  
		Last Modified: Fri, 08 Sep 2017 17:39:55 GMT  
		Size: 22.7 MB (22653040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568c8a5163c42b16c427043913ccc38aecf37a1c8b7f17fb654923657499fb0`  
		Last Modified: Fri, 08 Sep 2017 22:57:31 GMT  
		Size: 445.9 KB (445890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646029eff7c73c8ded8b484f8ba98c3613ba297039891dc7be3489d05d2e1568`  
		Last Modified: Fri, 08 Sep 2017 22:57:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdd47da0aa30578ec7fb305a0d9d6232baf55c462162fa02ccf00e5fb913082`  
		Last Modified: Fri, 08 Sep 2017 22:57:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8293e6b46617d2bb07c8f4f23d44703ceea1991104bf2ff33df7160772cb609`  
		Last Modified: Fri, 08 Sep 2017 22:59:03 GMT  
		Size: 138.2 MB (138176283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-b181-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:d04dfe3e2a8688bf9df93fda1264a5d3bae7b4becde42316b7ada278a3b63207
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184780921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43faebd9e2b7f41ff6bf9c80e40a7d74c7635d176989867e10b6d3c18e178732`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:11 GMT
ADD file:40d47d772ab0ee4d64b5cf6e5e9303e76a28ea856c50b3c991cf59025b9c982a in / 
# Fri, 08 Sep 2017 13:19:11 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:17:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:17:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:17:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:17:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:17:25 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:17:25 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 15:17:25 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 15:22:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e9bde2030b151dec537b192bc227b6cb0145e8bb67785476b9bf44162ac12654`  
		Last Modified: Fri, 08 Sep 2017 13:25:56 GMT  
		Size: 25.6 MB (25615475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88019c368f75169ed89ac0e456f7b0a1a2a2ace631250323533bab7498e1e390`  
		Last Modified: Fri, 08 Sep 2017 15:37:16 GMT  
		Size: 469.6 KB (469577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3524fb84f465ba1f928bcb893622d90b5a15ea9cd1716df95d607bb6d6e5d`  
		Last Modified: Fri, 08 Sep 2017 15:37:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0593a796a0996750eda0c8831117ba4ea40e858e1aa568c3001d6bf7bc4ca4ff`  
		Last Modified: Fri, 08 Sep 2017 15:37:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eb43856a478101fb920d1d1285e44c3a0ef98ebaa310f9fc2e83af94db5520`  
		Last Modified: Fri, 08 Sep 2017 15:38:49 GMT  
		Size: 158.7 MB (158695491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-b181-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:da0bb763522b649829326fd0059ad3cd22d23353eb8d6ffc2ee29d1903a2deed
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165376480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9049f4b79be28220e046b8545a873635941ed84644f45a096ff3295b23667ef`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:30 GMT
ADD file:d3451f01b15f70cdb3f80dd1014de1bb9b2d5e613c48ba06ec7dd32e0f5abb4c in / 
# Fri, 08 Sep 2017 00:33:31 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:27:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:27:43 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:27:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:27:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:27:45 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 01:27:45 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 01:27:45 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 01:28:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f66bffb4be1df483e4472f05097734fab2e4f676dd632dfd6bb699d6361724ce`  
		Last Modified: Fri, 08 Sep 2017 00:39:34 GMT  
		Size: 25.6 MB (25569771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6149dceef38e929d517152933fd6ea8f50c0701ce92fa1d21c44d1d6deca2499`  
		Last Modified: Fri, 08 Sep 2017 01:31:48 GMT  
		Size: 455.8 KB (455783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7444e046322ee5b9bc2f19f22c872f4e2470d4ec753f6f9ea672f535d93dc0`  
		Last Modified: Fri, 08 Sep 2017 01:31:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb553745886e53655f7ac4d4d2d786e96b4568e55feb819db0654546dfeb79d`  
		Last Modified: Fri, 08 Sep 2017 01:31:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b5b4d003ecab4d8a3fcc3bd4490e1252ef6b0d2883a7075ae069463a27794f`  
		Last Modified: Fri, 08 Sep 2017 01:32:58 GMT  
		Size: 139.4 MB (139350547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-b181-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:baa5c10d01610f61fa15321dad8379238eb12675022a9dceb385c74ed555e103
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165315469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d06a0a59e76610e772922f5e9bb29fd45ba742cc30fd0c6df60f87f53e5afa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:27 GMT
ADD file:d06ded297d4dee4ec19f41a08a1ebcc4d9b470fb1401e6fd693725984b002fc9 in / 
# Fri, 08 Sep 2017 05:22:27 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:55:47 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:55:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:55:48 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:55:48 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 05:55:48 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 05:55:48 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 05:56:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:fd80618bdd9876fcdcc364cef7892a6a00cad4d53340bbb4aa1105b3a57b8687`  
		Last Modified: Fri, 08 Sep 2017 05:26:06 GMT  
		Size: 24.7 MB (24655923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1befb18804085dfcfbcff98854d9a15fa3b727c2ede98c6910907171de15b58b`  
		Last Modified: Fri, 08 Sep 2017 05:58:52 GMT  
		Size: 472.0 KB (471953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9909cfdb22f68df1d267fdbef5704b3cde51e57cfbf54cd50949b316325aac37`  
		Last Modified: Fri, 08 Sep 2017 05:58:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e634d4f56394284765d3054f19fe1e8ea00cc3fed4ed79cb878a43e7e44b193`  
		Last Modified: Fri, 08 Sep 2017 05:58:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bcd0354e0c006ccc3cc22523c042a6424cd44481f7d57ed33a7b1fea277177`  
		Last Modified: Fri, 08 Sep 2017 05:59:38 GMT  
		Size: 140.2 MB (140187214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
