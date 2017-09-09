## `openjdk:6b38-jre-slim`

```console
$ docker pull openjdk@sha256:1c2095508ab645c5f736b53ea939102f1968e5061c577d2b95337b791ecc628b
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74026307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88cd3c31a5a291075bfea5cf5f1368642b872b96400527dda94f783baead45c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:09:15 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Thu, 07 Sep 2017 23:09:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:43:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:43:01 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:43:03 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:50:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:50:08 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 08:50:09 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 08 Sep 2017 08:50:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9a25b15f285d312795c4c6a6ecaf59bec97644f0633a2c3c351a4f82eab623`  
		Last Modified: Sat, 09 Sep 2017 00:29:07 GMT  
		Size: 233.4 KB (233377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91e7c7b2e04eb5e4bc5174517ddd860c8a67bd16820658e7aa882885f21a577`  
		Last Modified: Sat, 09 Sep 2017 00:29:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd581de150b56dc542dc90c7b509b42f836cd49ecfdcd22a6e42ce97e2118eea`  
		Last Modified: Sat, 09 Sep 2017 00:29:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00173774f8fe2cc2cb1b71b37b64ee99dc4394edca4b4516229873eada64d147`  
		Last Modified: Sat, 09 Sep 2017 00:30:47 GMT  
		Size: 54.6 MB (54633472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
