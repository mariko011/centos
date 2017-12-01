## `redis:alpine`

```console
$ docker pull redis@sha256:00c67383547bb612379b83808f004130ea7a75f4c833920e85e6344e2f7d2684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le
	-	linux; s390x

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

### `redis:alpine` - linux; arm variant v6

```console
$ docker pull redis@sha256:38c706bbb783448dd7c7a5f77ec44981bf7926663222b71b7dc0caa0a9a33bad
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10155917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62bc27f0088f9139d491807609c771d1b0830f68ddd22d134049d088c4cfba10`
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
# Fri, 01 Dec 2017 02:11:24 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 02:11:24 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 02:11:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 02:11:49 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 02:11:49 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 02:11:49 GMT
WORKDIR /data
# Fri, 01 Dec 2017 02:11:50 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 02:11:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 02:11:50 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 02:11:50 GMT
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
	-	`sha256:0448b66c3218564e36dba6229d419a71d79b61063840f1566f7f6f2777138a2e`  
		Last Modified: Fri, 01 Dec 2017 02:12:06 GMT  
		Size: 8.2 MB (8179578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cec6c5c8e72ec863730284a059cfb4c56c56b59db416bcc55eb43cccc13ee99`  
		Last Modified: Fri, 01 Dec 2017 02:12:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcaee50bb4d990abfcf79092e574cca3038a1f393e17a407a361b4cc1df550d0`  
		Last Modified: Fri, 01 Dec 2017 02:12:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; ppc64le

```console
$ docker pull redis@sha256:05c6b50d3ae158b7e6f44dbd7c2f667678b620a3e45f3ed54779a2a9360015cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10648381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdf0904def1928bb2f194b57f19a02f1f3e61d9dc37db0df6a7294dd70f46f3`
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
# Fri, 01 Dec 2017 06:39:07 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 06:39:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 06:39:10 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 06:39:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 06:39:48 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 06:39:50 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 06:39:51 GMT
WORKDIR /data
# Fri, 01 Dec 2017 06:39:53 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 06:39:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 06:39:56 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 06:39:57 GMT
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
	-	`sha256:68b5c566febc749006a9fe1b6f9ee5226a7316859012cef88426fb25840b32ce`  
		Last Modified: Fri, 01 Dec 2017 06:40:43 GMT  
		Size: 8.6 MB (8628749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86164eb4eeca963ee4b366c2bc61a4baef49e5d795862dab41266220140a76e5`  
		Last Modified: Fri, 01 Dec 2017 06:40:41 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e96c8fb2a73581ad9bf461e91a2f6257cfffb783943d9dbb0579442f1f6ae4f`  
		Last Modified: Fri, 01 Dec 2017 06:40:41 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:alpine` - linux; s390x

```console
$ docker pull redis@sha256:ea1a8f140a2ab31a2336dba8019b7a69e6961ceb628f4aba14f20ecf13f86720
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10785159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2283d1cee370348d76ed859ab0feb4c1d540b5927d5847ca3b35b0036fe963a6`
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
# Fri, 01 Dec 2017 06:25:31 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 06:25:32 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 06:25:32 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 06:25:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Fri, 01 Dec 2017 06:25:52 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 06:25:52 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 06:25:53 GMT
WORKDIR /data
# Fri, 01 Dec 2017 06:25:53 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 01 Dec 2017 06:25:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 06:25:53 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 06:25:53 GMT
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
	-	`sha256:0ea0cda0d971e2c888eaab0be4d827ebd2354699a542bb2c4bdf589b1d0d49d2`  
		Last Modified: Fri, 01 Dec 2017 06:26:32 GMT  
		Size: 8.7 MB (8709164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5c7d63bcd4afd37dd9692da0e2b90506220a864c4565e27d4ab891471d69b7`  
		Last Modified: Fri, 01 Dec 2017 06:26:31 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3745cae17e6cc7cb65e3cf23a7bece869a86aac59a94cc165e3b658557ad543`  
		Last Modified: Fri, 01 Dec 2017 06:26:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
