## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:c913da99fffc3b5339fcf3ec76f3095081493599e39196543c0a35cdd9ca0c27
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85162887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6865283e11b06f9e79e17bf573c4ebfd9b2e96350b8103bcecc15522a536ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Thu, 29 Jun 2017 02:19:08 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 29 Jun 2017 02:19:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 29 Jun 2017 02:19:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 29 Jun 2017 02:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Jun 2017 02:19:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 29 Jun 2017 02:19:38 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Thu, 29 Jun 2017 02:20:03 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Thu, 29 Jun 2017 02:20:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 29 Jun 2017 02:20:20 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Thu, 29 Jun 2017 02:20:21 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 29 Jun 2017 02:20:22 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 29 Jun 2017 02:20:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 29 Jun 2017 02:20:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 02:20:25 GMT
CMD ["elasticsearch"]
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
	-	`sha256:ec3c3aa99e713670d216ed9727b2ca8d2932ee69de1c1fdb024e1907669fea33`  
		Last Modified: Sat, 01 Jul 2017 17:35:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4769f1a29b3512ab9143e4b5af8b9aabdfa26565f28575f76845dfd2521cd8`  
		Last Modified: Sat, 01 Jul 2017 17:35:19 GMT  
		Size: 1.1 MB (1124286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96cc45d38f9cbdbf74ddf615010caab771eba1c4650562e515b37d2c615569`  
		Last Modified: Sat, 01 Jul 2017 17:35:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236c19720949490aabcf0f1d1b98f1b005d5bee7bfbbd5fdd3f32f8e188028b4`  
		Last Modified: Sat, 01 Jul 2017 17:39:09 GMT  
		Size: 27.8 MB (27764225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a334cc48aa13ce14ec9ed1eb53d11b91e0fd331c3de670bdde221b01a41b96e`  
		Last Modified: Sat, 01 Jul 2017 17:39:07 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0552cd0bb0474cfaf1e9f3741f44fb8e023a34ae81dab6926725f2da47fc0d9d`  
		Last Modified: Sat, 01 Jul 2017 17:39:07 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
