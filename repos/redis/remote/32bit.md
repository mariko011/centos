## `redis:32bit`

```console
$ docker pull redis@sha256:15476ea8edabd7259ae375787731aec6dd98ae78985e5e469941996992dc66a0
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77906327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464f755ab3209bbcefe1a8374e971d398ff08ae9ab1a1d796fc118bea83881bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:05:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 17 Jan 2017 20:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:05:32 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 20:05:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 15 Feb 2017 20:39:16 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 15 Feb 2017 20:40:19 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 15 Feb 2017 20:41:09 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 15 Feb 2017 20:41:11 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 15 Feb 2017 20:41:11 GMT
VOLUME [/data]
# Wed, 15 Feb 2017 20:41:12 GMT
WORKDIR /data
# Wed, 15 Feb 2017 20:41:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 15 Feb 2017 20:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Feb 2017 20:41:13 GMT
EXPOSE 6379/tcp
# Wed, 15 Feb 2017 20:41:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f41e871db11ed71fa871e4a71e6fb918289a9c3f2500f122d901ac8566fc7`  
		Last Modified: Wed, 18 Jan 2017 07:13:42 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40484248761f567a45443550fce54c4da469739890218490c717800e2dae94e`  
		Last Modified: Wed, 18 Jan 2017 07:13:46 GMT  
		Size: 16.6 MB (16617736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97af2bf2ee7313c7f635afe41a352863eef2135274d6df5e528466cb02c4455`  
		Last Modified: Wed, 18 Jan 2017 07:13:39 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dbeb2c78e772b285cefc6721357f1794e100c86d69303e509ba880999daa81`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.2 MB (4224187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c48a34a8b35505aaac59eb60346e70c9a3df3cd31f64f4116bf8e5a9269c1d9`  
		Last Modified: Wed, 15 Feb 2017 20:45:10 GMT  
		Size: 4.9 MB (4892728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae65e6d6e6f431cb43c7fc0cff3cfa21daed6a4d28f4bfac220ee39b0aee384`  
		Last Modified: Wed, 15 Feb 2017 20:45:08 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07507556f860f43c391d323bdb03e56aae25d33a4515a9a3d7688377bcb6f4c`  
		Last Modified: Wed, 15 Feb 2017 20:45:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
