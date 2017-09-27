## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:838d27bb6614c0766caef3ff6b8a494eeed35edf6ea70103c095e24b5f2d03a4
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

### `openjdk:9-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:61708be76d9702ffa8672d0bb4ca7a009e4eeeec72993aaeeab185092026d0d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395524876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5635e1f1b080a5cc67a377319032b86f1f4d01583c239998d1980fcccad8a1df`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:20 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Wed, 13 Sep 2017 08:41:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:25:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:25:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:26:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:26:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:26:01 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:26:02 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 04:26:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 04:27:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:27:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477e069deac996dbb6609e7d33fd195256893b13fbc8d2ca163ef3219075241a`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 8.6 MB (8550082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2369104e1f1899f031560bdc2ba86735241f6295cbd404f4f63ac0ff96fdd43`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 9.8 MB (9842477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f49f83dfe2b0402c8bfe38a8e85880d872f9703f4b774a9b9a2a59f767f1a3c`  
		Last Modified: Wed, 13 Sep 2017 12:55:55 GMT  
		Size: 49.4 MB (49422139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24ce2c86454bf1cc4059982e2ddb153c39ae966a9796a20f944f5662bb5d0dc`  
		Last Modified: Thu, 14 Sep 2017 05:02:08 GMT  
		Size: 894.7 KB (894666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198ec39e2543d5000edc9e1ee2638a08b1d83c5eda729fefefb6437ce193ad5`  
		Last Modified: Thu, 14 Sep 2017 05:02:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1317892d65ebad77135200ae5945e726f77a56f072cf2e9d5984c1cac7253917`  
		Last Modified: Thu, 14 Sep 2017 05:02:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ef56490c24c6e56a8a2edca6be4dc9532e63c0e915bce81a5ae0081758d0d0`  
		Last Modified: Thu, 14 Sep 2017 05:03:19 GMT  
		Size: 279.1 MB (279061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:54708c3add89e796b511f881a1197d36d7bc82ab92720ab8eb020a8214cbfa38
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.1 MB (363128539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a18ab79ca7766992663dd4b915d04dc48856868b5a224d4444e86c1eb6f1a5c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Sep 2017 14:25:35 GMT
ADD file:fb7d9ba902b3a4eacc8db6bb7743fe86476c3f26a619da43c04ee6ad3d633f68 in / 
# Wed, 27 Sep 2017 14:25:35 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:50:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:51:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:22:51 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:22:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:22:52 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:22:52 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 15:22:52 GMT
ENV JAVA_VERSION=9-b181
# Wed, 27 Sep 2017 15:22:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Wed, 27 Sep 2017 15:24:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 15:24:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d447b204d1715dbc31a6b6b7599eea164973e66a347eddd3dfbbf065b3c842b5`  
		Last Modified: Wed, 27 Sep 2017 14:30:12 GMT  
		Size: 46.2 MB (46234099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bff4083b857b6654669d0d3ba67d1845858131a1c4654df9207c1b5b06b30`  
		Last Modified: Wed, 27 Sep 2017 15:03:08 GMT  
		Size: 7.7 MB (7736243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9f9aba6421d25c366e18571370b8ef9fe16b440cc0e93555f9095c42ca9f6`  
		Last Modified: Wed, 27 Sep 2017 15:03:08 GMT  
		Size: 9.6 MB (9594665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5512aca249c1ba2147db53870819d032051c89c971c5d9c0fd2fb5f66164f741`  
		Last Modified: Wed, 27 Sep 2017 15:03:29 GMT  
		Size: 47.5 MB (47533636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd95576c75e772507509cf2cb2dcc91c9e30b71cf8cc6ae5308da46d6d93634`  
		Last Modified: Wed, 27 Sep 2017 15:34:20 GMT  
		Size: 887.8 KB (887820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff005a3ea94c5f201367dc597050f50218424fd2bdadc99d770bdb813d474d4`  
		Last Modified: Wed, 27 Sep 2017 15:34:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2d95429834cc67c3e682ca7ba33bdff686a37386f9792616b5a81d355ef74e`  
		Last Modified: Wed, 27 Sep 2017 15:34:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93d4d856c10816def91e5ec25a0de3aeefd2ff82bc554aec7e073c3be27ad87`  
		Last Modified: Wed, 27 Sep 2017 15:35:15 GMT  
		Size: 251.1 MB (251141697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:c21d3e3c6335b1cb97a919c2da83124c2ae93d46cd251a1f4b97f9e2f8284a50
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.7 MB (360725502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb751b486a20e5f13923a9131f3d15d9e9b7bc8f803e0f3f12800f9728ff40cd`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Sep 2017 04:13:47 GMT
ADD file:ff855341f2178170e860c70b1fd4438ad7df8c19fa9f4cb32b259cbcf6f641fa in / 
# Wed, 27 Sep 2017 04:13:47 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:42:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:27:07 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:27:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:27:10 GMT
ENV JAVA_VERSION=9-b181
# Wed, 27 Sep 2017 05:27:10 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Wed, 27 Sep 2017 05:28:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:28:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:243b557ca4232dfba33281e059dc489793fb140673f16a68fb1ec9b67034c773`  
		Last Modified: Wed, 27 Sep 2017 04:19:16 GMT  
		Size: 44.8 MB (44754088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7871f6c42587c891052ac0c5ea649857d2180df74e8ce2a4dee1981126114e6e`  
		Last Modified: Wed, 27 Sep 2017 04:58:40 GMT  
		Size: 7.6 MB (7566063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580d96cea1b66be24cd19fd3908ad2a5b8f5d8569a9585bf40ee80434bcf6704`  
		Last Modified: Wed, 27 Sep 2017 04:58:39 GMT  
		Size: 9.4 MB (9352575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27038063d9e3585e0a3d89099efa80ddb8e2a9c3cb729ce9b8b07727ced1b549`  
		Last Modified: Wed, 27 Sep 2017 04:58:59 GMT  
		Size: 45.8 MB (45770910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614916e75746abf038bdf3fe35b8c28804a34fee250fa8d776e3d39a65c69460`  
		Last Modified: Wed, 27 Sep 2017 05:40:06 GMT  
		Size: 870.4 KB (870388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d972f6d64e32f351a7c0e13232e229f59352e4b5dd3ad45f4eed491082aa28aa`  
		Last Modified: Wed, 27 Sep 2017 05:40:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b677fda2938e776ed4c3d5abf79ee13c9f0fc3ff13c2079aa574417005701fe`  
		Last Modified: Wed, 27 Sep 2017 05:40:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4678b07a750807e1b9ee9e79dd0f385640711ca657f7b8cbe7f2a0ef1aa8fb78`  
		Last Modified: Wed, 27 Sep 2017 05:40:59 GMT  
		Size: 252.4 MB (252411098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:97abfe1442a464aa1d9453df3556aeb940f59ba2a6cf34adb234e473ee131844
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.5 MB (367453751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:869ed3dd8f4caf7900a7086ba0c47ac72c8a961dba91c9a33e0c61f0a8e3fe8a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 08 Sep 2017 17:26:13 GMT
ADD file:07d58ee9d0f6dd60b5363a18ab4766f32f94d4aaed3a1d6d4ff5a2d274f030c2 in / 
# Fri, 08 Sep 2017 17:26:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:43:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 09:41:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:52:13 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 22:52:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 22:52:18 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 22:52:19 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 22:52:19 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 22:52:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 22:58:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 22:58:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40921cc3e39e34244dca67570f52afe382187c080dd1ffbb5a684332f50dfb0b`  
		Last Modified: Fri, 08 Sep 2017 17:38:43 GMT  
		Size: 45.5 MB (45456006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25753b426e93de8898bc86b845e4a2c54f0e51ff39207233cefcb9698bd8a0`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 7.7 MB (7718568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a516f99a504113fb527ca9ce47078516bce9217fa901fec580920345e89ce`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 9.6 MB (9564313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2133409062eaded5871a9010d756383d18df2f7167b1d99c7efa3b3b4a22742`  
		Last Modified: Thu, 14 Sep 2017 22:03:30 GMT  
		Size: 47.6 MB (47643117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd9e98b4adcad17cc89e897df66b23eea611d884846bb4490d124cc6196ca4`  
		Last Modified: Thu, 14 Sep 2017 23:11:15 GMT  
		Size: 880.2 KB (880231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5afcc122bf09778ce1b23d714d6961835af06f2b1d80134a28426f02653f0c`  
		Last Modified: Thu, 14 Sep 2017 23:11:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faacef24c1c451b923ed07aa667435756bec65ff8bbacc6af22280cd5c80b64`  
		Last Modified: Thu, 14 Sep 2017 23:11:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c8701aac66ff1d7f9fa90a58109d77cdaa046b5e4ccbf5a7b371c013ff441`  
		Last Modified: Thu, 14 Sep 2017 23:12:21 GMT  
		Size: 256.2 MB (256191137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:079654ba16c70e57a727dd0c51a6cc161ba79c1326d6ca278edb73cc3a3358a4
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.2 MB (405183233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc8c559539b90d583b56679686453997aa54cbe88cabe3695f2b7d85e6f2349`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:03 GMT
ADD file:e914d804cd8b6c794db616b0d7ff276be932d6365650fc16027e8f884ff5751a in / 
# Fri, 08 Sep 2017 13:19:03 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:58:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:42:27 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:42:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:42:28 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:42:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:42:29 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:42:29 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:44:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:44:01 GMT
CMD ["jshell"]
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
	-	`sha256:9d1dfc76b4817c0eab955ff1e26d9b649e9426d3c9a56791c73e2ac77157cecf`  
		Last Modified: Tue, 12 Sep 2017 23:20:55 GMT  
		Size: 51.2 MB (51214389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d1d15a350e884663d2c9975a502c4aa74afd9c168aca48368cb8627e088dcf`  
		Last Modified: Tue, 12 Sep 2017 23:47:36 GMT  
		Size: 902.8 KB (902781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be097d348916604bb8fe45ee53e991da8a34f78e16353dc74865e3a2401ae00`  
		Last Modified: Tue, 12 Sep 2017 23:47:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2ec77fff747b5cbe62a30d3b5ce78f9349acf4364742a6fecf10062c2fc778`  
		Last Modified: Tue, 12 Sep 2017 23:47:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d9d0cab954b246cfeb35aad6a2548e03c69f108d26ac8898437cbdc0f30988`  
		Last Modified: Tue, 12 Sep 2017 23:48:20 GMT  
		Size: 285.9 MB (285850490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:640fa54920bbcedc85ab3889c5b0ba0956b4b7c0580dd3befcc519726f87e2d5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.0 MB (380040543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cd471286c1c9b07786f63d16f3f893cfc88ee199a43ad8175722495b01af06`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:20 GMT
ADD file:819bded9731f1d65e9cc04b2c7f43a197ec4be8692da4708af0f87e7426351f3 in / 
# Fri, 08 Sep 2017 00:33:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:06:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:19:13 GMT
ENV LANG=C.UTF-8
# Fri, 15 Sep 2017 01:19:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Sep 2017 01:19:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Sep 2017 01:19:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 15 Sep 2017 01:19:29 GMT
ENV JAVA_VERSION=9-b181
# Fri, 15 Sep 2017 01:19:30 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 15 Sep 2017 01:30:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Sep 2017 01:30:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2fab6b5610875e8a6c33bc4d56c825f356289185b055082d589665968ef0900c`  
		Last Modified: Fri, 08 Sep 2017 00:38:59 GMT  
		Size: 48.4 MB (48412021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7c2d0fb79a1104e22147e2364a797daa7dd139ad67e5b62e62304653e783a6`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 8.0 MB (7976467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d65a92b732b401ccd8c040a8e7970e1019757e70e1e5ff31fedde7766b8e40`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 10.1 MB (10071564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64052f4bf7d50027dafc55c6b08408ee69ce6c518a24f7ae01bf70c3b8157280`  
		Last Modified: Thu, 14 Sep 2017 22:22:58 GMT  
		Size: 52.0 MB (51982936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b875e729b289f6d75a75b187972f2273fd011365256928b9fc92967fe4feca`  
		Last Modified: Fri, 15 Sep 2017 01:47:36 GMT  
		Size: 889.6 KB (889580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474026f7e2a2a0932fb15465ea3569d4bdc8a118277697f949b01eec9f56b88`  
		Last Modified: Fri, 15 Sep 2017 01:47:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01dd70a5cf0659d21a27af6cb6fb95e167b1a7ca58e508215f6b398f8636015`  
		Last Modified: Fri, 15 Sep 2017 01:47:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b91d2d55a1a0dfbb1c5486cfd3a055cad742c6db1db0d2fead98d1ecfd4069`  
		Last Modified: Fri, 15 Sep 2017 01:48:38 GMT  
		Size: 260.7 MB (260707595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:6101b7e188618661d68e99939265e458e3d0695f3162a0b21a87fc692dff0815
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.2 MB (356214746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc40c715394993c83dc15b3b3d5ec607920ce418c4b68e90446b728728eb18ee`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:21 GMT
ADD file:21fffbf13a9dfb5037f5c17e01b497b8a6e81448b0258d6d12a130e07a751566 in / 
# Fri, 08 Sep 2017 05:22:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:50:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:53:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 16:53:41 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 16:53:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Sep 2017 16:53:42 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Sep 2017 16:53:43 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Sep 2017 16:53:43 GMT
ENV JAVA_VERSION=9-b181
# Wed, 13 Sep 2017 16:53:43 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Wed, 13 Sep 2017 16:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 16:54:39 GMT
CMD ["jshell"]
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
	-	`sha256:1d7f8982b2bac551baf1926040249281eeed1bc98c1b9269c1ee4feca73cbc3d`  
		Last Modified: Wed, 13 Sep 2017 16:41:14 GMT  
		Size: 49.5 MB (49525089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18978844ef62cf99562c526cc72a6e0f7b3226613b8efbcd5307b1f4ff5dd2ac`  
		Last Modified: Wed, 13 Sep 2017 16:54:56 GMT  
		Size: 905.5 KB (905523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2195fa31094aefe76bef7737331fb69e9477dcb320f50b20639cde204f554c0e`  
		Last Modified: Wed, 13 Sep 2017 16:54:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986953932374b51fdd7c22f0c9f9e0cc31c17222db4876ad1d1cd476deb3e4fd`  
		Last Modified: Wed, 13 Sep 2017 16:54:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4451b49d14221fdce75aad4bdcdf920f830c3610183a22a45d55d56dbc725bd5`  
		Last Modified: Wed, 13 Sep 2017 16:55:27 GMT  
		Size: 240.4 MB (240359453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
