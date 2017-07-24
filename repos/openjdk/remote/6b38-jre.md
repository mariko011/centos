## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:0a6e02e4bdf9cf495d3ac8497ac98a200c22f003ea37b60065adfc09f977055b
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98549392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e63902950bf0f2f3b80d808700a1086ae8dcdf414a50c1aa710b05c914bce00`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:30:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:01:40 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:01:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:01:42 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:01:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 24 Jul 2017 18:01:42 GMT
ENV JAVA_VERSION=6b38
# Mon, 24 Jul 2017 18:01:42 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 24 Jul 2017 18:01:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d630c0070b4ded910e5fb310f33ed808e3235dc5404c8afc98f82a3c191550`  
		Last Modified: Mon, 24 Jul 2017 17:38:17 GMT  
		Size: 6.9 MB (6948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa5c75075da24c87b7d7885c9da2a16c2de7eaa9a019ac8ed07ac7141ced5a1`  
		Last Modified: Mon, 24 Jul 2017 18:17:02 GMT  
		Size: 360.7 KB (360666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e628493ddf17cb761e595dae8ea40ad2299a69895d6094c9e075ebb4aa861512`  
		Last Modified: Mon, 24 Jul 2017 18:17:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de4bb750f2c0dc6117853c64029e9719530cfe82302d5134e858fdda6f2c0af`  
		Last Modified: Mon, 24 Jul 2017 18:17:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3650684b6dc7343f28af5e9900b0013278e033ee37e1b497465975e6c50d184a`  
		Last Modified: Mon, 24 Jul 2017 18:17:13 GMT  
		Size: 53.1 MB (53136122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
