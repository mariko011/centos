## `tomee:8-jre-7.0.3-plume`

```console
$ docker pull tomee@sha256:6bc81dbe869ad8ac8436383f083882f2fd912807599ecf1869606bb2f8bf1d85
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

### `tomee:8-jre-7.0.3-plume` - linux; amd64

```console
$ docker pull tomee@sha256:bdb055e65f2250a45f63a97c02a8451f61a09ce5a4aa5b8a465f61c5b96eeadc
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285730350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ead182e91a33f33fdc79bc69dd68d9eb95b8c9dea10c69eb9e209907b210d74`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 16:17:00 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 16:17:01 GMT
RUN mkdir -p /usr/local/tomee
# Mon, 11 Sep 2017 16:17:01 GMT
WORKDIR /usr/local/tomee
# Mon, 11 Sep 2017 16:18:02 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Mon, 11 Sep 2017 16:18:06 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Mon, 11 Sep 2017 16:20:06 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Mon, 11 Sep 2017 16:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 16:20:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da354f83e997e87f12f66e8a751c70846edd523b5f546d9981e2c3f8a4f9e0`  
		Last Modified: Mon, 11 Sep 2017 16:23:50 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88fdde503eab7ffa57ffd343fc275eead85f632323082c38242242283ce140f`  
		Last Modified: Mon, 11 Sep 2017 16:25:00 GMT  
		Size: 71.0 KB (71048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d971cae3ece63c2d60ee3cd8854fa0c7b362f42144705663e62ebfc1ffc0c45f`  
		Last Modified: Mon, 11 Sep 2017 16:28:06 GMT  
		Size: 57.9 MB (57942866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:24a79622f7d1f881ce1029e35fe387c7b9a2a988e5bcbe3d47d72be3f17f5adb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163031474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5014444ef595caba64e25045e49fc6beb20865364ad44698f0922d1a247a6e4e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Jul 2017 20:02:19 GMT
ADD file:9f63521860bab8c4c3f8dd169ff9c60d4b663d0562df52863f594789fbb0bb9e in / 
# Mon, 24 Jul 2017 20:02:21 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 11:09:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 11:10:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 18:37:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 18:37:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 18:37:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 18:37:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 27 Jul 2017 10:06:49 GMT
ENV JAVA_VERSION=8u141
# Thu, 27 Jul 2017 10:06:50 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 27 Jul 2017 10:06:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 27 Jul 2017 10:08:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Jul 2017 10:08:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Sep 2017 19:21:51 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Sep 2017 19:21:55 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Sep 2017 19:21:56 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Sep 2017 19:24:12 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 06 Sep 2017 19:24:24 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 06 Sep 2017 19:28:19 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Sep 2017 19:28:20 GMT
EXPOSE 8080/tcp
# Wed, 06 Sep 2017 19:28:21 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f3cfe56ec23b324576b7fce5b25d74e7ee856d003eb3bb31634cb80d63d5cfcb`  
		Last Modified: Mon, 24 Jul 2017 20:16:03 GMT  
		Size: 43.8 MB (43801191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2c8d3b4fe0f667e0d2439459c41a8db09c2fe91f277fda7b32ef28db97ce4a`  
		Last Modified: Tue, 25 Jul 2017 11:39:13 GMT  
		Size: 10.2 MB (10199397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199aefbadb73d049ace9b0bd9a21a12867c0496505e643ae2af4d1252fb78c6b`  
		Last Modified: Tue, 25 Jul 2017 11:39:12 GMT  
		Size: 4.4 MB (4449418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bcd790472dafe97bd91c01b0dadb9e4b8d7b5b58636eac9a10ffe21685309c`  
		Last Modified: Wed, 09 Aug 2017 10:20:08 GMT  
		Size: 844.9 KB (844931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0455a75273790662195211fadd5cf94d6e8358adf83a3b7a0cd1f43bd16a8db1`  
		Last Modified: Wed, 09 Aug 2017 10:20:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a8e075c6c7e42f47b817eb46dc10e977fca8a18016912d6217cb0b05804054`  
		Last Modified: Wed, 09 Aug 2017 10:20:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cecfada08e29b34cc3252dadf44fc4f66a419fe57ca084cbf4f38f4f3a51ab`  
		Last Modified: Wed, 09 Aug 2017 10:20:32 GMT  
		Size: 45.4 MB (45449677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bf8ca61c9cd0fb4c369fdcb059a092c867645498f9a1aabee7cf9e414c9305`  
		Last Modified: Wed, 09 Aug 2017 10:20:06 GMT  
		Size: 272.2 KB (272207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6caeaf623fce588becb1b5c5e89c17dda5d758521f997ab14b24eb10dacf32e`  
		Last Modified: Wed, 06 Sep 2017 19:33:04 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0073277469cedaa849b1a3b34b087dcb13bfae366133679d1c26dfd4a37d59`  
		Last Modified: Wed, 06 Sep 2017 19:34:55 GMT  
		Size: 71.1 KB (71085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40191628030a1f5b552ab4b3cdbc97159c3079ca8365671a0f88b07b16d99c4`  
		Last Modified: Wed, 06 Sep 2017 19:40:13 GMT  
		Size: 57.9 MB (57943038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:35a86b7d8263ce354d894228b6f9b1ad1888ba85e79e948a287437c7d002c432
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.7 MB (159694784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0622281f983c48a00eb7f8c71fc645a7f0a2d4b23562be8b1b0c486424e13308`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Aug 2017 02:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Aug 2017 02:22:21 GMT
ENV LANG=C.UTF-8
# Wed, 23 Aug 2017 02:22:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Aug 2017 02:22:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Aug 2017 02:22:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Aug 2017 02:22:29 GMT
ENV JAVA_VERSION=8u141
# Wed, 23 Aug 2017 02:22:30 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 23 Aug 2017 02:22:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 23 Aug 2017 02:26:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Aug 2017 02:26:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 08 Sep 2017 03:05:44 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 03:05:47 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 08 Sep 2017 03:05:48 GMT
WORKDIR /usr/local/tomee
# Fri, 08 Sep 2017 03:07:36 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 08 Sep 2017 03:07:47 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Fri, 08 Sep 2017 03:10:49 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 08 Sep 2017 03:10:50 GMT
EXPOSE 8080/tcp
# Fri, 08 Sep 2017 03:10:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42df78de815c7508235ea7852d2152711b645e66ddc11a67480d01d115265b32`  
		Last Modified: Fri, 11 Aug 2017 18:56:01 GMT  
		Size: 9.8 MB (9822294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f192c12171c8540d07257496ecb6a5d877435c1833a80ab76e70071524e553`  
		Last Modified: Fri, 11 Aug 2017 18:56:00 GMT  
		Size: 4.2 MB (4210816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfdc4bd67bd3118960de08a30905492b45ec00995da33d9e106cc93b57a1aa2`  
		Last Modified: Wed, 23 Aug 2017 03:26:04 GMT  
		Size: 829.4 KB (829415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356a46f2b98649b01dc577e5ff109ce1806b302e34368392dc379e07165a496a`  
		Last Modified: Wed, 23 Aug 2017 03:26:04 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373241e6204a29b8c41bedbfb7695a7ab2a3f5d443450a3da015a3e02c909203`  
		Last Modified: Wed, 23 Aug 2017 03:26:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb28476084da404d42ec767f024acfdc20e5a433b1adf179aa3cbe07433b589`  
		Last Modified: Wed, 23 Aug 2017 03:26:27 GMT  
		Size: 44.7 MB (44697946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a630feaa1370b901ff5e88060aa7df89033888cd9fefe57c789b4502c124394d`  
		Last Modified: Wed, 23 Aug 2017 03:26:06 GMT  
		Size: 272.2 KB (272232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c813db64a7d0ba09b371333a1ffb4a3b7216b1901aa00a49e669d9595285bb`  
		Last Modified: Fri, 08 Sep 2017 03:15:16 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef8a8ea96fe2dfbfa7ddccb83d6926e854b681857d3a0c3e27654bcc56c6b3a`  
		Last Modified: Fri, 08 Sep 2017 03:16:59 GMT  
		Size: 71.1 KB (71100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731842c25178a1ee8d2106434cebff8ab8f57db894b9a0a2b004033b3630c84e`  
		Last Modified: Fri, 08 Sep 2017 03:21:17 GMT  
		Size: 57.9 MB (57943006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:3fdf74a2972bf11f8b7dfee83d654e77b40de9ed7ab2dab7e7bcdb9cc270565c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270189930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a78093fe640abb84121bc10f58332e1077d5a34391a74f78e2d887bd23eb680`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 19:07:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 19:07:57 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 19:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 19:08:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 19:08:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 27 Jul 2017 10:05:53 GMT
ENV JAVA_VERSION=8u141
# Thu, 27 Jul 2017 10:05:53 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 27 Jul 2017 10:05:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 10:09:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 10:09:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Sep 2017 10:44:14 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 10:44:16 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 10:44:17 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 10:45:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 10:45:53 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 09 Sep 2017 10:48:43 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 10:48:44 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 10:48:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:774bc81cd4ddf5f394102ad2f77e00f2356dd6bedb23ecae3079dbea3e27f502`  
		Last Modified: Mon, 24 Jul 2017 17:30:34 GMT  
		Size: 42.9 MB (42911098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7e4f77d4aa6f9bcc0763fa643da6da44b121dc949d2e51c94e5a19f595aed`  
		Last Modified: Mon, 24 Jul 2017 18:32:11 GMT  
		Size: 10.1 MB (10059995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9634dfe9d5dfaf995a20cf7eced9003e26754ad12eee2538c8acc1ed95bf7fa`  
		Last Modified: Mon, 24 Jul 2017 18:32:09 GMT  
		Size: 4.4 MB (4385339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9eabbc163a838361c2f0c86cb17f9cff1c0d3f756bfc536c92fece00b13f3a`  
		Last Modified: Mon, 24 Jul 2017 19:27:17 GMT  
		Size: 838.0 KB (838023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c2172117817fb1b7e6668d43215ede394e9e0e810339edfd326c111deaa75d`  
		Last Modified: Mon, 24 Jul 2017 19:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4089affd497454db6da227eee6e20026342c5ff2caa7992c0248898ca132bea3`  
		Last Modified: Mon, 24 Jul 2017 19:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b8d67d3d2afcc42db591dc41232fc83c3b78937937131243ea5ca9320f8226`  
		Last Modified: Sat, 09 Sep 2017 10:23:45 GMT  
		Size: 153.7 MB (153708789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9e0fa1616b3f28516be7cab0f79b2ef877c173b291196b048ff1e548decc01`  
		Last Modified: Sat, 09 Sep 2017 10:23:01 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbc98b97b9971e4142439a304a31dd7a7080e71c1577a66d43e166456ff1cc9`  
		Last Modified: Sat, 09 Sep 2017 10:50:56 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f1f6497b0dee5fa7cd41a39e85a231d8b80f992dfc9189e529ff387e119711`  
		Last Modified: Sat, 09 Sep 2017 10:52:21 GMT  
		Size: 71.1 KB (71057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cd543932253348cf1c5b8a88000a81325d391361ee8e1c94cfc41e18015f5e`  
		Last Modified: Sat, 09 Sep 2017 10:55:48 GMT  
		Size: 57.9 MB (57943012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-plume` - linux; 386

```console
$ docker pull tomee@sha256:bf8ec310bcf19b50a15d4b4cfcaa735e145a89d1c79f73b9b79fe509d09cd9dc
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290104114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c998013d4bc17eb58b0b9ddae16a6e710ef44b34b819d7e886a88bb37468f1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 15:08:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:08:00 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:08:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:08:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:08:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 09 Sep 2017 15:08:02 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:08:03 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:08:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:09:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:09:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Sep 2017 16:28:17 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 16:28:17 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 16:28:18 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 16:29:14 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 16:29:30 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 09 Sep 2017 16:30:44 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 16:30:44 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 16:30:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a7eee872e2f6afbdda5829bb5216a71a847bc38468f22adb0e4a9d150858a2`  
		Last Modified: Sat, 09 Sep 2017 15:30:27 GMT  
		Size: 861.3 KB (861254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385439c7dc23ed30a586fa76be29dde165874ba74ea3a8ec9e16dbeb5a47405b`  
		Last Modified: Sat, 09 Sep 2017 15:30:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57adde9e9bc0817b05433e627f498c816fcff87ae39f9d79b9d75d5119d120e7`  
		Last Modified: Sat, 09 Sep 2017 15:30:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21eab522d5a4513d6ca6508e390e9e3802922de047d65d38683618f4bb599de`  
		Last Modified: Sat, 09 Sep 2017 15:31:07 GMT  
		Size: 169.1 MB (169124868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e914d745c4880590caa472aeac14f16ea7f2751013eb2c75c01881ee03438a`  
		Last Modified: Sat, 09 Sep 2017 15:30:27 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faebb3f393180dbbbd14bcf7370d70a5e33c53cfef34c4a4b405e4e466d2a1e4`  
		Last Modified: Sat, 09 Sep 2017 16:33:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553d72b8c2d92558b63a606d8a6df4ca0a01bf12b876e5d8423206b367f45bb`  
		Last Modified: Sat, 09 Sep 2017 16:34:33 GMT  
		Size: 71.1 KB (71080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4e36bd0cb899c24f202e5d29787b6bc355b920d0c0d0fd300775ca161c6d1a`  
		Last Modified: Sat, 09 Sep 2017 16:37:41 GMT  
		Size: 57.9 MB (57943037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:d73e4de7d8aff11e510335cb2f67283884e3caffe5cf1d5156d0e9a30eb33abe
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276568223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb9c232c8b74fb110449f6598616408a974d322e4e4e2632cebc3a93abf957b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 04:44:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:44:58 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 04:44:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 04:45:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 04:45:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 27 Jul 2017 10:51:14 GMT
ENV JAVA_VERSION=8u141
# Thu, 27 Jul 2017 10:51:14 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 27 Jul 2017 10:51:14 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 10:50:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 10:50:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Sep 2017 11:15:09 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 11:15:10 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 11:15:10 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 11:18:09 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 11:18:16 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 09 Sep 2017 11:20:11 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 11:20:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 11:20:11 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b91aebb01549a9a67c055a310a693b4433e9decd52fe2b9b089a8e36e5bfcf2`  
		Last Modified: Wed, 26 Jul 2017 10:54:59 GMT  
		Size: 847.6 KB (847626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058aa7eb5ea8e197f1331892e5aaad184ac4acb3678d1a559268a58ce01b15da`  
		Last Modified: Wed, 26 Jul 2017 10:54:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced395859e0d48d3acdaa0fa25433aa8c0e593ae419cef11d76b74eecadbc273`  
		Last Modified: Wed, 26 Jul 2017 10:54:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06abb76a7970dca99ff62c7138f212963e4e860f1385afe28bb4a765d30bc6f1`  
		Last Modified: Sat, 09 Sep 2017 10:54:03 GMT  
		Size: 157.1 MB (157128203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c89739c9955e0d6aa4a2d2709cd4ce74195eb1d518593c651c56eea8454c4c4`  
		Last Modified: Sat, 09 Sep 2017 10:53:31 GMT  
		Size: 272.1 KB (272057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc66b3f1d280a28c186c36d95cea3ae424ecd4ac45c6bb95d9a1684d1fac156`  
		Last Modified: Sat, 09 Sep 2017 11:21:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e097d3a2eba4c323f10c723dc3e707afc3c651796f4f532b379dd84b0eeac5`  
		Last Modified: Sat, 09 Sep 2017 11:23:03 GMT  
		Size: 71.1 KB (71117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594f4757978d27d649bc188c566b11b576ccdfbcc6fcf60e9ac74ea6611684f1`  
		Last Modified: Sat, 09 Sep 2017 11:25:49 GMT  
		Size: 57.9 MB (57943326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-plume` - linux; s390x

```console
$ docker pull tomee@sha256:e8dc275fd727633e6a46bfcff977b5b53b2bfdc5cd5efef02de2a6b28109b5f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258097984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d5a0021c56a8148713ed303cda01523ab07cd4e70e6e027c3584afb4a03041`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 17:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:31:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 17:31:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 17:31:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 17:31:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 17:31:35 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 17:31:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 17:31:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 05:39:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 05:39:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Sep 2017 06:01:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 06:01:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 09 Sep 2017 06:01:34 GMT
WORKDIR /usr/local/tomee
# Sat, 09 Sep 2017 06:03:40 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 09 Sep 2017 06:03:48 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 09 Sep 2017 06:04:58 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 09 Sep 2017 06:04:59 GMT
EXPOSE 8080/tcp
# Sat, 09 Sep 2017 06:04:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faf8545bb787c3628529755ea2f52bfd18b609332cc4781cb5041cf49ae6191`  
		Last Modified: Fri, 08 Sep 2017 17:35:21 GMT  
		Size: 863.1 KB (863072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37b12612393e0c661422a7dd6dcd00189d6cb07cf2f49dde03dce0520eb8ef3`  
		Last Modified: Fri, 08 Sep 2017 17:35:21 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b8d8644ea01dbcca6d0f6174d07dcbaeb043eefa3c0c08f8459310dd69ca7b`  
		Last Modified: Fri, 08 Sep 2017 17:35:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279effa2494a051acd7553e5588d8a3c854c7c44095601562fe700aa0944b8de`  
		Last Modified: Sat, 09 Sep 2017 05:42:43 GMT  
		Size: 138.7 MB (138650396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fb47cbe81993073cdda925abfa28e0582cb44649a362f0f631696669c1d3d`  
		Last Modified: Sat, 09 Sep 2017 05:42:23 GMT  
		Size: 272.2 KB (272161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff148a926640f8dc8aab2f20675535b6d06f358a487205432d4e5bdb3a59770`  
		Last Modified: Sat, 09 Sep 2017 06:06:06 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a5a80976c6c666eb4d804f3959af141786646ecd241b3d41664396abdf9e0f`  
		Last Modified: Sat, 09 Sep 2017 06:06:50 GMT  
		Size: 71.1 KB (71067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388bac819bec58fe0e7709e44dd9b17c753dd24c35e9820a914868fb2ee0bd4f`  
		Last Modified: Sat, 09 Sep 2017 06:08:35 GMT  
		Size: 57.9 MB (57943011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
