## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:88f33e48cddfd3af3e074e31e1d09b3129b0375fb6915651a0045e1f9eef31f7
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
$ docker pull openjdk@sha256:2f4bd5ee05dc1fa67be90bcded03e0da0c4a081235221de07971677b9bee5ca8
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392314391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffd33087653f3dcd552d318f08ca088493b12d7e49bf5a952f7fd296adeac20`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:22 GMT
ADD file:366ed17a0f83cce653d5f267000d2766de9f465b087c3c17d9c865f1ac7dc8b3 in / 
# Mon, 24 Jul 2017 16:52:23 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:26:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:04:37 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 21:04:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 21:04:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 21:04:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 21:04:40 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 21:04:40 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 01:00:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 01:00:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b5499bef70c58635bb757692533c72902e2ab8d155d0eafc76cda92862472a27`  
		Last Modified: Mon, 24 Jul 2017 16:57:55 GMT  
		Size: 48.4 MB (48430926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aefbd8335b097f9758dad16852743f38a1b601f9f9d0cf4bf8b6ce09f3463e`  
		Last Modified: Mon, 24 Jul 2017 17:34:42 GMT  
		Size: 8.6 MB (8552452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c86784c73eaf7a56381d588b8a6ea2213fa0b23467fd7e1479f9c995d7beebb`  
		Last Modified: Mon, 24 Jul 2017 17:34:41 GMT  
		Size: 4.4 MB (4423274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3308601cadb7d11e4054dedaefd3e59f08ff3bc195a5a027be7569112a9fd6c6`  
		Last Modified: Mon, 24 Jul 2017 17:35:06 GMT  
		Size: 51.2 MB (51230680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89af2b318efbca7a65be369d55e8497d44621f717a7c2d65d3248d08fd7744d8`  
		Last Modified: Mon, 24 Jul 2017 18:25:33 GMT  
		Size: 659.8 KB (659823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46023e7743d9c97a4d2638d6d0bc623660535b59140f203421fa17e03cccdca8`  
		Last Modified: Fri, 25 Aug 2017 21:13:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d47966cab2ec988d90699efdf6c2b7db48e83fb721f92461a5de0d68a18b7a`  
		Last Modified: Fri, 25 Aug 2017 21:13:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1e39ea93da80a4703baf292bcea3be30e12b8e0063e707a23a06030a9cc85d`  
		Last Modified: Sat, 09 Sep 2017 01:12:40 GMT  
		Size: 279.0 MB (279016864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:bcded4832cfee3a2030b697d680b4fcddf3b4b64427e2038eee34e5a2473681e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339448475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec1cf059505593a6330bdd6e6921f209d37a016bcde20191d0012db5ea1bda`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Jul 2017 20:00:16 GMT
ADD file:72d1aead97c3fa90a9b15bb73f9f26a8bb4ba20ff47462cbba0bd0c3920941b7 in / 
# Mon, 24 Jul 2017 20:00:19 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 10:56:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 10:56:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 10:58:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 18:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:05:52 GMT
ENV LANG=C.UTF-8
# Mon, 28 Aug 2017 23:05:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 28 Aug 2017 23:05:57 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 28 Aug 2017 23:05:58 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 28 Aug 2017 23:05:59 GMT
ENV JAVA_VERSION=9-b181
# Mon, 28 Aug 2017 23:06:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 01:51:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 01:51:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc2ad12d24e75a4b60e0af1432af9fb64b0a77bcbf8e4fb006c7c323976d278`  
		Last Modified: Mon, 24 Jul 2017 20:13:25 GMT  
		Size: 47.0 MB (46975651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddc6f19c6c300f4e4990315613d67abc1e981dea4ccf14fc33d4e48bd562509`  
		Last Modified: Tue, 25 Jul 2017 11:35:39 GMT  
		Size: 7.7 MB (7742221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be198b7aa892d8f59b449bcc47b4ceb5fbccea89864c4afa14cebb453e3d2d`  
		Last Modified: Tue, 25 Jul 2017 11:35:37 GMT  
		Size: 4.5 MB (4460285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245273de35265b4df3288a4576a3383ea22993eea67253f4497a6e80fac6a980`  
		Last Modified: Tue, 25 Jul 2017 11:36:34 GMT  
		Size: 49.4 MB (49409851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8971b5107b0376c715aac2c8e41e6305708ce56b5e5e4d4901b997acf89e1e68`  
		Last Modified: Wed, 09 Aug 2017 10:21:53 GMT  
		Size: 882.6 KB (882634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2988ccac13f340caf727bb4a02e8d51a0a3c8443a99aa98a1a07920ce312fa51`  
		Last Modified: Mon, 28 Aug 2017 23:26:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba327a7c05274447bd5ab4655c174f837550419421371a845f935eeefbda0b3`  
		Last Modified: Mon, 28 Aug 2017 23:26:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16fab474eb3310f8f9944b436b19ea4b300c0351aaad22fc57303a05fde4abc`  
		Last Modified: Tue, 12 Sep 2017 02:31:15 GMT  
		Size: 230.0 MB (229977454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:09ab334bc7486a89dae9d93d20abb69d4dfa4f2340728f5703e94e02e323e6eb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.9 MB (360908705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd6f9836de7b20fe59ed2f6f0fd223a8b90626bec5afea5147bdd65cb6154cd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 25 Jul 2017 12:53:48 GMT
ADD file:7f60c30de028a27a17d6295a846736ffbcefda0d0be7010ae16b1bff6b696676 in / 
# Tue, 25 Jul 2017 12:53:50 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:24:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:25:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:29:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 12 Aug 2017 14:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:13:56 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 02:14:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 02:14:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 02:14:08 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 02:14:09 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 02:14:10 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 00:05:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 00:05:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30bcf7171e696bc59898b2067160c61b93616653ada7a607e11fbada605b61ba`  
		Last Modified: Tue, 25 Jul 2017 13:10:05 GMT  
		Size: 44.9 MB (44941605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6100e09857b8354fef65dbf89861b527016bbed2d7ed48a644d31a3cb8ac812c`  
		Last Modified: Fri, 11 Aug 2017 18:51:31 GMT  
		Size: 7.6 MB (7556138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda602ec49502ba5133ebc4c97e7f5808ee1eb4328783ede4e0cf1a40fc10054`  
		Last Modified: Fri, 11 Aug 2017 18:51:28 GMT  
		Size: 4.2 MB (4222067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a5b1aa87933d5830c4e0ea800b6b0086ece5cd34d4658c83a12b2f63a5df6`  
		Last Modified: Fri, 11 Aug 2017 18:52:18 GMT  
		Size: 50.8 MB (50815139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7285289a7afec846699d93f1b39e5c62c3b5b78fa3d1242dac25b9aaa68491ad`  
		Last Modified: Sat, 12 Aug 2017 14:40:31 GMT  
		Size: 866.8 KB (866849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe88a882a59598bb3f77c376625618768873207a285ba2c3780966d1c3d5a2f`  
		Last Modified: Fri, 08 Sep 2017 02:38:47 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d6ba1df5bfb5e91758f481be5a4a7c46b1b7a12d44beb2cc4e895303e738cd`  
		Last Modified: Fri, 08 Sep 2017 02:38:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3034552f0bcd07b476a8a500a730580616cee9d3e6c98d523cab0ca11b387c80`  
		Last Modified: Tue, 12 Sep 2017 00:43:15 GMT  
		Size: 252.5 MB (252506526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:20d6868fb48ec6a138283843bcccf079d475fc87b41e46b99dfc97f83e8aa05c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364250629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f8fc53278671d0d427b2b3bbc481ffc17e47c9a18ff14e38abeb9608593cf2`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Jul 2017 17:23:45 GMT
ADD file:9317aca1096f5b4dd40c6e6341bb846fe7dff31a2229c363343fe76d70acd4de in / 
# Mon, 24 Jul 2017 17:23:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:08:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:08:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:10:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:12:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 22:51:21 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 22:51:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 22:51:26 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 22:51:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 22:51:27 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 22:51:27 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 10:16:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 10:16:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:be32d72e9988cc03c70e3de89ab4318721b54bb6ef8c93f7b042b75f86ce16f3`  
		Last Modified: Mon, 24 Jul 2017 17:28:59 GMT  
		Size: 46.0 MB (45992125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307c6e75a1bce5cef5ecc23f9be5914c5adf0a4055d70c1dbe091989194d5a70`  
		Last Modified: Mon, 24 Jul 2017 18:30:13 GMT  
		Size: 7.7 MB (7685408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ab5b47544c16558ee7ce8dd26b7d10cfa66b1f9ffee8910fa2d6a2fd82aacb`  
		Last Modified: Mon, 24 Jul 2017 18:30:12 GMT  
		Size: 4.4 MB (4394652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73be410400876c70743523c651243a53eef5cd1b0bbcadd6d2b4977470eb525d`  
		Last Modified: Mon, 24 Jul 2017 18:30:40 GMT  
		Size: 49.1 MB (49140025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f823ec1589cad4d2055350ead2f9524db2975816c1de4eeaea77e050127d7182`  
		Last Modified: Mon, 24 Jul 2017 19:28:19 GMT  
		Size: 875.3 KB (875341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2771c5429ccb11d6fc19da952fe84932f052caddeff00b31f8d688cfdb7aca7`  
		Last Modified: Fri, 25 Aug 2017 23:02:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f97899767b4787c12e4942968383ac90bc1888fcf7e0066fb518517cc1d67c`  
		Last Modified: Fri, 25 Aug 2017 23:02:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2592468f501786d4eafafe6cdcd436dcd85a323d90a7e3e881973b72426111ad`  
		Last Modified: Sat, 09 Sep 2017 10:25:16 GMT  
		Size: 256.2 MB (256162697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:23c910e94e90ac33f1939f2597a7d64a3a5286f54c987ce6a46457c2b487b4c1
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 MB (407651335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedb170640ee2b33d928da4f6a0d045454a344a5a5c9bf08cf79f1f858479a65`
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
# Sat, 09 Sep 2017 13:40:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:12:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:12:52 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:12:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:12:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:12:54 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:12:54 GMT
ENV JAVA_VERSION=9-b181
# Sat, 09 Sep 2017 15:12:54 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 15:14:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:17:26 GMT
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
	-	`sha256:bf25d5908a3d9b364cc4eb05dba59e255e606a6bff9a64bbfc514c2781be272c`  
		Last Modified: Sat, 09 Sep 2017 14:01:44 GMT  
		Size: 53.7 MB (53723471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2235fc67d2209f7f34ef1a580f418fe75160b54af8e3cbebd8765ec07126d3`  
		Last Modified: Sat, 09 Sep 2017 15:34:51 GMT  
		Size: 905.6 KB (905636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41492e25f18539b6b252793f4c8de34eecb31c031da515b212e72e94c3eb97f`  
		Last Modified: Sat, 09 Sep 2017 15:34:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cc2b8259ce016a47ecd616f90226b7cd26e1b38ae7555703a60eb6508166b9`  
		Last Modified: Sat, 09 Sep 2017 15:34:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ef2d197b41ba3e9afd03bd54a57a35c87a92cd79dfd20aa2eac536d47f9e1f`  
		Last Modified: Sat, 09 Sep 2017 15:35:43 GMT  
		Size: 285.8 MB (285806654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:c7d2764421f77c4ebff84761816aedc7c86dac94f22f69262cd8c94245ea3d90
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.0 MB (373985623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6f47ef2fa25538c123c3806a800ab3b478a5c9b44b31dc5cd37a877415aed9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:15 GMT
ADD file:f26611298831c7e479de36cdf344930971e612e49fec491aaef9d0d95eeab2e7 in / 
# Tue, 25 Jul 2017 00:32:15 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:02:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:02:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:03:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:45:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 22:37:46 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 22:37:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 22:37:48 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 22:37:48 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 22:37:48 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 22:37:48 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 10:51:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 10:51:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b43b74b0f7fb58d6749537ddc76ae40e4b744774d9b8fdc7f5207e86121b2c18`  
		Last Modified: Tue, 25 Jul 2017 00:36:50 GMT  
		Size: 48.5 MB (48539165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08da7a72cf12341bb6aa3dbed6285b5ba349ddb3975deea1ccccd477b83d878e`  
		Last Modified: Tue, 25 Jul 2017 01:13:14 GMT  
		Size: 7.9 MB (7886884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6ac2ac627dc0026d7b015bec85d8929e4cb2a27709dd388c2348abadb82be`  
		Last Modified: Tue, 25 Jul 2017 01:13:10 GMT  
		Size: 4.6 MB (4600177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d52cafdba23a430f30955f973b467553c723105be2988d09106f96159c94055`  
		Last Modified: Tue, 25 Jul 2017 01:13:26 GMT  
		Size: 51.4 MB (51375128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6d7ee2aafa6e03fc814287ad07de36b76df53dd70e94ab0aa08191ec08abda`  
		Last Modified: Wed, 26 Jul 2017 10:55:37 GMT  
		Size: 884.1 KB (884061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7014b93b4c0286f6035b469bc857bc8de7e3b6763a580afb9532d60b3f0a60e`  
		Last Modified: Fri, 01 Sep 2017 20:36:22 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f410646567b5f7935cbfe66dc6f0c9325d49026dfe00ad1dfdedfe987837c2c7`  
		Last Modified: Fri, 01 Sep 2017 20:36:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fa5dd8fb39985141592c7137fd94cfc622339fc91759f27fc22fee0b2b757b`  
		Last Modified: Sat, 09 Sep 2017 10:55:15 GMT  
		Size: 260.7 MB (260699826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:7f409c46a781f4f31fdcfffcf3d5e834cd3e050d34b1d32d4fa791ff6870abc0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358827349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb14da5df53460684764657d59a349a9a33f31d324a3aff8cd5c5897407fc97`
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
# Fri, 08 Sep 2017 16:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:32:18 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 17:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 17:32:20 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 17:32:20 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 17:32:20 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 17:32:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 05:40:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 05:40:57 GMT
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
	-	`sha256:9784c1ee235b09794e717d6a2ffbb370ee82eae504a0ba0ba407524f0480abe6`  
		Last Modified: Fri, 08 Sep 2017 16:42:58 GMT  
		Size: 52.2 MB (52198667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200f74319479fffc9900d4822a4009cd3bd4daf52095968e92e6a8957e541e27`  
		Last Modified: Fri, 08 Sep 2017 17:35:41 GMT  
		Size: 908.9 KB (908876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eef16c1f0448cb1058d7d0036c7f852397f03e6fe4f056a659a35c5b4866db`  
		Last Modified: Fri, 08 Sep 2017 17:35:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2781cfaf0b17fcfdd6358a4b33f378d4c1d0cdb5756ab6b61ce029a0cbfeb034`  
		Last Modified: Fri, 08 Sep 2017 17:35:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec17c37edbb31810d6712827430a41bfa11da6d3eb19c3df1316401aee7968f`  
		Last Modified: Sat, 09 Sep 2017 05:43:23 GMT  
		Size: 240.3 MB (240295125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
