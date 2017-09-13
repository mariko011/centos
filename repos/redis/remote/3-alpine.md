## `redis:3-alpine`

```console
$ docker pull redis@sha256:8c4590c90c4f8f4412de7ed8aaafc6da62fb3104864b99cb1230f936fce2dcb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

```console
$ docker pull redis@sha256:02f979ad4406c0817c9b43352ab38d2f6e51a10c4921ce42b02d19197a602f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7884721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb92e7734cf77b297f4039ad00b21cf76e23418907b3cc56ffad90fb20f0de1b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 03:34:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 13 Sep 2017 03:34:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_VERSION=3.2.10
# Wed, 13 Sep 2017 03:34:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.10.tar.gz
# Wed, 13 Sep 2017 03:34:47 GMT
ENV REDIS_DOWNLOAD_SHA=411c604a716104f7f5a326abfad32de9cea10f15f987bec45cf86f315e9e63a0
# Wed, 13 Sep 2017 03:35:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Wed, 13 Sep 2017 03:35:10 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 13 Sep 2017 03:35:11 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 03:35:11 GMT
WORKDIR /data
# Wed, 13 Sep 2017 03:35:11 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 13 Sep 2017 03:35:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 03:35:11 GMT
EXPOSE 6379/tcp
# Wed, 13 Sep 2017 03:35:11 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f41498e4c5f8669706ff06c4ff2e63ba66b16c8a404a48c18c9d13e2470c5`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60252c844d0b338a3314f4fe91a027ff8484aec059df0ca1a82aeb0f61c99206`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1499a4e72b2515b963758905d4f4114d3635d8f2f6ec0bc17223e748dff044bd`  
		Last Modified: Wed, 13 Sep 2017 03:38:21 GMT  
		Size: 5.9 MB (5884351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d56955a7b09a2e4d15118d000e0c7f721be5a49b366602117a137baf3a6fdaf`  
		Last Modified: Wed, 13 Sep 2017 03:38:19 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d685c1e75339ec138057c7ad1b3deb595e209c2852c0c0ae495847bdb26ea5`  
		Last Modified: Wed, 13 Sep 2017 03:38:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
