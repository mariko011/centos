## `redis:latest`

```console
$ docker pull redis@sha256:472c9a984607e6194dc2e645d23907738b77bf76ea0abcf870cbde741d5f650a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:ef728e78b63de0c44ddb2d3cec482816293deaee013f8f3719260095a79c80bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39372240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6dddb991dfa5f8e49b00d2d4ff1e46e6593101ace99cca0febf287cadc4febf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:32:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:32:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:32:56 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_VERSION=4.0.2
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Thu, 21 Sep 2017 20:55:13 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Thu, 21 Sep 2017 20:56:08 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Thu, 21 Sep 2017 20:56:09 GMT
RUN mkdir /data && chown redis:redis /data
# Thu, 21 Sep 2017 20:56:09 GMT
VOLUME [/data]
# Thu, 21 Sep 2017 20:56:09 GMT
WORKDIR /data
# Thu, 21 Sep 2017 20:56:10 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Thu, 21 Sep 2017 20:56:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Sep 2017 20:56:10 GMT
EXPOSE 6379/tcp
# Thu, 21 Sep 2017 20:56:10 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9835c278527bc23a93cf0cbfae60655ad5cf9f26806935a1bd0da57d14c751`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a0d1212c38ec976de047e36c9b0f19d8427333c4db7d45d403f5839ec1c8fb`  
		Last Modified: Tue, 19 Sep 2017 03:38:55 GMT  
		Size: 981.7 KB (981718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be9e9f0fb9e865d48a8b5e54cd5560e70b8654b2079c296584bb831ed95270`  
		Last Modified: Thu, 21 Sep 2017 21:02:37 GMT  
		Size: 8.3 MB (8274798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bca8e532ecd790280384459b0f38a2afcb3e8b34ad2f44f74fc5f7fa1afcb8`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382eae952932be17e3e19f293a03dcd46997be14270fb84563700f964dc6238a`  
		Last Modified: Thu, 21 Sep 2017 21:02:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v5

```console
$ docker pull redis@sha256:f1d900ef1d03630f7283e454d3f990161677daa594241ab79c2c5751f3dac6df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37568991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaea6e28108c25a3637c81619255c9bdcc4a0db697e78ec2b91bc2aef293ae19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:04:25 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:04:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:09:30 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 18:05:29 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 18:05:30 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 18:05:31 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 18:15:11 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 18:15:13 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 18:15:14 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 18:15:15 GMT
WORKDIR /data
# Fri, 22 Sep 2017 18:15:16 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 18:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 18:15:18 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 18:15:19 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d6c4d9a2fba872cff461e8e8c20b69ea3aa9d829462a25dd1c8795b0009856`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53631fc6671832d1ad815bc338d2e57c9838bbc229916e7d3a9a5f11df03bdeb`  
		Last Modified: Sat, 09 Sep 2017 02:44:20 GMT  
		Size: 971.4 KB (971422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfdbaabbfe46860f1fe4b0c035891b1acb655e5069db6eebf9f2c740a02a4c1`  
		Last Modified: Fri, 22 Sep 2017 18:16:33 GMT  
		Size: 8.2 MB (8172493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fad35e25e9542ae7983ed5497b3f12fd07b17bf1d73366beb20158c7896f23`  
		Last Modified: Fri, 22 Sep 2017 18:16:26 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76548d58703e08fd202a0340abf01b0edf1fa703b3ab0ec7638c1fd56c2fcea0`  
		Last Modified: Fri, 22 Sep 2017 18:16:26 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:3e1cf827dc634d563f6827a02cacbd8d9792e18b5e4372ae7d25e4350ddb84b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35156734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cb3a3b1cbd131f2210f3089a7bbcb9ff9f28e4cb323f8e6dfa57dec9ac938f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 03:05:55 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 19 Sep 2017 03:05:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 03:11:04 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 00:34:39 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 00:34:41 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 00:38:58 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 00:39:00 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 00:39:01 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 00:39:02 GMT
WORKDIR /data
# Fri, 22 Sep 2017 00:39:03 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 00:39:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 00:39:05 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 00:39:06 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa78af1dc05c680523e0e793af7351fde77d37b56e6d4c2be5d45c69e6bcc7`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f17d61ada0d583be49aa7a57f8c5362ffd1d02d581c9ace2e5262ec3166a4a`  
		Last Modified: Tue, 19 Sep 2017 03:29:47 GMT  
		Size: 956.3 KB (956290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87edc98a3525491b3c726025f682e807b9ff0704a98e9ab46854334316653c0d`  
		Last Modified: Fri, 22 Sep 2017 00:40:24 GMT  
		Size: 7.9 MB (7918395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e9f4d6ee11a1c6f937079b1cdf7b6007a2c2701d9c1f1d82d74dd56429d9b8`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67949765e580a2359587430bf1600557980a247bf73adacf07817fcabf8cbb32`  
		Last Modified: Fri, 22 Sep 2017 00:40:20 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:4845140105737ed581dba4f744be0c2556ae2ba8b0d18dc3f41ba67b62e11151
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36847619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f96525c124fae5046d5246bff2105ae6681951b1007646019ef88b4f353209`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:47:18 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 09 Sep 2017 02:47:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 02:48:38 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 12:27:43 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:27:44 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:29:26 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:29:27 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:29:28 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:29:29 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:29:30 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:29:31 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:29:32 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715ea475c1dc269a38ebfee254376c154c2dc2a64a2887d559243eb5e59429d5`  
		Last Modified: Sat, 09 Sep 2017 02:57:13 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287b4ff744d288b6c4cb9ee329a00c3cbb5acb152ae88eac786ac9084a530a7b`  
		Last Modified: Sat, 09 Sep 2017 02:57:14 GMT  
		Size: 948.7 KB (948729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac15723d8d0fba9bf5664cae62333fa1c0b43234dab991cbd4a6911a2da8dcf9`  
		Last Modified: Fri, 22 Sep 2017 12:30:36 GMT  
		Size: 8.4 MB (8415910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f73a338123506c454f23e0fe39482284d2bbf48940142bd7e6671803184703`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054926106ae8a2807c4f3f95d762998d2f02e1215aca57faa64e1b097e212581`  
		Last Modified: Fri, 22 Sep 2017 12:30:33 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; 386

```console
$ docker pull redis@sha256:d9806ceb97cd055a4bf777964380bada1ae75149aad9d4e871b89b351327241b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38713920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136124221c70aabac4bdd8401e208e11674aeafa4d09c2e9432d5757189d4fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:12:53 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 17:12:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:13:53 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 12:17:59 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 12:18:00 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 12:19:07 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 12:19:08 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 12:19:08 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 12:19:08 GMT
WORKDIR /data
# Fri, 22 Sep 2017 12:19:09 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 12:19:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 12:19:09 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 12:19:09 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ede072b04252ed37d0b3f458abd925ed9a16c1453d1dbe3884f06ff416bc39c`  
		Last Modified: Fri, 08 Sep 2017 17:17:12 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3633915fd03a8ec800300ef25f0e4fc969383fe4a4dc1725bf5c9e181ef84bac`  
		Last Modified: Fri, 08 Sep 2017 17:17:13 GMT  
		Size: 960.8 KB (960783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a813b99168123bcb44e3ed6af24a948e85edd544ab04b0493a87406b768c1d`  
		Last Modified: Fri, 22 Sep 2017 12:19:50 GMT  
		Size: 7.5 MB (7486393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc41c7286101a3b1f93e839c6a77c29a5eec6a4142546fa0a3cd81cd3a94a40`  
		Last Modified: Fri, 22 Sep 2017 12:19:49 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c157457e68d1a66980eb50e88990add470e9c4f945d6d33ad9ca80e038cf1`  
		Last Modified: Fri, 22 Sep 2017 12:19:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:acda5a62a21c587804f8878e6b01762f808f7144b223d7b205cf8b17e98ed063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38894470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba7bf7a80d6d707077001db34bf2c4d4ecd0f884d17964683b390544d1ed7fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:36:41 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 02:36:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 02:37:07 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 05:39:15 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:39:17 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:39:18 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:42:29 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:42:34 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:42:36 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:42:37 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:42:39 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:42:44 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:42:46 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b7dc9fbcb59c464bb2dee6a93c8de45a94e651da0f7e73b9463f91b584d718`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8fdc5bb87107ce2c801e86b5daf0b77abd4a00109cfd20b0c250b4e27c555d`  
		Last Modified: Fri, 08 Sep 2017 02:38:52 GMT  
		Size: 950.4 KB (950420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62e196e5f9bcd1d645bde7808a33fdf0b9a007f270d2e72e9dc161e35bf6a1f`  
		Last Modified: Fri, 22 Sep 2017 05:43:22 GMT  
		Size: 8.6 MB (8634982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c9f3f8035aec3526fecb2cfdfbb0875e87816cced6e0acc4d837de8b201e6c`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3000da410048933c9c436841b3f2023e9f84cd523e6c9a69ae23c102609171d3`  
		Last Modified: Fri, 22 Sep 2017 05:43:19 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:975ad29ec743d71ca6ad72e0245a85177d3f1c6c7b3d3f858883ae310e2dc71b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40167645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d62d225b4c05d5bc56df68ef8ad4c02ffde63d78394e6342a79cb86f3f0fac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:14:31 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Fri, 08 Sep 2017 07:14:31 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:14:50 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_VERSION=4.0.2
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.2.tar.gz
# Fri, 22 Sep 2017 05:25:08 GMT
ENV REDIS_DOWNLOAD_SHA=b1a0915dbc91b979d06df1977fe594c3fa9b189f1f3d38743a2948c9f7634813
# Fri, 22 Sep 2017 05:25:46 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 22 Sep 2017 05:25:46 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 22 Sep 2017 05:25:47 GMT
VOLUME [/data]
# Fri, 22 Sep 2017 05:25:47 GMT
WORKDIR /data
# Fri, 22 Sep 2017 05:25:47 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 22 Sep 2017 05:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Sep 2017 05:25:47 GMT
EXPOSE 6379/tcp
# Fri, 22 Sep 2017 05:25:48 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e7d3e483472434f624e773ed187c706ad109c44f1a568fd72d8677aafbb2c`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c5ed9756cb27be8619d079c85a8ef0ec3696d7acfa4202eeb56c800845cd0`  
		Last Modified: Fri, 08 Sep 2017 07:16:19 GMT  
		Size: 966.9 KB (966854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82bbeea47f1fca75c57b4f7f130e5a4d72160e8feb947982ba163ae0dfe46aca`  
		Last Modified: Fri, 22 Sep 2017 05:26:16 GMT  
		Size: 8.9 MB (8904046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2796ce4c0d8ce62a1409bfe45448c822180ad8610c34872b5090ef50b20a0cfc`  
		Last Modified: Fri, 22 Sep 2017 05:26:13 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685f3d1541495bdb047d0623f47b6cad9087b57d4bd62935d4df39954fef9dd`  
		Last Modified: Fri, 22 Sep 2017 05:26:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
