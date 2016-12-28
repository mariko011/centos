## `neo4j:latest`

```console
$ docker pull neo4j@sha256:bdd42317e486e9865918704c9128a43dc9ce3dc0d55871901fd61cdb3dd38c05
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120805249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087107d031013e9a87c938f32943b9218dc439aa900057b1e4e75f313d39c72e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:21:19 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 27 Dec 2016 22:21:20 GMT
ENV NEO4J_SHA256=47317a5a60f72de3d1b4fae4693b5f15514838ff3650bf8f2a965d3ba117dfc2
# Tue, 27 Dec 2016 22:21:20 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.0-unix.tar.gz
# Tue, 27 Dec 2016 22:21:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
# Tue, 27 Dec 2016 22:21:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 27 Dec 2016 22:21:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 27 Dec 2016 22:21:40 GMT
WORKDIR /var/lib/neo4j
# Tue, 27 Dec 2016 22:21:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 27 Dec 2016 22:21:42 GMT
VOLUME [/data]
# Tue, 27 Dec 2016 22:21:54 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Tue, 27 Dec 2016 22:21:55 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 27 Dec 2016 22:21:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:21:56 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97825d23288af99b02c4194ef308b44e8040eacf91d299e5f2c6eaf0b1f0a0c6`  
		Last Modified: Tue, 27 Dec 2016 22:57:48 GMT  
		Size: 1.5 MB (1455343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a008cdb8cffe6d96456c1edce417736162d618158da05e55858b605a239f84f`  
		Last Modified: Tue, 27 Dec 2016 22:57:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b1d36d5ace21cbd733b0cc0259613439d6684e24126ac1a26025bc1900dc89`  
		Last Modified: Tue, 27 Dec 2016 22:58:30 GMT  
		Size: 77.4 MB (77364833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dc0b63ff176c8c5ee6d3189b90dad95b31e3980399530de7255606158c866d`  
		Last Modified: Tue, 27 Dec 2016 22:57:48 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0ac75d7c40b455a79e136027e8289f30abb707c4ff78b7bc2405f5670fd82b`  
		Last Modified: Tue, 27 Dec 2016 22:57:48 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
