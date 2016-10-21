## `java:openjdk-6b38`

```console
$ docker pull java@sha256:472658e24d9a5480199047bcbf854a4eb16aa2d4af80c27fa417255a14e85c74
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-6b38` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187064973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3baacbfebf190b37bfb774c2d42ea4701b983b7a337c203e8361d30e3d7140a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:39:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:03:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:04:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdd795dcc65ffd51af821a9dc9542376781af0feeb7e66d11fc5aaad7abdd`  
		Last Modified: Fri, 21 Oct 2016 16:39:37 GMT  
		Size: 37.4 MB (37366571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fee12dc33145112e11c33675111627075b84c8dbb44852f6ee7ac72105ba8`  
		Last Modified: Fri, 21 Oct 2016 20:04:21 GMT  
		Size: 413.0 KB (412996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695ef2897d0bd9ae88bed672e0f82db89b0bcaf19a0e6726f9514f38bc95daeb`  
		Last Modified: Fri, 21 Oct 2016 20:04:20 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a81bddc7d1580ccf60384b87b253e4ed1bb9275818dbd6df80119a694dada1f`  
		Last Modified: Fri, 21 Oct 2016 20:04:37 GMT  
		Size: 105.3 MB (105321505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
