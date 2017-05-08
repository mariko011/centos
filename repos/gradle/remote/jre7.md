## `gradle:jre7`

```console
$ docker pull gradle@sha256:5210b751273638567bed5a563f3d0c64bd0787a7f4e98f5f5ad2271f0923fc46
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224112376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6e1c44b5f3861cd56b6bcaf6bf2d93d72a32f953e39a753ec2a03b01337ed5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:25:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:25:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:25:51 GMT
ENV JAVA_VERSION=7u121
# Fri, 05 May 2017 22:25:51 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Fri, 05 May 2017 22:26:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:21:14 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:15 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:21 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:22 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:22 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d90b85561c69cb0635861c193e821821b6a406d523180d11d660b92761b12f`  
		Last Modified: Fri, 05 May 2017 22:51:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53610c8d65fccd69d9479b8315c62cd3eb1747e8c750038f720add31688eded`  
		Last Modified: Fri, 05 May 2017 22:51:55 GMT  
		Size: 78.4 MB (78411200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6d08f6cce9db146546dbc69977cac08bcce73da06ef0d2093dce87feb40b30`  
		Last Modified: Mon, 08 May 2017 21:29:56 GMT  
		Size: 73.3 MB (73310449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3947daa52cc7841c95bb2c4b3ab718b765c0250aa829ecd2bc61588923997f54`  
		Last Modified: Mon, 08 May 2017 21:29:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
