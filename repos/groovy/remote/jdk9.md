## `groovy:jdk9`

```console
$ docker pull groovy@sha256:d0d746e6443bacd0b9539e06a29fbe371f2e2b2acfa8d5951ec8addc875fbdcd
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.2 MB (297154083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9f6c8a665ff7bd14a9a52a0b505abeea2dba7d9b05ec56b85757d9652a37556`
-	Default Command: `["groovysh"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:51:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:51:45 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 21 Mar 2017 22:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:51:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:51:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 21 Mar 2017 22:51:48 GMT
ENV JAVA_VERSION=9~b161
# Tue, 21 Mar 2017 22:51:49 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 21 Mar 2017 22:52:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 22 Mar 2017 21:11:49 GMT
CMD ["groovysh"]
# Wed, 22 Mar 2017 21:11:50 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 22 Mar 2017 21:11:50 GMT
ENV GROOVY_VERSION=2.4.10
# Wed, 22 Mar 2017 21:12:15 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive /var/lib/apt/lists/* 		&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in 		"0x41321490758AAD6F" 		"0x825C06C827AF6B66" 		"0x6A65176A0FB1CD0B" 	; do 		for server in 			ha.pool.sks-keyservers.net 			hkp://p80.pool.sks-keyservers.net:80 			pgp.mit.edu 		; do 			echo "  Trying ${server}"; 			if gpg --keyserver "${server}" --recv-keys "${key}"; then 				break; 			fi; 		done; 	done; 	if [ $(gpg --list-keys | grep -c "pub ") -ne 3 ]; then 		echo "ERROR: Failed to fetch GPG keys" >&2; 		exit 1; 	fi 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Applying workaround for https://github.com/docker-library/openjdk/issues/101" 	&& bash -c '([[ ! -d $JAVA_SECURITY_DIR ]] && ln -s $JAVA_HOME/lib $JAVA_HOME/conf) || (echo "Found java conf dir, package has been fixed, remove this hack"; exit -1)'
# Wed, 22 Mar 2017 21:12:16 GMT
USER [groovy]
# Wed, 22 Mar 2017 21:12:16 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 22 Mar 2017 21:12:16 GMT
WORKDIR /home/groovy
# Wed, 22 Mar 2017 21:12:20 GMT
RUN set -o errexit -o nounset 	&& echo "Testing Groovy installation" 	&& groovy --version
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fbfa5a51b31a9bd473e3d51a02d9d26c6e3681624b5fe0526e3de7ba6b7eac`  
		Last Modified: Tue, 21 Mar 2017 20:03:47 GMT  
		Size: 40.0 MB (40049369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c6d4dcde8a91252c5b59911856b40fa393f5c43555bb0ec30d0266373be7a8`  
		Last Modified: Thu, 23 Mar 2017 18:55:44 GMT  
		Size: 651.8 KB (651843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056b597bb0447460e5a3f9229e907f4519974fd1cafa3d2306d1ead4c1d61ef3`  
		Last Modified: Thu, 23 Mar 2017 18:55:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb44b26812eae902f12ad6e045bf43b2714ac28b5d6ad67cc65fb3861675132`  
		Last Modified: Thu, 23 Mar 2017 18:55:41 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93808fe9b2f98daceb36fd746d8ade3035e65cbb172b8a0e512425866ec3435`  
		Last Modified: Thu, 23 Mar 2017 18:56:07 GMT  
		Size: 154.5 MB (154476439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197b46a77bf94abd62190ff774dc8b436422427f2576f3cb14c490422405eab8`  
		Last Modified: Fri, 24 Mar 2017 02:07:33 GMT  
		Size: 36.6 MB (36556528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69af147f77c2b55e60a9b9b6d3d3877ef8962d3b1f1e8bbd4e871a066153c2b9`  
		Last Modified: Fri, 24 Mar 2017 02:07:29 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
