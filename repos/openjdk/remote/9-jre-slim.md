## `openjdk:9-jre-slim`

```console
$ docker pull openjdk@sha256:a0f70bb03cd961ec9e7751904b34926601508e77b29d48a7659bb71c73eaf2c4
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.1 MB (182122497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c072112a7e05054bb25fd61a4275a47d6198e0276227f14ec7a270e56ec0bcf5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:29 GMT
ADD file:67d6d867044fe8762f4481e5d93623a7f18e70e288e0d8275f3837843f38730f in / 
# Mon, 24 Jul 2017 16:52:29 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:13:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:13:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 24 Jul 2017 18:13:32 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:13:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:13:34 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:13:34 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 24 Jul 2017 18:13:34 GMT
ENV JAVA_VERSION=9-b179
# Wed, 26 Jul 2017 06:55:12 GMT
ENV JAVA_DEBIAN_VERSION=9~b179-2
# Wed, 26 Jul 2017 06:58:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:1043e5bfbb3df06449456bb20b50b22dae8e3e8c1cdc5162ef58089c7e28fd57`  
		Last Modified: Mon, 24 Jul 2017 18:26:16 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9f0a77a00e359df1fffd36e83da50d43dd6111c7267ff81c743d37a18e42f0`  
		Last Modified: Mon, 24 Jul 2017 18:26:16 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3904ba51eea7c15eb30e6c45a538985b5355dc5888eebd42b6e0a1d6d168ca`  
		Last Modified: Mon, 24 Jul 2017 18:26:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23d000ced5fc361941ca0eff851433a1492a58afdf35afc4e3f86adae992741`  
		Last Modified: Wed, 26 Jul 2017 07:07:49 GMT  
		Size: 157.0 MB (157038918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
