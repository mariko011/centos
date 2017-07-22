## `gradle:jre8`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
