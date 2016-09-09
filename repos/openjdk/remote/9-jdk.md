## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:02386f7ebb943c28957aebe158a93bffdb4573c93fd0c1d2a1d387dc799dfe2c
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239334419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267b3e7ae0bf2d9fda2b69023f71667fe70a5112bb42f55bfde363284dd6e2cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 07 Sep 2016 18:07:55 GMT
ENV JAVA_VERSION=9~b134
# Wed, 07 Sep 2016 18:07:55 GMT
ENV JAVA_DEBIAN_VERSION=9~b134-2
# Wed, 07 Sep 2016 18:08:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914b3ea7d9fdb6f8df63715e00426d6036c7086bd4ae6c42c197bdbc17681a79`  
		Last Modified: Wed, 07 Sep 2016 18:16:52 GMT  
		Size: 127.6 MB (127649835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
