## `redis:4-alpine`

```console
$ docker pull redis@sha256:504cf109b4922e7cb8db839feb1a1ea6d434782e8be9822fbc0ef0a05ac64844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:fe4277621f10b5026266932ddf760f5a756d2facd505a94d2da12f4f52f71f5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10083299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e537460dd124f6db6656c1728a42cf8e268923ff52575504a471fa485c2a884a`
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
# Sat, 04 Nov 2017 01:46:48 GMT
ENV REDIS_VERSION=4.0.2
# Sat, 04 Nov 2017 01:46:48 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Sat, 04 Nov 2017 01:46:49 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Sat, 04 Nov 2017 01:47:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Sat, 04 Nov 2017 01:47:22 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 04 Nov 2017 01:47:22 GMT
VOLUME [/data]
# Sat, 04 Nov 2017 01:47:22 GMT
WORKDIR /data
# Sat, 04 Nov 2017 01:47:23 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Sat, 04 Nov 2017 01:47:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 01:47:23 GMT
EXPOSE 6379/tcp
# Sat, 04 Nov 2017 01:47:23 GMT
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
	-	`sha256:99a3b0a2a63c84b64c7a4365483e91b1b67f8a60bd0979cb3b7d13e5c280fc0d`  
		Last Modified: Sat, 04 Nov 2017 01:48:54 GMT  
		Size: 8.1 MB (8081931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abffc1c7023979af5d56291b30310a8b5c500e6b6af9758f5c178a1425d73a8a`  
		Last Modified: Sat, 04 Nov 2017 01:48:54 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a252a45867de89ea04925dc08e34a04b274d0714faae45ecb78f966e3ac3f9`  
		Last Modified: Sat, 04 Nov 2017 01:48:56 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:162ca6ae96d0923f001cbedbf123c68fff7a6f47f56b53f7b34bf9116fc602c6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10140624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d1702e3a32bdc269dea0ce6af1aaed32ccf635184e8abfd798f9ad12fd731c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:18 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:24:52 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 26 Oct 2017 05:24:52 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 26 Oct 2017 05:24:52 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 26 Oct 2017 05:25:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:25:16 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:25:17 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:25:17 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:25:17 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:25:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:25:18 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:25:18 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed5ccc911def388320cc35fabf3f26d6dbe3865f29cbc8ea4d6969afba892b6`  
		Last Modified: Thu, 26 Oct 2017 05:25:25 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb557aa00e602a24029e21b21fd124cee2b11be03a5d7c2c7a5bdd35d837a2c`  
		Last Modified: Thu, 26 Oct 2017 05:25:26 GMT  
		Size: 8.4 KB (8372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce21cee197b7453d501d9df3091c94e7e4e75239fcd2ef75377bc32c4071e80`  
		Last Modified: Thu, 26 Oct 2017 05:25:34 GMT  
		Size: 8.2 MB (8164283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9810637a3a4404fe932cd9dbdb391e7372cd736e74a11a0af4a0244edb97dfd1`  
		Last Modified: Thu, 26 Oct 2017 05:25:32 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277ed734a2382f06263774b4b07357b9a509f0e4cf6376bc9c780a5850bc0048`  
		Last Modified: Thu, 26 Oct 2017 05:25:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:6656565cf94e4de857991666b60afccbbf65ff7348d20239d86145151ffb8304
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10210398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b7a10ee0e38f6e64d6d79dc2405b4b08f880fc380d9f81ccb914bf2fbfca12`
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
# Thu, 26 Oct 2017 12:27:02 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 26 Oct 2017 12:27:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 26 Oct 2017 12:27:03 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 26 Oct 2017 12:27:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:27:43 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:27:44 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:27:44 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:27:45 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:27:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:27:47 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:27:47 GMT
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
	-	`sha256:fd20076e2b03eec90bd7b7513be25a8e3e80f995ea57eed8c51b91bf6b4c97f6`  
		Last Modified: Thu, 26 Oct 2017 12:29:45 GMT  
		Size: 8.3 MB (8285425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297169be2e9e9e9dd1ca7dc73c73659d0dd702aaf68a1651a49d27eaea648591`  
		Last Modified: Thu, 26 Oct 2017 12:29:42 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e285c399c1f3bb93421b3ccacfe2aac08ba78b7270fb7d5e06826e7c109853`  
		Last Modified: Thu, 26 Oct 2017 12:29:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; 386

```console
$ docker pull redis@sha256:869d8bf7b56d9e0f98eb5fc8c696c202f754aa4e427f72692d01d39cdefea74b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10085538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03cb8cabb4d4fdabb47a00170c44f0bc1fa3d39ecce444dc1c79b42a8fb7c084`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 12:20:43 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 12:20:47 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 12:21:27 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 26 Oct 2017 12:21:27 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 26 Oct 2017 12:21:27 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 26 Oct 2017 12:21:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 12:21:59 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 12:22:00 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 12:22:00 GMT
WORKDIR /data
# Thu, 26 Oct 2017 12:22:00 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 12:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 12:22:00 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 12:22:01 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc0092e2488972f59ebfb4ee46b20ae44b279b56a72db00fcc793d134652c77`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7c3600a6050db7d3d16edf77e4aae56c6fc6d8dd8359260697bdcb746e1591`  
		Last Modified: Thu, 26 Oct 2017 12:22:17 GMT  
		Size: 8.3 KB (8304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88be053699da9f1c54646db2be4cd8720bf3040c8280b41d2e64ad65e1353d9`  
		Last Modified: Thu, 26 Oct 2017 12:22:41 GMT  
		Size: 8.0 MB (8029713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b214795c06dfb5739c497e74d51d916884434e87a0c22607da91939a2f215e50`  
		Last Modified: Thu, 26 Oct 2017 12:22:39 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fb99c294017325a9193ea177de49004073721f79adb57b138a4aec188af3f9`  
		Last Modified: Thu, 26 Oct 2017 12:22:39 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:0bf4a6d6383ccb409395f9b3eb3e0ba79680d540be9eb9e54a6f3304b31ac875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10636580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b817ca896b6cfaa3e7db7bbc07be5275045dfe1ebf69b60df75d08f2fff7283f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:35:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:35:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:36:34 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 26 Oct 2017 05:36:35 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 26 Oct 2017 05:36:37 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 26 Oct 2017 05:37:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:37:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:37:11 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:37:12 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:37:14 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:37:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:37:18 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:37:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ebe7128dbea25409b23d4a494ae0111ad5bd8c25a0d6b1138a08be0cb339a`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de77d1e048161d22a574862ad5b23c83b469a29ea7acd1a9f8277a5930b4f80`  
		Last Modified: Thu, 26 Oct 2017 05:37:33 GMT  
		Size: 9.1 KB (9058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e58d580406bccbb22f7dfae89368b31b77930533d5b63c66b5fbf840288fa0`  
		Last Modified: Thu, 26 Oct 2017 05:38:00 GMT  
		Size: 8.6 MB (8616950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a71174b8ac537064d0dd2356a6117d187a2dae227acad43422409bb8fec472`  
		Last Modified: Thu, 26 Oct 2017 05:37:58 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ded4ca2db3a747da5dc5858653740d7b43959d47218f40f7e19d57256e6530`  
		Last Modified: Thu, 26 Oct 2017 05:37:59 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:4-alpine` - linux; s390x

```console
$ docker pull redis@sha256:c9e9c9a863d629a0571feb50f027180ca61b7984fd8dc6366596c35304be8340
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10772918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4623d68e9a93dbcf9529cb1e658545440a37faa1e23c446637025f08cd484ac0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:24:32 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 05:24:34 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:25:08 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 26 Oct 2017 05:25:09 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 26 Oct 2017 05:25:09 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 26 Oct 2017 05:25:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 05:25:28 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 05:25:28 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 05:25:28 GMT
WORKDIR /data
# Thu, 26 Oct 2017 05:25:29 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:25:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:25:29 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 05:25:29 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aadc88619c9ad71a095bb4de1d9bb26ba477d43141099ee566f10fbe45811cd`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc71eadb971db0206fdd767056d3bd71d32b4fdec59986d325a2ab02c0a4c7`  
		Last Modified: Thu, 26 Oct 2017 05:25:42 GMT  
		Size: 8.6 KB (8607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67428f8081a593d95fb7cbf9dbce90ed29bd68d73c21347a763a2e02114f8977`  
		Last Modified: Thu, 26 Oct 2017 05:25:58 GMT  
		Size: 8.7 MB (8696923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df53563eef61dc7aef8339c60f4e7155f93e71e45245c339a95c8c4679888df2`  
		Last Modified: Thu, 26 Oct 2017 05:25:56 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bca9b62a24b0bf629040f5e5939d1dcbbfa50e34b1692e5ad99e1634e8c811`  
		Last Modified: Thu, 26 Oct 2017 05:25:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
