## `openjdk:8-jdk`

```console
$ docker pull openjdk@sha256:6f6aa7f09199bc57cabdadb12d743fb2ee04c441ff00f83d4cc9cf679bce4408
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

### `openjdk:8-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:ef6cc6844f3514837611d92796904016f0b199de16644a5042110bc559e02b2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295511995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e5514c5211fc0d8446fc36369a5b9d87db3045669de44f90188f8d1f6f746a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:7dd0f60ee0126f1f5ffbca9ec97045882ab4405a05d2a0058232fb0b8aa3d300
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260205774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:633312ea56e086501b6ac1209ece41df66e0d61d61d587e89ff32f5011412ef8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:03:39 GMT
ADD file:111ccf88fc474ec03491c012baa75d4f4b3b6d08391bb86364b9fabdf3b57d3e in / 
# Fri, 08 Sep 2017 20:03:42 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 03:24:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 03:24:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 03:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 12:52:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 12:52:22 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 12:52:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 12:52:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 12:52:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 12:52:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 12:52:29 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 12:52:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 13:02:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 13:03:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:dfcb038706ea089b8e701c5bfce59c00a98c88092993630571599baa72487c2b`  
		Last Modified: Fri, 08 Sep 2017 20:20:29 GMT  
		Size: 43.8 MB (43813379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030078b17d46903c14ed2dd09bcbdc7f1934bae264c422d5d9b80c5fa17d6468`  
		Last Modified: Tue, 12 Sep 2017 04:21:43 GMT  
		Size: 10.2 MB (10200361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cd23325ea47399b2b6c3527d5a2fc92f5d9b4186fcc4e7b36c80641a74c00e`  
		Last Modified: Tue, 12 Sep 2017 04:21:40 GMT  
		Size: 4.5 MB (4450469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14471b0149fa6d4caff8acc5a48118dcfe12a2d73a218d1973e55ec7199dbb93`  
		Last Modified: Tue, 12 Sep 2017 04:22:46 GMT  
		Size: 48.2 MB (48219360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779b4c6958f74615197cdb7b7002a596b8f066637284b2629ae4c37a2cf18270`  
		Last Modified: Wed, 13 Sep 2017 09:16:07 GMT  
		Size: 884.5 KB (884549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0ae7166a1c6845e8638619ceb42d51c2bfa8938615ec6dccda05e9f4fc8cce`  
		Last Modified: Wed, 13 Sep 2017 09:16:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6e4205f57fbac5096adb174e7443f5a103af1c79601539baf61fc28c94473d`  
		Last Modified: Wed, 13 Sep 2017 09:16:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d904ccdb25f527d3785c9a59ce73622f41255e9a1100f125b1c13cb680f91a6b`  
		Last Modified: Wed, 13 Sep 2017 09:17:49 GMT  
		Size: 152.4 MB (152365067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77142f7092829bf13d3cfb4b425218157bfe0dff6a8171774ef2dc2e1bf6758d`  
		Last Modified: Wed, 13 Sep 2017 09:16:06 GMT  
		Size: 272.2 KB (272211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:8df11361e16b84787ddac09ad170c5711d9c8f1e5149c0be3a1d47a4c9bdb279
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268299386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6497459a81ac1ecc3603d7ec479a090bf7c9b795b9897190dcd6cee09045eaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 17:46:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 17:46:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 17:48:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Aug 2017 01:57:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Aug 2017 01:57:42 GMT
ENV LANG=C.UTF-8
# Wed, 23 Aug 2017 01:57:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Aug 2017 01:57:47 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Aug 2017 01:57:48 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Aug 2017 01:57:48 GMT
ENV JAVA_VERSION=8u141
# Wed, 23 Aug 2017 01:57:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 23 Aug 2017 01:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 23 Aug 2017 02:04:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Aug 2017 02:04:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:553a3eebd00142ad32c0bcb65400e4cf8ca6b30ef9311065e89daa4a210ab749`  
		Last Modified: Fri, 11 Aug 2017 18:56:48 GMT  
		Size: 46.3 MB (46347459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357d4cc003f268bed705eefad546e72e404092e85d0f928b9585656bbdacc4bf`  
		Last Modified: Wed, 23 Aug 2017 03:23:19 GMT  
		Size: 867.2 KB (867242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090b08562cf64d84e456aaa1505edb60ad5e3bde08613678b7f7960a656d7aee`  
		Last Modified: Wed, 23 Aug 2017 03:22:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefb1add91e049fbb6ff14f8631d4e24664e12c3819e4a0784f941340c48dce`  
		Last Modified: Wed, 23 Aug 2017 03:22:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350d6c33b947af60f47f3d199f193cfa53cfbeef8ade01274bb948c643242df5`  
		Last Modified: Wed, 23 Aug 2017 03:24:28 GMT  
		Size: 164.9 MB (164931498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235e70f8151fab3f4db86339fede00f3415fbd5512b30e9cfe93a542f02411f1`  
		Last Modified: Wed, 23 Aug 2017 03:22:49 GMT  
		Size: 272.3 KB (272254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:969c039cf3a7b7bd8976b661f7e3447abc57484df1ca8388d2522da0b8f7fb7f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275324345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09114932eed68682374a38d0e41bf90f3f053a0646079bd2a5077428588f9d5f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 17:24:29 GMT
ADD file:e7cdf243bc54956f36bab0ce3d5cae3c6dfdaeadd24280fe05691ba6b7f26860 in / 
# Mon, 24 Jul 2017 17:24:30 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:17:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:18:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:59:11 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:59:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:59:19 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:59:20 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 27 Jul 2017 09:59:49 GMT
ENV JAVA_VERSION=8u141
# Thu, 27 Jul 2017 09:59:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 27 Jul 2017 09:59:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 27 Jul 2017 10:04:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Jul 2017 10:04:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:d48ef06aab1ecdc1cdd7a2d627918df0e2056f6cccc7182f0b50f98cc3919406`  
		Last Modified: Mon, 24 Jul 2017 18:32:43 GMT  
		Size: 48.0 MB (47963855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f19726f68ef83798b8a520d1e4e3b45b207dbdee73aa20e9885ad5df01cd76e`  
		Last Modified: Mon, 24 Jul 2017 19:25:15 GMT  
		Size: 876.3 KB (876259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39b0006d0dd455b5bb3c7b2beb8805cbea2999e874d1128c5ddc9339caac109`  
		Last Modified: Mon, 24 Jul 2017 19:25:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679bf555c1f0238a508d8b4279c7b40c4a4e5549dc1075385a82fceef1d56dd1`  
		Last Modified: Mon, 24 Jul 2017 19:25:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d929480d4aee8005a4a67c40ed1f6cf5ef6befdc8f771a219cdb7f5d55195c`  
		Last Modified: Thu, 27 Jul 2017 10:10:40 GMT  
		Size: 168.9 MB (168855334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b9b508e7d659003495b52dc1369bb830ea92cf88d89550cf994ed70824fdcf`  
		Last Modified: Thu, 27 Jul 2017 10:09:53 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:814aff57dca5a193bad85cf8154505c71bc96e52c85891509d59f0004f2ec6be
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.9 MB (300869090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1798b3e7b1f83a0791c3033dbee32582986eb95ca2e0de746639451b2ea6dbe7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5d404a5028816928a1af9b9e89782378a45abbb61231d5f542aed4735228fa84
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.9 MB (283867399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94050e24ea4ee6df18432863d9f5143bc2dbfe8a3e479729abdaec0cecc10eca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:42:22 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 04:42:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 04:42:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 04:42:24 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 27 Jul 2017 10:47:35 GMT
ENV JAVA_VERSION=8u141
# Thu, 27 Jul 2017 10:47:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 27 Jul 2017 10:47:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 27 Jul 2017 10:50:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Jul 2017 10:50:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9821c2284137f3f1067230f253023a1ed0001418f9c1b9b355215b4a0b3f6d1f`  
		Last Modified: Wed, 26 Jul 2017 10:53:25 GMT  
		Size: 885.3 KB (885257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e05680c7a6b68f8ed4deac0efa4a7fb0b3cd1f36e862061b924bc07bdeec4e9`  
		Last Modified: Wed, 26 Jul 2017 10:53:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925b16bffd4867460e05bb41c7c4a6dad10f63d102f486f7d2203c65d08a7022`  
		Last Modified: Wed, 26 Jul 2017 10:53:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e9449f1fdbfc91d0ce0f29b01ff388653cda53a283a15afcf69bb79dac15bd`  
		Last Modified: Thu, 27 Jul 2017 10:53:43 GMT  
		Size: 172.4 MB (172372148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db2dc0ff80f993d580182e290c3366285224b6c85161e5160e3531e3119ffd5`  
		Last Modified: Thu, 27 Jul 2017 10:53:06 GMT  
		Size: 272.1 KB (272070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:44a6db57f4077f358651141584e99ba7ee9c00397b4a365fd5fa746777ce6412
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266081966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9851b197ad6bbdf529e70dea999e7f15c2ea68d99ee6dc36a3d7119b62f265`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:30:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 17:30:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 17:30:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 17:30:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 17:30:02 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 17:30:02 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 17:30:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 17:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 17:31:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c27d5023486d89da34a98c6820a658507fcf60d4f8ff271b810b218972697bf`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 903.1 KB (903081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1eaa97ae0bd67df6c08dd144c31c98bed1153bc4811140f4b2cd4b88c4f1dd`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb677e3381f35c592b26d43a5b44d39308cbc4b83e717ae9039f3e7a4fa8b4c4`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722c3492d22cfc875b9d40f1f1718ca219a1ca170dbb26effe8ef498f6dcc4b`  
		Last Modified: Fri, 08 Sep 2017 17:35:03 GMT  
		Size: 154.2 MB (154173334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89965b7d63f7969780a7deed9400deb84c72f8bf26f8892e6cbca29381e8711a`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
