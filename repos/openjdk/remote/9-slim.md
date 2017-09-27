## `openjdk:9-slim`

```console
$ docker pull openjdk@sha256:8c80e4b45428e22abd2f359a291d4c76f95c7bb8af189e08f04a3669789fb8d0
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

### `openjdk:9-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:727e027444254a3c86a722fce01e4c0dffa5160c3d86fcb406e0167f61ee1e40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181758722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9133c8d88482c022d40669ae34cd3abe4a0ed7c8741b67317da1c0c46e45b519`
-	Default Command: `["jshell"]`

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
# Thu, 14 Sep 2017 04:30:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:30:45 GMT
CMD ["jshell"]
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
	-	`sha256:b6496a3d87e8fd6bd0948736b75b9957e6c91d9ccd9c866544718e24e4256a97`  
		Last Modified: Thu, 14 Sep 2017 05:04:18 GMT  
		Size: 156.4 MB (156415402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2bd5a35ac083281d07d9abf47dd2efced2b2b3bca888d3dc90cb9c927f0872b7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155090060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d12aabd3752ad01d64e193cfbc70eba0c2afb0776231182c88b9b50476ed9a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 08 Sep 2017 20:01:42 GMT
ADD file:9fd08033741630e1cf2c9b67a5e012c64f276e511b4556ae58565c5192b23289 in / 
# Fri, 08 Sep 2017 20:01:43 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 01:54:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 01:54:25 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 01:54:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 01:54:28 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 01:54:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 01:54:30 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 01:54:31 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 01:59:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 01:59:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:70016c08ec11e3fa07d934669267944387eb8b73166ef8170497d1444c891e38`  
		Last Modified: Fri, 08 Sep 2017 20:18:10 GMT  
		Size: 23.4 MB (23367467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698cf88bdecf1f0e37a4fac0d4ab6655309f4ee1b49c3e407ac4bc5d70871f1b`  
		Last Modified: Tue, 12 Sep 2017 02:32:06 GMT  
		Size: 454.4 KB (454383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f5f06ed3a3444925d78da796b59c3f7d3357449ef9a6ebbcc230cdbc738655`  
		Last Modified: Tue, 12 Sep 2017 02:32:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03c6f858c84ea8a535ed894941c522fb7a71b8e814c904d1903bc378f003668`  
		Last Modified: Tue, 12 Sep 2017 02:32:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940dbf32ab3fcffce46991f30dcabc7bce114169334171db16bec7e0ca583d9e`  
		Last Modified: Tue, 12 Sep 2017 02:33:04 GMT  
		Size: 131.3 MB (131267832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:5079c9b32f4699bf260c5f98361ca507f40ab86e10b31035e3dd69c2aa1bc03d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159097010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60271298498b4d8be734257cabf9ea983b069f4d8534972d53e1d955c64d44f1`
-	Default Command: `["jshell"]`

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
# Wed, 27 Sep 2017 05:29:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:29:32 GMT
CMD ["jshell"]
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
	-	`sha256:4480078ae538149cfac5f30c506ca038f336b61bc15f490eb92153b925bb692b`  
		Last Modified: Wed, 27 Sep 2017 05:41:38 GMT  
		Size: 136.7 MB (136702452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7367e4737ccd33827d48a75b37889638f5e74862cd2a76793764982511363295
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161613316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af52de42dc5f77a1686e2658d27841e185b296e985516a46996a50d074fcfdf`
-	Default Command: `["jshell"]`

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
# Fri, 08 Sep 2017 22:50:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:50:12 GMT
CMD ["jshell"]
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
	-	`sha256:d9dfd52e3e11c681c15fe1a61b9b13d6850eceec1e4e1243c3e598800907b23d`  
		Last Modified: Fri, 08 Sep 2017 22:58:01 GMT  
		Size: 138.5 MB (138514007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-slim` - linux; 386

```console
$ docker pull openjdk@sha256:2be13ea5330a44fe8f753d9f7e7170b3d18531131a77224b6c3069e67ca647c2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185121133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc50edf1b76b2a5e0f52532e65be465dd697e662ed9be82f55ce51f70a383f04`
-	Default Command: `["jshell"]`

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
# Fri, 08 Sep 2017 15:18:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:18:12 GMT
CMD ["jshell"]
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
	-	`sha256:19805197036af448d06a183d54079133eb0a2ed9b9ea36fed6a90a4867d3659f`  
		Last Modified: Fri, 08 Sep 2017 15:37:44 GMT  
		Size: 159.0 MB (159035703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:36292f9760a2b039d410e1a2e7f384b6af5d0327178bc6550c047240110afe7e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165793236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54b9f6e7788e474301256fb287b76a5689465e13ad0abb7b044fa8c55daa80d`
-	Default Command: `["jshell"]`

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
# Fri, 08 Sep 2017 01:28:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:28:25 GMT
CMD ["jshell"]
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
	-	`sha256:0e3c2ec9cdeb8bc893a7ddf5636993748c10a1757e3a1b7099a62cdc91f35137`  
		Last Modified: Fri, 08 Sep 2017 01:32:09 GMT  
		Size: 139.8 MB (139767303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:806676b66585e4e475dd67161d855d18f55e47e1a186575836a076fe2a56f2dd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165658627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf29b84630b0f1aa2ad9399f924011385bc75a3faaa1ce701ebb51e1ffb0a661`
-	Default Command: `["jshell"]`

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
# Fri, 08 Sep 2017 05:56:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 05:56:27 GMT
CMD ["jshell"]
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
	-	`sha256:8e12e5208583fe26c747d54eef51362af3950860b3856b980a5ffb868d52c338`  
		Last Modified: Fri, 08 Sep 2017 05:59:07 GMT  
		Size: 140.5 MB (140530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
