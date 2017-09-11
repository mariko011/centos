## `redis:32bit`

```console
$ docker pull redis@sha256:be883a89b06ac6493312b7de03977aee06c71bbcfca6da1fb0a1d4c8c61a5370
```

-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42554265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81370e8496ccfca3231c6eec94e7d04d44c33c6ec08f2bedc4bf3789be400ede`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:54:52 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 09:54:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:55:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 08 Sep 2017 09:57:24 GMT
ENV REDIS_VERSION=4.0.1
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.1.tar.gz
# Fri, 08 Sep 2017 09:57:25 GMT
ENV REDIS_DOWNLOAD_SHA=2049cd6ae9167f258705081a6ef23bb80b7eff9ff3d0d7481e89510f27457591
# Fri, 08 Sep 2017 09:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:59:25 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Sep 2017 09:59:26 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 08 Sep 2017 09:59:27 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:59:27 GMT
WORKDIR /data
# Fri, 08 Sep 2017 09:59:27 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:59:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:59:28 GMT
EXPOSE 6379/tcp
# Fri, 08 Sep 2017 09:59:28 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb2c08a77237578a88e6a9242db9060c8efbe632e030502899184e93b482620`  
		Last Modified: Mon, 11 Sep 2017 07:21:59 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae08bd2580c409b625db46fe5310f7d2a0c7e2ca9acbd61ac1349e9b8ef04eac`  
		Last Modified: Mon, 11 Sep 2017 07:22:01 GMT  
		Size: 981.7 KB (981687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fc21a90c0c18bcebe5c5d753036d5a41b713b90c4409f14fb7add288839cc4`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 4.2 MB (4173579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c5bd19f75dd7ea3a0ee36a5e57dbbf40db24c0d62578baf163e95964fa9233`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 7.3 MB (7283310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286527c193dfb9fc4c21d73b3cf987ab82212821ee7e185c6dcdbc8d0ce424f8`  
		Last Modified: Mon, 11 Sep 2017 07:23:36 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a1c41d173b07fa9e2d7dee075934aece75e4a4edebdbdd2b353e8bf16ae5a`  
		Last Modified: Mon, 11 Sep 2017 07:23:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
