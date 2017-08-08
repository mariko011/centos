## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:862efa35b265b06f22dd072ad5f869c2aae8e67628e12ac3b8b5e6659e23fd7c
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147711582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0949fc082ef78984f5e478414e3f9aa36ffd3071043c90f1374edfd86aeaaca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:47:46 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 08 Aug 2017 19:00:37 GMT
ENV NEO4J_SHA256=5cb4c30a257a5391dd055f5bca1df49bd9a96eb3200004550e444f01e8f9414b NEO4J_TARBALL=neo4j-enterprise-3.2.3-unix.tar.gz
# Tue, 08 Aug 2017 19:00:37 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.3-unix.tar.gz
# Tue, 08 Aug 2017 19:00:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 08 Aug 2017 19:00:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 08 Aug 2017 19:00:59 GMT
WORKDIR /var/lib/neo4j
# Tue, 08 Aug 2017 19:01:00 GMT
VOLUME [/data]
# Tue, 08 Aug 2017 19:01:00 GMT
COPY file:4b58674fde5f35ee7b68cae22e9b985fa91c7de85350af95dcdef88ef233c3d6 in /docker-entrypoint.sh 
# Tue, 08 Aug 2017 19:01:00 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 08 Aug 2017 19:01:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Aug 2017 19:01:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7953a2197bdd93be60504799d9d3ada41fce843fe25ab316dcee014f6083fe34`  
		Last Modified: Fri, 30 Jun 2017 18:25:28 GMT  
		Size: 1.5 MB (1500989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ace8ad907176808efd0a95f58f25aade182721d7004d0e8ef65c820188a6bdc`  
		Last Modified: Tue, 08 Aug 2017 19:03:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3188e502235f6026011898d8e2dcc305ea8b4d217f6b5369dc95d91f066445a`  
		Last Modified: Tue, 08 Aug 2017 19:03:36 GMT  
		Size: 89.9 MB (89936803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3193e111bb44ef41c67fb32e8ed44814fe49a0b5d9c7b73c407289d1214f4bb`  
		Last Modified: Tue, 08 Aug 2017 19:03:27 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
