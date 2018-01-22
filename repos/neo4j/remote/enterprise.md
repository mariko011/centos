## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:e51480bf1024891f12d49c3a7d883630afdabcab7b2ac6906b64a8d8f8d264ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:df7209cdbfaca76df9bec679e9cbbab82451d0b36bade0228dcf32e415434d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162533762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a87d9b40341f6ad144de982a74ca4f127f20685ae240cf4369e34fbd6042da1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:41:39 GMT
RUN apk add --no-cache --quiet     bash     curl
# Mon, 22 Jan 2018 21:49:33 GMT
ENV NEO4J_SHA256=a35b8ce8dce60e00e7e0264a803dd6f181a2a0e916b53e1581de5d6149ca451d NEO4J_TARBALL=neo4j-enterprise-3.3.2-unix.tar.gz NEO4J_EDITION=enterprise
# Mon, 22 Jan 2018 21:49:34 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.2-unix.tar.gz
# Mon, 22 Jan 2018 21:49:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Mon, 22 Jan 2018 21:50:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Mon, 22 Jan 2018 21:50:12 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 22 Jan 2018 21:50:13 GMT
WORKDIR /var/lib/neo4j
# Mon, 22 Jan 2018 21:50:13 GMT
VOLUME [/data]
# Mon, 22 Jan 2018 21:50:13 GMT
COPY file:b1f08b121281604fe08edf206463959271aee1f21c800af2c0f2a52d70db0f3e in /docker-entrypoint.sh 
# Mon, 22 Jan 2018 21:50:14 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Mon, 22 Jan 2018 21:50:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 22 Jan 2018 21:50:15 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58d533cf95026ab735f3e7683b1c3ed8fcb49358044c179adf20595beb7ba71`  
		Last Modified: Wed, 10 Jan 2018 09:29:33 GMT  
		Size: 1.7 MB (1689224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29dfa9541479b9eba3deb3ec4cb8d73f465b6de34c3ecbc8f6f05127d2853c`  
		Last Modified: Mon, 22 Jan 2018 21:52:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a10c5fa87819131b110071d0d302ed7bf7400aaa3f4b5425577dbb4ca930df7`  
		Last Modified: Mon, 22 Jan 2018 21:52:37 GMT  
		Size: 104.3 MB (104322411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472173764a4d4ce04cc581ffdca7c88971ad1f3ce8da3919ccfd13921c8276b5`  
		Last Modified: Mon, 22 Jan 2018 21:52:33 GMT  
		Size: 2.3 KB (2276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
