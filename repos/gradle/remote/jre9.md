## `gradle:jre9`

```console
$ docker pull gradle@sha256:27681af39a686441d3bfc50863ad78e19f3b6641466110e30b32f1464301f240
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.2 MB (407215197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d4bd72b1a97191be2ce3a3f89bf14915938bbdb8267c0fcbe4c485e82d621a`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:58:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:58:57 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:58:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:58:59 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:58:59 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:59:00 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 08:59:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 01:01:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 03:57:19 GMT
CMD ["gradle"]
# Mon, 11 Sep 2017 03:57:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 11 Sep 2017 23:48:03 GMT
ENV GRADLE_VERSION=4.1
# Mon, 11 Sep 2017 23:48:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
# Mon, 11 Sep 2017 23:48:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache"  	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 11 Sep 2017 23:48:09 GMT
USER [gradle]
# Mon, 11 Sep 2017 23:48:09 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 11 Sep 2017 23:48:09 GMT
WORKDIR /home/gradle
# Mon, 11 Sep 2017 23:48:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e915c4e3c738f367ca7db94768e958dbe26614998c0b8e8d35e4f73f95f2e40`  
		Last Modified: Sat, 09 Sep 2017 00:39:43 GMT  
		Size: 633.0 KB (633021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc741fe8bdae3f44097058baf0f36265b66a9cc84a6812789480b61426b61a2`  
		Last Modified: Sat, 09 Sep 2017 00:39:43 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab8c30ec25dbe19380f7dc63510390d567db7371719ccb3586a382919d54a0`  
		Last Modified: Sat, 09 Sep 2017 00:39:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9832de7eb14d8f8a41bca1e03300a8baf99ab7e3799fcf62c74474d3ea337ed`  
		Last Modified: Sat, 09 Sep 2017 01:14:11 GMT  
		Size: 273.2 MB (273215366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e589c01841e9cec5baf5537de9162779ed90d23403fb0cd2e39471ca54f1b0fe`  
		Last Modified: Mon, 11 Sep 2017 23:57:37 GMT  
		Size: 67.4 MB (67443685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489b9d738206a83cba992c9e17d863decf53b35a634610feb076b0860cab391f`  
		Last Modified: Mon, 11 Sep 2017 23:57:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
