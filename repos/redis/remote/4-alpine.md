## `redis:4-alpine`

```console
$ docker pull redis@sha256:7184f9ab7ccfec400b47a65bcc5d406d72cb662ff86faff26d7cec372980e688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:4-alpine` - linux; amd64

```console
$ docker pull redis@sha256:7a00cd0e9dbdd56d6f2bac59f52b83bfa8e4e4bfdda4459439dd56615efa4f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10093742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8544cc83deb9b120eec364cae7878483c496bd64948fde7815e65a57d04d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:11:21 GMT
RUN addgroup -S redis && adduser -S -G redis redis
# Fri, 01 Dec 2017 22:11:24 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 05 Dec 2017 02:52:25 GMT
ENV REDIS_VERSION=4.0.6
# Tue, 05 Dec 2017 02:52:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.6.tar.gz
# Tue, 05 Dec 2017 02:52:25 GMT
ENV REDIS_DOWNLOAD_SHA=769b5d69ec237c3e0481a262ff5306ce30db9b5c8ceb14d1023491ca7be5f6fa
# Tue, 05 Dec 2017 02:52:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		linux-headers 		make 		musl-dev 	; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apk del .build-deps
# Tue, 05 Dec 2017 02:52:59 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 05 Dec 2017 02:52:59 GMT
VOLUME [/data]
# Tue, 05 Dec 2017 02:52:59 GMT
WORKDIR /data
# Tue, 05 Dec 2017 02:53:00 GMT
COPY file:9b596974f478088dc2d2bf2906046f6c8872ecff3c716abd89850fd50ec90c47 in /usr/local/bin/ 
# Tue, 05 Dec 2017 02:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Dec 2017 02:53:00 GMT
EXPOSE 6379/tcp
# Tue, 05 Dec 2017 02:53:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c53d69ca3aed47d1db25335f3b3c89f755dc18f177ae7a70c4c8f70f8edcbd`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbffccae30ef7a74b938eaa2aaed4b067a15e62d0dd059a063bdf272defae8b`  
		Last Modified: Fri, 01 Dec 2017 22:15:02 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a00d98b862d89b5296d56266387a533816a1490efc3aa3d6ae5ecc64eed0a1d`  
		Last Modified: Tue, 05 Dec 2017 02:54:33 GMT  
		Size: 8.1 MB (8092311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6162f8e8bd54d523376aa6c0f9f01b85472a936837e945d59ce6befb07240ebc`  
		Last Modified: Tue, 05 Dec 2017 02:54:31 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed931789deac842ebed5fa55c722548cf7384a6ed8ec1daf5a7d19b61dbf7ccd`  
		Last Modified: Tue, 05 Dec 2017 02:54:31 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
