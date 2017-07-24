## `gradle:jre9`

```console
$ docker pull gradle@sha256:a9569c6e3368b7fb1d3cdb7ca9838d67af09eedab5d4ffbe6a3ea5eb3bc0de6d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284864570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3522d94dcf164f2822ffc2e090a37741ee6099e4b168a61caeb5ad1440f88d33`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:22 GMT
ADD file:366ed17a0f83cce653d5f267000d2766de9f465b087c3c17d9c865f1ac7dc8b3 in / 
# Mon, 24 Jul 2017 16:52:23 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:14:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 24 Jul 2017 18:14:16 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:14:18 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 24 Jul 2017 18:14:18 GMT
ENV JAVA_VERSION=9-b179
# Mon, 24 Jul 2017 18:14:18 GMT
ENV JAVA_DEBIAN_VERSION=9~b179-1
# Mon, 24 Jul 2017 18:14:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 24 Jul 2017 19:59:38 GMT
CMD ["gradle"]
# Mon, 24 Jul 2017 19:59:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 24 Jul 2017 19:59:39 GMT
ENV GRADLE_VERSION=4.0.1
# Mon, 24 Jul 2017 19:59:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Mon, 24 Jul 2017 19:59:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 24 Jul 2017 19:59:44 GMT
USER [gradle]
# Mon, 24 Jul 2017 19:59:44 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 24 Jul 2017 19:59:44 GMT
WORKDIR /home/gradle
# Mon, 24 Jul 2017 19:59:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b5499bef70c58635bb757692533c72902e2ab8d155d0eafc76cda92862472a27`  
		Last Modified: Mon, 24 Jul 2017 16:57:55 GMT  
		Size: 48.4 MB (48430926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aefbd8335b097f9758dad16852743f38a1b601f9f9d0cf4bf8b6ce09f3463e`  
		Last Modified: Mon, 24 Jul 2017 17:34:42 GMT  
		Size: 8.6 MB (8552452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c86784c73eaf7a56381d588b8a6ea2213fa0b23467fd7e1479f9c995d7beebb`  
		Last Modified: Mon, 24 Jul 2017 17:34:41 GMT  
		Size: 4.4 MB (4423274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ec62d8647037c4c51df9d7d55dca285af413090bf8ea8abf3913ca76f6330`  
		Last Modified: Mon, 24 Jul 2017 18:26:57 GMT  
		Size: 628.6 KB (628556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92afbc0c9f6f958750382380f5b2345d029bcaa1d010e3381d5561ba512418da`  
		Last Modified: Mon, 24 Jul 2017 18:26:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9778d6284ad639dfe340aba80bac65252b9893d239b865bcffab28a636c36e`  
		Last Modified: Mon, 24 Jul 2017 18:26:56 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfefe73a301eec19655b298eb2d0f1b11b4cd9f651b978115c5508224f38a8f2`  
		Last Modified: Mon, 24 Jul 2017 18:26:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3ee1aa125a6c0775b3d3273722e1374c6bf64506d0073de9a2218ce15acbc2`  
		Last Modified: Mon, 24 Jul 2017 18:27:15 GMT  
		Size: 155.3 MB (155326128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1d50e296201ef2c39fbb4f341fd05179897e545e6ce90600961d6b3d251061`  
		Last Modified: Mon, 24 Jul 2017 20:04:36 GMT  
		Size: 67.5 MB (67502509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c594c76b32bbfd5746536b7f095e1589870ee6344fc08f23516addb70c61c4d5`  
		Last Modified: Mon, 24 Jul 2017 20:04:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
