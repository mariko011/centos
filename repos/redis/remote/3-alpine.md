## `redis:3-alpine`

```console
$ docker pull redis@sha256:99105b7a83dd67a0b4a86ca5f64335801c62d4f3b685eebd4fb66fdb87c66b7b
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f619d04b7afa1521de691988eceeceaf2c5921281b4d8c3f369bf9146fd0f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_VERSION=3.2.4
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Mon, 26 Sep 2016 17:59:03 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Mon, 26 Sep 2016 17:59:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Mon, 26 Sep 2016 17:59:45 GMT
RUN mkdir /data && chown redis:redis /data
# Mon, 26 Sep 2016 17:59:46 GMT
VOLUME [/data]
# Mon, 26 Sep 2016 17:59:46 GMT
WORKDIR /data
# Mon, 26 Sep 2016 17:59:47 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Mon, 26 Sep 2016 17:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Sep 2016 17:59:47 GMT
EXPOSE 6379/tcp
# Mon, 26 Sep 2016 17:59:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff15af8577ca5e8c548ecaa13fa096d9bf028078877568428f4aaea36ac573`  
		Last Modified: Mon, 26 Sep 2016 18:02:32 GMT  
		Size: 5.3 MB (5287145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1230b63e56663fafa56aafe08c10cd96ad512d7af2ae6d2cf5e00f6813428d1c`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca4ef2df2de6ad2ba45607624b5358a03bf8f46f2d6f01dad6715e14f90923e`  
		Last Modified: Mon, 26 Sep 2016 18:02:30 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
