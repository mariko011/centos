## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:78ac240533587a48eb34cc52cf30ce8a7df2b7b3993f903caf47c90bcfcdd64e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:502fff8ab2c08a30e8c59d88dbfc99bf3070bd249fd4246bc6e9f4dad213968f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91983793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fa6cad1be1f4cbe5e4f12c081b5aedb295e4011e8627d52c530c1f951567da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=6e97b8edc2c5d06b6d0343de44bc5bb750224233
# Tue, 05 Dec 2017 04:12:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:10 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 05 Dec 2017 04:12:10 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:11 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f514e62aba585bab3bc2eacdf8c4211ca4900bd489290de24547f9b413b55c68`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 34.2 MB (34169648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee681128e0eaf9b63cbce01b4a9e6c03c08be322e0ea481e3141d972f4c8fa8`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1bfffbbf059a6bdbfd55e2494406da08473c006275749f078cbc05ddc049ac`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
