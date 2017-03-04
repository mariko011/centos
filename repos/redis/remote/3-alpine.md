## `redis:3-alpine`

```console
$ docker pull redis@sha256:9cd405cd1ec1410eaab064a1383d0d8854d1eef74a54e1e4a92fb4ec7bdc3ee7
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7311600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83638a6d3af20698d5e207febe714ac46a23a98e1d86ba36fe502fadc788daa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:20 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 03 Mar 2017 23:32:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_VERSION=3.2.8
# Fri, 03 Mar 2017 23:32:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Fri, 03 Mar 2017 23:32:22 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Fri, 03 Mar 2017 23:33:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 03 Mar 2017 23:33:06 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 03 Mar 2017 23:33:06 GMT
VOLUME [/data]
# Fri, 03 Mar 2017 23:33:06 GMT
WORKDIR /data
# Fri, 03 Mar 2017 23:33:07 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:33:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:33:08 GMT
EXPOSE 6379/tcp
# Fri, 03 Mar 2017 23:33:08 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503a4771a4acb18e74ce194540e8b8d89cc782c16d991536729aa1b0a8dbd47`  
		Last Modified: Sat, 04 Mar 2017 05:47:23 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c5d910c68324fec337bf61e7baeda6b221665281fb37b8a23c4a1ea6cc390d`  
		Last Modified: Sat, 04 Mar 2017 05:47:21 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadd3a49c304078c7122e703aff73d9d481ce1b0beba04eceabd3abb18051ee`  
		Last Modified: Sat, 04 Mar 2017 05:48:08 GMT  
		Size: 5.4 MB (5396912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf925aa1ad1ff13ac026cc6b2426e28549740de01ccc607a677a815e94a8524`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0565da0f872e734aa432a1ec7b391f961e37ad33ed0d842a2319600c7d6b4952`  
		Last Modified: Sat, 04 Mar 2017 05:48:05 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
