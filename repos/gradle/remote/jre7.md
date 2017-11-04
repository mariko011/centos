## `gradle:jre7`

```console
$ docker pull gradle@sha256:ea3f4cfcad3d41e0b397c1a646e77175b22b19e8df9ed10e1a7a1f49f15cba4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

```console
$ docker pull gradle@sha256:b594e9aeec9cc7d69d994b64688772a7f3eb79211559117ebe2d7e3f6f5a6458
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261065704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d152330f8ff1d6f25248b2ec06dc33d442c44734a2622783d15cf0b4a7be3cd`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:42:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:42:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:42:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:43:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:19 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:15 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73e29532543f210524cfbf7a5f7841d76a2f26b0258f83e88817fec3c1931dd`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 795.6 KB (795593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed98915939eb67bd35a04238b090a92f86a0dafe9807d20ac34615e9ca1a94b4`  
		Last Modified: Sat, 04 Nov 2017 05:58:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afdebfc1908cbdf3ea58cca4249d59825e381afb9ff61ae7d745e0b8416381`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3409d1f5c73f2d829ea7eb2916bd6d1b18802861a848cbf8635f4ab4f1cc179b`  
		Last Modified: Sat, 04 Nov 2017 05:59:23 GMT  
		Size: 117.3 MB (117333928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e80bdcd5d1302e1f2a381fc6996ae4a5fa19b4b69338aa98575a1899b637cd`  
		Last Modified: Sat, 04 Nov 2017 11:41:28 GMT  
		Size: 71.1 MB (71075997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349890494af5b286a9f73ec0da442cb058e026f52e7030330ea958859b32ff54`  
		Last Modified: Sat, 04 Nov 2017 11:41:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
