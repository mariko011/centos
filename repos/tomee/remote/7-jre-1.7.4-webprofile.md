## `tomee:7-jre-1.7.4-webprofile`

```console
$ docker pull tomee@sha256:d6f09515b87d2cbd0b1e92d7e730d0886a438485d4b74a39ae2dfec11d49bc84
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

### `tomee:7-jre-1.7.4-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:a2d395c853d401977638b8bc3476ba15b1696aa9de494c81764bddb5c085fe8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.7 MB (220726799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a6413ef97c4ca04cee8d84cfb9519adc85878726c3a8dde2c5f049f7255f1a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:14:25 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:14:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:14:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:14:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:14:28 GMT
ENV JAVA_VERSION=7u151
# Thu, 14 Sep 2017 04:14:28 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Thu, 14 Sep 2017 04:15:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 07:09:08 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:09:09 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 14 Sep 2017 07:09:09 GMT
WORKDIR /usr/local/tomee
# Thu, 14 Sep 2017 07:09:09 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 14 Sep 2017 07:09:15 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 07:09:56 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 14 Sep 2017 07:09:57 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:09:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606c0b57feb051ea7df9ecb5091d7c5275047f4baa9b54700350c3f35e4a4f26`  
		Last Modified: Thu, 14 Sep 2017 04:51:25 GMT  
		Size: 795.6 KB (795601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584c35e01c21b7270342137194d0860c0a7a90f65441c6e8a1e0f7571bc84a30`  
		Last Modified: Thu, 14 Sep 2017 04:51:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2c1657fd0e01b54bc8a64a8e8c5470058e23a343328e8ac2379e3d043e6ce`  
		Last Modified: Thu, 14 Sep 2017 04:51:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4dd65ad29cb149c9ecfc67a1032e7737acfd4c5f696afda2a27483ad9152ae`  
		Last Modified: Thu, 14 Sep 2017 04:51:54 GMT  
		Size: 116.9 MB (116883085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4349ded1eaf86a5cfa962b254ef7109518bba59b8e81c0e579f2d1c21f5737cb`  
		Last Modified: Thu, 14 Sep 2017 07:14:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f054da95434c142933c16239a1b038eae8793c36703bc73455afb12ea74e67`  
		Last Modified: Thu, 14 Sep 2017 07:14:31 GMT  
		Size: 30.4 KB (30353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444e1ccf2c30fe257b9efc64187350fc20ce4a31bfabfc164a4109a48a8b021e`  
		Last Modified: Thu, 14 Sep 2017 07:15:24 GMT  
		Size: 31.2 MB (31157969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:deed2675767e3ffcd1ca1ebccac7fcbf60b92e51cd6cd20b2fb26d023c2c36f8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170593416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c202e7f472934152c7a29fca3aeffaa87d196b413090b207c5b171c8094f96a4`
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
# Wed, 06 Sep 2017 19:21:43 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Sep 2017 19:21:44 GMT
EXPOSE 8080/tcp
# Wed, 06 Sep 2017 19:21:45 GMT
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
	-	`sha256:44642e5c54f4c0aa80f652d9dd727088fb09a6bbf526fbfaa57d7419146dea96`  
		Last Modified: Wed, 06 Sep 2017 19:32:50 GMT  
		Size: 31.2 MB (31157964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:3b4390dae279a7992b3cc6d1ff75123695597020553442252e65cd7987f0065c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166880139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58f0eb0f069fe86542431396a67c3d9bf8bf8efd6ea0b9c50684058c538433f`
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
# Fri, 08 Sep 2017 03:05:39 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 08 Sep 2017 03:05:40 GMT
EXPOSE 8080/tcp
# Fri, 08 Sep 2017 03:05:41 GMT
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
	-	`sha256:3250fd9bea717e6f9c718659ad0743350d27d9765366d84c8a6560c5829c5b66`  
		Last Modified: Fri, 08 Sep 2017 03:15:03 GMT  
		Size: 31.2 MB (31157931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:5318e5f597be8d2811b81040ebce1b5771623b6b269c377631da8dd74bc4caa4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194654306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af092c57c69ac93bf9254e142d3bf30378326ad187f678887ba4b04b38f6b528`
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
# Sat, 09 Sep 2017 10:44:06 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 10:44:07 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 10:44:08 GMT
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
	-	`sha256:86959b4d64d6493b8a4c755d9db348009ffece6786daccf8384eab4c5f1468cd`  
		Last Modified: Sat, 09 Sep 2017 10:50:43 GMT  
		Size: 31.2 MB (31157975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:3572fffbd3b43f1bfe6f2839e25ac5b6d549eb67fb95b9304254753388882c38
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233942073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a05c665bef06ad57e9eb85170b7569ce909a9e69f0fe52eab2a83ffc7b442c`
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
# Sat, 09 Sep 2017 16:28:13 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 16:28:13 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 16:28:13 GMT
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
	-	`sha256:056c61589e6c8814edb926eff8b971d7827e2debaccd47808662886078792698`  
		Last Modified: Sat, 09 Sep 2017 16:33:16 GMT  
		Size: 31.2 MB (31157888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:65a453cebcba0d92ecb21a78b17a153564fc161d07102da38d84a746455fbd1e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199150165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327b621a8ebd10f60e692d3c071415b6bf5ffd8a1df7ab887bd6e789ff1c1594`
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
# Sat, 09 Sep 2017 11:15:03 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 11:15:05 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 11:15:06 GMT
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
	-	`sha256:16e10e3066c8d44b7d011f9c4656e7802ee13824fbfadd40a4aa273491318c84`  
		Last Modified: Sat, 09 Sep 2017 11:21:47 GMT  
		Size: 31.2 MB (31158209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:fb562d25ebce45e2dfaa777b1afdc95141b43ebd112c82985d2d137e1d230166
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199932317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323b035226410893946999fe424ac14f85f4338a3dbe598bf6e2e2018f0941d5`
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
# Sat, 09 Sep 2017 06:01:31 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 06:01:31 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 06:01:31 GMT
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
	-	`sha256:5f86f015db85559c899ece13a8851849fe201bf6b52c4a8a2ded41c5a47de9a4`  
		Last Modified: Sat, 09 Sep 2017 06:06:00 GMT  
		Size: 31.2 MB (31157972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
