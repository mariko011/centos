## `neo4j:latest`

```console
$ docker pull neo4j@sha256:700096275de90e91031326c1a8a77bd9a13e134c75d00c20fda8bbf49d88f28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:175cd8f75cba66faf58e56d7ad0b351e2ba7d8b8920dd1a68223f59c0e0b57e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (136973665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744edb4de518c48adddec252b0668f11d39f933abb53fe912f5b429bb14dca7f`
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
# Tue, 31 Oct 2017 23:40:49 GMT
ENV NEO4J_SHA256=6d68363595c9288dc734301de6d8f935b7a0febcb59b88ff77676b95cd0a8950 NEO4J_TARBALL=neo4j-community-3.2.6-unix.tar.gz
# Tue, 31 Oct 2017 23:40:49 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.6-unix.tar.gz
# Tue, 31 Oct 2017 23:40:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 31 Oct 2017 23:41:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 31 Oct 2017 23:41:04 GMT
WORKDIR /var/lib/neo4j
# Tue, 31 Oct 2017 23:41:04 GMT
VOLUME [/data]
# Tue, 31 Oct 2017 23:41:04 GMT
COPY file:4b58674fde5f35ee7b68cae22e9b985fa91c7de85350af95dcdef88ef233c3d6 in /docker-entrypoint.sh 
# Tue, 31 Oct 2017 23:41:05 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 31 Oct 2017 23:41:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 31 Oct 2017 23:41:05 GMT
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
	-	`sha256:b5ed0943e7032ad37fab5f480031676f35f21c7cda8fcb72fc7d47bca63cb733`  
		Last Modified: Wed, 01 Nov 2017 00:00:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd9aef6a3634d1171b3b9c34e02895b127572c8d170d8b56d8936c22ee96c0f`  
		Last Modified: Wed, 01 Nov 2017 00:00:09 GMT  
		Size: 79.2 MB (79155229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449a8331384698fc471c04015009d92c21bc050a1ec676e09ab0d7619f1ba093`  
		Last Modified: Wed, 01 Nov 2017 00:00:03 GMT  
		Size: 1.7 KB (1729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
