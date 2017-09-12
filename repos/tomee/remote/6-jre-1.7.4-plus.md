## `tomee:6-jre-1.7.4-plus`

```console
$ docker pull tomee@sha256:b59425a573d7ac031fbbea76bbf4419c7c6c17bd9f7e84769e7978e89d87bf41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `tomee:6-jre-1.7.4-plus` - linux; amd64

```console
$ docker pull tomee@sha256:0fd386a6831f9f472f349eca39dfe54955cf7c865389b511e3c56f83e225c6f5
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183502819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8ed8543595fd18a4f1d4721cc3bd963b7aa6e4f756f4c42a5a47cb0d899f43`
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
# Fri, 08 Sep 2017 08:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:49:51 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:49:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:49:52 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 09 Sep 2017 00:55:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 16:14:53 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:14:54 GMT
RUN mkdir -p /usr/local/tomee
# Mon, 11 Sep 2017 16:14:55 GMT
WORKDIR /usr/local/tomee
# Mon, 11 Sep 2017 16:14:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Mon, 11 Sep 2017 16:14:59 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:15:36 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Mon, 11 Sep 2017 16:15:37 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:15:37 GMT
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
	-	`sha256:0ad5bf63077b3c015b58db1be1f8316755e5f4768292a3053d15f02aeb1c49c3`  
		Last Modified: Sat, 09 Sep 2017 00:30:05 GMT  
		Size: 360.7 KB (360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936e82a13841098791688f7f1bccafe687eb1d04e4468a8111c68db123dcf571`  
		Last Modified: Sat, 09 Sep 2017 00:30:04 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf64abef0fb21f9bd928a1a541868ee04d2b0648bf434e724918c0205457bc`  
		Last Modified: Sat, 09 Sep 2017 00:30:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fc5b0943fba35bb64d77ebfa2c5cbff70d4b97a94e99bf4d37e43bf5df2059`  
		Last Modified: Sat, 09 Sep 2017 01:02:22 GMT  
		Size: 94.2 MB (94167695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e447955e335863cb9babdc1e4ee38d7c19aa592955a5190129f2b6c8b38008`  
		Last Modified: Mon, 11 Sep 2017 16:20:44 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faf2ed18bf46f524060405b7443d58c41b3f0d787c93434877740a5b9f3edd4`  
		Last Modified: Mon, 11 Sep 2017 16:20:44 GMT  
		Size: 30.4 KB (30355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f3a5a9e2a89ed562566697d045d1cdc48915a34ff0aef2cc07daf87d1d35d8`  
		Last Modified: Mon, 11 Sep 2017 16:21:43 GMT  
		Size: 43.9 MB (43890784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:e6fe45eb917d21ad2e68e1e747ee9d0b21dbaa72c81849ec3d47a3c30402201b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131816868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60f4f116151806e87c39ef821686159b7a9e235c7bb16b56568e1eb0b5e0679`
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
# Wed, 06 Sep 2017 19:19:21 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Sep 2017 19:19:22 GMT
EXPOSE 8080/tcp
# Wed, 06 Sep 2017 19:19:23 GMT
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
	-	`sha256:aa22eada31a799be1a606de981bb277c02a91343155928cdc832ea2139816b18`  
		Last Modified: Wed, 06 Sep 2017 19:30:34 GMT  
		Size: 43.9 MB (43891035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:944e45c50ee17a2ad884868a0a876d4cdd972f15084b21588121fc58a1d0be01
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129471638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67daa34a76d1bfabe4a37446d329274637c6472c1d107a345ac2a6abaa838f8d`
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
# Fri, 08 Sep 2017 03:03:30 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 08 Sep 2017 03:03:31 GMT
EXPOSE 8080/tcp
# Fri, 08 Sep 2017 03:03:33 GMT
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
	-	`sha256:a57987a134b14d4a33aa381e2a12af11a939b31a4bf6a9eea01ed38834541037`  
		Last Modified: Fri, 08 Sep 2017 03:13:04 GMT  
		Size: 43.9 MB (43891006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plus` - linux; 386

```console
$ docker pull tomee@sha256:003f0158b6cba385769ca2cc6cff1999e905ba228cbd051fcfcfb5cad42e8e08
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192712391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfc9278bd05a88936cabb8f77ca000790a68c04df0ca8eb2c39f77df106a05b`
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
# Sat, 09 Sep 2017 16:27:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 16:27:09 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 16:27:09 GMT
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
	-	`sha256:a9ba5deb58dbe9011e59b454f9de969d961b9093934e2fc1ef381c071e9b1de7`  
		Last Modified: Sat, 09 Sep 2017 16:31:58 GMT  
		Size: 43.9 MB (43891023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
