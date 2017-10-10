## `tomee:8-jre-7.0.2-plus`

```console
$ docker pull tomee@sha256:ea796282312072a4334b89a147f554f1d91267873945bc31e3bde35297fa9ce9
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

### `tomee:8-jre-7.0.2-plus` - linux; amd64

```console
$ docker pull tomee@sha256:0d4293154d4bc159a4c9288c1180486a00a1171882bffe78d02133b7e94b5818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279165260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55089d0abd1b825f39ebf15d19962c5214e282b714764e82348b411f8dd9fa24`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:21:52 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:21:55 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:21:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:23:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:23:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:09:59 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 07:10:00 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 14 Sep 2017 07:10:01 GMT
WORKDIR /usr/local/tomee
# Thu, 14 Sep 2017 07:11:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 14 Sep 2017 07:11:16 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Thu, 14 Sep 2017 07:12:50 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 14 Sep 2017 07:12:51 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 07:12:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63678957352b01a378d047c9d036cc6173292cb74ab3ab1ef999f7c1795a4289`  
		Last Modified: Thu, 14 Sep 2017 04:59:44 GMT  
		Size: 852.4 KB (852355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929e9da71fa4b99a3e2311d9fbe8ed9309d64aa1e186d75cedd8376f2470ed12`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ef2abace7441da328e7b5d88d7a9af50029e2708469dd04f2fba6c718ab466`  
		Last Modified: Thu, 14 Sep 2017 04:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee465bb23abdb02ce2e1a5ea1650604d45a2a340953fd984f5fbfe72d728e20e`  
		Last Modified: Thu, 14 Sep 2017 05:00:36 GMT  
		Size: 166.2 MB (166171116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389ed23519a6eade3f5bd0e2ddf2ee46626e8576179782441dbe628d4ac938b`  
		Last Modified: Thu, 14 Sep 2017 04:59:43 GMT  
		Size: 272.1 KB (272076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b37a721f7f46d9485c66126d4c761d8255154a260a11a64d9c7d85ea20d8cb`  
		Last Modified: Thu, 14 Sep 2017 07:15:35 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af6a61e4095dd49713c814386e6ebe0f44231212d899692140fd291a460af4b`  
		Last Modified: Thu, 14 Sep 2017 07:16:40 GMT  
		Size: 71.1 KB (71078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e830d74aa9b6f348aa1c9367f971af93990bc327cd3958f43a1db5640ca1242`  
		Last Modified: Thu, 14 Sep 2017 07:18:38 GMT  
		Size: 50.9 MB (50934894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:60b1165844188ce6c8b13e86a6b0a87d6df951cff8f825e3087de044a635623b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247647662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b96b1e3f98907f31249ec4bc822ab5175387cdf383f4e1e12ae8d6db6c666cf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Sep 2017 14:26:13 GMT
ADD file:111ccf88fc474ec03491c012baa75d4f4b3b6d08391bb86364b9fabdf3b57d3e in / 
# Wed, 27 Sep 2017 14:26:13 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:53:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:53:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 15:20:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:20:52 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:20:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:20:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:20:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Sep 2017 15:20:53 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 15:20:54 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 15:20:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 15:21:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 15:21:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 16:22:37 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Sep 2017 16:22:38 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 27 Sep 2017 16:22:38 GMT
WORKDIR /usr/local/tomee
# Wed, 27 Sep 2017 16:23:30 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 27 Sep 2017 16:23:37 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 27 Sep 2017 16:24:48 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Sep 2017 16:24:49 GMT
EXPOSE 8080/tcp
# Wed, 27 Sep 2017 16:24:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ec26d49abcad5bd85bc79fcb9d95e4eeb09e21e9759bbbe4229ef9a39f88c6b8`  
		Last Modified: Wed, 27 Sep 2017 14:31:19 GMT  
		Size: 43.8 MB (43813593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c3de8383501dec27f7ba7879836ff8251f59b21d5dbfef9185768d139778c7`  
		Last Modified: Wed, 27 Sep 2017 15:04:58 GMT  
		Size: 10.2 MB (10201423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf1d369a2e9d7203bd26ddc36279bddd26c6eaba7565a5a4891b1e654bfeb28`  
		Last Modified: Wed, 27 Sep 2017 15:04:56 GMT  
		Size: 4.5 MB (4450668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a5e70eccdf7140e5b936bca18b17dc59cc16563be8a333f76bbd4b8faaac3e`  
		Last Modified: Wed, 27 Sep 2017 15:33:19 GMT  
		Size: 845.3 KB (845333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9fc86c0247d36ed6834baa705fa1e8295809f0f5f6347ca6a9d7bc6e38cea3`  
		Last Modified: Wed, 27 Sep 2017 15:33:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93017fec807fcf72325bc078361f5001ba2e97f72bda7c09c01502452be52c8a`  
		Last Modified: Wed, 27 Sep 2017 15:33:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a998ee0b640878b02441671a6890bd8f8a42e1715ae65fa037b62975fb7024a`  
		Last Modified: Wed, 27 Sep 2017 15:33:53 GMT  
		Size: 137.1 MB (137057465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b58db3611a1cf1ccc2e6f7e7e78f02acb59b689b8e03fdd23dab05ac026516`  
		Last Modified: Wed, 27 Sep 2017 15:33:19 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73da45de41129dc96f23c00fa5b62358dee62e15feb0e8764b2c7363e8d73e92`  
		Last Modified: Wed, 27 Sep 2017 16:27:18 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f7681a3b6adbc4849b6280c56d9208ab441a893404bb386bfe7061789e4755`  
		Last Modified: Wed, 27 Sep 2017 16:28:04 GMT  
		Size: 71.1 KB (71120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0374bdd356efc018797f9e2b5fe0ef41c6d2c6ecb48035ac019399e3a7fbc1fb`  
		Last Modified: Wed, 27 Sep 2017 16:29:59 GMT  
		Size: 50.9 MB (50935301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:8345c51f2698f0e0f51a26262aa8782a4ee7977b2fdc9d65f770e780ee09d86a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257699054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c0204d2c6017ad5c9cce312ac0b82c99d102b8dabe10fa5540e40299a638c6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:06:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:28 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:06:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:06:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:06:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 23:06:30 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:06:30 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:06:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:07:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:07:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:38:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:38:38 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 01:38:38 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 01:40:08 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 01:40:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 10 Oct 2017 01:42:11 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:42:11 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:42:12 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3bfbfdbf1f06cc8623ca197078425095d3b0b07b498fe3e732aaaa9055586`  
		Last Modified: Mon, 09 Oct 2017 23:24:46 GMT  
		Size: 829.9 KB (829886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d88605d2d9d47f7cf8a4a80c5542df09ac2c0cfe69c5f7aba7d087f7e12b42c`  
		Last Modified: Mon, 09 Oct 2017 23:24:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f067e34b79f3b56df76c2edb086b484c17ef4fa899088fc56a0d3fcc91bf3524`  
		Last Modified: Mon, 09 Oct 2017 23:24:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92683ba93bad6ef31d37940a329db2ecca76fed2febcee1aa2b5e2b0cf0da9d`  
		Last Modified: Mon, 09 Oct 2017 23:25:20 GMT  
		Size: 149.7 MB (149718492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516da82a5224c40633d7d496f6356ac9c27eea3b44da41091a935557919c00f9`  
		Last Modified: Mon, 09 Oct 2017 23:24:46 GMT  
		Size: 272.2 KB (272187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bc3fe5adc33cc08f506c323c77eecb83892e0525d7d1154d1b9064b0f9adaf`  
		Last Modified: Tue, 10 Oct 2017 01:45:41 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d4ea16ff2e25fefc2ba06a049afcb65521bedb67b5c61803082702259274cd`  
		Last Modified: Tue, 10 Oct 2017 01:47:09 GMT  
		Size: 67.0 KB (66993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb208462ab0ee463cbf5b9ca5949af93b6abd396b5a6c49d443b130434e77b0`  
		Last Modified: Tue, 10 Oct 2017 01:49:12 GMT  
		Size: 50.9 MB (50935318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:3b2a482352a74e3e55fde6ee5c6ac7b004d11780067986cbe057ee6cccd2de81
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263187209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c27a702645cc392773258a83443de81562cc258ee9fe9d7b881da6c277f4ba4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 22:45:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:45:29 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 22:45:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 22:45:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 22:45:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 22:45:34 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 22:45:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 22:45:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 22:51:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 22:51:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 01:55:40 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 01:55:43 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 15 Sep 2017 01:55:44 GMT
WORKDIR /usr/local/tomee
# Fri, 15 Sep 2017 01:57:31 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 15 Sep 2017 01:57:43 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Fri, 15 Sep 2017 02:01:15 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 15 Sep 2017 02:01:16 GMT
EXPOSE 8080/tcp
# Fri, 15 Sep 2017 02:01:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318474fbe0c453378844a812e99a754f8b80518630ab2049b7e9e713b439d343`  
		Last Modified: Thu, 14 Sep 2017 23:09:51 GMT  
		Size: 838.7 KB (838739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fb5e7f660efb9b92af95c9f7a0d8b36eab7cbcc2df8d2b25613c8d1f070686`  
		Last Modified: Thu, 14 Sep 2017 23:09:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d1a801e37b573f7a690620738ddaf3a6a875f5057b217d4c7bc63416af0032`  
		Last Modified: Thu, 14 Sep 2017 23:09:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b946d9fc1cf9e346878554762e9b2480a60899caee852c8a2fd152f2ca425d`  
		Last Modified: Thu, 14 Sep 2017 23:10:45 GMT  
		Size: 153.7 MB (153715955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0aa0d1b707aa5847f32ed20f69003dbe7724a5dbc01e1ea43f02c7ab066f26`  
		Last Modified: Thu, 14 Sep 2017 23:09:52 GMT  
		Size: 272.1 KB (272131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00032e9403d620bbd59e99f2d9373dcaa5c05d1629ef90dcf832d5890acb415`  
		Last Modified: Fri, 15 Sep 2017 02:06:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf91a9ce92ef0a0c1dbc027839f13eb1a6653fa2a98bf81459b28241d933e3dc`  
		Last Modified: Fri, 15 Sep 2017 02:08:22 GMT  
		Size: 71.1 KB (71095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3953d2440687f1d970fab24839e677119385f4b87b39cdff662033b7066cb021`  
		Last Modified: Fri, 15 Sep 2017 02:13:11 GMT  
		Size: 50.9 MB (50934868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-plus` - linux; 386

```console
$ docker pull tomee@sha256:74271894739c59e0c5756ca1973be0ee3f17760fd128ef9364218a77817ef284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283112705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861ea42f1d60f344bfc256a04a031f10c4c4a5169e391c2f8b4270a2b4c20b9e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:16:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:16:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:16:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:16:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:16:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:16:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:16:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:16:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:17:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:17:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:43:27 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:43:28 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 04:43:28 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 04:44:39 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 04:44:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 10 Oct 2017 04:46:15 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 04:46:15 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 04:46:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f168f8d9098f35fcc8fd5d0796585b0782a31aa58d310cbcccbed9da1035ecd`  
		Last Modified: Tue, 10 Oct 2017 01:57:28 GMT  
		Size: 861.4 KB (861393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52dea0b33ab3a90d5ca8ac2ad9960bae463933d72222438dfebb150f6c216cd`  
		Last Modified: Tue, 10 Oct 2017 01:57:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd31de048ab93884fc8409b576013f7e0d8df5791e67a42ffd7c43f4fa7ce74`  
		Last Modified: Tue, 10 Oct 2017 01:57:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3e303ec184813082f0628c68d984a41ddc0ad56aa63d760176723d9a9748ed`  
		Last Modified: Tue, 10 Oct 2017 01:58:01 GMT  
		Size: 169.1 MB (169140959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e1688b1f34abb1c88338e26039079b71c450999df9003975f2db476ffb62ba`  
		Last Modified: Tue, 10 Oct 2017 01:57:28 GMT  
		Size: 272.1 KB (272098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db010bd5b25c6ff2cb76a59c5d0d2ce8f76088438d7dd67b7d8cd2dee4ffa1c7`  
		Last Modified: Tue, 10 Oct 2017 04:59:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcf1d96a798a62414509f177bb00936ce0e2ae71f02cc258946d77a0503c503`  
		Last Modified: Tue, 10 Oct 2017 05:00:41 GMT  
		Size: 67.0 KB (67013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67633759b8f1ba0b0e21a6ca68b0ce588f831c036f25e17f3daa5286bb46939c`  
		Last Modified: Tue, 10 Oct 2017 05:13:32 GMT  
		Size: 50.9 MB (50934838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:0670a2780fcbae090254c692d8d53fc064d97edae5b13b462ba3bc7f53d88042
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269558255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2304919f8ae4773d9906645fce8cb5574c55c38a8600cdb572e48485fe23e1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Sep 2017 01:07:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:07:19 GMT
ENV LANG=C.UTF-8
# Fri, 15 Sep 2017 01:07:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Sep 2017 01:07:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Sep 2017 01:07:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 15 Sep 2017 01:07:35 GMT
ENV JAVA_VERSION=8u141
# Fri, 15 Sep 2017 01:07:38 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 15 Sep 2017 01:07:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 15 Sep 2017 01:18:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Sep 2017 01:18:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 03:24:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 03:24:46 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 15 Sep 2017 03:24:49 GMT
WORKDIR /usr/local/tomee
# Fri, 15 Sep 2017 03:28:59 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 15 Sep 2017 03:29:17 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Fri, 15 Sep 2017 03:32:43 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 15 Sep 2017 03:32:46 GMT
EXPOSE 8080/tcp
# Fri, 15 Sep 2017 03:32:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047a923edcd93816a64dab0305208d63367b08c12fb2dab26b885f42d6b7e76e`  
		Last Modified: Fri, 15 Sep 2017 01:46:30 GMT  
		Size: 847.8 KB (847765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c2adfd9e0d5406f801bc1a3421fa43c4758c7965cb221184852140846b5803`  
		Last Modified: Fri, 15 Sep 2017 01:46:29 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394f65ef336dec26751f48e3ff5c9e5a66f01995e1a2c2fe64317817428b13e9`  
		Last Modified: Fri, 15 Sep 2017 01:46:29 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49b4c3f0cbf161d0c10aa47398169e835950e4bf2b47ce0b16b1d76df142032`  
		Last Modified: Fri, 15 Sep 2017 01:47:06 GMT  
		Size: 157.1 MB (157131184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22422b4c86e35287a25efb677530a447ac508f11bf2a3831993617d66f0e0b8d`  
		Last Modified: Fri, 15 Sep 2017 01:46:30 GMT  
		Size: 272.1 KB (272073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4721be22592341ccb53f7a40bb38711da3af219a3b07d931f8673dc967f0418`  
		Last Modified: Fri, 15 Sep 2017 03:36:18 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7faa92c6ad097b66ab3d5088dbf4057d4c2c8d2bd1086b39c09b039ec56c21c`  
		Last Modified: Fri, 15 Sep 2017 03:37:35 GMT  
		Size: 71.1 KB (71134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9067f5ec34b5013dc96de4280c21e55933c34939f461a3bd0782004300ec776a`  
		Last Modified: Fri, 15 Sep 2017 03:39:55 GMT  
		Size: 50.9 MB (50935320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-plus` - linux; s390x

```console
$ docker pull tomee@sha256:011f3d59cdd2a16d85bce3980778497770e6ad39653b670e7b14a34f9f4c7e8f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251100750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b38e746347e8eac00ca4aae382dd0dfb89edd99866b9fb940ad70ccc522308c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:53:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:53:26 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:53:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:53:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:53:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:53:28 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:53:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:54:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:54:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:51:08 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 01:51:09 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 01:51:09 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 01:53:28 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 01:53:32 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 10 Oct 2017 01:54:46 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:54:46 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:54:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46fd1d2577b42eb6413a80728dd8f641a3d25ba60600b4c6c7bf39aaf2f1835`  
		Last Modified: Mon, 09 Oct 2017 23:02:35 GMT  
		Size: 863.3 KB (863278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9041874dfd8ed1b699dab4a8930685e363dddb261f9943e0234e10001dd8260d`  
		Last Modified: Mon, 09 Oct 2017 23:02:35 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d326681dc804244d87469d8cbf597675f0cfc7926ed43b2f957fa49a6c3f94`  
		Last Modified: Mon, 09 Oct 2017 23:02:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d424eb08cc53d959caa1e61a38a6a815b08dd27edd9d84015c673698c1fa43bf`  
		Last Modified: Mon, 09 Oct 2017 23:02:56 GMT  
		Size: 138.7 MB (138658387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a9b1037f0e88e507d76a83d88797c5b5d52a4e6c6ce19ccdee51f59c6e665d`  
		Last Modified: Mon, 09 Oct 2017 23:02:35 GMT  
		Size: 272.2 KB (272155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9bfccd2e5f312d4c01419ad2ca858c2ea14eb3a3c8d2523339ca628f87de7b`  
		Last Modified: Tue, 10 Oct 2017 01:56:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4b74b1e56dd49ded53ff3d344006f9e601f0ec2f9c2c6dce9c114cc9486f4`  
		Last Modified: Tue, 10 Oct 2017 01:57:07 GMT  
		Size: 66.9 KB (66939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15332fd933d7bd43446e98efd529079db5f70830fb5928981df461f2479452f`  
		Last Modified: Tue, 10 Oct 2017 01:58:42 GMT  
		Size: 50.9 MB (50934875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
