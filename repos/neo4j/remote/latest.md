## `neo4j:latest`

```console
$ docker pull neo4j@sha256:aa05ea4719eeaa69532f80bcf7e4dc2e55168f75af74515dfd75686ed521c0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:61a7f3790a6aec17df210e50fed267f21a38e38318108da1083925700991179f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136837292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba7097e3dfa05eca53566b55ee0bcb295e7744ef3f275e1fdcd28cdb5d4e569`
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
# Thu, 26 Oct 2017 04:56:48 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 26 Oct 2017 04:56:52 GMT
ENV NEO4J_SHA256=2e3854dbd0fe4db1c4fd870f02a90e62eca64ea515cf229b9b9df3509b2aa423 NEO4J_TARBALL=neo4j-community-3.2.5-unix.tar.gz
# Thu, 26 Oct 2017 04:56:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.5-unix.tar.gz
# Thu, 26 Oct 2017 04:56:52 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 26 Oct 2017 04:57:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 26 Oct 2017 04:57:07 GMT
WORKDIR /var/lib/neo4j
# Thu, 26 Oct 2017 04:57:08 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 04:57:08 GMT
COPY file:4b58674fde5f35ee7b68cae22e9b985fa91c7de85350af95dcdef88ef233c3d6 in /docker-entrypoint.sh 
# Thu, 26 Oct 2017 04:57:08 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 26 Oct 2017 04:57:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:57:09 GMT
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
	-	`sha256:894beaf76b0fc01c162c961ccce586b5eb9f862f70cc01666ca1949739a4dc20`  
		Last Modified: Thu, 26 Oct 2017 05:12:12 GMT  
		Size: 1.5 MB (1538725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143dac0179dff964c66a5bfb49d7a6cef88f2d95c146b66809587ebca300aabf`  
		Last Modified: Thu, 26 Oct 2017 05:12:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223f874eddc8756a04f81f3a682a61f8dc91a15ce9c1b2ca7bd5fae87a8fc0db`  
		Last Modified: Thu, 26 Oct 2017 05:12:18 GMT  
		Size: 79.0 MB (79018856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9389851da6906d1ae43aeaacb4e9c3106d6f002c860511f6c4ce3a207736e1`  
		Last Modified: Thu, 26 Oct 2017 05:12:10 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
