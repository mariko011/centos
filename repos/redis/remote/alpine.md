## `redis:alpine`

```console
$ docker pull redis@sha256:49e794b32c129d1ab1ee9f99c0e602f57ea1329aebe641843e0743c8ee336a7e
```

-	Platforms:
	-	linux; amd64

### `redis:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7609389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fcd4ff976764f012da0f35ac61b3ebd678461ef91b9d2013a2b558c5be3fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 18:12:55 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 23 Sep 2016 18:12:56 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 18:12:57 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 18:13:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Fri, 23 Sep 2016 18:13:41 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 18:13:41 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 18:13:41 GMT
WORKDIR /data
# Fri, 23 Sep 2016 18:13:42 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Fri, 23 Sep 2016 18:13:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:13:43 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 18:13:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f236a13876f0bbe65b40dc80b1dd1d4f54e6a30a86f19bce6bd0ca733644f6`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8988aa911478e821539a5b3a005c0b0c2fa2affe265b2fe02601a42a788d93`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 7.9 KB (7922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb7fbb359e22eb2ccd9701d8dee0543e1441e76e118bd83e3cc15ec2d476843`  
		Last Modified: Fri, 23 Sep 2016 18:13:53 GMT  
		Size: 5.3 MB (5286785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede6c7646561964a7ce4ec4cf0b6b281eff506458d94323d27df7b026db5a6d`  
		Last Modified: Fri, 23 Sep 2016 18:13:50 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea4755d45cc4b1fc497865a8f0be9b8a12c6a6d6b7aa04349e7f5ada9ea66f`  
		Last Modified: Fri, 23 Sep 2016 18:13:52 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
