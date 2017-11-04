## `openjdk:6b38-jdk-slim`

```console
$ docker pull openjdk@sha256:a2d1c119cc55a40bc91169faec589c569e1a7e7c29ef3bec792ea5a5b2abc13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6b38-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:db4b8b966521e8e663f18048f2a8e489912ac132a0896b211e824b497eece0a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116782728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d026c396cb4f49cc84ff5a96fadbf9e211e6625292b1acc151eab28bf4350383`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:35 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Sat, 04 Nov 2017 05:27:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:35:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:35:29 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:35:29 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:35:29 GMT
ENV JAVA_VERSION=6b38
# Sat, 04 Nov 2017 05:35:29 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 04 Nov 2017 05:36:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da05e80ea369f7ca40b614d96463efb275485ba16ce43556208636663a326d2`  
		Last Modified: Sat, 04 Nov 2017 05:55:44 GMT  
		Size: 401.3 KB (401268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe33d38643acad1dbd183f5e6a6c2c83e27e3e44bbe460e193e4a1effb667bec`  
		Last Modified: Sat, 04 Nov 2017 05:55:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a17dc23f5db5dd260166fa61f517363229347bf72ee7e716cb6ef9415916d1`  
		Last Modified: Sat, 04 Nov 2017 05:55:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b14a00a4003177c8476e82a7d8b10e18be381d181bc54a5dfb2a554d76fcef4`  
		Last Modified: Sat, 04 Nov 2017 05:56:03 GMT  
		Size: 97.2 MB (97221980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c9ec215839ed7e838abb5d5d1406e4b2b178496d88879efdf011eefeac577fd6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101605766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217ecbba077d9c17852989b14381d23b2a03b747acfe05e025b4d268e4f011c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:03 GMT
ADD file:14d060c2bbf983c6f8bf1a7f0be8c11af38c802d1976884a8abb9e2e68a933ef in / 
# Mon, 09 Oct 2017 21:46:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:22:49 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:22:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:22:51 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:22:51 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:22:51 GMT
ENV JAVA_VERSION=6b38
# Mon, 09 Oct 2017 22:22:52 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 09 Oct 2017 22:23:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6548ed048b6a8628eb743a6c161347c7346d3e9b2863ca40b96cde8ad9740685`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 18.0 MB (18016903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b7b0269323e2de7a3ec7d3c4ef2ef14188c7e87c077bdfce0f3e57c4854f3b`  
		Last Modified: Mon, 09 Oct 2017 22:32:44 GMT  
		Size: 403.5 KB (403498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd130e15ca46966b89da0090d85ab9de2095d95b9784b425be56ec6420a5aa5`  
		Last Modified: Mon, 09 Oct 2017 22:32:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd62b617d52906cbf8f4e7f2d132df007e415f729ce803fe5e05ed9632e5ecb5`  
		Last Modified: Mon, 09 Oct 2017 22:32:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0e328305d1d53f49fd6d8a691ac33440b1517bd16d011aaa9f75acfd8952d2`  
		Last Modified: Mon, 09 Oct 2017 22:33:02 GMT  
		Size: 83.2 MB (83184988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:0d3aac7cf2a9414c93069c7342214ba2062e0481411b66efe40ae22587bf7d0c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98305816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32663b0b18e31d0700b98928048de44bfe14296e974ee5497a04681c547148b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:23 GMT
ADD file:b266d990ce55ec965e222a1be7b95fbe01c6d99821fa22199415e21a96fa0d01 in / 
# Mon, 09 Oct 2017 21:47:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:52:26 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:52:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:52:30 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:52:32 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:52:34 GMT
ENV JAVA_VERSION=6b38
# Mon, 09 Oct 2017 22:52:34 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 09 Oct 2017 22:53:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4e53cb9c74291ac4a5a1f7db0b5f789031b91fb7247c48559b64cdd85af2b6c`  
		Last Modified: Mon, 09 Oct 2017 21:57:13 GMT  
		Size: 16.8 MB (16756444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753c57ca0dfb4539431cd77e9f4be80250d14b30a5aa493cb012cd53c14b5dc`  
		Last Modified: Mon, 09 Oct 2017 23:14:52 GMT  
		Size: 391.1 KB (391089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881070e246872adebfcd5edd9206a3bd313c9bd22eb69180b19c1ab3c5452b7f`  
		Last Modified: Mon, 09 Oct 2017 23:14:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2c74dd0b150de1ae8f90b7a17c3041cba9ad4bed3758de29866679394efdd5`  
		Last Modified: Mon, 09 Oct 2017 23:14:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d21112fad5155d0eac67350af8c4850eee67c874c73fa734287fb099b2faacd`  
		Last Modified: Mon, 09 Oct 2017 23:15:07 GMT  
		Size: 81.2 MB (81157906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:289ba698ef865c2645e9f2b0c1190305314c4ee41686c2b888187a5b4b3abf7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125225812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed9a730e6ac4adf91bf43a5f04cae236d06afb5c6794c966c31fa04548b2382`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:48 GMT
ADD file:db9c18a5aed697b855ea74a4c419a75ba771664f6f5f3a1a69028cafe801d824 in / 
# Mon, 09 Oct 2017 21:46:49 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:46:25 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:46:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:46:27 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:46:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:46:27 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 00:46:27 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 00:47:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b7382aa0fb9022fb39c105bc94edf6f0c88d40f9c313a6b8b44de7fc5030038b`  
		Last Modified: Mon, 09 Oct 2017 22:01:19 GMT  
		Size: 18.5 MB (18492372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548f11acd0f1c441a74b06d6e293217dff73ed94f649a58d783d29c2cc5f13c7`  
		Last Modified: Tue, 10 Oct 2017 01:36:49 GMT  
		Size: 392.0 KB (391991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbe9e39fa4eb2c376153536425d00cc8b4672fdab31de73682cb6dc115dc83b`  
		Last Modified: Tue, 10 Oct 2017 01:36:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4af251c264114c528452810cc24f05dcedbbc1e254b0fb841a4fbdbf733ea4f`  
		Last Modified: Tue, 10 Oct 2017 01:36:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefe6f63594b754de3728bb1ea146f5c93f9e602dd10f4e12fcff5e6b23ceacc`  
		Last Modified: Tue, 10 Oct 2017 01:37:11 GMT  
		Size: 106.3 MB (106341072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
