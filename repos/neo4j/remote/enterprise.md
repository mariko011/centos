## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:ce9b106ad3cf37e1f29869f80975020c77c2a46a53d361eeb46891aeddcada9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:e3ae336de5b6e6752b418cd116fb436c58d3779539fb2c811443967d291f3d68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162021660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92467409b5508f256b9a87f569e99521036a861b8c2ef525740018cb8ffb088`
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
# Thu, 02 Nov 2017 01:15:01 GMT
ENV NEO4J_SHA256=62914134ce50cbb251bb70ef9311516808c5278412aade1a13c03239a0c18214 NEO4J_TARBALL=neo4j-enterprise-3.3.0-unix.tar.gz NEO4J_EDITION=enterprise
# Thu, 02 Nov 2017 01:15:01 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.0-unix.tar.gz
# Thu, 02 Nov 2017 01:15:01 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 02 Nov 2017 01:15:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 02 Nov 2017 01:15:19 GMT
WORKDIR /var/lib/neo4j
# Thu, 02 Nov 2017 01:15:19 GMT
VOLUME [/data]
# Thu, 02 Nov 2017 01:15:19 GMT
COPY file:a93f088eb06ee578a8970777acef15fb7bcbb0fbdb9888d1402b69c8d04ae44c in /docker-entrypoint.sh 
# Thu, 02 Nov 2017 01:15:20 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 02 Nov 2017 01:15:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Nov 2017 01:15:20 GMT
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
	-	`sha256:817cf1bd3b4a14f50e9dccb7f3bf533ac761cd08aa71a131787eadc405f85ace`  
		Last Modified: Thu, 02 Nov 2017 01:17:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51a166a0ce7cff4500309b2197bad9d4bc5e0427eaf0e27537bb2fc5e5e6e03`  
		Last Modified: Thu, 02 Nov 2017 01:17:39 GMT  
		Size: 104.2 MB (104202746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f741cce01056aa18fb7f3b1718cabef4656b545faadce3f991eecee1ca39bfa`  
		Last Modified: Thu, 02 Nov 2017 01:17:31 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
