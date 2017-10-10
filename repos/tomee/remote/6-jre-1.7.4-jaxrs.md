## `tomee:6-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:541393b3c3015ba008b5ee30fc9c2a10ef2808850094160e84774fe786c8931d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `tomee:6-jre-1.7.4-jaxrs` - linux; amd64

```console
$ docker pull tomee@sha256:fa977b3fef97872a5ef28449137c707943b6e1a45a28403c5fec711b09751d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.4 MB (174401881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a080b76db8c09df554a53903f69c5a96dfaa28a7bdb715b022d9b34589468a96`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:34:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:34:42 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:34:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:34:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:34:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:34:44 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 00:34:44 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 00:35:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:57:16 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:57:18 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 08:57:18 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 08:57:18 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 08:57:24 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 08:57:31 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 08:57:31 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 08:57:31 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:4692373a68e6e39ddcf90f49d1c343c8a296ed7a94e51a332bda0a39186c027b`  
		Last Modified: Tue, 10 Oct 2017 01:04:59 GMT  
		Size: 548.9 KB (548886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fed84e817a684a6b7997eb54f4909bc58a04dc4939ca69379e997dc5840e0c1`  
		Last Modified: Tue, 10 Oct 2017 01:04:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9673091f8ab4cc96ed901332039064340c5953e0dcce397820a10121560d82`  
		Last Modified: Tue, 10 Oct 2017 01:04:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf4aa5f01821e0783eeff225fcd52f22633f7a089045d0a081111f0b1413c12`  
		Last Modified: Tue, 10 Oct 2017 01:05:23 GMT  
		Size: 94.2 MB (94166536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729e7a72f0062f74cc75345e39dde1c8316635e29347364f341db25dd623ad9c`  
		Last Modified: Tue, 10 Oct 2017 09:15:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4ba7a41a29503d9f22c3d5d338291d49e112c65f212152c98448c8729128b9`  
		Last Modified: Tue, 10 Oct 2017 09:15:08 GMT  
		Size: 30.4 KB (30361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5e109c4d96a7c434439bf75464760ff28e92dcd16ea99dcdd019f1fb06bd54`  
		Last Modified: Tue, 10 Oct 2017 09:15:13 GMT  
		Size: 34.6 MB (34602173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-jaxrs` - linux; arm variant v5

```console
$ docker pull tomee@sha256:1880aa91f7227924db9e7f62882caf2f2049285b50a157696b4b1fce48c6743b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162018545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a13c79e2e3503ee56d170bd90dc8783c8bb8a1148215f664bb552c2189398e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:49 GMT
ADD file:7caba2e8ca559f2c483f4cd0a58fb948ca56548d0ce9ae218c7c407e1fc02eb5 in / 
# Mon, 09 Oct 2017 21:45:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 08:05:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:05:09 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:05:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:05:11 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:05:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 08:05:11 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 08:05:11 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 08:05:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:50:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 08:50:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 08:50:47 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 08:50:50 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 08:50:54 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 10 Oct 2017 08:51:00 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 08:51:00 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 08:51:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9e1de2c5739e65047ff13389bd7f41bab4fb8e2a7728dd670046879169bc1203`  
		Last Modified: Mon, 09 Oct 2017 21:52:21 GMT  
		Size: 36.9 MB (36942751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a138d42f981eeb87f54bf95eca66edc18763600c1cc025f4e463832c9c239e`  
		Last Modified: Tue, 10 Oct 2017 07:46:51 GMT  
		Size: 6.6 MB (6587512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f969ae85de7bb80a86f336af010ba0fe4117db3f9abefedf0a6d23908188ffb`  
		Last Modified: Tue, 10 Oct 2017 08:18:13 GMT  
		Size: 550.4 KB (550353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7de46c56f21164280cf20e650417bdbc38aa1352372730c24c21e36e25e955`  
		Last Modified: Tue, 10 Oct 2017 08:18:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ca239221eb43c732d124ad79f0705841bfef35013b4b714809d01425928c4e`  
		Last Modified: Tue, 10 Oct 2017 08:18:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918b418ae1339a419c803dfa50bc2ede10b0e85af0de059fcb83bae73eb51de0`  
		Last Modified: Tue, 10 Oct 2017 08:18:31 GMT  
		Size: 83.3 MB (83304631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674559acaa230c7e91da94af9e96de5f47f4402a2c1b1cd4ed9eb909d33943e0`  
		Last Modified: Tue, 10 Oct 2017 08:56:19 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563ec2e2bb6c88509e36d1e162477ac805079a4e476e2ec293bfe2a62d3cd5c5`  
		Last Modified: Tue, 10 Oct 2017 08:56:19 GMT  
		Size: 30.4 KB (30388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7072c86f27bff6108a80fbdedb2fac51fcce389b4912af4a2be04b30c967d4d`  
		Last Modified: Tue, 10 Oct 2017 08:56:24 GMT  
		Size: 34.6 MB (34602354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-jaxrs` - linux; arm variant v7

```console
$ docker pull tomee@sha256:0e1646178d780e8bd6f3b2b9975a88740bf1f1c31a812d320fbdcdc4ce537818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (159017159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53e11dc87f77de3a6d9040c2d5b7a9673c820a5d51645220c372404a56a1612`
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
# Tue, 10 Oct 2017 01:36:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:36:10 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:36:10 GMT
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
	-	`sha256:5add44c0fb19a03ac706e23a24a8b77d4488caef0e3dd6caec36733ddb2bb743`  
		Last Modified: Tue, 10 Oct 2017 01:43:41 GMT  
		Size: 34.6 MB (34602345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:6-jre-1.7.4-jaxrs` - linux; 386

```console
$ docker pull tomee@sha256:37f6cada607ac7acd275d98ffdb6fb1bdb2c1535589f1b946e6155c788f9e066
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183419600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af2f9cd5bed9edff2e232abe3069c877711fe62b04994fa6cdf5badb6ca110e`
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
# Tue, 10 Oct 2017 04:40:53 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 04:40:55 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 04:40:55 GMT
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
	-	`sha256:92a7fb797874c208a1be652b042b8444dc0b9e53fba68a66b0d8be95f88b2618`  
		Last Modified: Tue, 10 Oct 2017 04:47:33 GMT  
		Size: 34.6 MB (34602200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
