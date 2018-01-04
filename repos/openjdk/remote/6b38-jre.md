## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:698c97f25defafcd12aa0f0bbbb83451c5b0f568fec81e56938d26bfc215f430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:e69f6540ab037faf368f86f06d1ece7261666895746f911557fa8bbbd31398f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.8 MB (139776305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9069b6805935fa05c1bc1170778fc155cd9450d8639a59da54e38e911593b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:04 GMT
ADD file:281b987b09ac9b71793de5201331461636a08ec23af27a9e11a14484018993dd in / 
# Tue, 12 Dec 2017 01:46:04 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:56:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:56:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:01:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:01:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:01:47 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:01:48 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 15:01:48 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:01:48 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:02:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:762ae076e9a326e4eac3b3db9e3afe4b6dc930ec52dbb2aa27a300d1323a52b6`  
		Last Modified: Tue, 12 Dec 2017 01:59:44 GMT  
		Size: 38.1 MB (38109825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23de19d3f13a2be7ebc7920f3ba4c5b85177a11b50a1ade92d360c09aa349bf1`  
		Last Modified: Tue, 12 Dec 2017 08:06:02 GMT  
		Size: 7.0 MB (6950248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88eb6f7cbbff330da5be9ecbc972f6fc7cadec02022be4cca397fc000f60d469`  
		Last Modified: Tue, 12 Dec 2017 15:45:53 GMT  
		Size: 548.7 KB (548727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a068071674de62beaa2da19128e497fc2e22b754a4a343ac9e286bcb94c02e3`  
		Last Modified: Tue, 12 Dec 2017 15:45:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eee10f8e2e50d042ab6a5290cf314d494dd98898f784f39847dd8505176873`  
		Last Modified: Tue, 12 Dec 2017 15:45:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53360b376d7ff6ee4f30dcca65c633060527a63de1dc033c4f3550a7fc388b7`  
		Last Modified: Tue, 12 Dec 2017 15:46:17 GMT  
		Size: 94.2 MB (94167128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
