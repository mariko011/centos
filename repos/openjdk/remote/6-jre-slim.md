## `openjdk:6-jre-slim`

```console
$ docker pull openjdk@sha256:08d44d677a5ea230d9f343d2908bc171d0f9bc83188ddd83719245f318e530cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:1c2095508ab645c5f736b53ea939102f1968e5061c577d2b95337b791ecc628b
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74026307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88cd3c31a5a291075bfea5cf5f1368642b872b96400527dda94f783baead45c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:09:15 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Thu, 07 Sep 2017 23:09:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:43:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:43:01 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:43:03 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:50:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:50:08 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 08:50:09 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 08 Sep 2017 08:50:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9a25b15f285d312795c4c6a6ecaf59bec97644f0633a2c3c351a4f82eab623`  
		Last Modified: Sat, 09 Sep 2017 00:29:07 GMT  
		Size: 233.4 KB (233377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91e7c7b2e04eb5e4bc5174517ddd860c8a67bd16820658e7aa882885f21a577`  
		Last Modified: Sat, 09 Sep 2017 00:29:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd581de150b56dc542dc90c7b509b42f836cd49ecfdcd22a6e42ce97e2118eea`  
		Last Modified: Sat, 09 Sep 2017 00:29:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00173774f8fe2cc2cb1b71b37b64ee99dc4394edca4b4516229873eada64d147`  
		Last Modified: Sat, 09 Sep 2017 00:30:47 GMT  
		Size: 54.6 MB (54633472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c9a994a8f483f3e0da054fe13fc67a093f0c2ac4a8115e4f1241bbaa8708dec9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63441779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bee3d05ab6e959dd0580b2a882579efc9eadbb3270b2675e5f4db6d4e5a4409`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:07:56 GMT
ADD file:2f0a2aec2d52fa3a021db9aff440c32fb8e67948c0fd8adc3b3beeed2fadb2a7 in / 
# Fri, 08 Sep 2017 20:07:58 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 23:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:17:23 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:17:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 11 Sep 2017 23:17:27 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 00:41:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 00:41:06 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Sep 2017 00:41:07 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Sep 2017 00:45:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6173effbd3863beaaed3d7407396b0fbf9f981549f43a00a6e64bca0e90da7f8`  
		Last Modified: Fri, 08 Sep 2017 20:25:39 GMT  
		Size: 18.0 MB (18017555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f685e4029aaf27a2b7af4df56aff0e7689defde2b9e26a2fa76e6a966a855`  
		Last Modified: Tue, 12 Sep 2017 02:17:37 GMT  
		Size: 403.5 KB (403470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1ef976f6a4537aa5c40bf0c4c6ba3df77ce53cb2b20a928b5e06ab7cda663d`  
		Last Modified: Tue, 12 Sep 2017 02:17:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92424a0972859344c913a41a66de6833ec960b55d7391701e45778c9a9dfbd6d`  
		Last Modified: Tue, 12 Sep 2017 02:17:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77b8bea2ea93c7d5cd46e1d9b12c06766f42fd0bbb86c0eda9fee4c1c66fffa`  
		Last Modified: Tue, 12 Sep 2017 02:20:36 GMT  
		Size: 45.0 MB (45020376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:298174bf91851facca4529ce4069a73b3453588f223784138051007c546e6b81
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61191846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236f8e054e56d444a0bae5447e6671055e672692b02430ffcfd7b72d60e8dcbe`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:47:39 GMT
ADD file:b7f27d51042596627d93b4dfc6aa9947289f27da287d3120706d238f5f8d9e55 in / 
# Sat, 09 Sep 2017 01:47:40 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 22:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:47:05 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 22:47:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 11 Sep 2017 22:47:10 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 11 Sep 2017 23:00:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 11 Sep 2017 23:00:32 GMT
ENV JAVA_VERSION=6b38
# Mon, 11 Sep 2017 23:00:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 11 Sep 2017 23:02:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5c1f3df4f801bb54f0fcef8f9587807cbf20476c031b4ddc53e99b21076f968c`  
		Last Modified: Sat, 09 Sep 2017 02:01:29 GMT  
		Size: 16.8 MB (16756505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9853e2cc6b45cc006977d6c63215a4e281e2be113a212b73326f6626e8f39e`  
		Last Modified: Tue, 12 Sep 2017 00:26:05 GMT  
		Size: 391.0 KB (391034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0371bc51cd25981a84fb3675c38a61f8b9c05a89e1a73d96233e7b5444549370`  
		Last Modified: Tue, 12 Sep 2017 00:26:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15feacbee75e468433983ffa6ffef3b905d31a11b904d4e239675db720dd6612`  
		Last Modified: Tue, 12 Sep 2017 00:26:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab618e754c2a9ce047848693b0b17b00344866794fbee17860ab8939804657ed`  
		Last Modified: Tue, 12 Sep 2017 00:31:31 GMT  
		Size: 44.0 MB (44043930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:d7f5908b7bd1ffa6c0e74c3069f55dea12f36ea74da127d10553705dd59c9a6d
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83892884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993b7cd2d8d05aa40e4a1f25276427aeea4d840eae99fb52774bf07611548317`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:59 GMT
ADD file:da85b13122cebf877982c0aef4712a2e4d3fc1eb4218991ad72f635a97d90a7f in / 
# Fri, 08 Sep 2017 13:21:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:05:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:05:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:05:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:05:03 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:08:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 15:08:24 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 15:08:25 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 08 Sep 2017 15:08:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:deb6de00f97f6ae865eb39c7b57cbb71e093553119772ec401408041de09a9a5`  
		Last Modified: Fri, 08 Sep 2017 13:30:07 GMT  
		Size: 18.5 MB (18492353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59250701eb2a9d8d1f308f49587d6b29427b55fd5d2a4ec6475a19d48a7617c`  
		Last Modified: Fri, 08 Sep 2017 15:25:58 GMT  
		Size: 392.0 KB (391985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a398a7b7ae51eaa2ee2455151d2f4ab177009845df71c541762034e287f4c4`  
		Last Modified: Fri, 08 Sep 2017 15:25:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685bd003ab38b3ea1a89e40d6388f565e9efd083975b47863e0c6b59d69ef608`  
		Last Modified: Fri, 08 Sep 2017 15:25:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046ee48a6421dd1f0d0272958208e1daa26b0104edf9d4ad2dbe97ffab697d56`  
		Last Modified: Fri, 08 Sep 2017 15:26:59 GMT  
		Size: 65.0 MB (65008169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
