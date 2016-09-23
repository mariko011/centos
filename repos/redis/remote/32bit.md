## `redis:32bit`

```console
$ docker pull redis@sha256:f2a69b92673b2475d92959fd71889e1ac0a3fdc6e757b0e80c4d4b5b7ccf15e1
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77884672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70987f0cede0a396998b87ffa755027225ddd70165e27130c51e9d9ac2946446`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:02:00 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 23 Sep 2016 23:02:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:02:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:02:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_VERSION=3.2.3
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-3.2.3.tar.gz
# Fri, 23 Sep 2016 23:02:20 GMT
ENV REDIS_DOWNLOAD_SHA1=92d6d93ef2efc91e595c8bf578bf72baff397507
# Fri, 23 Sep 2016 23:04:04 GMT
RUN apt-get update && apt-get install -y libc6-i386 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:05:00 GMT
RUN set -ex 		&& buildDeps=' 		gcc 		gcc-multilib 		libc6-dev-i386 		make 	' 	&& apt-get update 	&& apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" 	&& echo "$REDIS_DOWNLOAD_SHA1 *redis.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/redis 	&& tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 	&& rm redis.tar.gz 		&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h 	&& sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h 	&& grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h 		&& make -C /usr/src/redis 32bit 	&& make -C /usr/src/redis install 		&& rm -r /usr/src/redis 		&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:05:01 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 23 Sep 2016 23:05:01 GMT
VOLUME [/data]
# Fri, 23 Sep 2016 23:05:01 GMT
WORKDIR /data
# Fri, 23 Sep 2016 23:05:02 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:05:03 GMT
EXPOSE 6379/tcp
# Fri, 23 Sep 2016 23:05:03 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1103ce5ca9d5420727dcd528b7b21e075685db9372e369a846e22b4cc8a36b`  
		Last Modified: Fri, 23 Sep 2016 23:03:21 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a40c85e01f8b6ebbf6eae27f8e88da30b52732d02b7bb474b2eea9c6cc20b`  
		Last Modified: Fri, 23 Sep 2016 23:03:22 GMT  
		Size: 16.6 MB (16609531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5e9d112ec42e5782717afe613a212d7e84358d2d721ae81ead9f73b666a05f`  
		Last Modified: Fri, 23 Sep 2016 23:03:19 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8290f398b60e8662df70d44aa9199ab6f6eb7e3236be47e0c585584bc2394e4`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 4.2 MB (4224365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d06b4c2405c8a0b61eb900491ba99bf68892d8c7e222deb75c87f90f3a254d`  
		Last Modified: Fri, 23 Sep 2016 23:05:13 GMT  
		Size: 4.9 MB (4885947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f51444c42397c96a6bc50a1cb025caa37c8ff3b73969cb1f204cce84651465`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af369ee606a7740089033997e8c2f45dc599c422cfec00941b473811376393a2`  
		Last Modified: Fri, 23 Sep 2016 23:05:11 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
