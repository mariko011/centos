## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:dbfd33e4c57984c08b6c030f2eb7b716df0c1817cae8e431401282aed907daea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:0a96a1853f3d702b3e58d457a26b2d1ab80e92cd81e1e297e24748e175d1f212
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94313625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caf6ff37512423a6b6a42b4433806f82d1755e50ab2264cbe5225130a60c911`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:34:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:34:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:38:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 05:38:19 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 05:38:20 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 05:38:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 05:38:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:38:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 08:09:24 GMT
MAINTAINER Nikolche Mihajlovski
# Tue, 12 Dec 2017 08:09:24 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Tue, 12 Dec 2017 08:09:25 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Tue, 12 Dec 2017 08:09:25 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Tue, 12 Dec 2017 08:09:25 GMT
WORKDIR /opt
# Tue, 12 Dec 2017 08:09:25 GMT
EXPOSE 8888/tcp
# Tue, 12 Dec 2017 08:09:26 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 08:09:26 GMT
ENV RAPIDOID_VERSION=5.4.6
# Tue, 12 Dec 2017 08:09:26 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Tue, 12 Dec 2017 08:09:26 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Tue, 12 Dec 2017 08:10:02 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:10:05 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a7df1b51f6278abe3864a0d83f04c9b9d4885b4d64cf68cb40ac650f91a5`  
		Last Modified: Tue, 12 Dec 2017 05:49:02 GMT  
		Size: 454.8 KB (454819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c98005fcff8d144c0e901a6f8b6c20f7aab34f1c93f9d8679f342cd4640c5c`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dcc90226db797991bfa856bcbec2e3a60afa66c263912ec507073813bbe945`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e7ee438449dbeb5311161c6b7551a36b6a16e1cc801f11a82752335a83423`  
		Last Modified: Tue, 12 Dec 2017 05:50:30 GMT  
		Size: 56.0 MB (55998926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb083d9c54cfb8d861eda9fbf2466b0be061872c74751624d604dda6c9b75d29`  
		Last Modified: Tue, 12 Dec 2017 05:50:16 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154133850f2e0f2ae2c59c036873bff4c93729652afb92bbb21e9853cecf6b73`  
		Last Modified: Tue, 12 Dec 2017 08:10:18 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8340a1afcee1f8aa0f5f15642deb2d33ccfdd57a7fc36de6b92197d50afd8e02`  
		Last Modified: Tue, 12 Dec 2017 08:10:19 GMT  
		Size: 15.1 MB (15101291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
