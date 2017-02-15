## `redis:alpine`

```console
$ docker pull redis@sha256:ebba7176d5fbbb69477cf39382b97cc6177af0b2c9678f9240b11e85209df531
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7692065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d39481626b2853c3853e1c63bdf016d27b58ee739f79d5a87e3adefd3c0c1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:41:15 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:41:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:41:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 15 Feb 2017 20:42:00 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:42:01 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:42:01 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:42:02 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:42:03 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:42:04 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622eb636e54d88a1a1bd9695750f339f8ce4991d83ffd8da47381902d6369705`  
		Last Modified: Wed, 15 Feb 2017 20:46:20 GMT  
		Size: 5.8 MB (5780595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d816b2b1c216ffbf6b95cdc8a4f1f3c0a58a4446f191570558de8faa53b0e4d`  
		Last Modified: Wed, 15 Feb 2017 20:46:17 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7b307dbd47be082835d81fa7d5911d20cf20ae222a56e5e7fe32679e89c0e`  
		Last Modified: Wed, 15 Feb 2017 20:46:19 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
