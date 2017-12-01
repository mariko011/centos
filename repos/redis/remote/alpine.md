## `redis:alpine`

```console
$ docker pull redis@sha256:4750c256a8adf348732c79a67f2de53eb8909f0d5581ac1952a546d35093321e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:25093b70107421a98d06903ad0c7eb8f7e05f68b26271b8d22effff3f1463e2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10094050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992fb47249a644c0e5149033486d4418d39b521ee75881b832c5f25bc18e1bdb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 01:44:03 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Sat, 04 Nov 2017 01:44:07 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Dec 2017 00:37:56 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 00:37:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 00:37:57 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 00:38:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 00:38:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 00:38:28 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 00:38:28 GMT
WORKDIR /data
# Fri, 01 Dec 2017 00:38:28 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 00:38:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 00:38:29 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 00:38:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1159b4eb664834bb81776d221f3a86982ad16469161d2143f9d1eb170ac386fb`  
		Last Modified: Sat, 04 Nov 2017 01:48:04 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5164c08f19673114708df76cc1601fc5b05097b845e7e8ce1e23cd415ee18`  
		Last Modified: Sat, 04 Nov 2017 01:48:02 GMT  
		Size: 8.2 KB (8183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3420975ae193227400e1d87db4bfb6c3daa53d7750196b218eda65917fe1e0`  
		Last Modified: Fri, 01 Dec 2017 00:44:44 GMT  
		Size: 8.1 MB (8092684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad29400d27ebddb26c01740c0c69cda963e491ccb094d8f824ec8a384b799e3`  
		Last Modified: Fri, 01 Dec 2017 00:44:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a3ede241ab1f7c2539c90e6386827f91746b318e43876eec8df18f8da4b784`  
		Last Modified: Fri, 01 Dec 2017 00:44:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
