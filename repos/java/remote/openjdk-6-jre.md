## `java:openjdk-6-jre`

```console
$ docker pull java@sha256:9c546f38bf78bd2f5f249295c734336a556e069b3ded79f2c60d18c85c4f02a1
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-6-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96960390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221434b693531e3eabf36489f8fe7472aeed9984e7322fcfd5e0e3ec2b33fed3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:11:51 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:11:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:11:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Wed, 31 Aug 2016 17:11:53 GMT
ENV JAVA_VERSION=6b38
# Wed, 31 Aug 2016 17:11:53 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 31 Aug 2016 17:12:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d76b29aa6acd88ed31ea6ebf2cc30c1c8e63ffe907db113d7dcaa2d0e4ee323c`  
		Last Modified: Wed, 31 Aug 2016 17:20:47 GMT  
		Size: 359.6 KB (359570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d4d65201f0f14d9a8de669513e89432402169fdd7d1d98cabbd1461bc1cf4c`  
		Last Modified: Wed, 31 Aug 2016 17:20:47 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301ec13d74fc2f954a3d5de4b905ad9d0e49d60436dc7a8ba7e2b44f3510b64f`  
		Last Modified: Wed, 31 Aug 2016 17:21:06 GMT  
		Size: 52.7 MB (52654783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
