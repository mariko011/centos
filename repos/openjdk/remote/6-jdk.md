## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:555fa9e0b1ff7770f8b73d03ccd69c0eab10577a237ae7516c5ddf134ec4f46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jdk` - linux; amd64

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

### `openjdk:6-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:8996cce32d77dab6b625ca6b3320b4163dce24cfd1f818e38bdd7369094cbb28
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173640829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b015bd859009f68934563ffebceaad11ec87892a09002f89fe4d696efdf1ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:27:09 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Wed, 27 Sep 2017 14:27:09 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:55:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:56:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:07:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:07:50 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 15:07:50 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 15:07:50 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 15:08:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:91e96f80e5b8463167dad7425295c08379bb448e4048e16b1364d813b5f8169c`  
		Last Modified: Wed, 27 Sep 2017 14:32:58 GMT  
		Size: 36.9 MB (36942865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60eba5bdb6a5dd2ffd3f0f2c4df19c073c5f1cb684e647c3c592a2856019c6`  
		Last Modified: Wed, 27 Sep 2017 15:06:31 GMT  
		Size: 6.6 MB (6587497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f031cd368de8b934c5cba13dc74fa41a3024fa9495876841ea54e3f37e1799`  
		Last Modified: Wed, 27 Sep 2017 15:06:48 GMT  
		Size: 35.9 MB (35894028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1bdf83fed8909c4cc0839eaec1f813e13040f87937fb61bc6295d1167c4d14`  
		Last Modified: Wed, 27 Sep 2017 15:28:16 GMT  
		Size: 618.7 KB (618749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cdd78f82c30fbc6b450159ad59337b50bdcf3ea95cf281a5828513d986c00c`  
		Last Modified: Wed, 27 Sep 2017 15:28:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add96072962482dac6d9b187341d002a2dc92cb74877410d73ff80fe650154af`  
		Last Modified: Wed, 27 Sep 2017 15:28:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b89f39f1f2c50739f7f8e4d3f359d7ec537904857cc9cefc0813975d120272`  
		Last Modified: Wed, 27 Sep 2017 15:28:37 GMT  
		Size: 93.6 MB (93597313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk` - linux; arm variant v7

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

### `openjdk:6-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:a0ca01d4894a71395f64102f186175b1f2d8d475e8a23c925a5a7757bf45c60a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198451916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77387179dd85ffdac03e73c97db6c99eab8a1ac73cceaaa6c7fba41d5a640fa1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:25:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:25:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:40:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:40:38 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:40:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:40:40 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:40:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:40:41 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 00:40:41 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 00:41:44 GMT
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
	-	`sha256:63ab896838332ee6fff6edec656035bef83b28200953d501453bff63e5ea6a07`  
		Last Modified: Mon, 09 Oct 2017 23:48:35 GMT  
		Size: 37.1 MB (37057104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79641e59475183a36acdc1cd67baca2eda729b662c2fda5ee760c5b177b322a6`  
		Last Modified: Tue, 10 Oct 2017 01:35:55 GMT  
		Size: 607.5 KB (607476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e0172e8932adcfbcc4adb5c4e5263b7941bf1892695c16671e09511a7fdde0`  
		Last Modified: Tue, 10 Oct 2017 01:35:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8346946716b1f252f73b61160b3fc2a4a68c9dca6b0d0a57f69e3a955583d838`  
		Last Modified: Tue, 10 Oct 2017 01:35:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcfc87e474cdf3e36624fb32ac1882c133aaa870c78aef7af984bb8fab23d51`  
		Last Modified: Tue, 10 Oct 2017 01:36:15 GMT  
		Size: 114.6 MB (114554333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
