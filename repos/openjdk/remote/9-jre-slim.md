## `openjdk:9-jre-slim`

```console
$ docker pull openjdk@sha256:aced2589fd8248d0ba0bd0381dc6e927d2661ac62218bc8c92ab1d6718a430a3
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
$ docker pull openjdk@sha256:13fc0783027c15d83df99ae6a23e4bf3fd8527283dbdfc2f28bf72c7757b48a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181410563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c621c433bfc81241d5784187304aa6e7d7e302758103fbb2713f58c27330d9b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:37 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Thu, 07 Sep 2017 23:06:37 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:56:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:56:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:56:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:58:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f67c3b2eb7a22e011d15cd84635c32080c4513cee65019c649ff4381a27a8aa`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 461.0 KB (461005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a82e2706ce5e16c9debb4ce1cc258e613455505290a0123b1c9094d17000e`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f505cbb0d8ec7e9f3519dee48ca7a3ac5c8d85c68d5a95d018428974d1fb8c5`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8fbc07b15cd710adbd11f226bd3564b2d9fe7f59e01892011dde11ad4013cf9`  
		Last Modified: Wed, 13 Sep 2017 00:10:34 GMT  
		Size: 156.1 MB (156067238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:ef20c752739ac1336ea22d6632b23adde8635bd85f30dc432d5670b7c490f433
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154758942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f320a3f9ad4a1b1145a8ddb955ecc74c9f1cb665f675f951d84c63c6172f887`
-	Default Command: `["bash"]`

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
# Tue, 12 Sep 2017 02:16:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:0c7d9cb8e553d8f4a60f5c34541dc27064dc85ef572f1a2e35b9283897207f37`  
		Last Modified: Tue, 12 Sep 2017 02:37:19 GMT  
		Size: 130.9 MB (130936714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:366cb2d19c3dbaa93790bf984dd6b1a6f5dda22bcfcaa6499bf6cee3b6feb8e2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158757426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9e9288ac156ff69ae45aefb13fb986c2ac0ed557d28b0306edb22558ebe481`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:43:30 GMT
ADD file:7a2024ff375a18ee2843afbee8dab8497beeaeb1ca65657dc48ca7aa5ce9efc3 in / 
# Sat, 09 Sep 2017 01:43:31 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:36:24 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:36:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:36:28 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:36:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:36:29 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:36:30 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b9dbbcc9cac891907ad8ea28266b2a608c17196e148b129be0a1e5acb1a52ad3`  
		Last Modified: Sat, 09 Sep 2017 01:55:44 GMT  
		Size: 22.0 MB (21954310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98709f60e55e8915f685c052728c4aee11e52b6fc0fd944372bf5726d4fe129e`  
		Last Modified: Wed, 13 Sep 2017 00:09:28 GMT  
		Size: 437.0 KB (437036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f103f0cd88b46bd394205bb64679788ca75c2167fcc62c4af9e9510d679b0202`  
		Last Modified: Wed, 13 Sep 2017 00:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cd668e2d057e229b0ba7250efd7f0d5390a6ad0c2825cb1b5272ffe48a5cc6`  
		Last Modified: Wed, 13 Sep 2017 00:09:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a065b6cefa18788e0ccd17c159d92c83c8283c6acc7650cc3b3bdea7331394c1`  
		Last Modified: Wed, 13 Sep 2017 00:14:10 GMT  
		Size: 136.4 MB (136365701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-slim` - linux; arm64 variant v8

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

### `openjdk:9-jre-slim` - linux; 386

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

### `openjdk:9-jre-slim` - linux; ppc64le

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

### `openjdk:9-jre-slim` - linux; s390x

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
