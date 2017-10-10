## `tomee:7-jre-1.7.4-webprofile`

```console
$ docker pull tomee@sha256:54429f490244e946725ddfe3fb8eb07257285efa007c1a2f279189468906b13d
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
$ docker pull tomee@sha256:5e7372b3c212969bd72a05a18ee54f0974f029547c2d228aeb2308953bf42ecb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.7 MB (220728124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9e57e9d6c8a7cc3be5323a143c495aa7c11779291597cddad5acb3ad449417`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:58:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:58:37 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 08:58:37 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 08:58:37 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 08:58:43 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 08:59:50 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 08:59:50 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 08:59:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26eae1f14fdbbc38bfa75a9411e179a117496d4e55f8bd0c69569c831cb305c`  
		Last Modified: Tue, 10 Oct 2017 09:18:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adcdf3784029870223016f05f2c76c9b6a33e7e073f5103f2bdaf6f08c9e4f13`  
		Last Modified: Tue, 10 Oct 2017 09:18:21 GMT  
		Size: 30.4 KB (30361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0030b00b3668ef71e722f3eef09e9c018943a49b9c8f4599fd2b6099206a227`  
		Last Modified: Tue, 10 Oct 2017 09:19:18 GMT  
		Size: 31.2 MB (31157969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:77c548e92d093ce474e43ee4627c325aa2cfe51f1789ec4cf829706d73e98721
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195722965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3df6cb64a07b3f9ed8935af84f687ccbaa34639383031ccd3f56fe5721a08aa`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:12:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:08:44 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:08:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:08:45 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:08:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 08:08:46 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 08:08:46 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 08:10:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:51:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:51:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 08:51:47 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 08:51:47 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 08:51:51 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 08:52:38 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 08:52:38 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 08:52:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffbd68139d082d5462baf2dcc79e9164c03c8aa02e40c979170c408d744c80b`  
		Last Modified: Mon, 09 Oct 2017 22:24:37 GMT  
		Size: 18.7 MB (18654351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735cc3d57e50065e46db65f539430391f33a18f9522c1ecf80c5e2d66b4051c6`  
		Last Modified: Tue, 10 Oct 2017 08:19:22 GMT  
		Size: 788.4 KB (788364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ed6c5409469d055bc9b9f389c60a4b17cbee68f1838524603987388336166f`  
		Last Modified: Tue, 10 Oct 2017 08:19:22 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deffd3ac5f3a3e5eafc04cddcb454100d6f50abe5408b06190cf92115164161`  
		Last Modified: Tue, 10 Oct 2017 08:19:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903bf26c54a04b143dab1f3b100d1ba589d8729846cc9344ddd9965720a87682`  
		Last Modified: Tue, 10 Oct 2017 08:19:43 GMT  
		Size: 94.2 MB (94211189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d94772daf925d6290db18c9fa5886ec96c442b142328aadfeb036fd88ea6a0a`  
		Last Modified: Tue, 10 Oct 2017 08:57:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361cb39113d29b927999585e5224567b57489f9f013a6bc9038d0289657a50a8`  
		Last Modified: Tue, 10 Oct 2017 08:57:14 GMT  
		Size: 30.4 KB (30378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c957c81855cd3d879f11973b7bb0ff8fc7bc8313274970d256847908c5fd3a9`  
		Last Modified: Tue, 10 Oct 2017 08:58:06 GMT  
		Size: 31.2 MB (31158229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:3d23dafb168550f2841b23f07d92d91f220a71b64a86dbcdddae55ff05ac87e4
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.6 MB (201591148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b00f915e63f5061a43ab8e7440ccbac6af23765aca000e5fa47d37fb72995ae`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:00:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:00:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:00:37 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 23:00:38 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 23:00:39 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 23:02:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:37:11 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:37:12 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 01:37:12 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 01:37:12 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 01:37:17 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 01:38:23 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:38:27 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:38:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec046be15d9b20bf171671abb2ba3556cecf4637023389a71b791ebb6b9b32f`  
		Last Modified: Mon, 09 Oct 2017 23:21:19 GMT  
		Size: 763.0 KB (762953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1585ed2a2900ac82cf734277a699abc89f28f3e235b8387f5ddd577d9a07543a`  
		Last Modified: Mon, 09 Oct 2017 23:21:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f356d41b024fee85d7535e3dfe17024f3aa9218d8b2e3823a29f58a4ef608b18`  
		Last Modified: Mon, 09 Oct 2017 23:21:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcead8487c7c5526752f844fed06c0fa262489c569c62ce76d2be5ccd65f416`  
		Last Modified: Mon, 09 Oct 2017 23:21:56 GMT  
		Size: 102.7 MB (102690001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee6eed28589e43e9e735a591bf98ffe913e8c3887fb8ebd8b248c7436860d2`  
		Last Modified: Tue, 10 Oct 2017 01:44:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f3e1671f93ae34cb6097823ee299f22a371bcd25d4c546d643548df64ef378`  
		Last Modified: Tue, 10 Oct 2017 01:44:38 GMT  
		Size: 30.4 KB (30382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edde08a5bf52310f5d43cd45e8f089bc2a8752a968ea1ace4d5277cb07f845a`  
		Last Modified: Tue, 10 Oct 2017 01:45:32 GMT  
		Size: 31.2 MB (31158202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:e98c48e65752f03e2cb1c3fa428080684d632c5871e5fab2809b8d6ee1318053
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194646727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cceb656f5a8fbeb7f4e9318d5bfca91b3a32c07e486a414e776dc3b49068ebd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:07:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:07:07 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:07:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:07:12 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:07:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:07:13 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 01:07:14 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:14:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 12:40:37 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 12:40:39 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 12:40:40 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 12:40:41 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 12:40:50 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 12:42:28 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 12:42:28 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 12:42:29 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fba3a18cf8e7e490d21868e5005310262d84603f2b923059c51a0722d771e6`  
		Last Modified: Tue, 10 Oct 2017 02:07:04 GMT  
		Size: 789.5 KB (789479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fec7a5ebbbf04688922a9f29a5ac5aecf9c6a403140d339d96149b1612a93a1`  
		Last Modified: Tue, 10 Oct 2017 02:07:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f3a9b26f0061ed5a8175c9002fc6fb4760a136fa8d77deb3b1351c715063af`  
		Last Modified: Tue, 10 Oct 2017 02:07:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b0fab131a74d0b80ac5ac9f6ed8227e2d2f9814f34557e12676540b4fe6170`  
		Last Modified: Tue, 10 Oct 2017 02:08:36 GMT  
		Size: 94.0 MB (94001030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b48b314081e354523c18b80169577e339e5c7991248e74580a7bd6bf42e407`  
		Last Modified: Tue, 10 Oct 2017 12:51:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47410dd0338dfbadbe2436c4e7d6cc37deecaacaff7e2273a063d6be1d2209f0`  
		Last Modified: Tue, 10 Oct 2017 12:51:49 GMT  
		Size: 30.4 KB (30354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e379ba53f888fa083553db2f6f1bc6431cede14efae40d08e8cd342ffb45e23c`  
		Last Modified: Tue, 10 Oct 2017 12:53:35 GMT  
		Size: 31.2 MB (31157969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:9276f96350fcbd14f880682287daaaabe7a780c2613329a5cd67df91d9f80b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233942996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8437c667751beabc9b2b0005178491889a89f431e0a82df66000c348192a8084`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:03:42 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:03:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:03:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:03:43 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 01:03:44 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:05:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:42:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:42:04 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 04:42:04 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 04:42:04 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 04:42:12 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 04:43:17 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 04:43:17 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 04:43:21 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8278e64ead5b112d12a01c0a0044f5c06193ee5c838846e11bcf7da19db90a80`  
		Last Modified: Tue, 10 Oct 2017 01:47:25 GMT  
		Size: 798.6 KB (798606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efea2af91f31ac5f53448278beb8526a88648d889b41552e7dc87e7f4bc621e6`  
		Last Modified: Tue, 10 Oct 2017 01:47:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991e28554ee445e854d2cd27cef8e69ca823976393f674276829fe055e3f4448`  
		Last Modified: Tue, 10 Oct 2017 01:47:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0b463bb97c2f353b15a40942c3953dae72ef078701d9791f99f98cb99d98fb`  
		Last Modified: Tue, 10 Oct 2017 01:47:46 GMT  
		Size: 127.6 MB (127586865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad590a24e547aaed786e9ec3239cc31e75c13b1f08b6d2dcc1ba2fb7f44d559`  
		Last Modified: Tue, 10 Oct 2017 04:49:31 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4868a73529f0d6c4345671f6e07453ae4e778851cf4d605dd2b255338edf2d55`  
		Last Modified: Tue, 10 Oct 2017 04:49:31 GMT  
		Size: 30.4 KB (30355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7786f879cd59c94c24ba2fcdbc00609fe90aa8c1ab9af8451fe5348248a6293d`  
		Last Modified: Tue, 10 Oct 2017 04:59:15 GMT  
		Size: 31.2 MB (31157925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:e09f4e7e3195b5e343677c3b0fe9f376054309f3dbf29b188c8c6c4965f9ec1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199148186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ca235b6eefa5b41b7e43f56edb8752d48ba5110692a8318bb6500272cd64cc`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 02:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:37:12 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 02:37:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 02:37:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 02:37:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 02:37:39 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 02:37:43 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 02:56:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 10:00:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 10:01:07 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 10:01:11 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 10:01:15 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 10:01:44 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 10:05:58 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 10:06:03 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 10:06:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254f22f61b77bb726ce6f51037d45e09f6aa821c51e6eeb871a393c653b02cce`  
		Last Modified: Tue, 10 Oct 2017 05:10:10 GMT  
		Size: 791.5 KB (791527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39e78afec3d7233a665232869c39a4054bfa2e9e438dba76f2382c401dae89f`  
		Last Modified: Tue, 10 Oct 2017 05:10:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9677898b74d71ca61f53ab87ec09139adee941760dd11f43c4ced46cdc56a494`  
		Last Modified: Tue, 10 Oct 2017 05:10:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ea63ce10914e3ed9bdec17dc6259b52e0064b9b94e8a6eb5f4c79e03bff52`  
		Last Modified: Tue, 10 Oct 2017 05:10:31 GMT  
		Size: 96.2 MB (96156756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7477c6d92b4fa85989e137bd96d934e2c0a1057a4594d68933287e1ad0786d2c`  
		Last Modified: Tue, 10 Oct 2017 10:17:01 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440daf617f05237701fbda1bd0b00537fa70a59aa5c7478549e65be072175aa3`  
		Last Modified: Tue, 10 Oct 2017 10:17:00 GMT  
		Size: 30.4 KB (30386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cbf5e7a65d19360d30f0a4faa26e39ff729c2d81330b8c9e3fb64cd18ede56`  
		Last Modified: Tue, 10 Oct 2017 10:18:07 GMT  
		Size: 31.2 MB (31158196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:7-jre-1.7.4-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:88757aae4b874c2888f6b2ec074885015fb4a305400a8834a544429750ee03f5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199935405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e56ba4279dbd642c507fc5a5256f91a8244390298bc101075856f5da65b63a9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:48:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:48:38 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:48:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:48:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:48:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:48:40 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 22:48:40 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 22:49:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:48:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:48:51 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 01:48:51 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 01:48:51 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 01:48:55 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 01:51:00 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:51:00 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:51:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feb08537d0006d7791e111b4977301f340e55084a14356708dd7d7fe3f3ceec`  
		Last Modified: Mon, 09 Oct 2017 23:00:25 GMT  
		Size: 804.2 KB (804242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace34b006c5d64bde57db1fed7526a321f54d93c18339b733d8a53fd10b1333e`  
		Last Modified: Mon, 09 Oct 2017 23:00:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237942b8e838ca176538c72c374c7d8dad4808ec45c0ef9f4100729c84886365`  
		Last Modified: Mon, 09 Oct 2017 23:00:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc30c96bb6b13c84498e0e1664a662ed152e349f9f70e8ca9012db05b04e290`  
		Last Modified: Mon, 09 Oct 2017 23:00:39 GMT  
		Size: 95.7 MB (95682676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e81e8c34fa04f1ae2fc3ad78726c95e8275feb4e136c2f77fa0f2db8f6d57`  
		Last Modified: Tue, 10 Oct 2017 01:55:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8613ef61ebfef9b6db936cd2030b1fb40b1789199b53c7fa3fed5451824bfa`  
		Last Modified: Tue, 10 Oct 2017 01:55:41 GMT  
		Size: 30.4 KB (30355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ad750cef4516f37b69cdc09088fe7b0508bb8e642bee2dddeb3a201ebed0d`  
		Last Modified: Tue, 10 Oct 2017 01:56:16 GMT  
		Size: 31.2 MB (31157959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
