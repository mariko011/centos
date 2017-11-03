## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:efcd807454e8b1fb8791e24d43e4e9666d7106ba9d0df1ac23f6d96a5e3a50ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6b38-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:0684a2c734f2be31d5b382fe9a255f9a9f7bba0a8dfa5962b953365de244e73e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189733689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6e4e42b9f39fdd21c890303fd6c7cb020ab3ef9ddc6acf258df75521a6f5ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:40:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:31:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:32:00 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:32:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:32:01 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:32:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:32:01 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 00:32:02 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 00:32:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0d6a65abef48b1a500f7f38269cdc18a749d679561ed4919e2e5adde9c4387`  
		Last Modified: Mon, 09 Oct 2017 23:04:02 GMT  
		Size: 7.0 MB (6950271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9f287d5074bbd1dca4facba75906b91845b5f880ed19a17084786234fd8974`  
		Last Modified: Mon, 09 Oct 2017 23:04:28 GMT  
		Size: 38.0 MB (37957324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1dccce64dee6149abd79948e0d05bd55fad4b2031630e26876ed89b0dfb47b`  
		Last Modified: Tue, 10 Oct 2017 01:03:00 GMT  
		Size: 616.8 KB (616750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9674a5f685232256d88312963e08e6b35cb0a621b0919777346008395c59ac9`  
		Last Modified: Tue, 10 Oct 2017 01:03:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf711e1febf2f5ee8e10def0cee55fb3d50b1d5d12863b6a43558afaf0dd8`  
		Last Modified: Tue, 10 Oct 2017 01:03:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181e80dc010002ee09808eaa908372a133d741e3f1a578b0688a60205394c227`  
		Last Modified: Tue, 10 Oct 2017 01:03:18 GMT  
		Size: 106.1 MB (106105841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:7024a9984097aa89bd84c8fc3770deb4f203242bef2fed07b58d253de9abf0e5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173640429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4974e937678d2a7000fa597d8c7f8195c3cd140c87c58bd71f59980ae01d69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:22:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:04:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:04:12 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:04:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:04:13 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:04:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:04:14 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 08:04:14 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 08:04:52 GMT
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
	-	`sha256:857c33706b04e75216e860dc0611b4042166eee3b1e3bb788a856fa2b2f62ba2`  
		Last Modified: Tue, 10 Oct 2017 07:47:10 GMT  
		Size: 35.9 MB (35893857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0401976c7e9ca5081256d8df82b68bfa0160786112003333286b3b38f2c4cc1`  
		Last Modified: Tue, 10 Oct 2017 08:17:35 GMT  
		Size: 618.8 KB (618780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848b39c13bb05ace7b7245737e860bc8b30ab5e50f6802947172aa98f1cf02fe`  
		Last Modified: Tue, 10 Oct 2017 08:17:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360178f42192cfe917969f69cc5817353c5114db0bb9570960c1644b3949225`  
		Last Modified: Tue, 10 Oct 2017 08:17:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a428492d8eb8585d1bb7fe04b4fd6e37ce0f1bc62ce727f39a9135719fcf51`  
		Last Modified: Tue, 10 Oct 2017 08:17:54 GMT  
		Size: 93.6 MB (93597152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:5cc9b468d83294d013e8746a86523acce1e7cc9bde57100fba1ffc0162769f23
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169389617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251b6e6ac0131ea3b76c50698297d3f4dae2c685483ce8e7ea5fecbb7c835f5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:27:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:28:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:12 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:15 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:16 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:16 GMT
ENV JAVA_VERSION=6b38
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 09 Oct 2017 22:52:00 GMT
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
	-	`sha256:f57908dca81755da78df3534ea80319e5395f8e7974e2c004941135760d80a24`  
		Last Modified: Mon, 09 Oct 2017 22:36:04 GMT  
		Size: 34.9 MB (34871789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c2a0442dca2ec0b21e42655e936017ec34d387d1855bc870fcf593808e1479`  
		Last Modified: Mon, 09 Oct 2017 23:13:52 GMT  
		Size: 606.5 KB (606466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f22fc7fb0538e564f7efc5309df559a380351c69f7b03d9102000ed1813b654`  
		Last Modified: Mon, 09 Oct 2017 23:13:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ece2754d3c6fa7230b7182380f43057fdc3fd555eb7af9bb86d21c769d8337`  
		Last Modified: Mon, 09 Oct 2017 23:13:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0673dcccbd2e4208e1eb9c5cbcc43d0e063eab0df0d12fff35d8863f53ca0696`  
		Last Modified: Mon, 09 Oct 2017 23:14:10 GMT  
		Size: 91.9 MB (91884584 bytes)  
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
