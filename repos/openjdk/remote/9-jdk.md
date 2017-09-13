## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:3fb807e187947b038d9a24319d497165b3769c72df32dea7531022f43f6cc2ed
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
$ docker pull openjdk@sha256:c51b0eaae6f450eab88f2e36ed6bf0bbed31f0dbaf90db632d879b70872576b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.4 MB (393356212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8957112e41b08f276e4063ff92619753f9c16a21c897577d304fcf6139552cc9`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 18:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:55:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305ab8ee4e81a6758bde516da3259860d8ff86dd2fa011c3786170f393f7198`  
		Last Modified: Tue, 12 Sep 2017 18:17:57 GMT  
		Size: 47.5 MB (47475639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a689d7088e8d46141eec07655241f60ad46f5f6125c659545491867fdd0f0`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 894.6 KB (894607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e73e79eda4378f42775a531288fec9a3753fe9a2c9e26ffe1f07cd3bbde13dd`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec2a61ba43f47bdea810bc97b3d21d8a02630bd0bdf2df0ac2155d961cc887c`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa295e8159d7f06b7a231a3b61ea2394df0d4d06e4893878985bba5460e6b9`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 279.1 MB (279062975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:e4df385e75ea4f7c41e06e75a152697da8f96cae606a8b811dad2d6d640ecfa5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339836731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9fb872d63c810fa9af71bae2a2684c7cbc1a0fc6df11384390b80912d544ab1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 08 Sep 2017 20:01:06 GMT
ADD file:fb7d9ba902b3a4eacc8db6bb7743fe86476c3f26a619da43c04ee6ad3d633f68 in / 
# Fri, 08 Sep 2017 20:01:07 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:56:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:58:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 08:11:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:54:48 GMT
ENV LANG=C.UTF-8
# Wed, 13 Sep 2017 08:54:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Sep 2017 08:54:52 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Sep 2017 08:54:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Sep 2017 08:54:54 GMT
ENV JAVA_VERSION=9-b181
# Wed, 13 Sep 2017 08:54:54 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Wed, 13 Sep 2017 09:01:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 09:01:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e619709a1c2b4be0af59108dd28272d60df90f82d46263209512724eb3c5ce55`  
		Last Modified: Fri, 08 Sep 2017 20:17:15 GMT  
		Size: 46.2 MB (46232515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7918b0c2db96bff8cd7e0da40810471608f4097ed0695daa796eb6b29b593a`  
		Last Modified: Tue, 12 Sep 2017 04:16:30 GMT  
		Size: 7.7 MB (7734636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5284519d599712da3e4289d1bc2827aed11bdb80ad761900c1634843c69d774`  
		Last Modified: Tue, 12 Sep 2017 04:16:29 GMT  
		Size: 9.6 MB (9574802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebb7fb5ba984f4c9c72a303bdd3752c4b3dea559632b67770659c2ff50b64f0`  
		Last Modified: Wed, 13 Sep 2017 08:28:12 GMT  
		Size: 45.5 MB (45451276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f06e47bf2fa242febe5650f56166aaaa26327bdfd3c40399df060e1d1b76c94`  
		Last Modified: Wed, 13 Sep 2017 09:22:18 GMT  
		Size: 888.2 KB (888191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81a728a48c837a70ae2aacd3fde28d623fd85862532707a3476eba9db01379e`  
		Last Modified: Wed, 13 Sep 2017 09:22:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175cfaaf8bad330b806ad9f1cc1d62d3998a5ba690c107ca90a87eee880f14c3`  
		Last Modified: Wed, 13 Sep 2017 09:22:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9cce4e8ffc40b59a68fe659726a241732fa6102c4b675a3ba91f1ab13b93f7`  
		Last Modified: Wed, 13 Sep 2017 09:24:16 GMT  
		Size: 230.0 MB (229954933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:78fb8db81125c5c7c776a6d8fcdce49cf4a6071a6cb7162f13a9e33cc5a0eff3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.9 MB (360898929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e9865b020113215551bc8bc0f1bb10b42dbaf9323b89f67e865dc4c709f224`
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
# Wed, 23 Aug 2017 02:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 01:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 29 Aug 2017 01:55:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 29 Aug 2017 01:55:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 29 Aug 2017 01:55:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 29 Aug 2017 01:55:23 GMT
ENV JAVA_VERSION=9-b181
# Tue, 29 Aug 2017 01:55:24 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:31:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:31:57 GMT
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
	-	`sha256:d1f2c19e5c7aee9a46496c93c55874fc4c9c8e2e501779770b02d96cb6f1de85`  
		Last Modified: Wed, 23 Aug 2017 03:27:31 GMT  
		Size: 866.9 KB (866853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce0a2321059f0744f3eb775782b31a71e819c203de4ace2846a4b9d3ee55f15`  
		Last Modified: Tue, 29 Aug 2017 02:28:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e2c28c0ef5218d2da1d0070cc8220e96977bcfa74636c5c06c28e1defdce6`  
		Last Modified: Tue, 29 Aug 2017 02:27:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab281f3e893a0a65ee7a89567fd0a4c7cb139b52db8958426320a8b505ecd90`  
		Last Modified: Wed, 13 Sep 2017 00:08:54 GMT  
		Size: 252.5 MB (252496747 bytes)  
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
