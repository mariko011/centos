## `openjdk:6b38-jdk-slim`

```console
$ docker pull openjdk@sha256:cabd11c08ff59ec7738748605becf28756e7180667bd2653b3f07b1c4173372f
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116116251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f930b67f9306ea4be7ebadcfee331ae11192bba42d73ed1abd72785789f65473`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:31:15 GMT
ADD file:99d706a1b056666b3cfadb00ebc3fe2bef3f3790d09a14a8a4f349c652aa98b1 in / 
# Tue, 20 Jun 2017 20:31:16 GMT
CMD ["bash"]
# Fri, 21 Jul 2017 21:57:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 21:57:24 GMT
ENV LANG=C.UTF-8
# Fri, 21 Jul 2017 21:57:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Jul 2017 21:57:38 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 21 Jul 2017 21:57:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 21 Jul 2017 21:57:39 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Jul 2017 21:57:48 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Jul 2017 21:58:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e905db3f7c950542ae57979a09389fae88fbe10a10d30f30928c3e7d177bf051`  
		Last Modified: Tue, 20 Jun 2017 21:07:00 GMT  
		Size: 19.2 MB (19159206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a20d66831940f26ecdc901d463a48e2d1a31c38e2bc5de815033762c04a2901`  
		Last Modified: Fri, 21 Jul 2017 22:19:10 GMT  
		Size: 233.4 KB (233410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab460fc329ae3106d4321c11b5b35f498884fcba931602b35ac2a3a694393fd9`  
		Last Modified: Fri, 21 Jul 2017 22:19:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b0d06379b6b3619a71e2831fd6472f9766f2cf4e818d6c67002eb06046cfca`  
		Last Modified: Fri, 21 Jul 2017 22:19:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5e7f9ad6efca63b7e498ae976efab6f8cb48809e0417c34883577e35f253f1`  
		Last Modified: Fri, 21 Jul 2017 22:19:30 GMT  
		Size: 96.7 MB (96723263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
