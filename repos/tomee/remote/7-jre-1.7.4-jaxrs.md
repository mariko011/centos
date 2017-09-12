## `tomee:7-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:607a99a1e37046bbe5ee5d58647f5e2585a4370d6dc6070859b4e6a1b7fb249c
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

### `tomee:7-jre-1.7.4-jaxrs` - linux; amd64

```console
$ docker pull tomee@sha256:a6f029cd55d5628755a47c0ba2e015c0e47c960e2b88f8e2a7b3e63a0c5851e5
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223943768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef527f8a9643457ce6652ac544968d71496928953dc92cea7993b67392e337cd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 16:15:57 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:15:58 GMT
RUN mkdir -p /usr/local/tomee
# Mon, 11 Sep 2017 16:15:58 GMT
WORKDIR /usr/local/tomee
# Mon, 11 Sep 2017 16:15:59 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Mon, 11 Sep 2017 16:16:00 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 11 Sep 2017 16:16:07 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Mon, 11 Sep 2017 16:16:08 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:16:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2179471c6d6993d8d072f0d2521e393fcdcfd1a1f8af8d0ebe2513cca2e3d4`  
		Last Modified: Mon, 11 Sep 2017 16:22:16 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda9eaa791d730f3ff951dd11625f898f26262b2b94a7a2708b640bbdd1ae81d`  
		Last Modified: Mon, 11 Sep 2017 16:22:17 GMT  
		Size: 30.3 KB (30342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6eb2c94ab21fc61eef0a239922f42c047ef854173cb6fee0bc663a4f343c59`  
		Last Modified: Mon, 11 Sep 2017 16:22:24 GMT  
		Size: 34.6 MB (34602181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-jaxrs` - linux; arm variant v5

```console
$ docker pull tomee@sha256:d63f1882aa9ada28bbcf4cc9551df5003a55e97bd624544272ee2d760cd76d4d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (174037599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f38c7961fbd2b6fe0091f17dd4856aab89cdfbbb4b46ad47f3f5a7ac2775ed`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Jul 2017 19:56:34 GMT
ADD file:f1873c959c2d103d3b9a8556352bf50e3c1bf1eedbf8fe1878e472eb7cb8f0ea in / 
# Mon, 24 Jul 2017 19:56:37 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 10:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 10:41:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 18:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 18:21:14 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 18:21:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 18:21:17 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 18:21:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 28 Aug 2017 22:46:13 GMT
ENV JAVA_VERSION=7u151
# Mon, 28 Aug 2017 22:46:14 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 28 Aug 2017 22:55:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Sep 2017 19:19:55 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Sep 2017 19:19:58 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Sep 2017 19:19:58 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Sep 2017 19:19:59 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 06 Sep 2017 19:20:11 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 06 Sep 2017 19:20:29 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Sep 2017 19:20:30 GMT
EXPOSE 8080/tcp
# Wed, 06 Sep 2017 19:20:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:87466085402dd1c0a591dc559936dcf9652583a4e35b0fff942d72c598a3c8c9`  
		Last Modified: Mon, 24 Jul 2017 20:08:56 GMT  
		Size: 50.9 MB (50886834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31818f0408cd054d5ef8532118d814d65b703580cb17368cbc11a04f9bad1a3`  
		Last Modified: Tue, 25 Jul 2017 11:33:17 GMT  
		Size: 18.7 MB (18653662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce32acbe9366e779d25e2b4f3e6127bc3433f11eb3751e71e0b78eaa5bb2e122`  
		Last Modified: Wed, 09 Aug 2017 10:14:30 GMT  
		Size: 788.4 KB (788441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f007c5893b97e0f81827384b55324754117e3146e7d256c87dfe255fc44610`  
		Last Modified: Wed, 09 Aug 2017 10:14:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692b2e48a821ffdc1975c4ee723382e7891f78e6c83e039f5377f83e4d61ba85`  
		Last Modified: Wed, 09 Aug 2017 10:14:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e9fc2c257724491702d6c635bea8a5d0c2ddaf3dc30e6d2d0e7aad2b753ae`  
		Last Modified: Mon, 28 Aug 2017 23:25:26 GMT  
		Size: 69.1 MB (69075628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc960b97317ac286441ff99a49352bcc13558315aedadc71d616ff753c166825`  
		Last Modified: Wed, 06 Sep 2017 19:31:14 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948596621d8a38ddcfefc1c6cd2dda5c18e05b6530c12660633018d64aa28832`  
		Last Modified: Wed, 06 Sep 2017 19:31:14 GMT  
		Size: 30.4 KB (30359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105677484db4953e9221289d64c79b55d3626c6cd6b8234f572853101c486368`  
		Last Modified: Wed, 06 Sep 2017 19:31:25 GMT  
		Size: 34.6 MB (34602147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-jaxrs` - linux; arm variant v7

```console
$ docker pull tomee@sha256:73fad4e766de9871508a969d3d7c2fe61ce198ce3342f922b2884253bc9773ca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170324426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8abe4593a6716e1eb0677b5d3ecadb3ef79dbd919daac68f1382c2b86a9473`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:06:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 12 Aug 2017 13:54:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 12 Aug 2017 13:54:17 GMT
ENV LANG=C.UTF-8
# Sat, 12 Aug 2017 13:54:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 12 Aug 2017 13:54:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 12 Aug 2017 13:54:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 01:52:53 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 01:52:55 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 02:05:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 03:03:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 03:04:00 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 08 Sep 2017 03:04:01 GMT
WORKDIR /usr/local/tomee
# Fri, 08 Sep 2017 03:04:03 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 08 Sep 2017 03:04:12 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 08 Sep 2017 03:04:30 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 08 Sep 2017 03:04:31 GMT
EXPOSE 8080/tcp
# Fri, 08 Sep 2017 03:04:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b0ff3cefca6a7ab79bddf19e329c7af17cd3c4a66e04119fc089f584350009`  
		Last Modified: Fri, 11 Aug 2017 18:49:25 GMT  
		Size: 18.3 MB (18262600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91d043839f8276aff7d8c0436a4fd7f6ee1113157c7b7205eeb6de003cfe636`  
		Last Modified: Sat, 12 Aug 2017 14:33:06 GMT  
		Size: 763.0 KB (763036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689d5a60bb13a2d3c48e2e210430664ec681445c587ce20c36468e529e586a9b`  
		Last Modified: Sat, 12 Aug 2017 14:33:05 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbb076f60ac08759012d8f6a985b5d524ab19660bbd5d4124c1cf7569672361`  
		Last Modified: Sat, 12 Aug 2017 14:33:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429875e3312a7ca78d85dc1d1f01028e21bcc2fe9240ed3552bcc89c1e138a99`  
		Last Modified: Fri, 08 Sep 2017 02:37:18 GMT  
		Size: 68.0 MB (67973764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2af0641de354520a9595198f1d992e74604a75c9c7693bc3f362be894c6587`  
		Last Modified: Fri, 08 Sep 2017 03:13:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601792941c4af38957cc7c348e024c783a55f46aaa83b8ff008dd9b67db08311`  
		Last Modified: Fri, 08 Sep 2017 03:13:42 GMT  
		Size: 30.4 KB (30354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db62b2c8085eedc149fff1bfe2038c6bebbdf12d533c969ff8753ff8985f4ae`  
		Last Modified: Fri, 08 Sep 2017 03:13:49 GMT  
		Size: 34.6 MB (34602218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-jaxrs` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:2c148f16a387ed7c186063485e48accc22535bbd0aeedb16f30c47dc72cc4dd3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198098506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062466a9d73f9e9cb04cc8fbd33853530df758559a34541336a6709a279ac515`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:50:00 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:50:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:50:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:50:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Aug 2017 22:43:49 GMT
ENV JAVA_VERSION=7u151
# Fri, 25 Aug 2017 22:43:49 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 10:03:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 10:42:57 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 10:42:59 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 10:43:00 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 10:43:01 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 10:43:08 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 09 Sep 2017 10:43:17 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 10:43:18 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 10:43:19 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd2f7f5a472e24a6f7df1e094fbe78fe01a17313ccc092978beffb117d51a`  
		Last Modified: Mon, 24 Jul 2017 19:24:13 GMT  
		Size: 789.4 KB (789398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef489cf7bd82f6de3238c5fe9ca26e81d94e28b041154784045f9df0b892a755`  
		Last Modified: Mon, 24 Jul 2017 19:24:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f244d5219ecbad16325d5f58264dc6c2d7547b0134b28b2d98414ac785a00e`  
		Last Modified: Mon, 24 Jul 2017 19:24:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c032502b9e0b3882f183e7bfb17da86524120812780e821d8cce4dc2f542624`  
		Last Modified: Sat, 09 Sep 2017 10:22:38 GMT  
		Size: 94.0 MB (93999397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0d54c4cf7754cbfc71f0ca043fb81d3abe787ad92be3db8272041ed6a30bc`  
		Last Modified: Sat, 09 Sep 2017 10:49:33 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f8b5e60f0c272d9023a41137fb825312f11e950a81dabe99bfbdb361e7d38c`  
		Last Modified: Sat, 09 Sep 2017 10:49:33 GMT  
		Size: 30.4 KB (30354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f487be5b20915c7ff35236097a513f5693454f5742f9e28f11836c938a87c4b1`  
		Last Modified: Sat, 09 Sep 2017 10:49:39 GMT  
		Size: 34.6 MB (34602175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-jaxrs` - linux; 386

```console
$ docker pull tomee@sha256:97de9c798ee6005243afc565e28537ea99577a57236604cb2026864ed02ec8c1
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237386350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f351526dbeb3df121cd71fc34ce07a8539ba356a4cdbed4138938e8c9b019b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 14:58:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:58:22 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 14:58:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 14:58:24 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 14:58:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 09 Sep 2017 14:58:25 GMT
ENV JAVA_VERSION=7u151
# Sat, 09 Sep 2017 14:58:25 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 15:00:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 16:27:22 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 16:27:23 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 16:27:23 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 16:27:23 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 16:27:30 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 09 Sep 2017 16:27:38 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 16:27:38 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 16:27:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb4420296f36e7bf08987e529a0d76b095bfc22a558c10611469cccc903eed8`  
		Last Modified: Sat, 09 Sep 2017 15:25:03 GMT  
		Size: 798.6 KB (798611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94034f638cfae0977b58d6b46ba77e90f33369e37dddc08e4b0a4596e8afec2d`  
		Last Modified: Sat, 09 Sep 2017 15:25:03 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb68242e2cfa4128fa94189970405dda28003194a04fa5c0df1611085cfda6`  
		Last Modified: Sat, 09 Sep 2017 15:25:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d72516bc1be66f7947a6f0442e56be79bc5751aaf05c7ed1afe24413a2a46`  
		Last Modified: Sat, 09 Sep 2017 15:25:27 GMT  
		Size: 127.6 MB (127587119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e60775dae324b796dc1913037f363549c8f275bb3ab85c83ba937e66fbe172`  
		Last Modified: Sat, 09 Sep 2017 16:32:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccd1a3acd883c2714136d62be92e5368d780999e34168634cbb48623b783f0`  
		Last Modified: Sat, 09 Sep 2017 16:32:25 GMT  
		Size: 30.4 KB (30357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b1731c3a8cce46ee48af0521d366e509b01bc4cda1da72f4883a2e78edf6c0`  
		Last Modified: Sat, 09 Sep 2017 16:32:29 GMT  
		Size: 34.6 MB (34602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-jaxrs` - linux; ppc64le

```console
$ docker pull tomee@sha256:297bba2bcff1ddc7a749400c3554dd522e88788b6d0ecbe7762da0cebe143361
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.6 MB (202594315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0077ff679ffcb4d52d3fe986f16f861af5d2d36477b30729a16a5c873a902456`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 04:41:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:41:26 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 04:41:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 04:41:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 04:41:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Aug 2017 22:36:08 GMT
ENV JAVA_VERSION=7u151
# Fri, 25 Aug 2017 22:36:08 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 10:49:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 11:12:05 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 11:12:09 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 11:12:09 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 11:12:09 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 11:12:16 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 09 Sep 2017 11:12:41 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 11:12:42 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 11:12:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ece9da2f4ddd24a5ec2129b92e4d445f5dfe8d690575f755a585d310d4eb2cc`  
		Last Modified: Wed, 26 Jul 2017 10:52:23 GMT  
		Size: 791.1 KB (791125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4281d21163170ba1e1f11fa4972cb2cbc0b8deae6814d80216c264f3b02d66a`  
		Last Modified: Wed, 26 Jul 2017 10:52:22 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1f9f3479c889df96de631292e570fcc30a9205f9397f2eb4a24eda15fddea5`  
		Last Modified: Wed, 26 Jul 2017 10:52:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c74863212b3acbe65131075ee6b0857b740c518e561ea430dfa08c2ad3215`  
		Last Modified: Sat, 09 Sep 2017 10:53:11 GMT  
		Size: 96.2 MB (96150987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bd6faaeeda375300e14b38a772fdec1f47b73b5faa3866844bf00542d0a74a`  
		Last Modified: Sat, 09 Sep 2017 11:20:50 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bacffb09f8580f1f0d839508eb2aaa86878a0ef1ec53f5e2c5d206859798e1`  
		Last Modified: Sat, 09 Sep 2017 11:20:50 GMT  
		Size: 30.4 KB (30385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38b4ffa1d9509a726fc9ae784b92ea94bac2481da298915d674060adaca5705`  
		Last Modified: Sat, 09 Sep 2017 11:20:55 GMT  
		Size: 34.6 MB (34602359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-jaxrs` - linux; s390x

```console
$ docker pull tomee@sha256:1d30e088c5702f134683412a8eb38816b4956d860748473b082e3237695d2643
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 MB (203376534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd1b7909d73067c372d5d3e2e5af5e4bd9370c9a35bd0baad8de488bef691a5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 17:29:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 17:29:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 17:29:03 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 17:29:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 17:29:04 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 17:29:04 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 05:39:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 05:59:38 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 05:59:39 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 05:59:39 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 05:59:39 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 05:59:43 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 09 Sep 2017 06:00:10 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 06:00:10 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 06:00:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c084b3ab1af5428f9981ab28f3dd2a8f154f246fb9d9ce2e9e3782792ea6e7`  
		Last Modified: Fri, 08 Sep 2017 17:34:17 GMT  
		Size: 804.2 KB (804244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6057421880039b10c9b7e533d65d4d7e17bf4a8ce08d971a425491d4efb98f39`  
		Last Modified: Fri, 08 Sep 2017 17:34:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7677a9187fddb4ecce26b38d362093884ab54cbd74d93eb2fe859fd6db870285`  
		Last Modified: Fri, 08 Sep 2017 17:34:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e221891b78d1067cea90f003fa97c1e3c96c3f47ed7510c321eb3130857ae1f`  
		Last Modified: Sat, 09 Sep 2017 05:42:14 GMT  
		Size: 95.7 MB (95680047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86f483848ee35a40afced1df4d5c05d3392338caccec60b73c7586e920ea573`  
		Last Modified: Sat, 09 Sep 2017 06:05:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef49fee3f3202dc95090136823e00eb07ecb1c538b76a7f7774afcab62dff5e1`  
		Last Modified: Sat, 09 Sep 2017 06:05:23 GMT  
		Size: 30.4 KB (30352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2454595d46c0607a8064b38c1b7cecfebf0356e2a43ca2700132a38bd669141`  
		Last Modified: Sat, 09 Sep 2017 06:05:27 GMT  
		Size: 34.6 MB (34602189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
