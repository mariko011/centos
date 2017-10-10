## `tomee:6-jre-1.7.4-plus`

```console
$ docker pull tomee@sha256:edf959fdb79d64b769e7713d1b2027deed751d2fab6288fac59965f219748933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `tomee:6-jre-1.7.4-plus` - linux; amd64

```console
$ docker pull tomee@sha256:a3858db4e56624044de058193f760fb54ece822ddc08abc82f824e3262a6e86d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183691735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696bbeceeaf4465a5d333300fd53ff13c21833478884ce7ffd02fbfb73b9908f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:41:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:06:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:06:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:06:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:06:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:06:43 GMT
ENV JAVA_VERSION=6b38
# Thu, 14 Sep 2017 04:06:43 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Thu, 14 Sep 2017 04:07:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 07:05:59 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:06:02 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 14 Sep 2017 07:06:02 GMT
WORKDIR /usr/local/tomee
# Thu, 14 Sep 2017 07:06:02 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 14 Sep 2017 07:08:15 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 07:08:56 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 14 Sep 2017 07:08:56 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:08:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d764e03a215333db8170acb0685d3ba179bb4286392cf97457e43a5d7d7f534`  
		Last Modified: Wed, 13 Sep 2017 13:00:25 GMT  
		Size: 6.9 MB (6949930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784bf092f079b9b6ab7b6bd77941ad5877ece1d31b8671c879c6ec08a95ece9a`  
		Last Modified: Thu, 14 Sep 2017 04:48:05 GMT  
		Size: 548.9 KB (548889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea902f8d791418df3bebb86541bc18f2f117ddb155b2b9b7d8e04c2e0422d37`  
		Last Modified: Thu, 14 Sep 2017 04:48:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90297101e84c942c4dc1e5a825a09a5849d99d9bd5b36bd77e8fff2bd88ba7d`  
		Last Modified: Thu, 14 Sep 2017 04:48:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf4c94ce75b6580f5d04bd9f7e21e830280055a3e70eb63bd3a60e4dd1d9ce4`  
		Last Modified: Thu, 14 Sep 2017 04:48:23 GMT  
		Size: 94.2 MB (94167871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eb75cc8efc637f7c7a11e01abcaa289192382830ecae83dd972ebb3eac3172`  
		Last Modified: Thu, 14 Sep 2017 07:13:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ba7bd248c9ddf96725a0074f1f17dab57036a2ceed7547c958121064ba300f`  
		Last Modified: Thu, 14 Sep 2017 07:13:26 GMT  
		Size: 30.4 KB (30357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4160c5dc0d9f995019bf328d1e44cd736e1e07b17c66e04a28b9f00d91959a6b`  
		Last Modified: Thu, 14 Sep 2017 07:14:03 GMT  
		Size: 43.9 MB (43891035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:815f1221f216e95ada2d66ee8204e1adb8ff72cc18726bdbce5e9a900b155456
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171307825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3bd4dfe393aaaf587f2b3d171e22803ec04c67de3e3d218438921569a4b4fe`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Sep 2017 14:27:09 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Wed, 27 Sep 2017 14:27:09 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:55:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:09:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:09:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:10:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:10:01 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:10:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Sep 2017 15:10:01 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 15:10:01 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 15:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 16:21:00 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:21:00 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 27 Sep 2017 16:21:01 GMT
WORKDIR /usr/local/tomee
# Wed, 27 Sep 2017 16:21:01 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 27 Sep 2017 16:21:05 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 27 Sep 2017 16:21:35 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Sep 2017 16:21:36 GMT
EXPOSE 8080/tcp
# Wed, 27 Sep 2017 16:21:36 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:e01bed01500e38b4a7d8bb042379d691c28b6a14429b70bc827909c967a9adbd`  
		Last Modified: Wed, 27 Sep 2017 15:29:12 GMT  
		Size: 550.3 KB (550338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce56190119393b798ca428a6ebc03c256dc539850784d8204cf87dc82ec46e49`  
		Last Modified: Wed, 27 Sep 2017 15:29:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb281ea42f78f3dbc965e57da86f1354b5bd706b9e14e1115d8ad41838f9c4f0`  
		Last Modified: Wed, 27 Sep 2017 15:29:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6915114b749b4bf2de82e9c37d9bdae089ed2fd13582c090ae160ee65afbe4d1`  
		Last Modified: Wed, 27 Sep 2017 15:29:32 GMT  
		Size: 83.3 MB (83304786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cd2867454c57477ae47bfeedd2f13dfea9701774fccc3ca6a45586767f237`  
		Last Modified: Wed, 27 Sep 2017 16:25:32 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a53096331d5682cba1f5c3c98116817baa421b565b8813a78011f910b2e58ec`  
		Last Modified: Wed, 27 Sep 2017 16:25:32 GMT  
		Size: 30.4 KB (30386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444bcc7c1db677f93668c09a7fbc821ecd562948e017a0f76fe5fb53d315cfce`  
		Last Modified: Wed, 27 Sep 2017 16:26:02 GMT  
		Size: 43.9 MB (43891394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:78e46a769772d2803c079699aaf2151ece1513f00599cfaf66a2988251c66c47
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168306163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5bee0959fc36468c665bcf656de2abd9c3cd59e23cf68d75871ac4fd5908391`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:27:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:53:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:53:43 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:53:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:53:46 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:53:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:53:47 GMT
ENV JAVA_VERSION=6b38
# Mon, 09 Oct 2017 22:53:47 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 09 Oct 2017 22:54:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:35:54 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:35:56 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 01:35:56 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 01:35:57 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 01:36:02 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 01:36:48 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:36:48 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:36:48 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:028f54423b6567de45bfdab23b0f6b1821a95af5c97c396c3fb9c16b6947472c`  
		Last Modified: Mon, 09 Oct 2017 23:15:33 GMT  
		Size: 537.8 KB (537830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b49ae703850bca935efde389c4122e8511a1cd78401b3ddb9448b853e21e54d`  
		Last Modified: Mon, 09 Oct 2017 23:15:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf442fe3dccb24ab1a2d3612d5c1cfb7847783004211e87e8b0b974955e98b`  
		Last Modified: Mon, 09 Oct 2017 23:15:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b6a87f4924b14994ad6db91c71f7b2ace65e9cbd8ad8b0bc6dfbe76543a82b`  
		Last Modified: Mon, 09 Oct 2017 23:16:08 GMT  
		Size: 81.8 MB (81819639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c7d56dfb1c73afc93b647d7728ed41e35bb66c6a144f95de36564c4e339f95`  
		Last Modified: Tue, 10 Oct 2017 01:43:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc19f9fb1e0fe38c41abbebd3dd4d01685257c8338da1674ed3b404b8becd20`  
		Last Modified: Tue, 10 Oct 2017 01:43:35 GMT  
		Size: 30.4 KB (30385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab89d641cac3465c76401cb7547c85e22a8fbe69bf42eaf86cc71caf3fd002a`  
		Last Modified: Tue, 10 Oct 2017 01:44:18 GMT  
		Size: 43.9 MB (43891349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-plus` - linux; 386

```console
$ docker pull tomee@sha256:51e2bdd58161813b8aac717d035e9aad2fd986c708a84b2655577d9ea7ab8774
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192708447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f3fcb1d010d39c294959d7076e2313617b9aaeee4e8f0d49428da022674094`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:25:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:25:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:48:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:19 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:48:19 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 00:48:20 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 00:49:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:40:37 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:40:38 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 04:40:39 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 04:40:39 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 04:40:46 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 04:41:38 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 04:41:38 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 04:41:41 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:b206083d682368f1f66f593a8d356e7aa4a95d2748dd2f55617877c8f019faff`  
		Last Modified: Tue, 10 Oct 2017 01:40:17 GMT  
		Size: 538.4 KB (538401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea932d9c8122a5745d65ab475f6ee7f21b74350e34cefbd04f2032fe8ff0c790`  
		Last Modified: Tue, 10 Oct 2017 01:40:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a4a8343e3a0348db5794fc1343dc771674c12ad91c3a810bb6e42af176fe74`  
		Last Modified: Tue, 10 Oct 2017 01:40:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a281574513745ae68e7398dbe1049176e663b5b6e7b5e6a062b85fed3337fcef`  
		Last Modified: Tue, 10 Oct 2017 01:40:37 GMT  
		Size: 102.0 MB (102015487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672bf03570801017e5cd4a0994b4e32984218cdbde2d26bb0fd0f74e6e0c7ea9`  
		Last Modified: Tue, 10 Oct 2017 04:47:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42377e3fa3d92479d55365216deab822933f0217a63b45233bb8c74c93ccd51e`  
		Last Modified: Tue, 10 Oct 2017 04:47:28 GMT  
		Size: 30.4 KB (30360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc1e24b1136a5f4b3ab9bdb6e2657f4c3748fc27a371e0f59264621223b102d`  
		Last Modified: Tue, 10 Oct 2017 04:48:07 GMT  
		Size: 43.9 MB (43891047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
