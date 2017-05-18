## `redis:3-alpine`

```console
$ docker pull redis@sha256:03789f402b2ecfb98184bf128d180f398f81c63364948ff1454583b02442f73b
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2b86c1900b642b50f2929b386b879ca066dd9d86d03a54de271880bd3188b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:57:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 10 May 2017 22:57:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 18 May 2017 22:27:53 GMT
ENV REDIS_VERSION=3.2.9
# Thu, 18 May 2017 22:27:53 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Thu, 18 May 2017 22:27:54 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Thu, 18 May 2017 22:28:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Thu, 18 May 2017 22:28:42 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 18 May 2017 22:28:42 GMT
VOLUME [/data]
# Thu, 18 May 2017 22:28:43 GMT
WORKDIR /data
# Thu, 18 May 2017 22:28:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 18 May 2017 22:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 May 2017 22:28:46 GMT
EXPOSE 6379/tcp
# Thu, 18 May 2017 22:28:47 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda5cfd7e0ab09fe67d2ceb73ae410d20e44ed5be84628c2367f36f039e1948`  
		Last Modified: Sat, 13 May 2017 18:17:58 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acb752a319b92851eff05f9a1e7f4c4954054f1594b84370606206a3f4a90cc`  
		Last Modified: Sat, 13 May 2017 18:18:00 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f4252a06b0da34b9ca532b57c8e387c1925bd2f8c663b207fa5ff1d0e0bbfc`  
		Last Modified: Thu, 18 May 2017 22:34:54 GMT  
		Size: 5.5 MB (5488076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fa6651a533fbfafa81fcf38461460fde31d72424f03000e3a9ce71a7d1227`  
		Last Modified: Thu, 18 May 2017 22:34:53 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d583b32c93f5b06b37f376af4d38334e5d9b97206520bf50f8de8e2b8adca26`  
		Last Modified: Thu, 18 May 2017 22:34:53 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
