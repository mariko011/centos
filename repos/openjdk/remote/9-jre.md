## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:ba763720e30c8da41e835fb35d4ee91e4032d0d461131313a89d3f5c79f8d756
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195283300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96246b4b05b7ba77a38612bd8dd90368e836dd8535e9ed2208e6f29547b76c7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:41:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:41:45 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:41:45 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:41:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 10 Oct 2016 23:14:41 GMT
ENV JAVA_VERSION=9~b139
# Mon, 10 Oct 2016 23:14:41 GMT
ENV JAVA_DEBIAN_VERSION=9~b139-1
# Mon, 10 Oct 2016 23:15:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0830056fe15f38afce8b173005bb2f7f0dfa6dfc85529cbdddcc3b28de638c8`  
		Last Modified: Fri, 23 Sep 2016 19:42:13 GMT  
		Size: 558.3 KB (558343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf85a6d45fb1fc04e5797a084cbb8a32b57b2e661109ec88dbb3753ba565a3b`  
		Last Modified: Fri, 23 Sep 2016 19:42:14 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f02ca0c3c8af861971d9c35885462ba3919c84604941d4a8aed3a9d294c67d`  
		Last Modified: Fri, 23 Sep 2016 19:42:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d4658ebfcf3e5df16607e9bc5dcc8889ec521b90dd8308b5b803759ae37ad`  
		Last Modified: Mon, 10 Oct 2016 23:27:59 GMT  
		Size: 131.0 MB (131015887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
