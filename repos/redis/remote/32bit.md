## `redis:32bit`

```console
$ docker pull redis@sha256:0e1394f06e8c4f60ce8d3be2146bf0f6917f88072ff03ff7ee804ccbdeb6379b
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78056036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c228f4b97cfc09f1f8e13a875d2d5337b1c4853d627b1f344f527d7c1b8f23a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Wed, 22 Mar 2017 00:04:29 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 22 Mar 2017 15:06:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:06:51 GMT
ENV GOSU_VERSION=1.7
# Wed, 22 Mar 2017 15:06:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_VERSION=3.2.8
# Wed, 22 Mar 2017 15:06:56 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.8.tar.gz
# Wed, 22 Mar 2017 15:06:57 GMT
ENV REDIS_DOWNLOAD_SHA1=6780d1abb66f33a97aad0edbe020403d0a15b67f
# Wed, 22 Mar 2017 15:07:50 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 15:08:39 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 22 Mar 2017 15:08:40 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 22 Mar 2017 15:08:41 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 15:08:41 GMT
WORKDIR /data
# Wed, 22 Mar 2017 15:08:42 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 22 Mar 2017 15:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Mar 2017 15:08:42 GMT
EXPOSE 6379/tcp
# Wed, 22 Mar 2017 15:08:43 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787f13ab8ea910bcc271068eab4c454ed8c5ba45156dd3e393a742a4826ebfad`  
		Last Modified: Fri, 24 Mar 2017 00:29:12 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14faf2bdac07deb52fa72e15675bbef90c4da9fb5c6ac5d52f7ad568fb5719bb`  
		Last Modified: Fri, 24 Mar 2017 00:29:17 GMT  
		Size: 16.7 MB (16689642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52905ba81f398b8d62f1a7f7d30f40aa08f0984955fa240256eb909f8a84cdd`  
		Last Modified: Fri, 24 Mar 2017 00:29:11 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529285d37ee36d56b2439403cd772c7c5dd9d9678c478dd94aab184d1619b5b`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.2 MB (4224460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c3bedbe98058dc15c7545f8050b4d6a9b00b2c5d73bfa4dff1b81c1dcb6e2`  
		Last Modified: Fri, 24 Mar 2017 00:32:12 GMT  
		Size: 4.9 MB (4892996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5455f1f9e4a638a7d36def19417d1ab5c254dc84744410d9f1acdd860abcd800`  
		Last Modified: Fri, 24 Mar 2017 00:32:10 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c2a06a51ac2c7ad9442d6abd2fc52fcdf896e85fa75b85aa47f60ace43042`  
		Last Modified: Fri, 24 Mar 2017 00:32:09 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
