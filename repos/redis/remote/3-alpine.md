## `redis:3-alpine`

```console
$ docker pull redis@sha256:fe846dd3decd53475c7f6b007ccf10834bdd60d3a649ebdb69f43aa10393e80f
```

-	Platforms:
	-	linux; amd64

### `redis:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7607509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff756f6fc44903216bf36e941db37ed5bb707c533c9c07e513d02fc7dfad4ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 02:29:29 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Tue, 20 Sep 2016 02:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 20 Sep 2016 02:31:07 GMT
ENV REDIS_VERSION=3.2.3
# Tue, 20 Sep 2016 02:31:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Tue, 20 Sep 2016 02:31:08 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Tue, 20 Sep 2016 02:32:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .build-deps 		gcc 		linux-headers 		make 		musl-dev 		tar 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apk del .build-deps
# Tue, 20 Sep 2016 02:32:22 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 20 Sep 2016 02:32:23 GMT
VOLUME [/data]
# Tue, 20 Sep 2016 02:32:23 GMT
WORKDIR /data
# Tue, 20 Sep 2016 02:32:24 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 20 Sep 2016 02:32:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Sep 2016 02:32:25 GMT
EXPOSE 6379/tcp
# Tue, 20 Sep 2016 02:32:25 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445daf4519a89a6ddd7ef7d3aec1431892313dd31c38f0a917352bc7c4a4c45d`  
		Last Modified: Tue, 20 Sep 2016 02:30:48 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2019b3ca50366082af115e85cbf4e6ed7ee761151e188ec76f6a0d45d93c567b`  
		Last Modified: Tue, 20 Sep 2016 02:30:44 GMT  
		Size: 7.9 KB (7928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee7b7a02c6ff205c95d50dea4d8bc3bd3cf5c99e819afd75c20c85cee6f0b51`  
		Last Modified: Tue, 20 Sep 2016 02:32:35 GMT  
		Size: 5.3 MB (5286768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f7ccd7c6147c9920c0f18ce12f89d3a7eedfdada4b9d63d7fa60cec4d5df5e`  
		Last Modified: Tue, 20 Sep 2016 02:32:32 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadc129fde63150f4079bce06695f0b6044649a23e460b4228b2758688851821`  
		Last Modified: Tue, 20 Sep 2016 02:32:34 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
