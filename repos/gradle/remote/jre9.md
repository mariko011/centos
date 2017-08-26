## `gradle:jre9`

```console
$ docker pull gradle@sha256:98358cbcf16a85e264f70961c884de37db9577297b49c1587972e338c60d1972
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.9 MB (283931083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dec210cbdf105aab2964bb000e57a384d8a6f38f915e2e4088161ea1e564ed6`
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
# Fri, 25 Aug 2017 21:06:33 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 21:06:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 21:06:34 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 21:06:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 21:06:35 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 21:06:35 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 25 Aug 2017 21:06:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 26 Aug 2017 03:02:12 GMT
CMD ["gradle"]
# Sat, 26 Aug 2017 03:02:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 26 Aug 2017 03:02:13 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 26 Aug 2017 03:02:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 26 Aug 2017 03:02:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 26 Aug 2017 03:02:17 GMT
USER [gradle]
# Sat, 26 Aug 2017 03:02:17 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 26 Aug 2017 03:02:17 GMT
WORKDIR /home/gradle
# Sat, 26 Aug 2017 03:02:21 GMT
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
	-	`sha256:a1046a81f9e47b4b627afc4ad6def9c32e851095edd27c1fab49d647d68482e3`  
		Last Modified: Fri, 25 Aug 2017 21:14:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e4512a4db89b4839d66e3972cda852470167c7a8b7bc0001c745789f364d93`  
		Last Modified: Fri, 25 Aug 2017 21:14:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b59766e4a78022800db52a32cbb56e6bbef08e4ec5ba43b994b486b592ec9fd`  
		Last Modified: Fri, 25 Aug 2017 21:15:10 GMT  
		Size: 154.4 MB (154392922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78664cf9c2d0f2f90c7de72e39270a279decf558189f207ef2a6d4292e9264bb`  
		Last Modified: Sat, 26 Aug 2017 03:08:30 GMT  
		Size: 67.5 MB (67502443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52ab092baec4e679ff9e83b702d6460a64f1af8eb223b379ddce9e782b48007`  
		Last Modified: Sat, 26 Aug 2017 03:08:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
