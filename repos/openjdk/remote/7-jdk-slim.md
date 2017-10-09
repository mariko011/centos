## `openjdk:7-jdk-slim`

```console
$ docker pull openjdk@sha256:5f9518f1b60e9fecd1f0be29b01beb556d781c04f5082b0ca5eb4a24498d7e0f
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

### `openjdk:7-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:ff40a6011397e368f7bfea752e61dc2a0f67a3eaa039a8988ed8870827ef6706
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148764714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a47da12a6605dfcdd8a22c80b2c10ebe68eb1529346b64d933a8cc5a8a0dc13`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 04:11:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:11:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:11:34 GMT
ENV JAVA_VERSION=7u151
# Thu, 14 Sep 2017 04:11:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Thu, 14 Sep 2017 04:13:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f831104fda9557c6ae5279ceb3269d3b783e4afa5f70d2126a13eaf6618b9b8`  
		Last Modified: Thu, 14 Sep 2017 04:49:54 GMT  
		Size: 463.7 KB (463721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b4245e7e18e2a0d2301d1908772e9b9d3f8aa69512f6e6d37d23e8e8aa31a`  
		Last Modified: Thu, 14 Sep 2017 04:49:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fe203a2b0d5826524ce28e86f131a394f36308325009ea7702edc14973927f`  
		Last Modified: Thu, 14 Sep 2017 04:49:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3015d07236b789471cebd9b817a3354f4c66c849e02909824a765ad04c2c3d88`  
		Last Modified: Thu, 14 Sep 2017 04:50:19 GMT  
		Size: 118.2 MB (118187481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:7fd53ebaaeef2f60a08f2911762539c52ece1f028a9cb453155d673929180a79
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121591931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b10da9a3469e06ee83b0928367caf4fe96e92c4e5be56902c353cadf7b7aa5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:25:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:06 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:25:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:25:08 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 22:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b02d7fa857225f8fe9f4bcfcde571076c36be7dfca1e4e88ce780d72e4fad`  
		Last Modified: Mon, 09 Oct 2017 22:33:33 GMT  
		Size: 456.4 KB (456423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8c85f6ae880c220ff4fa80b9fd4b97ec42f75161b1ce865acd3f831f4b66b3`  
		Last Modified: Mon, 09 Oct 2017 22:33:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23c3842706b23b79fdd1182c1ffd24590067bf1e89812f0bdd57ff59be6b842`  
		Last Modified: Mon, 09 Oct 2017 22:33:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300af258a524d0b08d306a1e7e21393e53e40b79c4a5f3adf8ad06a4775942bf`  
		Last Modified: Mon, 09 Oct 2017 22:33:52 GMT  
		Size: 92.7 MB (92710930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:c9a932218574b90858bf9e4e7b29f092826bc696eff246cc4aa661e91184ef03
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128633220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb92dff8cca2354280090d9d25a7b8946c12657d258f5c254aac3f250a1b794`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:17:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:17:07 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:17:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:17:10 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:17:10 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:17:10 GMT
ENV JAVA_VERSION=7u151
# Wed, 27 Sep 2017 05:17:10 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Wed, 27 Sep 2017 05:18:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f407acc1bf9311ff87df11b6e3a18c5061b5e4b49883348ba3144847d9a2d59c`  
		Last Modified: Wed, 27 Sep 2017 05:34:21 GMT  
		Size: 432.3 KB (432308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c0b5c7c74c3d9a9067e6204ce68d9eb5093a098eb80a5484602f1b7eb6a9e5`  
		Last Modified: Wed, 27 Sep 2017 05:34:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af16ff0c6f96404448c4fbaa1f6ecc63d04cf3c1f842b4d5820df0be7ed34f3a`  
		Last Modified: Wed, 27 Sep 2017 05:34:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd398d17ff366221f069444b7f5690d23825946751a16ab56d6b1225b947c4b`  
		Last Modified: Wed, 27 Sep 2017 05:34:59 GMT  
		Size: 101.9 MB (101920352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7c11ae1546a6a033271580d5021a090d4d76b7c2438147ef7f62c932b6918137
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120592822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7ab8309cc683a4d8a83f4d619e34b92eacf92cc00bda7ebdc93f372e1fbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:31:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:31:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:31:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:31:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 22:31:46 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 22:31:49 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 22:38:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06476177444c94ae833f2a9b435a2ba24073c044c2fa6c7e7d4218dd3819f080`  
		Last Modified: Fri, 08 Sep 2017 22:53:55 GMT  
		Size: 457.9 KB (457912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe3505ab724417f4366915a5597416c6df57c75d3dc4ec153fe96af92fe02b`  
		Last Modified: Fri, 08 Sep 2017 22:53:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d57d331bf9b5c2e2c4dea583baa9a0972413082c64388450695b43dcec6fa98`  
		Last Modified: Fri, 08 Sep 2017 22:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4c131ed4e4bd8f0f09df679770842b3338f5253a1e408fb8668148f45ed929`  
		Last Modified: Fri, 08 Sep 2017 22:54:18 GMT  
		Size: 92.7 MB (92654144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:9fd9862a7cdcb2a0704daf9cca8939a7d3558f1452f3d784bedb1a350f3ed768
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161841032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a4e4dda7d607e2c0684f62b5cd314fea71e9b7fc2302d28bf7474a6074a262`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:09:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:09:19 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:09:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:09:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:09:21 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:09:21 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 15:09:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 15:11:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5602c48c129a841ddaa28f06465e135c9abda1ba67db997c6e3af4b6155ead1`  
		Last Modified: Fri, 08 Sep 2017 15:27:34 GMT  
		Size: 466.3 KB (466262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8de44a200f38e970d37186053d51e522863f55948ae18482ae41854c7e05f`  
		Last Modified: Fri, 08 Sep 2017 15:27:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f1fac857e012d0594a3757a9f81dc72e73a5a8288a42f0237a12ed99a3dc1d`  
		Last Modified: Fri, 08 Sep 2017 15:27:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b1a1626f0785962af91902e4206c762b211ba86aa9f8fefc153229b4eb28ae`  
		Last Modified: Fri, 08 Sep 2017 15:28:11 GMT  
		Size: 131.1 MB (131110227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:078afd15520e8675e0364d3881388a058d7133d1a92e324a967d2c8926bf5268
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124989438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef4708b4d687c232d5bc9b306ee8d2dad0087de0e8d1ad51586cf086c45207a1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:24:04 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:24:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:24:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:24:06 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 01:24:06 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 01:24:06 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 01:25:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9235bff8daeb90489e9b4dcd34eecb631ebe461287578baea6765b3a098e1031`  
		Last Modified: Fri, 08 Sep 2017 01:29:08 GMT  
		Size: 460.2 KB (460188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e0b3bcb603fac0f3b60007c5d64cb7fe7cc773674dfe83ff61708768d890fe`  
		Last Modified: Fri, 08 Sep 2017 01:29:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f709b92b5451dcb4eb87d3c8a53e9402ecf4ac9ff98bea79845768960062888`  
		Last Modified: Fri, 08 Sep 2017 01:29:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6eddd69c05b3973301b821eb3c025febc345fcc769fac8ca57dd7a5693ae9b`  
		Last Modified: Fri, 08 Sep 2017 01:29:25 GMT  
		Size: 95.2 MB (95222428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:5451fa062f4f6f25635a6cfe3a6cd3369c806efa92f2fd2a4853d34fedd382d8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125841717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e2437537163e83448ed82ebaec2b6833cf5ae1c3ac5bb3a0a28e6d06f57f88`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:52:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:52:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:52:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 05:52:42 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 05:52:42 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 05:53:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683391cda11fb12ccd4d778e62cbb394a30d981ea34fb375da34a75f6201ca37`  
		Last Modified: Fri, 08 Sep 2017 05:57:01 GMT  
		Size: 473.2 KB (473158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6976c7fffe7f57d70821f68aa8b3ba712391b09b7b3c7e6e41a1c12ce6e7a1c`  
		Last Modified: Fri, 08 Sep 2017 05:57:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767d73c3e4385b79b6fed7fb2c28e35c551b21d8c20cfdf82d408880e3a5aa32`  
		Last Modified: Fri, 08 Sep 2017 05:57:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8fd64cb28058efcc82f247bfa56f6487eaa7202d6b84f98199b7ab3a903475`  
		Last Modified: Fri, 08 Sep 2017 05:57:15 GMT  
		Size: 95.1 MB (95074027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
