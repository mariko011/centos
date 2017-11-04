## `tomee:8-jre-7.0.2-webprofile`

```console
$ docker pull tomee@sha256:a575b93c712a4bc98b18fc86004db9f8119050530037bea5ccb70f76f6f02e9b
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

### `tomee:8-jre-7.0.2-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:a33fbd3a85a088629c952147d1326e67743a49a7d19c7a11e519692ab211bba3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263604451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ba489ac4a1d698af4f4671ea66eb15e2c45fa814016289ffda0211671f86a8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 03 Nov 2017 23:14:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:14:40 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 03 Nov 2017 23:14:40 GMT
WORKDIR /usr/local/tomee
# Fri, 03 Nov 2017 23:15:21 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 03 Nov 2017 23:15:28 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Fri, 03 Nov 2017 23:16:17 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 03 Nov 2017 23:16:17 GMT
EXPOSE 8080/tcp
# Fri, 03 Nov 2017 23:16:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6b44a0af0f6bdc80a62dcb3f52f831bdac4a287bbfb8f74f560812a75392c9`  
		Last Modified: Fri, 03 Nov 2017 23:16:44 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53dfed60b46d8c9702adcd5ad557967439e8da598543e8713926e43c823406b`  
		Last Modified: Fri, 03 Nov 2017 23:16:44 GMT  
		Size: 67.0 KB (66994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632bb3a5f49bd506d2945c1a12672ffbfe6425b31768d05930c3e002187ee713`  
		Last Modified: Fri, 03 Nov 2017 23:18:14 GMT  
		Size: 35.4 MB (35372668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:b3200025cdbff38eca29cabf2e9aa8df219030612775f05af04cb1b8ca93898d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231318278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5f9841a75d59ac0440e3e981ece54679755c3f7a31a02563a0ddc2edb7afa3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:53:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 08:29:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 08:29:35 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 08:29:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 08:29:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 08:29:37 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 09:58:30 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 09:58:30 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 09:58:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 09:59:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 09:59:31 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 10:42:05 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:42:06 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 04 Nov 2017 10:42:06 GMT
WORKDIR /usr/local/tomee
# Sat, 04 Nov 2017 10:43:51 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 04 Nov 2017 10:43:58 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 04 Nov 2017 10:46:15 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 10:46:15 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 10:46:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905287b8f6110d0df6c131c642bb3d7e456ee71c442a973eb5cfac003e41fab1`  
		Last Modified: Fri, 03 Nov 2017 08:02:48 GMT  
		Size: 4.2 MB (4152789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200c60a2b96c030867f45d7f5b05ba71f93984a85905caa9cec677870ea356a2`  
		Last Modified: Sat, 04 Nov 2017 10:09:37 GMT  
		Size: 845.2 KB (845227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5506b58daf4da72d7f5a227d43078f20e15e76c501b54179d75bf6b1a55a87d`  
		Last Modified: Sat, 04 Nov 2017 10:09:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1198971b5ecb47e36fb4259f2d2e1a59465e47d329b195623228ee8d123bbe49`  
		Last Modified: Sat, 04 Nov 2017 10:09:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7152ad2bba785a3ff13ad3e6214e1339c1123ddf164609d33cf2252122916df1`  
		Last Modified: Sat, 04 Nov 2017 10:10:10 GMT  
		Size: 136.6 MB (136586724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8250724e4924518fa54d6f94aceca90aea33a410237847ef63b67af2f08f45c`  
		Last Modified: Sat, 04 Nov 2017 10:09:37 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9318bddfdc82b6b77889dd5a8e1a8c0dd3aaaec7ec2539ea957498aaf6c125c`  
		Last Modified: Sat, 04 Nov 2017 10:47:13 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9d3e81b197702aab9e447618e8fd19eb61901051c0e0229c84e593c071466e`  
		Last Modified: Sat, 04 Nov 2017 10:47:14 GMT  
		Size: 67.0 KB (67034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fffed3e491020ea2b7ab4fcea43cd3bf6e2f8a353ae492770c823a1dc77aad`  
		Last Modified: Sat, 04 Nov 2017 10:49:52 GMT  
		Size: 35.4 MB (35372726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:496312756f4aa8f91cbb9fd513be7db82164a99881135536a938d1746cde3c33
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.8 MB (241813266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4a9aa7844eb7312472841f8530ffd8f8f1b4f945bd1ab726121cbb378aff82`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:16:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:51:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:51:26 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 01:51:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 01:51:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 01:51:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 01:26:55 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 01:26:55 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 01:26:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 01:27:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 01:27:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 02:10:18 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 02:10:19 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 04 Nov 2017 02:10:26 GMT
WORKDIR /usr/local/tomee
# Sat, 04 Nov 2017 02:14:30 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 04 Nov 2017 02:14:38 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 04 Nov 2017 02:17:48 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 02:17:49 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 02:17:49 GMT
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
	-	`sha256:27bf5662770737047d953503dfdf19357685ed372743f96bb2245c5d9c1690ee`  
		Last Modified: Fri, 03 Nov 2017 00:30:55 GMT  
		Size: 3.9 MB (3912250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12da245d026744ed068f3ba30cca1176a3c4fdcfea3a7b94c7fc8da3281d6e81`  
		Last Modified: Sat, 04 Nov 2017 01:35:24 GMT  
		Size: 829.6 KB (829620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb08864d185f1c2133985fa02bbb602affba69cfd4f03a73b9c1d247d58508`  
		Last Modified: Sat, 04 Nov 2017 01:35:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5f9bbf8218e64e62fb213cbac45d47fbfff0dc6f3bda0cbf4bfd6bed837bd0`  
		Last Modified: Sat, 04 Nov 2017 01:35:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da42a7928bad78ede1199ea79a2aa7e49933ce5b299e458dc69be611258e79`  
		Last Modified: Sat, 04 Nov 2017 01:35:57 GMT  
		Size: 149.7 MB (149693167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c6a414a20f5612325462f0d6c1557d5758561adb4707698e229d3bc88c0990`  
		Last Modified: Sat, 04 Nov 2017 01:35:24 GMT  
		Size: 272.1 KB (272087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e05b53994ef8691ffe100db13bcdaa150587973ed4db71bad62dc26d8934d6`  
		Last Modified: Sat, 04 Nov 2017 02:18:59 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3d0c76e8bc071f97cbedf7f09b7147e353fc9b007240c177cabb0814f8f483`  
		Last Modified: Sat, 04 Nov 2017 02:18:58 GMT  
		Size: 67.0 KB (67028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0fd9ebf41ce09cc21d77611901d3aac220bd64447f97986c80fea41655c05c`  
		Last Modified: Sat, 04 Nov 2017 02:22:11 GMT  
		Size: 35.4 MB (35372758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:149ab460cd44b4247628793b2b3aee53687c83339a893f33f92854fa0e0c3d64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247628927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73554b278479679c1f65afc8540a29261aabd1587e653f6f2f1b2c1c52b557ec`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 01:31:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:31:00 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:31:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:31:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:31:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:31:12 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:31:13 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:31:14 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:39:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:39:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:42:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 12:42:52 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 10 Oct 2017 12:42:53 GMT
WORKDIR /usr/local/tomee
# Tue, 10 Oct 2017 12:44:34 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 10 Oct 2017 12:46:26 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 10 Oct 2017 12:49:57 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 12:50:04 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 12:50:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1216f8dfec4fac6a53a0032ed959e01fad3b3be45bdd48d67760bbbd31e4fbf5`  
		Last Modified: Tue, 10 Oct 2017 02:17:48 GMT  
		Size: 838.8 KB (838767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28417b0bd9e1e6bb0c4bcdc4e83f4bacc2509032133502106ea6943c1e82b31`  
		Last Modified: Tue, 10 Oct 2017 02:17:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc7df6efbd2d4851f5b22777a1ad607b5f19f55b041b3cb7e2cafb4f4e0849e`  
		Last Modified: Tue, 10 Oct 2017 02:17:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660b4ddb2f882bb51f1fb68675ed9b7bbe3e8004397c10d5ee655ed8e6a9e3dc`  
		Last Modified: Tue, 10 Oct 2017 02:18:38 GMT  
		Size: 153.7 MB (153714495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c8edc0aba1173d05e06dc4b4b85666679c3fc2783d1625318a7a50732e1c85`  
		Last Modified: Tue, 10 Oct 2017 02:17:48 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef382e10f65a62997e781d4ee2b17deec1bff4b0194281c5bdb26a0b892ab4`  
		Last Modified: Tue, 10 Oct 2017 12:53:50 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f040fbfd9a78f99b5f333b9e895dce832c69eedc5843ccd5b87ffd406d16d8`  
		Last Modified: Tue, 10 Oct 2017 12:56:14 GMT  
		Size: 67.0 KB (67017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e139e39a1dd1316438a6b706f696790e2f8a1f918a7d04406122bdef2096bd`  
		Last Modified: Tue, 10 Oct 2017 12:59:17 GMT  
		Size: 35.4 MB (35372664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:38af4faf645bb31e6386d709b355339ec5e2e8faad586b46a827f87e8da9e9dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266432741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ffb7d7f4e799ed3bda92c83e27f3ea355d19902e87083f714d814427177715`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:35:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 01:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:18:31 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 01:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 01:18:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 01:18:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 10:04:39 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 10:04:39 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 10:04:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 10:06:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:06:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 12:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 12:21:26 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 04 Nov 2017 12:21:26 GMT
WORKDIR /usr/local/tomee
# Sat, 04 Nov 2017 12:29:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 04 Nov 2017 12:29:56 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 04 Nov 2017 12:41:37 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 12:41:37 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 12:41:37 GMT
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
	-	`sha256:328a1577162f86cc3f8bb920fee4631ec8923e36cde40f98318fc566a8273cc1`  
		Last Modified: Fri, 03 Nov 2017 00:17:19 GMT  
		Size: 4.6 MB (4554343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f3bfef87e536aa126d7b1c726dac1cd7788b4952c32201b8e70afc2d5b72d7`  
		Last Modified: Sat, 04 Nov 2017 10:38:23 GMT  
		Size: 861.1 KB (861135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed3b3a8ca1f44b01cb193e612b9b2aff4cb05703879797a4a21bc66893a9a48`  
		Last Modified: Sat, 04 Nov 2017 10:38:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f70afc3667702c2988049f0427817fd2773b8156d5fba12991a2ccd590661fa`  
		Last Modified: Sat, 04 Nov 2017 10:38:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91228cc5f7180fa246452f58cbfd67e15e9bccce9d482ded17520c4e82c4b427`  
		Last Modified: Sat, 04 Nov 2017 10:38:53 GMT  
		Size: 168.3 MB (168321503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c161127fcd182446401286e57c008feb71f7b8f9af3b1d3d9ea493d3e44a1f4`  
		Last Modified: Sat, 04 Nov 2017 10:38:23 GMT  
		Size: 272.2 KB (272153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba40dafa0502ab04dd14a9dd12337247d071c93e882ac6d879383f34a639ea08`  
		Last Modified: Sat, 04 Nov 2017 12:42:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97bfbacc63468661789ce6352df79599a488449ca5a8ae8ce7d5929beb34ea5`  
		Last Modified: Sat, 04 Nov 2017 12:42:22 GMT  
		Size: 67.0 KB (67001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2639198a7a366b42c69ca5668c6a224a9deb5ba3f1e3ca214223a46a5a786d07`  
		Last Modified: Sat, 04 Nov 2017 12:45:01 GMT  
		Size: 35.4 MB (35372639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:4d97e792d567e6e5e29d3976ef6bc3d38c7be66db63aeec5bc506f145640f0a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253703149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7df28eee673ebc5c7e283352b4188ad1d74dd7092d556bf371e415551ff3ee3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:52:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 21:12:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 21:13:01 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 21:13:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 21:13:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 21:13:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 02 Nov 2017 21:13:34 GMT
ENV JAVA_VERSION=8u141
# Thu, 02 Nov 2017 21:13:38 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 02 Nov 2017 21:13:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 02 Nov 2017 21:35:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 02 Nov 2017 21:35:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 02 Nov 2017 22:09:23 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 22:09:27 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 02 Nov 2017 22:09:30 GMT
WORKDIR /usr/local/tomee
# Thu, 02 Nov 2017 22:12:36 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 02 Nov 2017 22:13:21 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Thu, 02 Nov 2017 22:17:41 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 02 Nov 2017 22:17:44 GMT
EXPOSE 8080/tcp
# Thu, 02 Nov 2017 22:17:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7d7fdc1089438da706679cf381b73649abaefb90e9a04db29f6c83e057cf1`  
		Last Modified: Thu, 02 Nov 2017 17:51:34 GMT  
		Size: 4.3 MB (4289231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cb04adbadc09a0be1b0f0518831c321e57316ee6982c7e43078efc0ea7a09c`  
		Last Modified: Thu, 02 Nov 2017 21:43:31 GMT  
		Size: 848.1 KB (848098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40c6aa3651b9a41966ba7dd0ef40a1af4b9284dfd886d30f409b9b5703c3b3d`  
		Last Modified: Thu, 02 Nov 2017 21:43:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b220192e4f1eba736ef9d2797e8d6a25cb681c90ab21d25cd72d4c271f8a1f7d`  
		Last Modified: Thu, 02 Nov 2017 21:43:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f7132153901df385552b3fb24dd80ec9b4d37295c888bd2308d724e99cd5c1`  
		Last Modified: Thu, 02 Nov 2017 21:44:06 GMT  
		Size: 157.1 MB (157136085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f710980be547930791994bde39122e13295282470a6c30475152e32bebcffedc`  
		Last Modified: Thu, 02 Nov 2017 21:43:29 GMT  
		Size: 272.1 KB (272096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13172fe393d9bd881ca517e2c03f0ed97b7ed8bcb9942b8a140c46d64047f22`  
		Last Modified: Thu, 02 Nov 2017 22:19:52 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1c4de4d11a19db108c12010d12f0d659a3fdd8e7f28981cc144566d8e89a76`  
		Last Modified: Thu, 02 Nov 2017 22:19:52 GMT  
		Size: 67.0 KB (67048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e3134b3e48c915de9bffe63b70af1661ccace0c70785d85ddc6701c1fb094b`  
		Last Modified: Thu, 02 Nov 2017 22:22:47 GMT  
		Size: 35.4 MB (35372746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.2-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:a9039d07a90319b2937efe84d14fe899c031672761e06c1955ff7ca684df49cf
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235538535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8369a3e24964b662861b98f9528f7930701ac2bb061fe8cdc91d2edc0c1730`
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
# Tue, 10 Oct 2017 01:54:57 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.2/apache-tomee-7.0.2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 10 Oct 2017 01:54:57 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 01:54:57 GMT
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
	-	`sha256:3749c4191d17316fe4a0934eb910427a8e0388b3c886951a6768a663ffcc1232`  
		Last Modified: Tue, 10 Oct 2017 01:58:52 GMT  
		Size: 35.4 MB (35372660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
