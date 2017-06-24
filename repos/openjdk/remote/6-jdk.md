## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:2887053bffc1d85b0e177753b3c38a205d3e80d7f96f5e2ae9b5bf0afc893521
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189509772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082a6c5cab28e237ea2127a1a580c4f4e613eef48b351e7455779d86ae93a403`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:06:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:50:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:50:11 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 01:50:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 01:50:15 GMT
ENV JAVA_VERSION=6b38
# Fri, 23 Jun 2017 01:50:16 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 23 Jun 2017 01:50:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa838faeb7f25579c1ddf0f6d835598d148c6835aab540efa901d140b9e4b39`  
		Last Modified: Wed, 21 Jun 2017 01:05:10 GMT  
		Size: 37.9 MB (37937419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590616b925a805d3dd94f1acf68753c04decd6c792dc523aa1d12be996f2b198`  
		Last Modified: Sat, 24 Jun 2017 16:51:26 GMT  
		Size: 414.4 KB (414412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bec60a9da1796c0151e9c6853f06d84ecf5557713fad3d2f4ebf228303fcff2`  
		Last Modified: Sat, 24 Jun 2017 16:51:26 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6588eacbe8079e33b8a6213493d1c80458dbc9b70e1bc7f3bf54414868b5ad`  
		Last Modified: Sat, 24 Jun 2017 16:51:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4576b7cd51c6f6b989fc68f61ac7d96661a61c5febbb2cecf4141b178afebe3c`  
		Last Modified: Sat, 24 Jun 2017 16:51:43 GMT  
		Size: 106.1 MB (106105161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
