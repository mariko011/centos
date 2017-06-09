## `redis:3-alpine`

```console
$ docker pull redis@sha256:de206ef1ee76b193edbef135fbaf0b203f9e4bbfcff04d19f792a991ff9a287e
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7490541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d470ccc7f4bb8db507faa61d39f5b9e54d3c65484d11ae8054a2e1d6e3e55a04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Fri, 09 Jun 2017 06:56:47 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 09 Jun 2017 06:56:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Jun 2017 07:09:57 GMT
ENV REDIS_VERSION=3.2.9
# Fri, 09 Jun 2017 07:09:58 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.9.tar.gz
# Fri, 09 Jun 2017 07:09:59 GMT
ENV REDIS_DOWNLOAD_SHA=6eaacfa983b287e440d0839ead20c2231749d5d6b78bbe0e0ffa3a890c59ff26
# Fri, 09 Jun 2017 07:10:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 09 Jun 2017 07:10:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 09 Jun 2017 07:10:28 GMT
VOLUME [/data]
# Fri, 09 Jun 2017 07:10:28 GMT
WORKDIR /data
# Fri, 09 Jun 2017 07:10:29 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 09 Jun 2017 07:10:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Jun 2017 07:10:31 GMT
EXPOSE 6379/tcp
# Fri, 09 Jun 2017 07:10:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b1d47ba306a7b925a5a0dca436ffc20e74335481c9fa720a1cfc92ddaf8d2a`  
		Last Modified: Fri, 09 Jun 2017 07:13:14 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc797b04f0df6c66d7afb75ce57ca414bbba880194ac31a1f9a67db99fae409`  
		Last Modified: Fri, 09 Jun 2017 07:13:14 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1243be39d252a1fed1d3a9ac7b5cbcb26c2ae8877f88d16c17d72fd1c8aca882`  
		Last Modified: Fri, 09 Jun 2017 07:18:24 GMT  
		Size: 5.5 MB (5490541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad6af0f8654e5ac6ef623043b17e1974e2f393a629f570bd1f5c12b403716b0`  
		Last Modified: Fri, 09 Jun 2017 07:18:23 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d197107c4a28e64e8ec90e86d6059f9f25574c2ebb3e33047011a25b290ce8`  
		Last Modified: Fri, 09 Jun 2017 07:18:23 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
