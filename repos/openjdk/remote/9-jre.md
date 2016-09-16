## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:6816c0cceae4c21f2dce76581f5aa16026e6f9853c53466165cefc31754f68e0
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191496250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c29121cb1ac17fe20dc626a79ecafef9273a12de004322ffc384e55d9bb0f9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:17:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:17:46 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:17:46 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:17:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:17:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 16 Sep 2016 19:17:47 GMT
ENV JAVA_VERSION=9~b135
# Fri, 16 Sep 2016 19:17:47 GMT
ENV JAVA_DEBIAN_VERSION=9~b135-1
# Fri, 16 Sep 2016 19:18:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de20ee4d9f0c35d61d10bf7778d40247850e90c88be81dbedfe7c3fdd10f3190`  
		Last Modified: Wed, 31 Aug 2016 17:33:15 GMT  
		Size: 559.1 KB (559096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5aabb32ee4719dbbb98f0380423506c07dc0734be9e681b8b896b8d74b4929b`  
		Last Modified: Wed, 31 Aug 2016 17:33:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75442a0024d43ff40da42ae585c14dfb5240ce86a33a83dec6d98e8296389a8c`  
		Last Modified: Wed, 31 Aug 2016 17:33:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067be9fda33ee1313f320288092239f1524e697e5a73451a16761c423a41a1f1`  
		Last Modified: Fri, 16 Sep 2016 19:27:56 GMT  
		Size: 127.9 MB (127934200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
