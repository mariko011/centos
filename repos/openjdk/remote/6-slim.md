## `openjdk:6-slim`

```console
$ docker pull openjdk@sha256:62ae03287e7d362a8f052cfd70b48e0af87609d07672a816d8c7379e33d54074
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116116071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536a2ba30169a9e304182bea1919413a842b7438c7cecd142ccaef40e058842c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:54 GMT
ADD file:3253a6c4cfa6c8c9ec6f055b1b62d2b417dd859469d3118b6ad79d4ddcbe4338 in / 
# Mon, 24 Jul 2017 16:53:54 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:42 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:00:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:00:44 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:00:44 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 24 Jul 2017 18:00:44 GMT
ENV JAVA_VERSION=6b38
# Mon, 24 Jul 2017 18:00:44 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 24 Jul 2017 18:01:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2c365a611503fa5f298fe9b6998ee6d04e7d57c47037bcb11ba91f5a059df1f8`  
		Last Modified: Mon, 24 Jul 2017 17:01:40 GMT  
		Size: 19.2 MB (19159132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00022639d273d55ea7037342141bb528e02f5cc893d2df9fc21b2f15a506096a`  
		Last Modified: Mon, 24 Jul 2017 18:16:24 GMT  
		Size: 233.4 KB (233397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba97cde4ced17e93b883280c3bbd763ef62966f8f03fd9393dc2d3601098b2da`  
		Last Modified: Mon, 24 Jul 2017 18:16:24 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6b8390fdb7bfb7886c3fc27352831e5f9355ef58b8a0f9c15096b762ff7a9d`  
		Last Modified: Mon, 24 Jul 2017 18:16:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a341db3b7f8d3e5f1feea186398614ee12c3fe81e1b8fd4866d1c20ade0c0684`  
		Last Modified: Mon, 24 Jul 2017 18:16:40 GMT  
		Size: 96.7 MB (96723170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
