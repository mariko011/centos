## `tomee:8-jre-7.0.3-webprofile`

```console
$ docker pull tomee@sha256:5623872c076cf0233c431b47f9fd682186d6d8eca16b410078ad42690e2777d4
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

### `tomee:8-jre-7.0.3-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:0611e8d21977178681df6e3e7cffeedacd5662af714e5a3de0d7f118e82fc09d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262572550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5176ea98abd487913170d0ad793f32064359beb44c9fbe921f70d4afd5c250c8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 18:50:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 18:50:11 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 04 Nov 2017 18:50:11 GMT
WORKDIR /usr/local/tomee
# Sat, 04 Nov 2017 18:51:12 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 04 Nov 2017 18:51:26 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 04 Nov 2017 18:53:00 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 18:53:00 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 18:53:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e07da071cd1d9efbe48d9c0a7b198e651169a0bf9651ae10b0bd1183c8f9b1`  
		Last Modified: Sat, 04 Nov 2017 18:53:10 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa977cd85c1f200e2532f359a9de53cc54582509a391c3c0b0e86efe3bfa`  
		Last Modified: Sat, 04 Nov 2017 18:53:10 GMT  
		Size: 67.0 KB (67012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cc2681814c8f5b05f0e7edf0ac5e1a14b1dbfefe0edbbbf1df06d4bb234b37`  
		Last Modified: Sat, 04 Nov 2017 18:55:51 GMT  
		Size: 35.4 MB (35416034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:021b57895b6f4a0628995eb4ccb5b6d0b9d93546e924df323a73a3eea34a5379
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231361749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcb9ad88720511e4eb9f64bd8692dd98fc683937da431166f0b4f6f0233b473`
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
# Sat, 04 Nov 2017 10:47:00 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 10:47:01 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 10:47:01 GMT
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
	-	`sha256:ab64424880249262ba78cc1f2e4d1b5f71bbbc9e027841bcce5a33443499a1ba`  
		Last Modified: Sat, 04 Nov 2017 10:50:50 GMT  
		Size: 35.4 MB (35416197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:0e9eef93a37acc0fa723df0ff1648027fbe5f23e72807e8953632d47db3aa8ec
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241856685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d03a304746da0fe97a8c5f726ff5be49bba90d90cb36ec6579dfb1462ed968e`
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
# Sat, 04 Nov 2017 02:18:43 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 02:18:43 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 02:18:43 GMT
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
	-	`sha256:9a76ecb927e336c26dcc39c8740122f203f8483407dc28dc482d709058152fcb`  
		Last Modified: Sat, 04 Nov 2017 02:23:40 GMT  
		Size: 35.4 MB (35416177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:b68849d0c44a16eb37a7a0e9f0f99804123f5bbe324e316079bdcd51f1d142b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246603213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401e7377e6072e30a271cd6bbfe2a96f08855c4d91541101aee9c40f20736da7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 11:46:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:46:22 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 11:46:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 11:46:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 11:46:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 12:32:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 12:32:39 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 12:32:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 12:38:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 12:38:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 19:12:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:12:55 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 04 Nov 2017 19:12:55 GMT
WORKDIR /usr/local/tomee
# Sat, 04 Nov 2017 19:16:51 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 04 Nov 2017 19:17:46 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 04 Nov 2017 19:25:07 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 19:25:07 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 19:25:08 GMT
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
	-	`sha256:8e8cca94ff455471d48d7a5d86fce4995768acce4d272092fd794ce2d0e3bf90`  
		Last Modified: Fri, 03 Nov 2017 10:53:04 GMT  
		Size: 4.1 MB (4087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f381f6a29a8354f269c7113a204e8536d1e83c22f5d209d011555499a3dd48a`  
		Last Modified: Sat, 04 Nov 2017 13:09:51 GMT  
		Size: 838.6 KB (838553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c2f8c930c2c3a14d6e002628814c1a7dad40d305576ab60ed6aa49b56cc88f`  
		Last Modified: Sat, 04 Nov 2017 13:09:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af85be6597ef84923523a43eb284c332b17b5478200979ff48b69a7e82d88585`  
		Last Modified: Sat, 04 Nov 2017 13:09:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37b77c80e289cf5bb01e2015a5093cf8f1e56faebc3f88acdd107068a5ab999`  
		Last Modified: Sat, 04 Nov 2017 13:10:44 GMT  
		Size: 152.9 MB (152943168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ac259ccd5ad45179ead4e08bfeeba4c5a8b30c0d64a0050aa4ce9aff227e14`  
		Last Modified: Sat, 04 Nov 2017 13:09:51 GMT  
		Size: 272.2 KB (272201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03441e11736c820a26a93d47c554f76c9b9768708417e769de80daae7f8300`  
		Last Modified: Sat, 04 Nov 2017 19:25:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b850cf7ae6958edc8566ea393389e2732a1c2670785835c3654266f8abefd6`  
		Last Modified: Sat, 04 Nov 2017 19:25:43 GMT  
		Size: 67.0 KB (66984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f573a979540c566c4c23d7ad5692a793eed734286afa70f79e67390290a055`  
		Last Modified: Sat, 04 Nov 2017 19:32:25 GMT  
		Size: 35.4 MB (35416016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:dc70b2e1ae60fda42d50c75c344c19ff9cf48397dadf2afdc18e42ba679749e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266476118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c587717edb72105bb4d9eb301a84728f8a7113d48f9074805f247c2cd59b8ae4`
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
# Sat, 04 Nov 2017 12:42:08 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 12:42:08 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 12:42:08 GMT
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
	-	`sha256:994a28ab34a77e4c17cb243e0db9bf3ad4d735fff92a506b0641b1e3d6994bd1`  
		Last Modified: Sat, 04 Nov 2017 12:46:00 GMT  
		Size: 35.4 MB (35416016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:9f8eb25c7458acf7652ddccbda1bf609e332c87641bf1c09ce2e32688a6dc99d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253746579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90c0b58a53bd60c3b3c2ae40136317691124ecf4922dc719ad4cf73070b8273`
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
# Thu, 02 Nov 2017 22:19:29 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 02 Nov 2017 22:19:36 GMT
EXPOSE 8080/tcp
# Thu, 02 Nov 2017 22:19:37 GMT
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
	-	`sha256:b4387fa030e8c617b133ca608f2af2144048c06bbe425420e9581749f76d29d0`  
		Last Modified: Thu, 02 Nov 2017 22:23:46 GMT  
		Size: 35.4 MB (35416176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.3-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:1530f316759bfc8358b613e00f22f0986f83d0531171448156ef01c23708d4ec
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234868033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec69da5fa228894a58ab711fb8653dfe01f2dd31ba291c878b5ad74e0e1f6a67`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:45:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 22:47:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 22:47:02 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 22:47:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 22:47:04 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 22:47:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 16:56:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 16:56:32 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 16:56:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 16:57:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 16:57:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 17:39:05 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:39:06 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 04 Nov 2017 17:39:06 GMT
WORKDIR /usr/local/tomee
# Sat, 04 Nov 2017 17:40:36 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 04 Nov 2017 17:40:51 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 04 Nov 2017 17:43:20 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.3/apache-tomee-7.0.3-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.3/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.3 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 04 Nov 2017 17:43:20 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 17:43:20 GMT
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
	-	`sha256:4441405fed16180511630210e0428e6a62bd44a3f42a816606844080c8ae600a`  
		Last Modified: Thu, 02 Nov 2017 16:56:23 GMT  
		Size: 4.4 MB (4365981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2650969eeff938a3da424993dd865091d3a87cff585865d1e50ddd3f88bbdc81`  
		Last Modified: Sat, 04 Nov 2017 17:04:08 GMT  
		Size: 863.1 KB (863064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b48a30ee3de70325a19d84681a4c1b175a747bfc6770658eabb685872f5365`  
		Last Modified: Sat, 04 Nov 2017 17:04:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878fb440e35ac40bd45dd99097a1345db23eda98fa8736a2ae3494937f055936`  
		Last Modified: Sat, 04 Nov 2017 17:04:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f026d0986cd1a555fda1b69c4ede0e372b2db7a1d58f9aafb1bf4e48640c1c`  
		Last Modified: Sat, 04 Nov 2017 17:04:29 GMT  
		Size: 138.2 MB (138242845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e91bc6a3869bec65e58199b5a49cdae6d9ac95ee145a37194947f23af8ff48`  
		Last Modified: Sat, 04 Nov 2017 17:04:08 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ddb28ea1f1b1887617405047c4575b28f682f7a5dca9308f1ba0fe798e8026`  
		Last Modified: Sat, 04 Nov 2017 17:43:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6a97ca5aa576185198e2a4979e5e2f5c0d4c7046d6205f123655443c3209d`  
		Last Modified: Sat, 04 Nov 2017 17:43:33 GMT  
		Size: 66.9 KB (66949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ca11930919f66f33e44509e0ca5db490e78122655990ae154f20c23fd342e`  
		Last Modified: Sat, 04 Nov 2017 17:45:52 GMT  
		Size: 35.4 MB (35416029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
