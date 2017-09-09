## `openjdk:7u151-slim`

```console
$ docker pull openjdk@sha256:f21430ad3c363c910212dfbc576d20fb42d39313fa96b568218d8dc6ea79942b
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u151-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148559712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afe05459ce217f92f5a49f114d2138d35b088424e9b3d41a276d47337c7f967`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:52:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:52:16 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:52:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:52:19 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:52:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 08:53:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2407ceaa40e946bd4d5b271cfd98a70515099c84edb8f487ca9d206eb492018`  
		Last Modified: Sat, 09 Sep 2017 00:32:10 GMT  
		Size: 258.7 KB (258702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996de5daf9c740dfb8c9e5d8c6aa328d7ace73799ec80500a92d23f30ba21f4`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93740825f716133a99911ac3b1845baff9e883cc818381e25ca05d441f5a6f`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c409dee4973f39fc1b881b248a45e85009c034e463a7fcf55aa40e2bccffc7`  
		Last Modified: Sat, 09 Sep 2017 00:32:32 GMT  
		Size: 118.2 MB (118187505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
