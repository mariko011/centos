## `openjdk:8u141-slim`

```console
$ docker pull openjdk@sha256:deccfd3cd9bb22ec15934a94b33dff2fb2ac4131ebe0806fa1691395b793b4e4
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

### `openjdk:8u141-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:0ecbdb9ecbba0da0dedc18fb1ee41f3c0b636b525ae4e6b53ed0888bf1d0f186
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91675052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6a18e83c0d0662588565f2c6b3d175f89f5f83aa2c5ae00c2c191f27ea05c8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:49:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:49:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:49:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:49:54 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:49:54 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:49:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:50:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9244331a890e4aec0df6e10bce14d07eaa1bde905780d45fc41f12fd615d732c`  
		Last Modified: Tue, 10 Oct 2017 01:22:35 GMT  
		Size: 454.8 KB (454783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f111692a5874ce9859050b16b85e181a6ccadf449e850fa65a2a49a72b0d77c`  
		Last Modified: Tue, 10 Oct 2017 01:22:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838df694d9c3f97ab5439d7a43ad258fd52186bb900ccb303cabb1e04246953b`  
		Last Modified: Tue, 10 Oct 2017 01:22:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e28e4f90e03290c2a0417b0aa708fa3b838e9405592370a49feb22ed2d84d5`  
		Last Modified: Tue, 10 Oct 2017 01:22:48 GMT  
		Size: 68.5 MB (68455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc233c0a95c1214fb9aeb4a724cdc41914d89f910f7352351de93f8d798d7dd2`  
		Last Modified: Tue, 10 Oct 2017 01:22:35 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:92e14547f7fe0ebbe7f9f97fde8b75cf7dc65bb216b6f6f7060177cee0a451d0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78422460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927c38b4bb049aeee486bb2fc72dc09cffcce9086d1289113cff94dfcb80c259`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:40 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:28:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:28:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:28:42 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:28:43 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:28:43 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:28:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:29:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:29:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5157015f0bd49750479bdb4a232fc207026b23874b5511f0c27a1036727e350`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 447.6 KB (447638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbbd094d7ff14181d978a21b9b418571f16a4ed689f7f43cc92bad967710265`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426de7c4048293b8f750a1a91fb8046e1a1f7374ebcd47a78ec8177ed43b1ef`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f306bc3b64c5283be70f0fba7a87dd9a307f3abae8d6681ea951a5bba9a6f7a`  
		Last Modified: Mon, 09 Oct 2017 22:34:47 GMT  
		Size: 56.5 MB (56536016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982392af1508a542f3c6f876092e251f05477cc0b4faa4ce8571be0075a44477`  
		Last Modified: Mon, 09 Oct 2017 22:34:32 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:02ffe5844a7f0fa7ca29a06d50baa9070a52f7e7d3f3bdc0d232910cf59ebaea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75480060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564c9b4ae546d6b3e91a71b336619413ce67d40143e43851767e9c0337fc06a7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:05:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:05:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:05:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:06:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:06:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6226915187b9d61d290e04413a4ccdf021b5e0fc267ba8129cc0126cab1f1a93`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 430.6 KB (430580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98b9b3c90ff2ee65efc9f88b2383f6f1760df78bcd965fa0b22e001977eaf96`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377cafaae0c7321b0549f3949d78826675109fe908cb8521f39fe433ccfced7c`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b54cd082813272ec0eee997651297edb9bab1e57b36937aeb96ef819318ed1e`  
		Last Modified: Mon, 09 Oct 2017 23:24:18 GMT  
		Size: 55.5 MB (55499788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc34b3797b251df09cbf29653d3faf2fabcdf80cb0f026c5bd5a61c741cea657`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 272.2 KB (272179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d62c439dd65c5753a0b394b0b70432a9b5534efea1d6921c8f5b75ba0543e269
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79301824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e455f354a946102f005d508e8a8f56202de4aca6dea1af8a756f86c8fd056bba`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:43:39 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:43:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:43:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 22:43:52 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 22:43:53 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 22:43:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 22:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:45:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a76af68c1d60c07e33c4aa1e837762c3569646df60f4f0174d1ba83024863`  
		Last Modified: Fri, 08 Sep 2017 22:55:34 GMT  
		Size: 440.8 KB (440823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd72c893e09a1c2f500ced1a71839b1fdad41fd04c2281c322b582cd5526ffd`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d70f76b5d186f9a22db9d33bfee65f9f6d00904a00959b2ec215d2392980133`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138efba7c13165402dd42568cdbc8dd5784f44cad84246839c7a9f8326d866d`  
		Last Modified: Fri, 08 Sep 2017 22:55:51 GMT  
		Size: 58.3 MB (58251218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a77eaad9cbc978cdf87d1ba427d2f905a1b9b374a26dd7b2d818629557e8b4`  
		Last Modified: Fri, 08 Sep 2017 22:55:33 GMT  
		Size: 272.1 KB (272133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; 386

```console
$ docker pull openjdk@sha256:dc58b679878857f4c339ae3f7ef745f641678e2cd41a444ae9686a40c7e75259
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91561449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8492bfdd8558994823a201cd2a6baf93067af6d8d592e95307793d84e12898ee`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:15:43 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:15:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 15:15:45 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 15:15:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 15:16:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:16:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954117579cf63aa6d4f437298814195581d13005972e2fed6070cd434379007`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 463.4 KB (463422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f125eaf7c3f7dfbe1993cc361c45586d0ed10c0cf968f5e3681e7568932c8`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef71936cc7c95e2d4cf2866feac6aa8d4be9a94cc45c35797d093391e00ca696`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae98f3e4788b9631dd947899886866a6adaad60317ffd8e0605fc2a80f01ccf`  
		Last Modified: Fri, 08 Sep 2017 15:32:42 GMT  
		Size: 67.7 MB (67699776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422fc5dced716e8660cde9571c77feb246f0930932225b10554d46b443d73fd2`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6a64b34cc9747e3616690cddffee85e50ae5abfe567e99a9e54570ced34fc79b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82103692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6880ab66d292d9343f9dbaeae2cf53491a5c3ae9ccde88d542a61383d4f20bf6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:26:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:26:30 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 01:26:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 01:26:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 01:27:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:27:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee90978362d08c4e770b183283933846b88fbddcbd1d24fd3c54f27666128c68`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 449.7 KB (449687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ddf0608c4e5036b59bfb654bb8aca9329c0686cb0087c08b8c478689a2bd75`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f1724ac87b8200685750f493d25f1c1b6f8ee427c651522ede69275fa6aa0`  
		Last Modified: Fri, 08 Sep 2017 01:30:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c69ee6a1dc0dd1421b6d81a919b1309eccd850e2b2daf4d48ecd9822bc4bac5`  
		Last Modified: Fri, 08 Sep 2017 01:30:36 GMT  
		Size: 58.6 MB (58635516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1efeee050e152c674500adfe8600d1be59098187379d3c56e001280df2bb4bd`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 272.1 KB (272051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u141-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:8527e35375c356774a7ddd9ee0f45e70e2d85c8c7739485441ff733861957d8f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80675865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34719e628539f989f01f78133ba9970858288a021684a4fa5b4087140b070bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:52:36 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:52:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:52:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:52:37 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:52:38 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:52:38 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:52:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:53:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:53:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b68a7778da3a2e44964f508fbd3bc92882c4ad1dbd961716e950115a17786c`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 465.7 KB (465695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cbedee24083ce9a877823999b311c5211df0a60c7d39f0f1a7ffc40e5d3d98`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b4c73c20e2fb65e204d4f0e9530411503632baa0c81a5cd04aa4258ad9c478`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff107e8605f877b67a64c0bea37d46ff610f742062cfbd1ad4cec4e2d4338982`  
		Last Modified: Mon, 09 Oct 2017 23:02:13 GMT  
		Size: 57.6 MB (57597680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36553e27252d10ca7d945672d977007dc866b9a6cd833eb6f236c242394dbccd`  
		Last Modified: Mon, 09 Oct 2017 23:02:01 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
