## `neo4j:latest`

```console
$ docker pull neo4j@sha256:8f30c267963de20345cab682472f597e8b37d540fbcd3f84741877c918660ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:8f6e8f82226fe9eb9043395e8b728a473238c67f12d56f6772a73ff445464897
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136000500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f0654b72cc2d39db534cd037b838b8f788c8ddd810b8d87008e4961331774a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 16:37:29 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 13 Sep 2017 16:37:30 GMT
ENV NEO4J_SHA256=65e1de8a025eae4ba42ad3947b7ecbf758a11cf41f266e8e47a83cd93c1d83d2 NEO4J_TARBALL=neo4j-community-3.2.3-unix.tar.gz
# Wed, 13 Sep 2017 16:37:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.3-unix.tar.gz
# Wed, 13 Sep 2017 16:37:30 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 13 Sep 2017 16:38:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 13 Sep 2017 16:38:02 GMT
WORKDIR /var/lib/neo4j
# Wed, 13 Sep 2017 16:38:03 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 16:38:03 GMT
COPY file:4b58674fde5f35ee7b68cae22e9b985fa91c7de85350af95dcdef88ef233c3d6 in /docker-entrypoint.sh 
# Wed, 13 Sep 2017 16:38:03 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 13 Sep 2017 16:38:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 16:38:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d511688cdf9162443a87776421b23c50354a84d60799357fbef7fd7d640c29eb`  
		Last Modified: Wed, 13 Sep 2017 17:04:01 GMT  
		Size: 1.5 MB (1502854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87d8911c2342184f0b08b3f325ebb48ac287f540b181ec5a2c51698b1c58550`  
		Last Modified: Wed, 13 Sep 2017 17:04:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e31cb33fe3ce172d9a2fc74aab7f12f4f0f75e15562671ad275ae810e1ba085`  
		Last Modified: Wed, 13 Sep 2017 17:04:08 GMT  
		Size: 78.2 MB (78222365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d935368498284a15e8f03f38d7549e1cc805de78317562d17f51752ba922820`  
		Last Modified: Wed, 13 Sep 2017 17:04:00 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
