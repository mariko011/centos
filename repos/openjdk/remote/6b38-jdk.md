## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:5ef1f7a52d2934007b98705a5ee6853f04e020bfa131d07b82c5d343e3b45b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6b38-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:fe90dc477a5d2fc901ffaa8063567f1ee75b33f3513cdb9f234855e95fbd739e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.2 MB (190228139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546fa116a33ca1233e8179c12eda22584dd362f013c6483495f8833820d55803`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:23 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Sat, 04 Nov 2017 05:27:23 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:34:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:47:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:47:43 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:47:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:47:44 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:47:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:47:44 GMT
ENV JAVA_VERSION=6b38
# Sat, 04 Nov 2017 18:47:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 04 Nov 2017 18:48:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcf6d11aba7d0aa60a9787dff108d0994df0ab3283694ef1964a8029269d1a6`  
		Last Modified: Sat, 04 Nov 2017 15:51:03 GMT  
		Size: 7.0 MB (6950426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eea2fcee306d43d5c61b0a39d3f3cabf11125e6df1f7f7c6762a9e0e3ba4d8`  
		Last Modified: Sat, 04 Nov 2017 15:51:27 GMT  
		Size: 38.0 MB (37957417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a765fd8c726afb0df962cfb3353a1d785d650f7439568e2efe513757db1310c`  
		Last Modified: Sat, 04 Nov 2017 18:57:16 GMT  
		Size: 616.8 KB (616757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757974aa0eccd1d27bc3ee468b29a6096042e0e0d3cd71fb49d0d47fe9721912`  
		Last Modified: Sat, 04 Nov 2017 18:57:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c689b96552dadf871e53c7bf52df411862855dd619a362a2b934885be43c01ac`  
		Last Modified: Sat, 04 Nov 2017 18:57:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9f2f7c99884b269b802f7c6a65d975ce31e3b496f2350ff94690430c2312f0`  
		Last Modified: Sat, 04 Nov 2017 18:57:33 GMT  
		Size: 106.6 MB (106600034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:3f11470c29371d96fb011cc049eb74a58f3c1bfd5639be51617a6aa44d499d1d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174135282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae752a38067da28c9d2901737b88c331005ef45acdff303cc344e261248cd23`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:56:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 08:22:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 08:22:17 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 08:22:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 08:22:19 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 08:22:19 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 03 Nov 2017 08:22:20 GMT
ENV JAVA_VERSION=6b38
# Fri, 03 Nov 2017 08:22:20 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 03 Nov 2017 08:23:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9e1de2c5739e65047ff13389bd7f41bab4fb8e2a7728dd670046879169bc1203`  
		Last Modified: Mon, 09 Oct 2017 21:52:21 GMT  
		Size: 36.9 MB (36942751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a138d42f981eeb87f54bf95eca66edc18763600c1cc025f4e463832c9c239e`  
		Last Modified: Tue, 10 Oct 2017 07:46:51 GMT  
		Size: 6.6 MB (6587512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b546e325ff403b445a170a6b34dc41c420181859013a7b5b361708bd6ca98e`  
		Last Modified: Fri, 03 Nov 2017 08:04:54 GMT  
		Size: 35.9 MB (35894335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29496353cd55a6062286a76121cc3a576e938143d384d9676e5c83c3cc32caf8`  
		Last Modified: Fri, 03 Nov 2017 08:32:13 GMT  
		Size: 618.8 KB (618775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c6031966464a97838a9470e3340f50777087e37efb1eda7138464c7ddffbd`  
		Last Modified: Fri, 03 Nov 2017 08:32:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b7ce9f48897f3917cd049dd3aa6010a62d68dee782370003cc2563ead9f71b`  
		Last Modified: Fri, 03 Nov 2017 08:32:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3216f99c3c9a6277337de4dcf25fe049f3b3fc35b87557e9cc6cb9c485c3732`  
		Last Modified: Fri, 03 Nov 2017 08:32:31 GMT  
		Size: 94.1 MB (94091532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:db19018f13e0f5d975d2da8882a9be3a5a54bb5f57e3872738364c553dea4b6e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169887093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43974e2fdfd1c636c7d23784908f73a4328ff513048bad0551a6f19b865741a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:19:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:42:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:42:05 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 01:42:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 01:42:10 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 01:42:10 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 03 Nov 2017 01:42:11 GMT
ENV JAVA_VERSION=6b38
# Fri, 03 Nov 2017 01:42:12 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 03 Nov 2017 01:43:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679838a0a749ea0785d0f8039d2042aca768db22f895eb4ffa36e604923e1adc`  
		Last Modified: Mon, 09 Oct 2017 22:35:45 GMT  
		Size: 6.4 MB (6369994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4622d1756c6a4386c1c74a8046f302ae5435e30d1a0ee3d76ff07c09480bb1d7`  
		Last Modified: Fri, 03 Nov 2017 00:33:17 GMT  
		Size: 34.9 MB (34873164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9125c7562ec9654923870d9c664a751f7ad10ad72778b9fa1838c0f15aee9ea`  
		Last Modified: Fri, 03 Nov 2017 01:55:37 GMT  
		Size: 606.5 KB (606495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593c0b4039e83900c48aa7f30545877016a94aa26edb8c4e98c2de79b972fe63`  
		Last Modified: Fri, 03 Nov 2017 01:55:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e8da82dfab7e0f901bdadbc0fae70d660ef2b8a3279aa92ef748738c953a9`  
		Last Modified: Fri, 03 Nov 2017 01:55:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3adce32bae4c0363b97ae2cafb28a8c4b8fdfb9a98c4c12feb36756567c9ebd`  
		Last Modified: Fri, 03 Nov 2017 01:55:55 GMT  
		Size: 92.4 MB (92380654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:2dd128050cbdddeda7569e466392346127af083377385d17428e21e8a192e872
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198948753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731cde824f8868c7e4b7071ac9b10b0dacdfc219b4d7854db63a217a79161be4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:48:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:48:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:52:58 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 00:52:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 00:53:00 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 00:53:00 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 03 Nov 2017 00:53:00 GMT
ENV JAVA_VERSION=6b38
# Fri, 03 Nov 2017 00:53:00 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 03 Nov 2017 00:54:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a3324c4605a2fc66e984c15cd1dbadcb3d28ce2f7f2309acdff43f81042a93`  
		Last Modified: Mon, 09 Oct 2017 23:48:13 GMT  
		Size: 8.8 MB (8799377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231df82f0773ae01dfddf2b793334a1a662d41c1aa18fb2c11ee672b3535ffb1`  
		Last Modified: Fri, 03 Nov 2017 00:27:03 GMT  
		Size: 37.1 MB (37057312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0134c4cbdf729905624bebe19da8a6ee32c0c7e7b5d224a50806369c98e43ec`  
		Last Modified: Fri, 03 Nov 2017 01:20:51 GMT  
		Size: 607.5 KB (607532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc46aa6979caa184e7a6be6d073ad72a960f977d38c5bd0fb0acf15572f16c3`  
		Last Modified: Fri, 03 Nov 2017 01:20:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39228f65f6fb9c767d8197882466d4144531090f3ac138b0e7cc13ee2ef7ed4c`  
		Last Modified: Fri, 03 Nov 2017 01:20:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1beb9c63429d78a26b88457ede83fb6e7d825707e4c684c490527427b97caf`  
		Last Modified: Fri, 03 Nov 2017 01:21:11 GMT  
		Size: 115.1 MB (115050905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
