## `gradle:jre9`

```console
$ docker pull gradle@sha256:9543535506e31ac62fc38e10888ab246b4285715cdc86f7562aa9bba8dda018f
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284905384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089fe2d50427511941e899e74377a5d09475cae031db332485a9b934d40c46a0`
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
# Tue, 08 Aug 2017 18:43:45 GMT
ENV JAVA_VERSION=9-b181
# Tue, 08 Aug 2017 18:43:45 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-2
# Tue, 08 Aug 2017 18:44:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 08 Aug 2017 20:43:17 GMT
CMD ["gradle"]
# Tue, 08 Aug 2017 20:43:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 08 Aug 2017 20:43:18 GMT
ENV GRADLE_VERSION=4.0.1
# Tue, 08 Aug 2017 20:43:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Tue, 08 Aug 2017 20:43:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 08 Aug 2017 20:43:21 GMT
USER [gradle]
# Tue, 08 Aug 2017 20:43:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 08 Aug 2017 20:43:22 GMT
WORKDIR /home/gradle
# Tue, 08 Aug 2017 20:43:23 GMT
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
	-	`sha256:500ae5142efd0ad8e95814f7c522cc479ac22369b1fb947093ea19a7a5dfb6dc`  
		Last Modified: Tue, 08 Aug 2017 18:52:36 GMT  
		Size: 155.4 MB (155366960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35193d8391cb0809f08fdeb937aec41f2d53fcc444baf1f67878d2647fe91eed`  
		Last Modified: Tue, 08 Aug 2017 20:48:26 GMT  
		Size: 67.5 MB (67502491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f73472bd465e9387607b8a2fa238163d556dc15da12b1395e6300bd424fbbd6`  
		Last Modified: Tue, 08 Aug 2017 20:48:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
