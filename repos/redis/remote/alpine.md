## `redis:alpine`

```console
$ docker pull redis@sha256:375718bf305a6e1a4a3e7014958ec5ea5ca52537f00dc70cde71be078fbbd64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm64 variant v8

### `redis:alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:f23d254c27af80cfde43600baa117cecb20cbaafe30a1ea33fe955a81890e333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10222443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b078b5224fba461231e167844927930e73c76d395f316926b1f1cf8ed064770b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:25:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:25:59 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 19:26:45 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:26:46 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:27:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 19:27:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:27:35 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:27:36 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:27:37 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:27:40 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:27:40 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7b73d0b3160845d84c0e4f5e413bc6c426a1909c0f2d1fbb2829218a2e21e3`  
		Last Modified: Thu, 26 Oct 2017 12:28:49 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fef4495152ec2827feab445efc6a8ce14f21f61f1aab617f08ca02ddcfaf4cb`  
		Last Modified: Thu, 26 Oct 2017 12:28:48 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fc1fe05740a2724098a144c51cee65e34f1f5c474787036263cb2ed21ccb7e`  
		Last Modified: Fri, 01 Dec 2017 19:29:29 GMT  
		Size: 8.3 MB (8297470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56160f2a03a94374f0c1600acbea44f3128d14c0f43de34bbff411f8e874a630`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954e6940d9c8c323e01b26099e4ee54b453e08f844442dabeffed3b12ace4d1`  
		Last Modified: Fri, 01 Dec 2017 19:29:25 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
