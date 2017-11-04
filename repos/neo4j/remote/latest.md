## `neo4j:latest`

```console
$ docker pull neo4j@sha256:72928483341ef61201fb6cb39c74399f780ee626566f01007de6cd2d713b85db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:5a18653c8cff51785eb59940a73e06e047834d7e532904d207d444889165df9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148556635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c7a5b3b30f14ec84bcc19ec62ee22e1b872bd700f1cd9bce3a3fb4b341674c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 03:08:45 GMT
RUN apk add --no-cache --quiet     bash     curl
# Sat, 04 Nov 2017 03:08:46 GMT
ENV NEO4J_SHA256=dbbc65683d65018c48fc14d82ee7691ca75f8f6ea79823b21291970638de5d88 NEO4J_TARBALL=neo4j-community-3.3.0-unix.tar.gz NEO4J_EDITION=community
# Sat, 04 Nov 2017 03:08:46 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.3.0-unix.tar.gz
# Sat, 04 Nov 2017 03:08:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Sat, 04 Nov 2017 03:09:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Sat, 04 Nov 2017 03:09:07 GMT
WORKDIR /var/lib/neo4j
# Sat, 04 Nov 2017 03:09:07 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 03:09:07 GMT
COPY file:a93f088eb06ee578a8970777acef15fb7bcbb0fbdb9888d1402b69c8d04ae44c in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 03:09:08 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Sat, 04 Nov 2017 03:09:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 03:09:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4119c151628020153f02f5b36afaa14aacc1e6f9990dbe535fe0d4df6a8a1835`  
		Last Modified: Sat, 04 Nov 2017 03:48:09 GMT  
		Size: 1.5 MB (1538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58d6db69f910268b18308eddf24d3932015ae51b9cffe32cba96b891df3b668`  
		Last Modified: Sat, 04 Nov 2017 03:48:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c868f223d81765053d8fc54251d0384de770a1e238e2341054c6001bed44ef83`  
		Last Modified: Sat, 04 Nov 2017 03:48:15 GMT  
		Size: 90.7 MB (90737712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97061b70765c4117f694ddf75067a8fc2117ae293e52eb91860e4e0f68f1355`  
		Last Modified: Sat, 04 Nov 2017 03:48:08 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
