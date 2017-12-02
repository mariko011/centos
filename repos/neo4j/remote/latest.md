## `neo4j:latest`

```console
$ docker pull neo4j@sha256:413d093ac3a41f503d437dd2d7626e4d4d4983d7e05545883d1083d660889bbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:6416f2eaa912d086639e3120843fc060b9d15410fa5c736f32a5efa3add8b1b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148556916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40085bacc5c4cdf6d37c5e7b26a181766c120c8acfd16f9011b4bf2b7e7f7f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:17:11 GMT
RUN apk add --no-cache --quiet     bash     curl
# Sat, 02 Dec 2017 00:17:15 GMT
ENV NEO4J_SHA256=dbbc65683d65018c48fc14d82ee7691ca75f8f6ea79823b21291970638de5d88 NEO4J_TARBALL=neo4j-community-3.3.0-unix.tar.gz NEO4J_EDITION=community
# Sat, 02 Dec 2017 00:17:15 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.3.0-unix.tar.gz
# Sat, 02 Dec 2017 00:17:15 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Sat, 02 Dec 2017 00:17:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Sat, 02 Dec 2017 00:17:36 GMT
WORKDIR /var/lib/neo4j
# Sat, 02 Dec 2017 00:17:37 GMT
VOLUME [/data]
# Sat, 02 Dec 2017 00:17:37 GMT
COPY file:a93f088eb06ee578a8970777acef15fb7bcbb0fbdb9888d1402b69c8d04ae44c in /docker-entrypoint.sh 
# Sat, 02 Dec 2017 00:17:37 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Sat, 02 Dec 2017 00:17:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:17:38 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d7e087ba1ea22c0f6627063569b9d7c443e53eb349d0d4be6500478be39f99`  
		Last Modified: Sat, 02 Dec 2017 00:43:00 GMT  
		Size: 1.5 MB (1538750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6862932985fc4e6d57cab35a702746cc76751c2fe822b09cdc3375ec3b6f0fa1`  
		Last Modified: Sat, 02 Dec 2017 00:42:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4686c8d92e795a027c07fd7cdbe5b79774c1a410e1eb4a6f705582ec6234d1`  
		Last Modified: Sat, 02 Dec 2017 00:43:06 GMT  
		Size: 90.7 MB (90737683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcf1d3ac7cb6968ccc70fd59c30ddf6f3283a03153f3723d5d466cf3d9006a9`  
		Last Modified: Sat, 02 Dec 2017 00:42:59 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
