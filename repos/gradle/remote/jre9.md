## `gradle:jre9`

```console
$ docker pull gradle@sha256:284a06cf1b6fdf79e31f8a982624d7dd286b7c6ee1caf8a4593d79762c44bfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

```console
$ docker pull gradle@sha256:99f04738136a9ac9e741238b5154be8e4201ade434734b17af05a550312d1d6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 MB (407725295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee6d09da791ea618c3b0ac65515edd8168ea1ab939858b73decc07cfc929113`
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
# Thu, 14 Sep 2017 04:33:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:33:10 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:33:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:33:12 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:33:12 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:33:12 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 04:33:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 04:34:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 06:25:52 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 14 Sep 2017 06:25:52 GMT
ENV GRADLE_VERSION=4.1
# Thu, 14 Sep 2017 06:25:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
# Thu, 14 Sep 2017 06:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache"  	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 14 Sep 2017 06:25:56 GMT
USER [gradle]
# Thu, 14 Sep 2017 06:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 14 Sep 2017 06:25:56 GMT
WORKDIR /home/gradle
# Thu, 14 Sep 2017 06:26:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
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
	-	`sha256:2653af89eed8511376896096af1df8c2293e63173c8473486736fd5a67d2a5e1`  
		Last Modified: Thu, 14 Sep 2017 05:04:43 GMT  
		Size: 856.5 KB (856495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3f4d8376d1c52d077cb39ae67ce81b154881efa498898c214a4c26f8a8545e`  
		Last Modified: Thu, 14 Sep 2017 05:04:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f722554b6e43438649b3c9fe8832a6f074024da420c74e69f68c4ac948959b`  
		Last Modified: Thu, 14 Sep 2017 05:04:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0b694d6aec9d0d575e1cdcc8fded6110dbe92e27ecc9935439aaf10387a2e6`  
		Last Modified: Thu, 14 Sep 2017 05:05:47 GMT  
		Size: 273.3 MB (273278169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca891b24c848033223dba36fdb3fb104a49fcee722d841ce8498fed605066b1`  
		Last Modified: Thu, 14 Sep 2017 06:31:59 GMT  
		Size: 67.4 MB (67443696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e24b264ab2545fbc223087dda7b0cb96c56cc8598bfd638cf4cca44ad03166c`  
		Last Modified: Thu, 14 Sep 2017 06:31:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
