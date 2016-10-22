## `redis:32bit`

```console
$ docker pull redis@sha256:eec3a9522c63172ec006e523d8be75be3faa59ad86b71c21f83e08a1c8ecd4d0
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77890857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379ace79c63eef2f8ec461da74f94d0a9cbfe2f60209e33016390ff4115199ae`
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
# Sat, 22 Oct 2016 01:01:28 GMT
ENV REDIS_VERSION=3.2.4
# Sat, 22 Oct 2016 01:01:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.4.tar.gz
# Sat, 22 Oct 2016 01:01:29 GMT
ENV REDIS_DOWNLOAD_SHA1=f0fe685cbfdb8c2d8c74613ad8a5a5f33fba40c9
# Sat, 22 Oct 2016 01:03:18 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:04:10 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Sat, 22 Oct 2016 01:04:11 GMT
RUN mkdir /data && chown redis:redis /data
# Sat, 22 Oct 2016 01:04:11 GMT
VOLUME [/data]
# Sat, 22 Oct 2016 01:04:11 GMT
WORKDIR /data
# Sat, 22 Oct 2016 01:04:12 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Sat, 22 Oct 2016 01:04:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Oct 2016 01:04:13 GMT
EXPOSE 6379/tcp
# Sat, 22 Oct 2016 01:04:13 GMT
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
	-	`sha256:0b8e394d9b86175879388af05422c9cef7d17408795f45def9dff660d4b0279f`  
		Last Modified: Sat, 22 Oct 2016 01:04:24 GMT  
		Size: 4.2 MB (4224375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289860d1585d936d24892bf9cb072468d623df9fd68ddc55171cebb070ed6c94`  
		Last Modified: Sat, 22 Oct 2016 01:04:27 GMT  
		Size: 4.9 MB (4893305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd57c082c512aa3b0b9427f1415c91d26834294a36bdcefe68750fa6c5e5f4`  
		Last Modified: Sat, 22 Oct 2016 01:04:23 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e4fc8cb0d94e7f24e3627737c8c085fed7e8641b77c336be17c3286118c8aa`  
		Last Modified: Sat, 22 Oct 2016 01:04:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
