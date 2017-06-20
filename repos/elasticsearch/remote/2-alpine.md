## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:cfbaf4d08a888d32d23607f505fa1bddc867a34e9de8526d43cd60f57dcae8e4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85162757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ea94e220d827b6043269a3086a4f192922f01e2749599d927192d2a04bd36c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:56:53 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 20 Jun 2017 17:56:58 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 20 Jun 2017 17:56:59 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 20 Jun 2017 17:57:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 20 Jun 2017 17:57:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Jun 2017 21:55:21 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Tue, 20 Jun 2017 21:55:22 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Tue, 20 Jun 2017 21:55:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 20 Jun 2017 21:55:49 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 20 Jun 2017 21:55:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 20 Jun 2017 21:56:14 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 20 Jun 2017 21:56:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 20 Jun 2017 21:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Jun 2017 21:57:03 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3982788b4cce1c59c64b2cf0c4807fed9d2561296069db69d7551c96eee52d`  
		Last Modified: Tue, 20 Jun 2017 22:01:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856394342f812b025017f55f1f44f0549a929707296f9d2264c4452fd829f283`  
		Last Modified: Tue, 20 Jun 2017 22:01:08 GMT  
		Size: 1.1 MB (1124281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18630a640b7fa1cc593cfabc3b420585a77c583a3c2a3bfdc8e955fbb68d0745`  
		Last Modified: Tue, 20 Jun 2017 22:01:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517aeece7b158a1f5d1930fc3392a3a3aa5aec739214a120c9696e12893e5577`  
		Last Modified: Tue, 20 Jun 2017 22:06:18 GMT  
		Size: 27.8 MB (27764209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70082549f5cd8071bee3b35d6d314c8ec52dd04578a52330c1431deae759a2c`  
		Last Modified: Tue, 20 Jun 2017 22:06:16 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930214c07de09035913a979652808d1922133448e33911477a0c3851fee64138`  
		Last Modified: Tue, 20 Jun 2017 22:06:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
