## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:fdd550d39ae3365f5df98c92d475b8864595db8d255780a8daea9eb45b7eda1d
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131336395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c4ad1b978546c175f80da961bbf83ae5074d14054c00480ef93ff43b22cddc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:13:11 GMT
RUN apk add --no-cache --quiet     bash     curl
# Sat, 04 Mar 2017 00:13:30 GMT
ENV NEO4J_SHA256=20a8cda35d90c518319fdbb7aa8ecb11e306777bf8b8ff7df623cdb473b593a7
# Sat, 04 Mar 2017 00:13:31 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.1-unix.tar.gz
# Sat, 04 Mar 2017 00:13:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
# Sat, 04 Mar 2017 00:13:31 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Sat, 04 Mar 2017 00:13:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Sat, 04 Mar 2017 00:13:47 GMT
WORKDIR /var/lib/neo4j
# Sat, 04 Mar 2017 00:13:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
RUN mv data /data     && ln -s /data
# Sat, 04 Mar 2017 00:13:49 GMT
VOLUME [/data]
# Sat, 04 Mar 2017 00:13:49 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:50 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Sat, 04 Mar 2017 00:13:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:50 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113635b8dc0fed8ea83c6e50572eed10d4c3070ec115d7e3cb6e9781b907474`  
		Last Modified: Sat, 04 Mar 2017 07:21:27 GMT  
		Size: 1.5 MB (1459688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad91775bcf329d2d256e78f795bde69919b700898ef152cbe17690a811202be6`  
		Last Modified: Sat, 04 Mar 2017 07:23:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46beb4a28a51d75aa6fb786a46048e76949a432596b014539c58bc8c52c1af38`  
		Last Modified: Sat, 04 Mar 2017 07:23:43 GMT  
		Size: 87.9 MB (87883216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4266ea2a33d1d16b2c7307ac79d03e466bcbf67c471f7bb1b7487e17252764`  
		Last Modified: Sat, 04 Mar 2017 07:23:32 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf60a61d7d80116dd07e1d696aaaad512beb6f52ac78a495afae91512be435`  
		Last Modified: Sat, 04 Mar 2017 07:23:33 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
