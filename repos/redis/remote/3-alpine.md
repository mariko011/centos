## `redis:3-alpine`

```console
$ docker pull redis@sha256:a06a61747e4a7b46788e2813b21ea6b06386df8e238e56f51f8793adb48f0a8b
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7304050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53df695896acdecb39a6914e25f7680011be26504dcb0675ac6e98c49379d171`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:32:52 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Wed, 04 Jan 2017 21:32:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 04 Jan 2017 21:33:36 GMT
ENV REDIS_VERSION=3.2.6
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.6.tar.gz
# Wed, 04 Jan 2017 21:33:37 GMT
ENV REDIS_DOWNLOAD_SHA1=0c7bc5c751bdbc6fabed178db9cdbdd948915d1b
# Wed, 04 Jan 2017 21:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Wed, 04 Jan 2017 21:34:21 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 04 Jan 2017 21:34:22 GMT
VOLUME [/data]
# Wed, 04 Jan 2017 21:34:22 GMT
WORKDIR /data
# Wed, 04 Jan 2017 21:34:22 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Wed, 04 Jan 2017 21:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:34:23 GMT
EXPOSE 6379/tcp
# Wed, 04 Jan 2017 21:34:23 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d0e817ebe24b8370ee8853b4a95ffea8b7bfb4f38f36d5bcea30175e7184ed`  
		Last Modified: Thu, 05 Jan 2017 00:56:22 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2a4f935feb715baf7666a365ec66e8fa0709a25411be7d204948fb6ad181da`  
		Last Modified: Thu, 05 Jan 2017 00:56:20 GMT  
		Size: 7.7 KB (7677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b43e209f780005f6689c300c84dc50f43b6637f936dd2f8f47ee97f50333e66`  
		Last Modified: Thu, 05 Jan 2017 01:00:05 GMT  
		Size: 5.4 MB (5392577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06b9be4b2bc94707150046a704f0ffb6dbb91675f0eccc9e01d7f7bbd8c2fb2`  
		Last Modified: Thu, 05 Jan 2017 01:00:04 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de037257f43410d6f75e177b0e3c2630a1aba814c988e04b4149ac0db1af3d7`  
		Last Modified: Thu, 05 Jan 2017 01:00:03 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
