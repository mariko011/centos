## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:64c255df77c8e6214b10b4598dad9703a61dfd4d52cdd3d65a75106fbfbb3783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `tomee:6-jre-1.7.4-plume` - linux; amd64

```console
$ docker pull tomee@sha256:cb3dfec3e9686da59b05889fc5300bf843ee31298c6661bbd5925f79df151ac2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191349931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba265b880a0a57a460b45f3acc2e2b021c5b6be02a091eea7a17185297ed14a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:32:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:32:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:44:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:44:23 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:44:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:44:25 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:44:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:44:25 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Sep 2017 23:44:26 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Sep 2017 23:45:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 13:22:51 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:22:52 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 13 Sep 2017 13:22:52 GMT
WORKDIR /usr/local/tomee
# Wed, 13 Sep 2017 13:22:52 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 13 Sep 2017 13:22:58 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 13 Sep 2017 13:23:16 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 13 Sep 2017 13:23:16 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 13:23:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9984d33964d5be0a6994369af9b8e3099ef8b1da68a1a5ef6509716353f79`  
		Last Modified: Thu, 07 Sep 2017 23:57:20 GMT  
		Size: 6.9 MB (6949665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05251c4a3e57829db1e6fb29d7f854b4165f259156e46383d7edb41945308f3c`  
		Last Modified: Tue, 12 Sep 2017 23:59:36 GMT  
		Size: 548.9 KB (548876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7491290e87e2c0e22eef77ae9022a378a35eb9fce58b500cfb04553cadbec8c9`  
		Last Modified: Tue, 12 Sep 2017 23:59:36 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8002f34914e96e5f635fae2014336fe4eb20baa103c86bc0d4171045b0f568`  
		Last Modified: Tue, 12 Sep 2017 23:59:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2789fb31f6d081c3cea2f84c8b28038fee75ebc6a78526dd84bac9c2b68089c0`  
		Last Modified: Tue, 12 Sep 2017 23:59:56 GMT  
		Size: 94.2 MB (94167601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a000306d46a7d82cc30e2ee5907bdb75d074ac45e947c4fb2a5f8eb652637a9`  
		Last Modified: Wed, 13 Sep 2017 13:26:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb34f01f63b6da97e1bd511fb01c9e4f7aa44cfe72bf94b38e13a13225677ed3`  
		Last Modified: Wed, 13 Sep 2017 13:26:23 GMT  
		Size: 30.4 KB (30364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276692c60d6f1c4e8eb41141dad9ad2c26fabf502d706d4868b3ce58f5b99baf`  
		Last Modified: Wed, 13 Sep 2017 13:26:41 GMT  
		Size: 51.5 MB (51549771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:c292e1c214f45f7777a24579a1e11147cc1c0c1c771041a0c3e515e92d24a76f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139475577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938b6c1e8d8191dd6542dd223dc9b0d3790a9f8091475d6ae9f4879f0b50271c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Jul 2017 20:05:19 GMT
ADD file:97525cbf8fe115c33a8b9bbc20bfb2d1f48ccaeff1e82e1e5586f31290a445d4 in / 
# Mon, 24 Jul 2017 20:05:20 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 11:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 11:21:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 18:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 18:09:38 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 18:09:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 18:09:45 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 18:09:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 25 Jul 2017 18:09:48 GMT
ENV JAVA_VERSION=6b38
# Tue, 25 Jul 2017 18:09:50 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 25 Jul 2017 18:11:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Sep 2017 19:17:55 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Sep 2017 19:17:57 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Sep 2017 19:17:58 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Sep 2017 19:17:59 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 06 Sep 2017 19:18:11 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 06 Sep 2017 19:18:45 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Sep 2017 19:18:46 GMT
EXPOSE 8080/tcp
# Wed, 06 Sep 2017 19:18:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4e4464497efd5dc9c76c4f98018614a042f8649da82c1502e8ba195158c6a2e9`  
		Last Modified: Mon, 24 Jul 2017 20:19:17 GMT  
		Size: 36.9 MB (36944440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dae05ee801b4b4820759dee217bdf1c6eda7658570a5174bd428b11b1a1a8`  
		Last Modified: Tue, 25 Jul 2017 11:42:50 GMT  
		Size: 6.6 MB (6586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581bec38f0e3b068ddd437ba892dae62792cbcd064944e477d39031ad23ea414`  
		Last Modified: Wed, 09 Aug 2017 10:10:22 GMT  
		Size: 550.4 KB (550354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1a063a62668ea21fe9f13d50faf4b08c19eb56003026a10d77a7ee509ad782`  
		Last Modified: Wed, 09 Aug 2017 10:10:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9ab630d0d9a8ae26766bc034aff80a53997d32b339eababa65905ce18b17`  
		Last Modified: Wed, 09 Aug 2017 10:10:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db66bdb18f43b2e845484c476848dc9e3ff13be6ce794baae897e08a0e0d5db`  
		Last Modified: Wed, 09 Aug 2017 10:10:46 GMT  
		Size: 43.8 MB (43813152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fca1651095097e8f48994e7783c87ec8f75571ec0c1ae951c93c20ca1b1eba`  
		Last Modified: Wed, 06 Sep 2017 19:29:27 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb960d4e5109ca4285cb2da13a734c46b5aea496b137e5b129ffc7d15a0fa30`  
		Last Modified: Wed, 06 Sep 2017 19:29:27 GMT  
		Size: 30.4 KB (30359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa07557a7031b49f07929f0f34825f3dbbf3197998dd1e9c3b7466c035087fd`  
		Last Modified: Wed, 06 Sep 2017 19:30:06 GMT  
		Size: 51.5 MB (51549744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:9a8c8a730e50f3ab37e0c7fc49f3730fd2389433a7499fd8381175fb2fe0d88e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137130403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db9871da6b0c30ae633be28cb9de7f9e7aca3f994d7e8d31c6407d3919e4c51`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 18:14:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 18 Aug 2017 18:43:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Aug 2017 18:43:47 GMT
ENV LANG=C.UTF-8
# Fri, 18 Aug 2017 18:43:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 18 Aug 2017 18:43:51 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 18 Aug 2017 18:43:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 18 Aug 2017 18:43:53 GMT
ENV JAVA_VERSION=6b38
# Fri, 18 Aug 2017 18:43:53 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 18 Aug 2017 18:46:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 03:01:56 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 03:01:58 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 08 Sep 2017 03:01:59 GMT
WORKDIR /usr/local/tomee
# Fri, 08 Sep 2017 03:02:00 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 08 Sep 2017 03:02:11 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 08 Sep 2017 03:03:02 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 08 Sep 2017 03:03:03 GMT
EXPOSE 8080/tcp
# Fri, 08 Sep 2017 03:03:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931ec72c8732d6f74931a7086e7f2fe329cf03fa2b247dc18bce5b1201fb974a`  
		Last Modified: Fri, 11 Aug 2017 19:00:50 GMT  
		Size: 6.4 MB (6369136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a732a550d711835a41c986942f9d42c5bff79eb9abeb50e0b271de93f917b9d`  
		Last Modified: Wed, 23 Aug 2017 03:16:01 GMT  
		Size: 537.9 KB (537907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac2df39fa45f248581510c8bfc208a540bcd66123a80f2dbb63cae9e36d689`  
		Last Modified: Wed, 23 Aug 2017 03:16:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee06b117bd6adeecdd820ebfd8c45b37e880153b78dba6f92d64fdb117421d5`  
		Last Modified: Wed, 23 Aug 2017 03:16:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903b52bc62e010afbf7bd9d8847c6a158b552f23e1fae5bf5f973f6013a7c27d`  
		Last Modified: Wed, 23 Aug 2017 03:16:18 GMT  
		Size: 43.0 MB (42986684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ed69ddedb1638147820ec2fbdc9d58fe9eadd6b07be4042151245e728b7ade`  
		Last Modified: Fri, 08 Sep 2017 03:11:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22f709a3671e43cedb2850036745138e1a1df2f51750550f8608905220ea2fc`  
		Last Modified: Fri, 08 Sep 2017 03:11:48 GMT  
		Size: 30.4 KB (30350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73f088f1a0e2c554da0a7da1905158ee402ce164cf0680f8c43c215e2d36df`  
		Last Modified: Fri, 08 Sep 2017 03:12:33 GMT  
		Size: 51.5 MB (51549771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plume` - linux; 386

```console
$ docker pull tomee@sha256:219da647c9b4282b5b2d37cef73e81db32a1a4730028231549edfa7eaf7c1962
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200371139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc73edea0159b699fba437b09dda47b7d4f583fcd1cd589312659d2a2dea5d86`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:52:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 14:50:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:50:25 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 14:50:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 14:50:29 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 14:50:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 09 Sep 2017 14:50:30 GMT
ENV JAVA_VERSION=6b38
# Sat, 09 Sep 2017 14:50:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 09 Sep 2017 14:51:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 16:26:26 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 16:26:27 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 16:26:27 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 16:26:28 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 16:26:34 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 09 Sep 2017 16:26:57 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 16:26:58 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 16:26:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e19235ec8912002a9f320de08671905f5729502dc642eb94047db21c0467e`  
		Last Modified: Sat, 09 Sep 2017 14:08:40 GMT  
		Size: 8.8 MB (8799111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592c64afbf74937424a20ddb46d39e2350ebfc1a356f00ffe4f19f8c2464fb08`  
		Last Modified: Sat, 09 Sep 2017 15:23:32 GMT  
		Size: 538.4 KB (538395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19104ffaf38081e112d0f16d446ec59ebdecd7e28d27c129864001374456974`  
		Last Modified: Sat, 09 Sep 2017 15:23:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a88b31333fc305de5aca4cc672aa0d1b26766a6b2d6e9d47d2a42d1161bc0f`  
		Last Modified: Sat, 09 Sep 2017 15:23:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df43be0e7a5f8b10eb51c0e73e22f26220b5d35d21b6c173fd0e42eaf4a2dc9`  
		Last Modified: Sat, 09 Sep 2017 15:23:52 GMT  
		Size: 102.0 MB (102019714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b67d6a91e192bde4bd1797ccfb25c6027f76bbff90c09aed614399d37eed333`  
		Last Modified: Sat, 09 Sep 2017 16:31:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c78c2faf09fd51f85526927ba14e67fdc7d1290b8197bb4093982151b4c539c`  
		Last Modified: Sat, 09 Sep 2017 16:31:08 GMT  
		Size: 30.4 KB (30359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50452e1db6652cdc26727817bf62b8e060cc3e3e4e9db2e76b72e23e068ad8f5`  
		Last Modified: Sat, 09 Sep 2017 16:31:35 GMT  
		Size: 51.5 MB (51549771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
