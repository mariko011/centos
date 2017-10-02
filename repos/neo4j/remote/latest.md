## `neo4j:latest`

```console
$ docker pull neo4j@sha256:da613af1d807734cbdbbce473cf60aef0043a9393ab7763837b57053596f9f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:bb50258b8cb25ff3f06b836022b418243b3f15bbe869861d8b9854600a4990b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136796362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb244f32234e5db6936c52f29dc9932fdbfb688969f6caca4d566f1c993d4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:36:37 GMT
RUN apk add --no-cache --quiet     bash     curl
# Mon, 02 Oct 2017 19:37:35 GMT
ENV NEO4J_SHA256=2e3854dbd0fe4db1c4fd870f02a90e62eca64ea515cf229b9b9df3509b2aa423 NEO4J_TARBALL=neo4j-community-3.2.5-unix.tar.gz
# Mon, 02 Oct 2017 19:37:35 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.5-unix.tar.gz
# Mon, 02 Oct 2017 19:37:35 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Mon, 02 Oct 2017 19:37:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Mon, 02 Oct 2017 19:37:49 GMT
WORKDIR /var/lib/neo4j
# Mon, 02 Oct 2017 19:37:50 GMT
VOLUME [/data]
# Mon, 02 Oct 2017 19:37:50 GMT
COPY file:4b58674fde5f35ee7b68cae22e9b985fa91c7de85350af95dcdef88ef233c3d6 in /docker-entrypoint.sh 
# Mon, 02 Oct 2017 19:37:50 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Mon, 02 Oct 2017 19:37:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Oct 2017 19:37:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b189c09a59eeeb11786015dce1bcc14e98169832e842939bd02057974ab0a7c`  
		Last Modified: Thu, 14 Sep 2017 07:06:56 GMT  
		Size: 1.5 MB (1502861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d0293957dab3751ac4d49c185c8181a359ddf1ddc3437f9c0c052da2dd4d2d`  
		Last Modified: Mon, 02 Oct 2017 19:39:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77827d12bff485c1c3065406b9e1bec2315a3fe85d9e986cd3aaa17b72aaa4b5`  
		Last Modified: Mon, 02 Oct 2017 19:39:41 GMT  
		Size: 79.0 MB (79018098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e332506dd94f055ea58109b8daa28b52689d6be8b35988aebb85803dde0f155f`  
		Last Modified: Mon, 02 Oct 2017 19:39:29 GMT  
		Size: 1.7 KB (1730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
