## `openjdk:9-slim`

```console
$ docker pull openjdk@sha256:b460d8d06545f4c9737305b2e0a6b0e9baee0cfff822f2a70d3baf0415d026d6
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181482692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62887126636afb7848f143cb2a9bf166e2f6c92e5bf203edd5843b8b81dcd923`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:29 GMT
ADD file:67d6d867044fe8762f4481e5d93623a7f18e70e288e0d8275f3837843f38730f in / 
# Mon, 24 Jul 2017 16:52:29 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:13:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Aug 2017 21:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 21:05:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 21:05:55 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 21:05:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 21:05:56 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 21:05:56 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 25 Aug 2017 21:06:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Aug 2017 21:06:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c2bd460716cd6c882cdab8e5b2ac816fca76677d5fdf3e39ea331a21056e10c5`  
		Last Modified: Mon, 24 Jul 2017 16:58:24 GMT  
		Size: 24.8 MB (24812327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5e8670accb5e983c700ed7977b31893be56dbcb8e363634f0bad9c92c45abd`  
		Last Modified: Mon, 24 Jul 2017 18:26:16 GMT  
		Size: 270.7 KB (270665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6f13df93d97b0df3a9ae5c666a0aca65b35f9b3af7c1238f591821e476cd41`  
		Last Modified: Fri, 25 Aug 2017 21:14:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ac778f47b75eb59d646f126b2dbe26fa42154d5e83bf8335001e89053c6bd`  
		Last Modified: Fri, 25 Aug 2017 21:14:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad6d46e830a457004ec093834aa13bca605f10217a649b967f1e15598745b73`  
		Last Modified: Fri, 25 Aug 2017 21:14:26 GMT  
		Size: 156.4 MB (156399328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
