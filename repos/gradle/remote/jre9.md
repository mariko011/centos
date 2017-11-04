## `gradle:jre9`

```console
$ docker pull gradle@sha256:b271d274cdfbb6b2c1023a4978f3a2fea1af91659ed83335810fa92ac04f7284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

```console
$ docker pull gradle@sha256:4c274a2c9ee316be5d81bd39c5537f75435e30c30ab8bdd9c7a1685445e5c5c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337449352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06665b3060c692b8658be7719df8ddd41a146889d232d6f2c7eb6875627b6bf1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:53:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:54:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:40:22 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:27 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a4ab4d338c6fe266ffb6aa9aec5ac796635105ee7826dab7ffb85c69ed0ca9`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 855.4 KB (855445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b6b2551273c2cd035d0ce577a6db36a755fe8fb835fb6dfe3e7f5b418843ff`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f6bd99b1fdcc2bdb46fdf8f54e74c14cd99e20d198afd8fe3bc1c51e255c7`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffc2093aa6b005ed68ae00a9033489c9b2efbfcc223a68b32c517f592d25d6a`  
		Last Modified: Sat, 04 Nov 2017 06:07:43 GMT  
		Size: 199.8 MB (199812610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89126d17f9a96d06b53327309ba47233308dcd612e48adaccf35de719264caf`  
		Last Modified: Sat, 04 Nov 2017 11:46:44 GMT  
		Size: 71.1 MB (71075980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45746e26dca2544145ee05553564a3466cc961b703e16223e3bec08c88eb44a3`  
		Last Modified: Sat, 04 Nov 2017 11:46:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
