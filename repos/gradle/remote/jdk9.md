## `gradle:jdk9`

```console
$ docker pull gradle@sha256:4c58a7adc37ab4e9491a4c5ccd27d0c24821b3842f147fbead61cb1909379989
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337313385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bae8f97f9bb0e8b6eff29b09b8f436a4fd5667aea2f3a6e0e913291e20f8435`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 01:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:26:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:27:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:27:02 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:27:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:27:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:27:07 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 10 Jul 2017 20:14:03 GMT
ENV JAVA_VERSION=9~b177
# Mon, 10 Jul 2017 20:14:03 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Mon, 10 Jul 2017 20:14:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 10 Jul 2017 22:55:56 GMT
CMD ["gradle"]
# Mon, 10 Jul 2017 22:55:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:53 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:57 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:58 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:58 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:41:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa058e7e715a6212842c44a104b7cc2f75755d9b6b8dcbde6abb4bb41215fd58`  
		Last Modified: Fri, 07 Jul 2017 03:17:18 GMT  
		Size: 52.9 MB (52871527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd45d96ce63b510cd179a4616a425e8426043aad8bf6f0cbe235e306669a9fe`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 661.2 KB (661167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fe5535b34a526a1b6eb10854c592499d136df1c43cc878aa034dd63e561892`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376fd88566eb93e15f95a7827dc4a94beb398ad982c824bb4cdd2f9363ea4f2b`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d004c5888e78f94c11295676dd9769f67bee0e0b6f7d542bf6874c08c12f323`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0e2affb373fbaee572fa6b7b244a20fc75f5b3d6232506ff82e91238db8d86`  
		Last Modified: Mon, 10 Jul 2017 20:22:09 GMT  
		Size: 155.4 MB (155421891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0ed157ec4575abe095b6dfac1fbccff8d452b256c00f7ff55ae243c26cb20a`  
		Last Modified: Thu, 13 Jul 2017 16:54:12 GMT  
		Size: 67.5 MB (67502402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16000f47ea7ed549b4d4f29bdd8718a1f733b86c3c3120f2f7a41a4b336fff32`  
		Last Modified: Thu, 13 Jul 2017 16:54:01 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
