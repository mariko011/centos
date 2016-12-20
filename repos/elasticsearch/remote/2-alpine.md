## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:6893701e62e2a7173b710f0d5699e6d4d8746d6d717bef819f4c18a117bc9c9f
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70801371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643da3f9b475b49db0acdeba5633547c9c52e9771395058ed4e9187362dd7fdc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Dec 2016 14:02:00 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 14 Dec 2016 14:02:03 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 14 Dec 2016 14:02:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:02:04 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 14 Dec 2016 14:02:04 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Dec 2016 23:30:27 GMT
ENV ELASTICSEARCH_VERSION=2.4.3
# Mon, 19 Dec 2016 23:30:38 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=7f415b3598315c017b0733f50cd47aa837886a7f
# Mon, 19 Dec 2016 23:30:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Mon, 19 Dec 2016 23:30:55 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 19 Dec 2016 23:30:55 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 19 Dec 2016 23:30:56 GMT
COPY file:51ff6767e146394225bf1f92ef321157302951f5dd7f20dbe20acc4e7be3043e in / 
# Mon, 19 Dec 2016 23:30:56 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 19 Dec 2016 23:30:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 23:30:57 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5d70a3cc04f964ff2c6e06070a1fd79339f49a0f099220c56b8da4fb90f19a`  
		Last Modified: Wed, 14 Dec 2016 14:12:40 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9a8bcc22b139cb21b6201687363f9380a5cb34bb5e5c6a17779e2d449440a0`  
		Last Modified: Wed, 14 Dec 2016 14:12:38 GMT  
		Size: 1.1 MB (1098609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e607437f2528f4f8590e2f58f29e59c9e277cf5908845be4eee34f46f1084f4`  
		Last Modified: Wed, 14 Dec 2016 14:12:37 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a2e67acf8db48d7a43a658ce9f3aa7f3e56b61054d4f440731f03ba098cce7`  
		Last Modified: Mon, 19 Dec 2016 23:35:18 GMT  
		Size: 27.7 MB (27716975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adc35ffd018da26daf07e7662e6f7f66c02211c005dc0c72775f39d9576e785`  
		Last Modified: Mon, 19 Dec 2016 23:35:15 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3c2313f53106bfc1653e339555ab1e02b0c852312238b60b780992cd14c0a8`  
		Last Modified: Mon, 19 Dec 2016 23:35:14 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
