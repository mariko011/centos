## `tomee:7-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:4c397bff248732aec853a4cf5778252aca7906c6dabef3d44a56090b9319fb52
```

-	Platforms:
	-	linux; amd64

### `tomee:7-jre-1.7.4-jaxrs` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185781838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e28803eec85e8c290d966e0a594fe3030ddf958b9ff966ba16e64625953ca1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 03:58:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Jul 2017 03:58:51 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 22 Jul 2017 03:58:51 GMT
WORKDIR /usr/local/tomee
# Sat, 22 Jul 2017 03:58:52 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 22 Jul 2017 03:59:06 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Jul 2017 03:59:13 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 22 Jul 2017 03:59:13 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 03:59:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a81ec8b9eaca2b26ea9a746a66d87d376d85df473dc78ce4830ccf8f87eb1b`  
		Last Modified: Sat, 22 Jul 2017 04:03:17 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46b6c318ff33f7d9e871adb4b490ee055a462f40e5e2b5c647d280a4da2c26`  
		Last Modified: Sat, 22 Jul 2017 04:03:16 GMT  
		Size: 30.4 KB (30353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afdf62e9dc501a9b4b0bc1180f0c5f0f4828d412dd6e2db0225c5c79cee8453`  
		Last Modified: Sat, 22 Jul 2017 04:03:23 GMT  
		Size: 34.6 MB (34602210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
