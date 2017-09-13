## `gradle:jdk9`

```console
$ docker pull gradle@sha256:d481c5b72b72404c291abfcd8cec4e44f97cfa6ca9a800fbac1c4d672184dda6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:03e43522cf47d8fcb27faf6e86d7367e87d105f17722542a437d7142172c5e7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.8 MB (460799993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deac2d5298b7f819d4f6f708d6a769ff22eb9fcad197cdce09ce7d15ad539a32`
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
# Tue, 12 Sep 2017 18:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:55:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:02 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 13:07:28 GMT
CMD ["gradle"]
# Wed, 13 Sep 2017 13:07:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 13 Sep 2017 13:07:28 GMT
ENV GRADLE_VERSION=4.1
# Wed, 13 Sep 2017 13:07:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
# Wed, 13 Sep 2017 13:07:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache"  	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 13 Sep 2017 13:07:32 GMT
USER [gradle]
# Wed, 13 Sep 2017 13:07:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 13 Sep 2017 13:07:33 GMT
WORKDIR /home/gradle
# Wed, 13 Sep 2017 13:07:36 GMT
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
	-	`sha256:2305ab8ee4e81a6758bde516da3259860d8ff86dd2fa011c3786170f393f7198`  
		Last Modified: Tue, 12 Sep 2017 18:17:57 GMT  
		Size: 47.5 MB (47475639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a689d7088e8d46141eec07655241f60ad46f5f6125c659545491867fdd0f0`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 894.6 KB (894607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e73e79eda4378f42775a531288fec9a3753fe9a2c9e26ffe1f07cd3bbde13dd`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec2a61ba43f47bdea810bc97b3d21d8a02630bd0bdf2df0ac2155d961cc887c`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa295e8159d7f06b7a231a3b61ea2394df0d4d06e4893878985bba5460e6b9`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 279.1 MB (279062975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcb5778dc5d584e06fabefe4c25ad8b68427fa6d2da9b819b126ed84f697366`  
		Last Modified: Wed, 13 Sep 2017 13:12:18 GMT  
		Size: 67.4 MB (67443642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140bc75ba78a72b6c7e07991ac4c42c9de5881debadb4456f4c7fd15f8d1e1e6`  
		Last Modified: Wed, 13 Sep 2017 13:12:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
