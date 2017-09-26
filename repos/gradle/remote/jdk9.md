## `gradle:jdk9`

```console
$ docker pull gradle@sha256:8e1f369863137e4ef072874b16cd62912f8a7ba9c4c41406fabf50ec6b3df77f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:1dc7ce5592f98f2dc496214f0654b4b213b8c6151b94e3bfd170d90c85830311
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.6 MB (466599859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75778d97ec29e1684ccc798c674f9e0d89af7768cfab53745387c8cc89d0c5ea`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:20 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Wed, 13 Sep 2017 08:41:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:25:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:25:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:26:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:26:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:26:01 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:26:02 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 04:26:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 04:27:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:27:49 GMT
CMD ["jshell"]
# Thu, 14 Sep 2017 06:25:40 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Sep 2017 17:32:16 GMT
ENV GRADLE_VERSION=4.2
# Tue, 26 Sep 2017 17:32:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=515dd63d32e55a9c05667809c5e40a947529de3054444ad274b3b75af5582eae
# Tue, 26 Sep 2017 17:32:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=515dd63d32e55a9c05667809c5e40a947529de3054444ad274b3b75af5582eae
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Sep 2017 17:32:21 GMT
USER [gradle]
# Tue, 26 Sep 2017 17:32:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Sep 2017 17:32:25 GMT
WORKDIR /home/gradle
# Tue, 26 Sep 2017 17:32:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=515dd63d32e55a9c05667809c5e40a947529de3054444ad274b3b75af5582eae
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477e069deac996dbb6609e7d33fd195256893b13fbc8d2ca163ef3219075241a`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 8.6 MB (8550082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2369104e1f1899f031560bdc2ba86735241f6295cbd404f4f63ac0ff96fdd43`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 9.8 MB (9842477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f49f83dfe2b0402c8bfe38a8e85880d872f9703f4b774a9b9a2a59f767f1a3c`  
		Last Modified: Wed, 13 Sep 2017 12:55:55 GMT  
		Size: 49.4 MB (49422139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24ce2c86454bf1cc4059982e2ddb153c39ae966a9796a20f944f5662bb5d0dc`  
		Last Modified: Thu, 14 Sep 2017 05:02:08 GMT  
		Size: 894.7 KB (894666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198ec39e2543d5000edc9e1ee2638a08b1d83c5eda729fefefb6437ce193ad5`  
		Last Modified: Thu, 14 Sep 2017 05:02:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1317892d65ebad77135200ae5945e726f77a56f072cf2e9d5984c1cac7253917`  
		Last Modified: Thu, 14 Sep 2017 05:02:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ef56490c24c6e56a8a2edca6be4dc9532e63c0e915bce81a5ae0081758d0d0`  
		Last Modified: Thu, 14 Sep 2017 05:03:19 GMT  
		Size: 279.1 MB (279061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d6787923e8b4391124eda09772e947e9e8e193a7c65ffa6822f6a44a0fd30d`  
		Last Modified: Tue, 26 Sep 2017 17:39:53 GMT  
		Size: 71.1 MB (71074844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc99b71ed5f99983491ffe63992d5c05057c19d82e63a6037707f4b711ccce0`  
		Last Modified: Tue, 26 Sep 2017 17:39:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
