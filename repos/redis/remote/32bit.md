## `redis:32bit`

```console
$ docker pull redis@sha256:eb6557d6c9a46d4319df6e2c3dee36c0faa12e1e53189564e0c17acb2f451457
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80066425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a48dda08ad83b274fdee2f08e0f923509c32110051a18d13b0e33663732c714`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:50:37 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 25 Apr 2017 04:50:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:50:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:51:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 04:51:01 GMT
ENV REDIS_VERSION=3.2.8
# Tue, 25 Apr 2017 04:51:02 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Tue, 25 Apr 2017 04:51:02 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Tue, 25 Apr 2017 04:52:38 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:53:44 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 25 Apr 2017 04:53:46 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 25 Apr 2017 04:53:46 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 04:53:47 GMT
WORKDIR /data
# Tue, 25 Apr 2017 04:53:49 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:53:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:53:50 GMT
EXPOSE 6379/tcp
# Tue, 25 Apr 2017 04:53:51 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2832b8d33a9474076b549e971ad7a06701da072a4d7eb5cf94ed04e1e92c27d0`  
		Last Modified: Tue, 25 Apr 2017 21:17:42 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ba129f304a062d790ba9d5f8426a9906fc35a7051ada31c5fd829324f24ba3`  
		Last Modified: Tue, 25 Apr 2017 21:17:45 GMT  
		Size: 17.3 MB (17298174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9bf5ac8bc644c75eb21e54709fe2de0d86523b7d470051f084e1efba2bb06b`  
		Last Modified: Tue, 25 Apr 2017 21:17:40 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54fbd11d227df202bf2f07ebc7232f52901e2a8add40b38f5eed23b0df626fc`  
		Last Modified: Tue, 25 Apr 2017 21:20:32 GMT  
		Size: 4.4 MB (4360966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af119a0b45c23f75b69a4e3617904623415569ce43e591dec36ec1edfae55d55`  
		Last Modified: Tue, 25 Apr 2017 21:20:31 GMT  
		Size: 5.0 MB (5035640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450025d65b7a7e8b4e2304d9bb21bc526f517a996c34614918a8426984c7b618`  
		Last Modified: Tue, 25 Apr 2017 21:20:30 GMT  
		Size: 96.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c4c09cada2afa650e97e1f387bc2cf5da2ad6d7eb7f68ea73eebef92270dc1`  
		Last Modified: Tue, 25 Apr 2017 21:20:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
