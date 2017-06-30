## `redis:3-alpine`

```console
$ docker pull redis@sha256:2b1600c032e7653d079e9bd1eb80df5c99733795691f5ae9bca451bec325b7ea
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159ac12c79e1a8d85dfe61afff8c64b96881719139730012a9697f432d6b739a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:13:58 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 28 Jun 2017 22:14:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:14:03 GMT
ENV REDIS_VERSION=3.2.9
# Wed, 28 Jun 2017 22:14:04 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Wed, 28 Jun 2017 22:14:05 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Wed, 28 Jun 2017 22:14:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 28 Jun 2017 22:14:31 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 28 Jun 2017 22:14:31 GMT
VOLUME [/data]
# Wed, 28 Jun 2017 22:14:32 GMT
WORKDIR /data
# Wed, 28 Jun 2017 22:14:34 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 28 Jun 2017 22:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Jun 2017 22:14:35 GMT
EXPOSE 6379/tcp
# Wed, 28 Jun 2017 22:14:36 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1ac6c7a5068201d8b63a09bb15358ec1616b813ef3942eb8cc12ae191227f`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2e140ea27b3e89f359cd9fab4ec45647dda2a8e5fb0c78633217d9dca87b5`  
		Last Modified: Fri, 30 Jun 2017 00:51:24 GMT  
		Size: 8.2 KB (8164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08957ceaa2b3be874cde8d7fa15c274300f47185acd62bca812a2ffb6228482d`  
		Last Modified: Fri, 30 Jun 2017 00:52:33 GMT  
		Size: 5.5 MB (5490529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd3d12a6a79f772961a771f678c1a39e1f370e7baeb9e606ad8f1b92572f4ab`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad88df090801e8faa8cf0be1f403b77613d13e11dad73f561461d482f79256c`  
		Last Modified: Fri, 30 Jun 2017 00:52:31 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
