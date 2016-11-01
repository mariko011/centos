## `redis:latest`

```console
$ docker pull redis@sha256:0fe5a7afa2c2154f37c8ab56a9a6c5023cb0405cc0e85b34d8dcc1de6c3f143e
```

-	Platforms:
	-	linux; amd64

### `redis:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74242408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b99a81add5d77beab8af2507083fb62117362a238c7cfe38b876e4e17f2c7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:01:12 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 22 Oct 2016 01:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:01:23 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 01:01:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_VERSION=3.2.5
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.5.tar.gz
# Tue, 01 Nov 2016 00:38:07 GMT
ENV REDIS_DOWNLOAD_SHA1=6f6333db6111badaa74519d743589ac4635eba7a
# Tue, 01 Nov 2016 00:38:57 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		libc6-dev 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 00:38:58 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 01 Nov 2016 00:38:58 GMT
VOLUME [/data]
# Tue, 01 Nov 2016 00:38:58 GMT
WORKDIR /data
# Tue, 01 Nov 2016 00:38:59 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 01 Nov 2016 00:39:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 Nov 2016 00:39:00 GMT
EXPOSE 6379/tcp
# Tue, 01 Nov 2016 00:39:00 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2738f760012a5832e148a275faf9a01f89e4281b231dca4652070c85fb98fd2e`  
		Last Modified: Sat, 22 Oct 2016 01:02:30 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2771d56b8bca9744f42fe450de4a5ba9e8af2db305e2aecf8ba8e8e3aa0e5`  
		Last Modified: Sat, 22 Oct 2016 01:02:32 GMT  
		Size: 16.6 MB (16609587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d98f21a4432a1e5d7e03963ef8f05d14a25bc9cd7ac260b57e77ada57e7bdf0`  
		Last Modified: Sat, 22 Oct 2016 01:02:29 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79007f20bee8bcff448cc7280fdb2f18f1cb74e89539b02fb7e04356849d1b66`  
		Last Modified: Tue, 01 Nov 2016 00:42:15 GMT  
		Size: 5.5 MB (5469231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438fc7d500513211f884c9e481b0d657897b6d159ef396c5bc1271bed56fabaa`  
		Last Modified: Tue, 01 Nov 2016 00:42:14 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f776b71d795cb7a433ae06cb747c07817a3c0d21cb819a8398fedada2198b`  
		Last Modified: Tue, 01 Nov 2016 00:42:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
