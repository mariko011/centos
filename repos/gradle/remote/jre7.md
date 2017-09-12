## `gradle:jre7`

```console
$ docker pull gradle@sha256:4b371cdbaf07ba4c7cec30a70670a4d4a830a57d46edb2c700e595d4a3f0f38c
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256754665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ab655a7ac342a68cd67300fceac3a96dad1abe3ea72358efbbfa22f754b496`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:53:33 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:53:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 09 Sep 2017 00:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 03:51:39 GMT
CMD ["gradle"]
# Mon, 11 Sep 2017 03:51:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 11 Sep 2017 23:44:23 GMT
ENV GRADLE_VERSION=4.1
# Mon, 11 Sep 2017 23:44:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
# Mon, 11 Sep 2017 23:44:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache"  	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 11 Sep 2017 23:44:37 GMT
USER [gradle]
# Mon, 11 Sep 2017 23:44:37 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 11 Sep 2017 23:44:44 GMT
WORKDIR /home/gradle
# Mon, 11 Sep 2017 23:44:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc36106021e049a8f41948b9168983fe16c6ca5e39a84a99d76cbe2ee05b1f4c`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 568.6 KB (568596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb51644d4e9b848d990d1cbb215e8369a028b17b454b33d204b06aa331b355`  
		Last Modified: Sat, 09 Sep 2017 00:33:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1044940b09b23c5f24d17b9fb43b33ec5c7b8577981d98e7aa44b9986df66`  
		Last Modified: Sat, 09 Sep 2017 00:33:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5e2956b5600f2a536d9e203417796f5090176e58dced328f0e43a0ed40992`  
		Last Modified: Sat, 09 Sep 2017 01:03:12 GMT  
		Size: 116.9 MB (116883138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50f22cec671c2cfea1e2a6f2c34600fce9233dd8e44f3edc41e7c7c544a08cb`  
		Last Modified: Mon, 11 Sep 2017 23:49:20 GMT  
		Size: 67.4 MB (67443425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef71aa80d473bf0f9df963a1b1aafb569813b7a787838483fc0ad0f708990fdf`  
		Last Modified: Mon, 11 Sep 2017 23:49:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
