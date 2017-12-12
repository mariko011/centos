## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:2bf64709da4f5166acd8f632d061a7263cee856fc30c21309bb5f9a5b8ceee96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:a7e7fe147d1295b6b9a55ec7cc89a80cf630950bffe71bc89b25930e34494fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189743075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c387b3746aaa795dcbfccad955398c09aa947baf0ecf6312aa851638a585dc9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:04 GMT
ADD file:281b987b09ac9b71793de5201331461636a08ec23af27a9e11a14484018993dd in / 
# Tue, 12 Dec 2017 01:46:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:56:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:57:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:00:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:00:26 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:00:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:00:28 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:00:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:00:29 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:00:29 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:01:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:762ae076e9a326e4eac3b3db9e3afe4b6dc930ec52dbb2aa27a300d1323a52b6`  
		Last Modified: Tue, 12 Dec 2017 01:59:44 GMT  
		Size: 38.1 MB (38109825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23de19d3f13a2be7ebc7920f3ba4c5b85177a11b50a1ade92d360c09aa349bf1`  
		Last Modified: Tue, 12 Dec 2017 08:06:02 GMT  
		Size: 7.0 MB (6950248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cb3e44109931c7e35ceafc97c97e76d8f382673240ce180d61297082aa09a2`  
		Last Modified: Tue, 12 Dec 2017 08:06:29 GMT  
		Size: 38.0 MB (37961407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561c9ce93549a92fa3ba24fe98495abc1790218162d74f94d42284074d2bf43a`  
		Last Modified: Tue, 12 Dec 2017 15:44:26 GMT  
		Size: 616.6 KB (616639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f981f6dc4a262147ce89392b666e6c82590e7d3f4b1edc04a63a437ea7a6a9`  
		Last Modified: Tue, 12 Dec 2017 15:44:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f88a3742fa40e192be06c3a01022c399999375d6b5139d2ebed1b46ddda934a`  
		Last Modified: Tue, 12 Dec 2017 15:44:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2901d2c9cd4faf7bd7fe29bfa800bcf02fcb68d901e220109a264cdde703d7c0`  
		Last Modified: Tue, 12 Dec 2017 15:44:47 GMT  
		Size: 106.1 MB (106104578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk` - linux; arm variant v5

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

### `openjdk:6-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:aba75b4caa175521be1f854e010518792da3b91f153f9d3bcb1a800e3c545089
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169390502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57e97d79a85685d516682f555a4c6431d0e2c2be37e446d2fcde8fa9a5b2b90`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:25:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:25:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:26:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:59:51 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:00:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:00:11 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:00:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:00:39 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:00:39 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:01:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ae93d1aa9ba1e13bd1449ae6d27b5849b9a9acbf7f273c7059aa1c7a7f700e`  
		Last Modified: Tue, 12 Dec 2017 14:37:06 GMT  
		Size: 6.4 MB (6369943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c97111ac1f47690a1f82ed58a03bd49bebcf1abed7c5dfe81be408f97bb6a78`  
		Last Modified: Tue, 12 Dec 2017 14:37:33 GMT  
		Size: 34.9 MB (34868312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7dd6c4744e9151f8b5e0de9e310a14987400dde6d20af9741743098026d05`  
		Last Modified: Tue, 12 Dec 2017 15:26:15 GMT  
		Size: 606.3 KB (606292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4474a6240930f595c7a5754514e3ae57bc63d2bebef9fbaecd24591d1b7ff1ce`  
		Last Modified: Tue, 12 Dec 2017 15:26:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf52bbfc507ad1dcb99f5f38016417a917f5bc3189a54705fd54e3bd3c285bb`  
		Last Modified: Tue, 12 Dec 2017 15:26:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c49462d5d04088acd7ac35e125aff49e6a0af262bc92e249dba0a7ac9a01d4`  
		Last Modified: Tue, 12 Dec 2017 15:26:32 GMT  
		Size: 91.9 MB (91883773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk` - linux; 386

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
