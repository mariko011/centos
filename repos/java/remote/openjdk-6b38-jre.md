## `java:openjdk-6b38-jre`

```console
$ docker pull java@sha256:9ce6e71955a1f66dd986410e6aa5c28c27a3a43fcf919d8aa662b433ea0b7a91
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-6b38-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96961234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e456ca8865c76662bfea030f60ad086584b3cecf2b916d3eb935fbe450a96cf8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:51:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:51:22 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 04:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 04:51:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 20 Sep 2016 04:51:23 GMT
ENV JAVA_VERSION=6b38
# Tue, 20 Sep 2016 04:51:23 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 20 Sep 2016 04:51:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf7ca12c9c63d179d43c669347523664b791c9c37c102f7fcc8c71f13f35e54`  
		Last Modified: Wed, 21 Sep 2016 22:53:31 GMT  
		Size: 359.6 KB (359580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d64770d7ec19783898b19f96b233574583d7150b0d7082af45956f9c00872b`  
		Last Modified: Wed, 21 Sep 2016 22:53:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebd142916efdafb0fbcf185602f205df5511d4c08bed7ac0f4e370a95882c0c`  
		Last Modified: Wed, 21 Sep 2016 22:53:40 GMT  
		Size: 52.7 MB (52655669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
