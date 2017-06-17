## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:2b5e5bea0a74c7203987170bc7ecacf0fd4d2de935ad6638539d4fc03a523022
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189516136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e43f7e54b052bacb30247041a6bdc75d1d0893b42d0d89ed23d43554f5a94a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:50:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:50:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:50:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:51:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcedf48c0271c15f19b1bc3c410839d05e5ca1ffe1781d720a1d0d5a96c818`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 414.4 KB (414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43230cd6c80ad4fdb0d1937e8ed8d61738b54c13e75124c7233be5359cc81647`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a256618ffaff1da825e3d09c2e4b939012466174be2c29854ebd4e7e51e7506`  
		Last Modified: Wed, 14 Jun 2017 17:44:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65ba17584a2dced9994eebe6115eb75a670e25e6f705645a37edb55b58b4def`  
		Last Modified: Wed, 14 Jun 2017 17:44:29 GMT  
		Size: 106.1 MB (106110398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
