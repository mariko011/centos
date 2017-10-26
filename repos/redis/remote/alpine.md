## `redis:alpine`

```console
$ docker pull redis@sha256:3806abb5537b9f0b9feb6b8cfae25660d4f605db3c243b714d87bcaf4662565e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le
	-	linux; s390x

### `redis:alpine` - linux; amd64

```console
$ docker pull redis@sha256:ba7e4091d27e8114a205003ca6a768905c3395d961624a2c78873d9526461032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10083276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dc9ee4c206d2f907f79203bf880d6280a5e5786dbd04e4b1527ccfc5a8ccb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 03:05:59 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Thu, 26 Oct 2017 03:06:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 03:06:51 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 26 Oct 2017 03:06:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 26 Oct 2017 03:06:51 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 26 Oct 2017 03:07:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Thu, 26 Oct 2017 03:07:21 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 26 Oct 2017 03:07:21 GMT
VOLUME [/data]
# Thu, 26 Oct 2017 03:07:21 GMT
WORKDIR /data
# Thu, 26 Oct 2017 03:07:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Thu, 26 Oct 2017 03:07:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:07:22 GMT
EXPOSE 6379/tcp
# Thu, 26 Oct 2017 03:07:22 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a0c92b265ac7c54209b82ee625b701363ad7e09c9ce8b11717045e6a5d291d`  
		Last Modified: Thu, 26 Oct 2017 03:07:44 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45313f4bbda3afacda449b25f979ddbc77b3bd2a01ab5f500e3f9224f70921a2`  
		Last Modified: Thu, 26 Oct 2017 03:07:44 GMT  
		Size: 8.2 KB (8180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40d26d0cb99a692b025ac6eac2a1425efd8803cf7420a2a35b7cbb746498a8`  
		Last Modified: Thu, 26 Oct 2017 03:08:34 GMT  
		Size: 8.1 MB (8081914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a73b87a9ce298d1d134bca22ab0118fe17529e2a580c87f3bbde1c27e61f81`  
		Last Modified: Thu, 26 Oct 2017 03:08:33 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e46142ef9baaf0221bb4a8615e5010575e663f16f3dee89aa8f54ca8d9d990`  
		Last Modified: Thu, 26 Oct 2017 03:08:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; arm variant v6

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

### `redis:alpine` - linux; ppc64le

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

### `redis:alpine` - linux; s390x

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
