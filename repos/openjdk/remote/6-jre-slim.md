## `openjdk:6-jre-slim`

```console
$ docker pull openjdk@sha256:9c1680bd9500d051044b62ed9096e9ccdf7cf1d4e89fdc94a2baad7dde7326d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:8f29b3b57a440f9d5faec72c768cfb34d9ce400230764b33e64415143603f646
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74195484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02257dc7a704e11453c6b728e75de5db56d54935ff4ee0d0c224106a1162530`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:21 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Wed, 13 Sep 2017 08:42:21 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 04:05:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:05:19 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:05:22 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:07:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:07:41 GMT
ENV JAVA_VERSION=6b38
# Thu, 14 Sep 2017 04:07:42 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Thu, 14 Sep 2017 04:08:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a65446b89c2bd7c9811b12de7f02e7b5a4e8386ada74913de514a7b203bf1f8`  
		Last Modified: Thu, 14 Sep 2017 04:41:53 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ecc9d5976da7d1df8c2750ed2757802b30a99824e0178dca243d69aa613bd0f`  
		Last Modified: Thu, 14 Sep 2017 04:41:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df0e004a0a83ffdc61b5189560d3198dc143fe72fd81ff4f46de38e3f4b4c56`  
		Last Modified: Thu, 14 Sep 2017 04:41:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99be7079494e43bb0fadf9709a06cdc2c965a5f3bbc050a61228dfe6eb1a9ed6`  
		Last Modified: Thu, 14 Sep 2017 04:48:48 GMT  
		Size: 54.6 MB (54634758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c6768ee682973c95210f99c29e4fd59adb72c52c92d018e15151d385a0aa6d0e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63441464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ff320d5b8cb466b244a43a1d5d65ac5faea876e79506ccc465b317b0e1e54c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:27:20 GMT
ADD file:2f0a2aec2d52fa3a021db9aff440c32fb8e67948c0fd8adc3b3beeed2fadb2a7 in / 
# Wed, 27 Sep 2017 14:27:20 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:08:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:08:53 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:08:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:08:55 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:10:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Sep 2017 15:10:43 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 15:10:43 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 15:11:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a2b5814934fa0148bd58fb66969e512a4bbfe1c223d9eabda9295323f93d6dd0`  
		Last Modified: Wed, 27 Sep 2017 14:33:15 GMT  
		Size: 18.0 MB (18016817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdac61de5d4fb1a31d79bf3bf85468e1fbc1da02c53373bc0e631067b7a72ac`  
		Last Modified: Wed, 27 Sep 2017 15:28:45 GMT  
		Size: 403.5 KB (403512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb96ecdcf7a4e7afee21368af52804c8c1a2532eec77c4a3e68d404ac84b3d88`  
		Last Modified: Wed, 27 Sep 2017 15:28:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3556c2ad9c1459aefad725857fc8290435b2bdc4af338ae028da611fbead2d`  
		Last Modified: Wed, 27 Sep 2017 15:28:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001f19d5a37a01b8976da015e4b254115c41e96b9b530306f27ad73351efdaf7`  
		Last Modified: Wed, 27 Sep 2017 15:29:46 GMT  
		Size: 45.0 MB (45020757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:2840e5bda26661fa013a2c4ee8f147cf6545dbe25807456b98e19d83fa43da5d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61192372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447b2fa1962e25bf2e2b609eac8fb97608a840668efd55abb592d587d9c5c78f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:16:07 GMT
ADD file:b7f27d51042596627d93b4dfc6aa9947289f27da287d3120706d238f5f8d9e55 in / 
# Wed, 27 Sep 2017 04:16:07 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:12:17 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:12:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:12:19 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:14:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Sep 2017 05:14:04 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 05:14:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 05:14:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:fbdcb463c9b300dea97f478b0420e8fc5e981f98eaa5495d88eef42b0106b22e`  
		Last Modified: Wed, 27 Sep 2017 04:22:38 GMT  
		Size: 16.8 MB (16756417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850b2e096dc2eda38e7c41f36f6b5f5f9408a5bb381fd5da4bec1fb104cfb35`  
		Last Modified: Wed, 27 Sep 2017 05:32:25 GMT  
		Size: 391.1 KB (391074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4003110ae1fde09abc307a1f8d235f47a274e5b9d2af45c2277ccb49dbeb0d`  
		Last Modified: Wed, 27 Sep 2017 05:32:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8237f3f57dca5140af47acbb81bcd921f3a31b7c01652f5bf5995b45c20b614`  
		Last Modified: Wed, 27 Sep 2017 05:32:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2bd013fb277587970f381c2c9834b6fb27d32a5425f30d73d349387254e04e`  
		Last Modified: Wed, 27 Sep 2017 05:33:33 GMT  
		Size: 44.0 MB (44044502 bytes)  
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
