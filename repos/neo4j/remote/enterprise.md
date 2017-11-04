## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:61bb652e24662b9682589479b7bc79063f0da1961bb99422c3f0a4b944d56a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:7286bfccaa404dac9f526b1958ce7a5bdfe1d9c7be9ba64400c6700c2f7db212
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162021675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e341217385201fc82c3f664a01b061b8dd5214c5d9bb4006da171ad78727c4`
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
# Sat, 04 Nov 2017 03:09:13 GMT
ENV NEO4J_SHA256=62914134ce50cbb251bb70ef9311516808c5278412aade1a13c03239a0c18214 NEO4J_TARBALL=neo4j-enterprise-3.3.0-unix.tar.gz NEO4J_EDITION=enterprise
# Sat, 04 Nov 2017 03:09:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.0-unix.tar.gz
# Sat, 04 Nov 2017 03:09:13 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Sat, 04 Nov 2017 03:09:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Sat, 04 Nov 2017 03:09:48 GMT
WORKDIR /var/lib/neo4j
# Sat, 04 Nov 2017 03:09:48 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 03:09:49 GMT
COPY file:a93f088eb06ee578a8970777acef15fb7bcbb0fbdb9888d1402b69c8d04ae44c in /docker-entrypoint.sh 
# Sat, 04 Nov 2017 03:09:49 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Sat, 04 Nov 2017 03:09:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 03:09:50 GMT
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
	-	`sha256:57127f64f71a770f197adaefc254dfeaae6a92c7c84a3727d7353c9da5a358e7`  
		Last Modified: Sat, 04 Nov 2017 03:48:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0c98f73f2a4acd59f2d3971f2a5b7b38310d0bbfd98139fd85cc988258ebfa`  
		Last Modified: Sat, 04 Nov 2017 03:48:44 GMT  
		Size: 104.2 MB (104202752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1057427462bc14dc86ee0d63d165aa3b5d6fc215d6b9de0e04383af59d029e43`  
		Last Modified: Sat, 04 Nov 2017 03:48:33 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
