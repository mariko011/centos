## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:a33cd61542c1daf3b47587527e8f1ac82843b48ace91502fea90332c1f0b2228
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187041688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304c91926aa63536cb0aa76f701a62d4df7565ce6cfbc27047b4740768d03b6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:10:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:10:45 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:10:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:10:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Wed, 31 Aug 2016 17:10:47 GMT
ENV JAVA_VERSION=6b38
# Wed, 31 Aug 2016 17:10:47 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 31 Aug 2016 17:11:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f19b94d438323dd33dd2e902b4ceae6d1f81091024822846a885450cd38671`  
		Last Modified: Wed, 31 Aug 2016 17:19:06 GMT  
		Size: 413.0 KB (412994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb31060da27fc886be1a35050477effc91528af04d7b2ac42f4cec572fb0f04`  
		Last Modified: Wed, 31 Aug 2016 17:19:07 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f04b81515bd1b96d528d8df41b94a97f0fe102158e294aae0e14005fffb249`  
		Last Modified: Wed, 31 Aug 2016 17:19:38 GMT  
		Size: 105.3 MB (105318085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
