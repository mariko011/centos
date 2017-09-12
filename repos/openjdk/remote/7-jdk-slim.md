## `openjdk:7-jdk-slim`

```console
$ docker pull openjdk@sha256:8c4adde665e8ddf0546c2dad1c6333958ab9e3a2bf1a792d112e54c225204960
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
$ docker pull openjdk@sha256:f21430ad3c363c910212dfbc576d20fb42d39313fa96b568218d8dc6ea79942b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148559712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afe05459ce217f92f5a49f114d2138d35b088424e9b3d41a276d47337c7f967`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:52:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:52:16 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:52:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:52:19 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:52:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 08:53:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2407ceaa40e946bd4d5b271cfd98a70515099c84edb8f487ca9d206eb492018`  
		Last Modified: Sat, 09 Sep 2017 00:32:10 GMT  
		Size: 258.7 KB (258702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996de5daf9c740dfb8c9e5d8c6aa328d7ace73799ec80500a92d23f30ba21f4`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93740825f716133a99911ac3b1845baff9e883cc818381e25ca05d441f5a6f`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c409dee4973f39fc1b881b248a45e85009c034e463a7fcf55aa40e2bccffc7`  
		Last Modified: Sat, 09 Sep 2017 00:32:32 GMT  
		Size: 118.2 MB (118187505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:69f4e1c53be285aacfbbc02eb76058e7ab3269bde7824cb371be29ce50b06868
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121587438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12ccde3d0ddaf6999b0e145adf13e3bf27db03d6329a4ef4ca3d652ae943b33`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 00:48:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:48:41 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 00:48:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 00:48:45 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 00:48:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 00:48:47 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 00:48:47 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 00:59:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf22afcbde24d1bb6bc8c96cc8ed1b84d607d78d0aac01e60d197b419ef9347`  
		Last Modified: Tue, 12 Sep 2017 02:21:00 GMT  
		Size: 456.4 KB (456370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97fabe8888e623cefb68c94840763dfbeb55c81578ab535b2f79f21a0a9f4e6`  
		Last Modified: Tue, 12 Sep 2017 02:20:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9df8e5cf38736b24b37090f580267708fc0675c52f64f3820b0c70d1f5b44`  
		Last Modified: Tue, 12 Sep 2017 02:20:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b599af2b92f1b18d731a1e342b172b36743e86aa3ff4d5ccb7c0434438707bb5`  
		Last Modified: Tue, 12 Sep 2017 02:21:51 GMT  
		Size: 92.7 MB (92708204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e56176ef99e3a86d75ac4e060db29c59793d26395392857ce4101127d8c0ae34
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127153223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c55f53b7c54b9f8075fe642fd9bda5a182efb2e08d12e2271c5419b45155ef`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 23:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:08:43 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:08:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 11 Sep 2017 23:08:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 11 Sep 2017 23:08:50 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 11 Sep 2017 23:08:51 GMT
ENV JAVA_VERSION=7u151
# Mon, 11 Sep 2017 23:08:54 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 11 Sep 2017 23:18:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74da791cbaf371cdd0cc3dd8f149c43032cc1214a54c1176a4208b42bbd7183e`  
		Last Modified: Tue, 12 Sep 2017 00:31:58 GMT  
		Size: 432.2 KB (432220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda354a2949b31cbfd43a7e6595a0d01f8c801b8099bd6010c0189770e6c987`  
		Last Modified: Tue, 12 Sep 2017 00:31:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73630d3b6686d8b35de217e14411959b4b07bafd5565b8724fd3c4161fa5809f`  
		Last Modified: Tue, 12 Sep 2017 00:31:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b81265b7bac4a35bf562195c07dcdcdae6398727636fcde0c755765127a587`  
		Last Modified: Tue, 12 Sep 2017 00:33:10 GMT  
		Size: 100.4 MB (100441162 bytes)  
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
