## `gradle:jdk7`

```console
$ docker pull gradle@sha256:cffbc865052dae2918315495d3054a608abde6fd2d5131a5512884453be84044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:943bf1277470358fdc54334231b2e939bcdff2a7c472c9e80af7a25eb63b60ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcae419ae361877dbb0000010e965a12fec12b66c7c029f5238c75500138ec2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:41 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:49:44 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:50:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:06:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:06:27 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:06:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4327c8f8e66f76d635cd77b3186598a5a64e9acf6e97f996da914ac05072aef2`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 828.7 KB (828683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eeffa135e7f20af0d0d9ed5d25d1b018becbc1746a1a713177ff82f2ef139b`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b02403a19fa0838b13c276ec3eb695b8439a3c6ed42183c696b4a5c98b3d569`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d1f79adbd2f9f77774288d7500afe5f5718f882f28299b486a18190afea5b6`  
		Last Modified: Sat, 04 Nov 2017 18:58:43 GMT  
		Size: 129.3 MB (129348794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07011b398360b1cf551d771167947968d63bf0fcfd7b08a15603da47a989cf9`  
		Last Modified: Wed, 08 Nov 2017 20:17:45 GMT  
		Size: 73.0 MB (72998586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770d3cdb72be386e31e8658a4d5ea572db913e9ebde80881760f9a4af4876d85`  
		Last Modified: Wed, 08 Nov 2017 20:17:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
