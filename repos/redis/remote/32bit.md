## `redis:32bit`

```console
$ docker pull redis@sha256:1dcc972894dc12c0653c20ae2ea87e7bcb86bf3bdb03412b4b4569a6510b7dfe
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80101483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b043ea0b61dec497847e74fd41aa0ef01b5a0bdea038aaabf5f0568b635971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:42:16 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 10 May 2017 15:42:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:42:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 10 May 2017 15:42:37 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 10 May 2017 15:42:38 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 10 May 2017 15:42:39 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 10 May 2017 15:44:06 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:45:08 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 10 May 2017 15:45:09 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 10 May 2017 15:45:10 GMT
VOLUME [/data]
# Wed, 10 May 2017 15:45:11 GMT
WORKDIR /data
# Wed, 10 May 2017 15:45:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 10 May 2017 15:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:45:13 GMT
EXPOSE 6379/tcp
# Wed, 10 May 2017 15:45:14 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b690bc4eaa6434456ceaccf9b3e42229bd2691869ba439e515b28fe1a66c009`  
		Last Modified: Sat, 13 May 2017 18:16:18 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd94354d2a873333a205a02dbb853dd763c73600e0cf64f60b4bd7ab694875`  
		Last Modified: Sat, 13 May 2017 18:16:20 GMT  
		Size: 17.3 MB (17300175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c1f30d820f0457df186531dc4478967d075ba449bd3168a3e82137a47daf03`  
		Last Modified: Sat, 13 May 2017 18:16:16 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1bd9c47ecda5c88726a076abf6d92bbeb387ba8636765712044011a356f447`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 4.4 MB (4360711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a577268cb752d878578ca2d03a9a95d9c09d63482f96bf4961941c98c57d8e86`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 5.0 MB (5035212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee120ee4cdc0134778718724baae80dfdb85588c37591f3900a145d160a5eb`  
		Last Modified: Sat, 13 May 2017 18:20:22 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727a9835b8aa9e3ae18b6b6b44267528ef9687213ccd55b123cb097e50d7215`  
		Last Modified: Sat, 13 May 2017 18:20:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
