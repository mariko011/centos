## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:92e35e23cc10146ff0d65a3e499e7707c0fbda11fdec55e5ddddf6bcf9a6baf6
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145247257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8bb1f124f8989f778a1b053412133d821f2480a68bd65ad7968cef061ac0e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_SHA256=b784a61228bdc31cbc843009e4d36d3e2aee7662f8b40bd608b8759de26b77d5
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:46 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:47 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:24:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:24:06 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:24:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:24:08 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:24:09 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:24:09 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:24:10 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82f9057d904217b7e4feb62263ba340f069821cc8cb3dd58b9e9889cc3b601`  
		Last Modified: Wed, 29 Mar 2017 17:25:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a7d6314c370a0783be7d83d91bf44b44e70af75a1c240becb97fc1911cb82b`  
		Last Modified: Wed, 29 Mar 2017 17:26:02 GMT  
		Size: 88.1 MB (88072322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5aab06ae30a1e2eca2fa792e64afebcfcf6aa1a424654d6d879e91a7d1c270`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc1ef4827ecbe83e12262ce198a843ef8807d1d2fa2a0161ec5f44619ca508`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
