## `clojure:boot`

```console
$ docker pull clojure@sha256:d6d0c1072e17f40981d3cdc8dc7799c56a5059d9dd0122be9a450c3822ab0ee3
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

### `clojure:boot` - linux; amd64

```console
$ docker pull clojure@sha256:94d226992b5e6b02931e02646bcb99e16499ecb2cbf87600a6060d51ec3a6088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329163985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e2e552137421896177f84c97f74035713d9af81cf004e9f46c1411536ed5f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:38 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 08:11:38 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 08:11:38 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:39 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:40 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 08:11:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:40 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 08:14:06 GMT
RUN boot
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
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbe2c3350329f6c954c4e7bda79d9f927cf4fa982c4df97d88f69c184376edb`  
		Last Modified: Tue, 10 Oct 2017 08:15:29 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87276e7b4e099275d2e769f25140f67fe19338116737a684c45f8fba3af0232`  
		Last Modified: Tue, 10 Oct 2017 08:15:32 GMT  
		Size: 33.4 MB (33410499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; arm variant v5

```console
$ docker pull clojure@sha256:ec81233ed1bd9e934406e11c79a54405da843680421d06eb1136002500770780
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293643085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69b0e68ce41b420df37f6489a321e4d73592b4710b1d8ae52a6a4d339fadc06`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:40:44 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 08:40:45 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 08:40:45 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:40:45 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:40:46 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 08:40:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:40:47 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 08:44:25 GMT
RUN boot
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
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4c76913b01d85dbdd13c8093ddf69a0e7e2e1dc94b7654b5f9a79b2138784`  
		Last Modified: Tue, 10 Oct 2017 08:45:07 GMT  
		Size: 6.9 KB (6890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82154ea08dc2573aee304903de7965fbe4742d88f459b7da2e94d475e5ef3355`  
		Last Modified: Tue, 10 Oct 2017 08:45:12 GMT  
		Size: 33.4 MB (33410892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; arm variant v7

```console
$ docker pull clojure@sha256:5b13fd1d9d946549e2eb94839c5025064b9064616ea2dd0a86f8401211c3e426
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.7 MB (301715509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b637e8ad156435ed75de1ff253793554e7ff27d55701aa00885a4cef584326`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:03:54 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:03:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:03:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:05:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:05:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:23:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 01:23:58 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 01:23:58 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:23:59 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:24:00 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 01:24:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:24:03 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 01:27:03 GMT
RUN boot
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
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5828f6ab056e6dfd8c133aff09fb57e805a334938aeb3cb90cb71911fd819b0`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 867.6 KB (867628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7aed84c52b0a000e2381803495aef9df9883b816f6c77b31e029e99c86303ee`  
		Last Modified: Mon, 09 Oct 2017 23:22:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7f22ee9dea157175c16e8d2904c0ee97980616a186ed27d313483d5c3eabfd`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f47f099fd624f10615945d01657e0d8bf98450f0ac43e3b30b124922b5f2105`  
		Last Modified: Mon, 09 Oct 2017 23:23:26 GMT  
		Size: 164.9 MB (164939369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62a39bddac666a9e1cfa2ec9410e5d055347698a854a4f9b3917d77f8428396`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 272.2 KB (272175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3069726d367db41d0e367b8b4ecb6df1a68ed55abf57c2a3d58ce881af0e8bc4`  
		Last Modified: Tue, 10 Oct 2017 01:27:26 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6179613983b22fb71ec7bdcfd629b05551c28cc61d35a417656dbbb22bd3b268`  
		Last Modified: Tue, 10 Oct 2017 01:27:32 GMT  
		Size: 33.4 MB (33410655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:55a0d416864e2cfa1b69b89506b26ddd4baf4c18595e899f268313dc10b93a4f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308750473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aecbdcc453b075d83790629462d03e32bf7ff469c66c758bc39536035301d021`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:38:31 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 22:38:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 22:38:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 22:38:37 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 22:38:38 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 22:38:39 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 22:38:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 22:44:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 22:44:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 01:18:45 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Fri, 15 Sep 2017 01:18:45 GMT
ENV BOOT_VERSION=2.7.2
# Fri, 15 Sep 2017 01:18:46 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 15 Sep 2017 01:18:47 GMT
WORKDIR /tmp
# Fri, 15 Sep 2017 01:18:51 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 15 Sep 2017 01:18:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 15 Sep 2017 01:18:53 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 15 Sep 2017 01:20:58 GMT
RUN boot
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
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86810aa3db4d1413183eb4bb9049b9e61f0b68e9e00ee6dc7fdf294ee7d7782`  
		Last Modified: Thu, 14 Sep 2017 23:08:05 GMT  
		Size: 877.3 KB (877294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15cc0804628a2c0f115df4f164fedfcf948773c2eeeaec6ee2972af422ad90d`  
		Last Modified: Thu, 14 Sep 2017 23:08:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1529a5d843067a9676cb0826c97aa53baec28f7a95d10ea5eca266bec38001d`  
		Last Modified: Thu, 14 Sep 2017 23:08:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cebfe4b2e23b8c03b4c75d28fb598b458f9566b028f065bb657bd7515f5f55`  
		Last Modified: Thu, 14 Sep 2017 23:08:55 GMT  
		Size: 168.9 MB (168856434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdca121c3c762332a3ff76ae4d85acd3adff9fd4174a9f3f1c01c6a9c5cd76e1`  
		Last Modified: Thu, 14 Sep 2017 23:08:04 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b08bbd0865bcf5ddd6ca89538495a11efba463db337f3c0f932128acf8ff39`  
		Last Modified: Fri, 15 Sep 2017 01:21:18 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c5b8fc523a57246ab3782cb75d1ce0bbb133409654847139a654c966c2f4a`  
		Last Modified: Fri, 15 Sep 2017 01:21:31 GMT  
		Size: 33.4 MB (33410505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; 386

```console
$ docker pull clojure@sha256:55449482a69627b9043c5bc97eb0073d187cae959e9a7830d3127066e30cc809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334309817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6393b2004c19962f34f1bdc19a807cc9046321c803adea3cbc15356e7111c121`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:14 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:11:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:11:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:12:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:12:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:43:22 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 04:43:22 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 04:43:22 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 04:43:22 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 04:43:23 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 04:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 04:43:27 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 04:46:20 GMT
RUN boot
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
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1eb1184fe8e84ef2abd0b7fe0a64bab48b959b13e122c28c9f0cf28427d9a3b`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 899.8 KB (899778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f583cd0f6a0349765c0d198bb9d1901c220eb84484f3b15b84f4ed634bc3ca8`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fea715376bd8f147a32b4726364d6821d751e16cf860308fb7768c498e70941`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07fe9dbb343e113bddab9415a0d69171dbf69851fc5926ed1eb83018e414ebd`  
		Last Modified: Tue, 10 Oct 2017 01:52:48 GMT  
		Size: 186.3 MB (186337014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdbe6763461b7ab93c4b69f075fdedf63389d5e532e084974681326da4b3e0`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 272.1 KB (272111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1461910ab18847c4fb3eedd5a00b21e97bb2537ac0fb9a8a53bc99344b280fb`  
		Last Modified: Tue, 10 Oct 2017 04:46:39 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f46b0454bf118be53505daf08a62bafc13ecd32192e008b028b59758e004582`  
		Last Modified: Tue, 10 Oct 2017 04:46:42 GMT  
		Size: 33.4 MB (33410683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; ppc64le

```console
$ docker pull clojure@sha256:2b9f089b25a4b8ac94aba94fb158b6980d66866f6834e6c21d0a61c3c247c054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317281320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e437b0e6b87c60c0e11ec243bd341298669c7eea6c56dd59881cf706321cbf69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:25:26 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 10:25:30 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 10:25:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:25:37 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:25:48 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 10:25:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:25:55 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 10:28:17 GMT
RUN boot
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
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2a18f5053a1be97504fe027756b1a9328c05b94bb81045a63748170bdb434`  
		Last Modified: Tue, 10 Oct 2017 10:29:30 GMT  
		Size: 6.9 KB (6893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20bf3b6737fbb9e85af88dda444150e90511ac407eb0b457c9454b2f911da6f`  
		Last Modified: Tue, 10 Oct 2017 10:29:35 GMT  
		Size: 33.4 MB (33410574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; s390x

```console
$ docker pull clojure@sha256:5da0cdb6cd3387771b7667acae3d6f01322c5b8b1f726d9d9f000fea99fce6e0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299505324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13442b3ee997c98534d9e8b78eb780b4038b1b25dcace0d4c482a7514dee66e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:44:55 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 01:44:56 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 01:44:56 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:44:56 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:57 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 01:44:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:57 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 01:47:22 GMT
RUN boot
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
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825c7379fe672f252cb26d18530dedc4a83924ea3fff9b1559baa34e07b706e`  
		Last Modified: Tue, 10 Oct 2017 01:48:12 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd6cdf3f2d1b97f52c57241ff67e4746a4279035e88fc3b885f3fda218dd48b`  
		Last Modified: Tue, 10 Oct 2017 01:48:16 GMT  
		Size: 33.4 MB (33410634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
