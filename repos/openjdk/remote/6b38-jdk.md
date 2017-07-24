## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:6272c65a69c6fa0a0ef077da87148da374e0bd4ad016f797c6bd5127f9f22f1e
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189510769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7b639b9d98527c6b1e4bc4b51d01cdaf5850563e1aef58dcf75439b86aa106`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:30:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:30:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:59:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:59:49 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 17:59:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 17:59:50 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 17:59:50 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 24 Jul 2017 17:59:50 GMT
ENV JAVA_VERSION=6b38
# Mon, 24 Jul 2017 17:59:51 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 24 Jul 2017 18:00:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d630c0070b4ded910e5fb310f33ed808e3235dc5404c8afc98f82a3c191550`  
		Last Modified: Mon, 24 Jul 2017 17:38:17 GMT  
		Size: 6.9 MB (6948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c4434d7858cac2afc20dc1e6b18dbc5cbe14447df03199e895f53cd59f085b`  
		Last Modified: Mon, 24 Jul 2017 17:38:35 GMT  
		Size: 37.9 MB (37938424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eace5cf6aa322812dd8b75db4e9f6d5817cd7171c2f1a30f008dcdc1891cdb0`  
		Last Modified: Mon, 24 Jul 2017 18:15:36 GMT  
		Size: 414.4 KB (414387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f246cb5d25c8cf79074d0bd95b8b0a1e704e595eb6c7b08bfff17786cdd0f266`  
		Last Modified: Mon, 24 Jul 2017 18:15:35 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ca4eefcd53714a3fc906228bbbfb255934c7a09c2e433e44b9fd61c85ae4d4`  
		Last Modified: Mon, 24 Jul 2017 18:15:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f92b916b0880f1a2807f7d74caa421d6cbb5b2cb3be0dc969da21ad1a47d6b4`  
		Last Modified: Mon, 24 Jul 2017 18:15:59 GMT  
		Size: 106.1 MB (106105355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
