## `gradle:jdk10`

```console
$ docker pull gradle@sha256:a26eb9a8de4382698a56c4d443694f3b04211792b56e1d32533282f12b201226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk10` - linux; amd64

```console
$ docker pull gradle@sha256:06e0a46153f7869e5f64b159cb7a6e8cbe0ac055b5649647d8d3ca24ba2be10d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.2 MB (479158565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e7b800195924b95eca33d6c5706cbf5103f89a07855980f2380944f08da5ef`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:09 GMT
ADD file:f4f0ede88e0b0edf8235b2a5ff46ab7d8de71d56720cb7dc3032bca0e1872695 in / 
# Tue, 12 Dec 2017 01:43:10 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:51:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 20:25:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 18 Jan 2018 20:25:28 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jan 2018 20:25:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 18 Jan 2018 20:25:30 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 18 Jan 2018 20:25:30 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Jan 2018 20:25:30 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 18 Jan 2018 20:25:31 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 18 Jan 2018 20:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 20:35:29 GMT
CMD ["jshell"]
# Fri, 26 Jan 2018 18:22:03 GMT
CMD ["gradle"]
# Fri, 26 Jan 2018 18:22:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 26 Jan 2018 18:22:03 GMT
ENV GRADLE_VERSION=4.5
# Fri, 26 Jan 2018 18:22:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=03f2a43a314ff0fb843a85ef68078e06d181c4549c1e5fb983f289382b59b5e3
# Fri, 26 Jan 2018 18:22:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=03f2a43a314ff0fb843a85ef68078e06d181c4549c1e5fb983f289382b59b5e3
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Fri, 26 Jan 2018 18:22:09 GMT
USER [gradle]
# Fri, 26 Jan 2018 18:22:09 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 26 Jan 2018 18:22:09 GMT
WORKDIR /home/gradle
# Fri, 26 Jan 2018 18:22:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=03f2a43a314ff0fb843a85ef68078e06d181c4549c1e5fb983f289382b59b5e3
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:a8797cd0c76e8b1532d95708a0a38554c89e6fa0cdd856dbede8555225cdea00`  
		Last Modified: Tue, 12 Dec 2017 01:51:30 GMT  
		Size: 48.4 MB (48429060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdce62b256df9c745afac618b5a44d73531cede1a187586e73ed27bd7e1c508`  
		Last Modified: Tue, 12 Dec 2017 08:01:58 GMT  
		Size: 8.6 MB (8636787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93763e33f35c3974631198e261ac389cb564d90b37f0443650ce34fee2dba2`  
		Last Modified: Tue, 12 Dec 2017 08:01:57 GMT  
		Size: 9.0 MB (8973876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb22c778e9128dce650ba952241183b7375138fa397187b7967efef8221039`  
		Last Modified: Tue, 12 Dec 2017 08:02:29 GMT  
		Size: 48.6 MB (48567783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7d6f2e29096cc93e652b48e0f9cbe3c28587efeb67afb05a4a3c95bfd53cbd`  
		Last Modified: Tue, 12 Dec 2017 16:21:06 GMT  
		Size: 894.4 KB (894420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510b7bee64b99e74de5966f902f2d1db3e385091d90b38b7e069bb4fb30c037`  
		Last Modified: Thu, 18 Jan 2018 20:57:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea54f58e087f5c52e39c7b9fa7ebfb2469e582ad558f4fdbb0a2f159c1216237`  
		Last Modified: Thu, 18 Jan 2018 20:57:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a2dbcadaf7292df1244b3c736600ea580697572ec19b71271949a43e363bb2`  
		Last Modified: Thu, 18 Jan 2018 20:57:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a8fe9ce22c225c1719cb3d086442e1a7dfff8193edcbadd430fba861859779`  
		Last Modified: Thu, 18 Jan 2018 20:57:55 GMT  
		Size: 291.2 MB (291246276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee10c35b4c385c358c44b2fadda4c5aab1d3b93849c477281d36ec9784f69f`  
		Last Modified: Fri, 26 Jan 2018 18:56:44 GMT  
		Size: 72.4 MB (72409621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818429bd6ccdcef12a48dfeac4b0c35526fcfd7ee5f3413a0ecac0d8cfd887a`  
		Last Modified: Fri, 26 Jan 2018 18:56:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
