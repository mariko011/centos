<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rapidoid`

-	[`rapidoid:5`](#rapidoid5)
-	[`rapidoid:5.4`](#rapidoid54)
-	[`rapidoid:5.4.4`](#rapidoid544)
-	[`rapidoid:latest`](#rapidoidlatest)

## `rapidoid:5`

```console
$ docker pull rapidoid@sha256:0f334ed36cae1b5831d670f582067ae3bf54e2962d940d8ec29bcc69de80ee1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:5` - linux; amd64

```console
$ docker pull rapidoid@sha256:560e4e1cba2380ca08da4caa0a528e783751c2e55e9df5cb77bc4541190f8b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.3 MB (310348068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e0d9bcff97822bb18dc18a23b7104e837c6b10647fb601d9944430c25e4228`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:48:55 GMT
MAINTAINER Nikolche Mihajlovski
# Thu, 14 Sep 2017 07:48:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Thu, 14 Sep 2017 07:48:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Thu, 14 Sep 2017 07:48:56 GMT
WORKDIR /opt
# Thu, 14 Sep 2017 07:48:56 GMT
EXPOSE 8888/tcp
# Thu, 14 Sep 2017 07:48:56 GMT
VOLUME [/data]
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_VERSION=5.4.4
# Thu, 14 Sep 2017 07:48:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.4/rapidoid-platform-5.4.4.jar
# Thu, 14 Sep 2017 07:48:57 GMT
COPY file:f62471c9cb58f8ee35db72795bbbe10cfd1ec927f04f29a88fe6a996f358af70 in /opt/ 
# Thu, 14 Sep 2017 07:49:18 GMT
RUN set -xe     && mkdir /app     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -r "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc"
# Thu, 14 Sep 2017 07:49:18 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d29fe1332bdcbdf410ed7bafdfec3778973ce9be21f7d3817a96bbbdf9f10`  
		Last Modified: Thu, 14 Sep 2017 07:49:28 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345e04dc44b8d020cd3205c46784989476b1aa731b1c9627dd6a6febc2c1ebc9`  
		Last Modified: Thu, 14 Sep 2017 07:49:29 GMT  
		Size: 14.6 MB (14612738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4`

```console
$ docker pull rapidoid@sha256:0f334ed36cae1b5831d670f582067ae3bf54e2962d940d8ec29bcc69de80ee1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:5.4` - linux; amd64

```console
$ docker pull rapidoid@sha256:560e4e1cba2380ca08da4caa0a528e783751c2e55e9df5cb77bc4541190f8b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.3 MB (310348068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e0d9bcff97822bb18dc18a23b7104e837c6b10647fb601d9944430c25e4228`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:48:55 GMT
MAINTAINER Nikolche Mihajlovski
# Thu, 14 Sep 2017 07:48:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Thu, 14 Sep 2017 07:48:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Thu, 14 Sep 2017 07:48:56 GMT
WORKDIR /opt
# Thu, 14 Sep 2017 07:48:56 GMT
EXPOSE 8888/tcp
# Thu, 14 Sep 2017 07:48:56 GMT
VOLUME [/data]
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_VERSION=5.4.4
# Thu, 14 Sep 2017 07:48:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.4/rapidoid-platform-5.4.4.jar
# Thu, 14 Sep 2017 07:48:57 GMT
COPY file:f62471c9cb58f8ee35db72795bbbe10cfd1ec927f04f29a88fe6a996f358af70 in /opt/ 
# Thu, 14 Sep 2017 07:49:18 GMT
RUN set -xe     && mkdir /app     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -r "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc"
# Thu, 14 Sep 2017 07:49:18 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d29fe1332bdcbdf410ed7bafdfec3778973ce9be21f7d3817a96bbbdf9f10`  
		Last Modified: Thu, 14 Sep 2017 07:49:28 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345e04dc44b8d020cd3205c46784989476b1aa731b1c9627dd6a6febc2c1ebc9`  
		Last Modified: Thu, 14 Sep 2017 07:49:29 GMT  
		Size: 14.6 MB (14612738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4.4`

```console
$ docker pull rapidoid@sha256:0f334ed36cae1b5831d670f582067ae3bf54e2962d940d8ec29bcc69de80ee1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:5.4.4` - linux; amd64

```console
$ docker pull rapidoid@sha256:560e4e1cba2380ca08da4caa0a528e783751c2e55e9df5cb77bc4541190f8b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.3 MB (310348068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e0d9bcff97822bb18dc18a23b7104e837c6b10647fb601d9944430c25e4228`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:48:55 GMT
MAINTAINER Nikolche Mihajlovski
# Thu, 14 Sep 2017 07:48:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Thu, 14 Sep 2017 07:48:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Thu, 14 Sep 2017 07:48:56 GMT
WORKDIR /opt
# Thu, 14 Sep 2017 07:48:56 GMT
EXPOSE 8888/tcp
# Thu, 14 Sep 2017 07:48:56 GMT
VOLUME [/data]
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_VERSION=5.4.4
# Thu, 14 Sep 2017 07:48:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.4/rapidoid-platform-5.4.4.jar
# Thu, 14 Sep 2017 07:48:57 GMT
COPY file:f62471c9cb58f8ee35db72795bbbe10cfd1ec927f04f29a88fe6a996f358af70 in /opt/ 
# Thu, 14 Sep 2017 07:49:18 GMT
RUN set -xe     && mkdir /app     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -r "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc"
# Thu, 14 Sep 2017 07:49:18 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d29fe1332bdcbdf410ed7bafdfec3778973ce9be21f7d3817a96bbbdf9f10`  
		Last Modified: Thu, 14 Sep 2017 07:49:28 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345e04dc44b8d020cd3205c46784989476b1aa731b1c9627dd6a6febc2c1ebc9`  
		Last Modified: Thu, 14 Sep 2017 07:49:29 GMT  
		Size: 14.6 MB (14612738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:0f334ed36cae1b5831d670f582067ae3bf54e2962d940d8ec29bcc69de80ee1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:560e4e1cba2380ca08da4caa0a528e783751c2e55e9df5cb77bc4541190f8b95
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.3 MB (310348068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e0d9bcff97822bb18dc18a23b7104e837c6b10647fb601d9944430c25e4228`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 07:48:55 GMT
MAINTAINER Nikolche Mihajlovski
# Thu, 14 Sep 2017 07:48:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Thu, 14 Sep 2017 07:48:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Thu, 14 Sep 2017 07:48:56 GMT
WORKDIR /opt
# Thu, 14 Sep 2017 07:48:56 GMT
EXPOSE 8888/tcp
# Thu, 14 Sep 2017 07:48:56 GMT
VOLUME [/data]
# Thu, 14 Sep 2017 07:48:56 GMT
ENV RAPIDOID_VERSION=5.4.4
# Thu, 14 Sep 2017 07:48:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.4/rapidoid-platform-5.4.4.jar
# Thu, 14 Sep 2017 07:48:57 GMT
COPY file:f62471c9cb58f8ee35db72795bbbe10cfd1ec927f04f29a88fe6a996f358af70 in /opt/ 
# Thu, 14 Sep 2017 07:49:18 GMT
RUN set -xe     && mkdir /app     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -r "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc"
# Thu, 14 Sep 2017 07:49:18 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d29fe1332bdcbdf410ed7bafdfec3778973ce9be21f7d3817a96bbbdf9f10`  
		Last Modified: Thu, 14 Sep 2017 07:49:28 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345e04dc44b8d020cd3205c46784989476b1aa731b1c9627dd6a6febc2c1ebc9`  
		Last Modified: Thu, 14 Sep 2017 07:49:29 GMT  
		Size: 14.6 MB (14612738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
