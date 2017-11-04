## `groovy:jre9`

```console
$ docker pull groovy@sha256:e87c147c38c7d7c3af91ab8b0b324105322f05416ceacda3c47b555387874f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `groovy:jre9` - linux; amd64

```console
$ docker pull groovy@sha256:63b255c248238d2eeb429870450f69d1a6aa128d26899c2267ce9d111f92376e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.3 MB (303272388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1469a8151d6a15993b2bf93c35ec125ee63ed04a0c8f70ce08308328a0e1a5`
-	Default Command: `["groovysh"]`

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
# Sat, 04 Nov 2017 08:21:07 GMT
CMD ["groovysh"]
# Sat, 04 Nov 2017 08:21:07 GMT
ENV GROOVY_HOME=/opt/groovy
# Sat, 04 Nov 2017 08:21:07 GMT
ENV GROOVY_VERSION=2.4.12
# Sat, 04 Nov 2017 08:21:25 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive --force /var/lib/apt/lists/* 		&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in 		"7FAA0F2206DE228F0DB01AD741321490758AAD6F" 		"331224E1D7BE883D16E8A685825C06C827AF6B66" 		"34441E504A937F43EB0DAEF96A65176A0FB1CD0B" 		"9A810E3B766E089FFB27C70F11B595CEDC4AEBB5" 		"81CABC23EECA0790E8989B361FF96E10F0E13706" 	; do 		for server in 			"ha.pool.sks-keyservers.net" 			"hkp://p80.pool.sks-keyservers.net:80" 			"pgp.mit.edu" 		; do 			echo "  Trying ${server}"; 			if gpg --keyserver "${server}" --recv-keys "${key}"; then 				break; 			fi; 		done; 	done; 	if [ $(gpg --list-keys | grep -c "pub ") -ne 5 ]; then 		echo "ERROR: Failed to fetch GPG keys" >&2; 		exit 1; 	fi 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Editing startGroovy to include java.xml.bind module" 	&& sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Symlinking root .groovy to groovy .groovy" 	&& ln -s /home/groovy/.groovy /root/.groovy
# Sat, 04 Nov 2017 08:21:25 GMT
USER [groovy]
# Sat, 04 Nov 2017 08:21:25 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Sat, 04 Nov 2017 08:21:25 GMT
WORKDIR /home/groovy
# Sat, 04 Nov 2017 08:21:28 GMT
RUN set -o errexit -o nounset 	&& echo "Testing Groovy installation" 	&& groovy --version
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
	-	`sha256:0497c20bf717daa5e6b4f69e4fd822ebd49e895367e3d304babd227a93037981`  
		Last Modified: Sat, 04 Nov 2017 08:33:07 GMT  
		Size: 36.9 MB (36899014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b157f4e80b54ac296d04bd4baae0ecb6cd1b8672157e29e9205371f8de8bf9ab`  
		Last Modified: Sat, 04 Nov 2017 08:33:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
