## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:a930d42513c3f1e8c9eedbfa4f1c8ed2a5e0861037f54bdc40eb72a4a4ad6085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:f57527a62dacf8a275def6adebf49789965b59a0553fb075d9a6d110a2dc8aed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162021825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649fbcd9929ac646459800bfd6ef8db72a667a8de2aa32cf623cd936debf5bbc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:58:17 GMT
RUN apk add --no-cache --quiet     bash     curl
# Sat, 04 Nov 2017 16:58:54 GMT
ENV NEO4J_SHA256=62914134ce50cbb251bb70ef9311516808c5278412aade1a13c03239a0c18214 NEO4J_TARBALL=neo4j-enterprise-3.3.0-unix.tar.gz NEO4J_EDITION=enterprise
# Sat, 04 Nov 2017 16:58:54 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.0-unix.tar.gz
# Sat, 04 Nov 2017 16:58:54 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Sat, 04 Nov 2017 16:59:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Sat, 04 Nov 2017 16:59:12 GMT
WORKDIR /var/lib/neo4j
# Sat, 04 Nov 2017 16:59:12 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 16:59:12 GMT
COPY file:a93f088eb06ee578a8970777acef15fb7bcbb0fbdb9888d1402b69c8d04ae44c in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 16:59:13 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Sat, 04 Nov 2017 16:59:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:59:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f120ec54821161678d10e37bda975ac629dfe12dbf9f263d285aac9ec036e06a`  
		Last Modified: Sat, 04 Nov 2017 17:59:36 GMT  
		Size: 1.5 MB (1538728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85549130f54252cb8878a640994c00275191c098c51524ee8f8fb764109381b4`  
		Last Modified: Sat, 04 Nov 2017 18:01:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee938fbdae0ad14eec09e0bd4706f3a43720d9cf6455bd2b6e168810286f16b1`  
		Last Modified: Sat, 04 Nov 2017 18:02:00 GMT  
		Size: 104.2 MB (104202703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b26f5bcfc504040d87ee5555cebc61e581bb181453d854c19e7b6a7a8f607a`  
		Last Modified: Sat, 04 Nov 2017 18:01:52 GMT  
		Size: 2.2 KB (2207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
