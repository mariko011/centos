## `redis:alpine`

```console
$ docker pull redis@sha256:abd220f66aac9f530096d5c4d382eb1483dc4e3bac5dd6a56b67746cd86d0e5b
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc63a40c7cd7f177eceb8ece21595aa55f2fccd4973ac64cd32c216961b65844`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:39:42 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Jun 2017 00:39:48 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_VERSION=3.2.9
# Tue, 20 Jun 2017 00:42:23 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Tue, 20 Jun 2017 00:42:24 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Tue, 20 Jun 2017 00:42:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 20 Jun 2017 00:42:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Jun 2017 00:43:23 GMT
VOLUME [/data]
# Tue, 20 Jun 2017 00:43:24 GMT
WORKDIR /data
# Tue, 20 Jun 2017 00:43:25 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:43:50 GMT
EXPOSE 6379/tcp
# Tue, 20 Jun 2017 00:43:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4371af8a8c8e0b5ec128bf3b908c5f9d7343e9f449295d19a37004b68801cc0f`  
		Last Modified: Tue, 20 Jun 2017 18:58:04 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed756029dba4ddc103640974c1edb2da81268f791538a8af9d645893c7903b`  
		Last Modified: Tue, 20 Jun 2017 18:58:03 GMT  
		Size: 8.2 KB (8160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653720cb4fd4cf5cfdd29f4431be52944ff982c9fe80415b905532c0bd66287b`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 5.5 MB (5490549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f285e186215589238ac09fc500d306d741dd4ccac3244f036d996dfc73d60`  
		Last Modified: Tue, 20 Jun 2017 19:03:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d06b31f9ca6f4517d5921afd8c7325555d920ef1d826c13ec45878f5b73d08`  
		Last Modified: Tue, 20 Jun 2017 19:03:38 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
