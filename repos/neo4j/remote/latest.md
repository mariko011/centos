## `neo4j:latest`

```console
$ docker pull neo4j@sha256:4a675163357c0a310d24ee4c0625cf3a9f627a809e017fdd1b6a0cf75f7e965f
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135881008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c9a8422b9fe2b1e092e9f6e042f16ea0f7ab113429a26cff2bc7bc841b7c15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 19:17:32 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 20 Jun 2017 19:17:33 GMT
ENV NEO4J_SHA256=24fd6a704e0d80c4b4f9a3d17ce0db23f258a8cdcfa1eb28d7803b7d1811ee96 NEO4J_TARBALL=neo4j-community-3.2.1-unix.tar.gz
# Tue, 20 Jun 2017 19:17:34 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.1-unix.tar.gz
# Tue, 20 Jun 2017 19:17:35 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 20 Jun 2017 19:17:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 20 Jun 2017 19:17:49 GMT
WORKDIR /var/lib/neo4j
# Tue, 20 Jun 2017 19:17:50 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 19:17:52 GMT
COPY file:4b58674fde5f35ee7b68cae22e9b985fa91c7de85350af95dcdef88ef233c3d6 in /docker-entrypoint.sh 
# Tue, 20 Jun 2017 19:17:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 20 Jun 2017 19:17:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 19:17:55 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6878d92c5920c7c10d39d6b7529d4501247bb3cd41021fcb6d0c9399b7761c8c`  
		Last Modified: Sun, 25 Jun 2017 13:22:47 GMT  
		Size: 1.5 MB (1500980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874062a8e0244fb1f309545d1eb59e98c4c2e2c34ec8579bc22a1e88f4403d64`  
		Last Modified: Sun, 25 Jun 2017 13:22:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7747d1df32cd40f3bd7ea5133d1f8c9111081b1c379ab84ba6c2094e27eb80a`  
		Last Modified: Sun, 25 Jun 2017 13:22:53 GMT  
		Size: 78.1 MB (78106349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3446a0c02f5754f1dee116f3525c3c41ac966f322a00119579ad2a97d8c82edb`  
		Last Modified: Sun, 25 Jun 2017 13:22:45 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
