## `openjdk:8u131-jre-alpine`

```console
$ docker pull openjdk@sha256:0aab2d3a40b64d68fa3c3fddbe9ac1ac9c9475a51fba8940572d092c510e73a9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56271637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f475d356affc95c36a4c2ab674fdd48e52a017e33c84d1bbb7c3cd2cf15560`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 17:00:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 17:00:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:00:31 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:11:13 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:11:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432e3c96aacd9388d413a926f482ce420e39574fb0aa33c2bcee6d7e15ff0fa3`  
		Last Modified: Sat, 17 Jun 2017 06:29:48 GMT  
		Size: 54.3 MB (54281304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
