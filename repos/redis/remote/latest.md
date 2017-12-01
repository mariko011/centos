## `redis:latest`

```console
$ docker pull redis@sha256:02df3516b921d96ff2461aa59e1eee35de44b71347261920041012c75ab0cb51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `redis:latest` - linux; amd64

```console
$ docker pull redis@sha256:95b6a137e716b9d0a40afd5f76006ad6a0a64f619656fe3e7aa3831a6009755c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39387597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51649e11256b95acad8da6623699c312b289c7299377536e8fa6acde4efd7c18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 16:15:26 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Sat, 04 Nov 2017 16:15:26 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 16:15:47 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 00:32:29 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 00:32:29 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 00:32:30 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 00:33:09 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 00:33:10 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 00:33:14 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 00:33:15 GMT
WORKDIR /data
# Fri, 01 Dec 2017 00:33:15 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 00:33:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 00:33:15 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 00:33:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f8341839ed6c0ca916876566d7193c33a80ae461cba558d85832436f59650`  
		Last Modified: Sat, 04 Nov 2017 16:22:06 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9cdda7eb9fa2604e34311ddfbf9bb9e3b8a67d6c1668a9dc802f27855dcdd`  
		Last Modified: Sat, 04 Nov 2017 16:22:07 GMT  
		Size: 981.7 KB (981737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260b7d0a6aef1ad2852f043145477dfddb24e7553f4bdc27f40a2f9e410fbcf8`  
		Last Modified: Fri, 01 Dec 2017 00:43:23 GMT  
		Size: 8.3 MB (8289952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f2a3f384d850ced9c8af8f4bdd6a62e2586e3b80211a7eae792d075884b2f8`  
		Last Modified: Fri, 01 Dec 2017 00:43:21 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80467da7679bf97b3a714bad46a9214821b38c4f7f14fe21b69e1d2dda94d83d`  
		Last Modified: Fri, 01 Dec 2017 00:43:21 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm variant v7

```console
$ docker pull redis@sha256:e1776c8e1e48ea7878cdbdd74d73370ccf784b9575e31280802e28aacb6dfc9a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35161252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7bbba1c93a077534b1031053ef16bd884f7eb25d0c66de9c13a91766adb88cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:22 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 00:11:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:12:25 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 01:27:41 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 01:27:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 01:27:42 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 01:28:42 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 01:28:43 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 01:28:43 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 01:28:44 GMT
WORKDIR /data
# Fri, 01 Dec 2017 01:28:44 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 01:28:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 01:28:45 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 01:28:45 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1b8976e9d698895ee6bac5731b99ea1c740a234bb1d7cf23d8f74334b74a63`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0064aaefd3fc879be9a4010ba88375a62b4f4f1e6a483ab539f77ab45aee083e`  
		Last Modified: Tue, 10 Oct 2017 00:15:36 GMT  
		Size: 956.1 KB (956111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f206b059d47313b444c3626dd9159ef10e6dd9f1b51fa68fddf49562ec3d04b`  
		Last Modified: Fri, 01 Dec 2017 01:29:15 GMT  
		Size: 7.9 MB (7921552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b02376e0e288273bd8783da0869b0253b66306f95dffc407ab84539f733289`  
		Last Modified: Fri, 01 Dec 2017 01:29:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfaf565d4f45287e979abf9006e42160889ea05e9116866d8dd1776bdccd6392`  
		Last Modified: Fri, 01 Dec 2017 01:29:10 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:8f5b5586d9f03cd1b5221a5faafeef8a88d353c535f79bdbc673eb6136da9254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36861693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb6b1c6ca3c5aa5eb4250a1290a1f54fc77323d09b82721cb00d9607b9258da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:03:20 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 05:03:21 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 05:04:19 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 13:26:11 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 13:26:11 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 13:26:12 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 13:27:53 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 13:27:54 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 13:27:55 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 13:27:56 GMT
WORKDIR /data
# Fri, 01 Dec 2017 13:27:56 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 13:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 13:27:58 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 13:27:58 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e1313d9bb5766ff6bdeb2dde2e7f01045ac9c7df071253d3dc226d7cbe691`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c747456b46f024d9fda80792b271a2396f5d11f0adb7def45ec25548f8ab7`  
		Last Modified: Tue, 10 Oct 2017 05:08:57 GMT  
		Size: 948.7 KB (948653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861c302a802b806776ec93c9364db1a57d37e1a235f33898154759d2a69fdd23`  
		Last Modified: Fri, 01 Dec 2017 13:29:45 GMT  
		Size: 8.4 MB (8429856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a32dc9b84132d07a3f47cc64f65ea0032c2044e70ec27c80e1abbd37b135dc2`  
		Last Modified: Fri, 01 Dec 2017 13:29:41 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d87950f0659e872d2ccadbe93f913e328c88c6d91c2b011f98679bcd3ac63a5`  
		Last Modified: Fri, 01 Dec 2017 13:29:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; ppc64le

```console
$ docker pull redis@sha256:bbb0b24dcd5ae1847484c81f73e7282ae3177b7ead4da0b834c5c4fe5e97ea7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.9 MB (38908723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d51fae93c7edebe56e190146778f5b97bcfc383ad393e99a58fad96e48eb2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:51:38 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 10 Oct 2017 06:51:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:16 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 06:35:27 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 06:35:28 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 06:35:29 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 06:38:39 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 06:38:44 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 06:38:45 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 06:38:47 GMT
WORKDIR /data
# Fri, 01 Dec 2017 06:38:49 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 06:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 06:38:51 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 06:38:53 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537c33b2629cef2e083c79f74e8f68604cdcb77e2aa240795e5f6a5bff74a92`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58a246dc69d3d7c69f0b6a0fce3e472d5d4d89886b4d25241dae28720030066`  
		Last Modified: Tue, 10 Oct 2017 07:12:32 GMT  
		Size: 950.9 KB (950943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f591b68702434a8d13c7d0b5ec91e8d7fe74d335a3d3a88ea8295c20003fa1`  
		Last Modified: Fri, 01 Dec 2017 06:40:19 GMT  
		Size: 8.6 MB (8648612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a253587efc76f7a15791501a93631248d287d0094b3f4b914714f891b54577`  
		Last Modified: Fri, 01 Dec 2017 06:40:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4997f94d43b2158a98e100e7264dcafca1809b1fc1e44111aab68fb2ac3503`  
		Last Modified: Fri, 01 Dec 2017 06:40:17 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redis:latest` - linux; s390x

```console
$ docker pull redis@sha256:f8d6520507602064b234ed2eca1e768716086a26380983eb47202e68a2a08b23
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 MB (40187913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7473f3d373989809852256a1a28d0b9c26df1f3f6c1efc0024528c63026fb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:46:49 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Mon, 09 Oct 2017 23:46:50 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:47:10 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 01 Dec 2017 06:24:41 GMT
ENV REDIS_VERSION=4.0.4
# Fri, 01 Dec 2017 06:24:41 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.4.tar.gz
# Fri, 01 Dec 2017 06:24:42 GMT
ENV REDIS_DOWNLOAD_SHA=35768145335e874b1b810e23494ad3daa6f442c3dc1d7e3784992ba50799c0cd
# Fri, 01 Dec 2017 06:25:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 06:25:19 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 06:25:19 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 06:25:19 GMT
WORKDIR /data
# Fri, 01 Dec 2017 06:25:19 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 06:25:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 06:25:20 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 06:25:20 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1b0aa2f9a0b809864d23aad0244ab4b21c3ce7ebed4ddf0cd2d051a738a385`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97156c7e7c15cd65361cca6b90910ade53527af127634758a9b869f8edcf31c3`  
		Last Modified: Mon, 09 Oct 2017 23:48:58 GMT  
		Size: 966.9 KB (966858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19c646e70c38770ec7e364e3beda8910d02cf62d179756876d16e15f60161b1`  
		Last Modified: Fri, 01 Dec 2017 06:26:08 GMT  
		Size: 8.9 MB (8924269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c0da787119941b09884f14f4079e4c3fb228df29d030050eabc01f24a5fdd6`  
		Last Modified: Fri, 01 Dec 2017 06:26:05 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac4621655e86eb0babd10f247d36380be02b82ef7581500784c6ad7c8c02354`  
		Last Modified: Fri, 01 Dec 2017 06:26:05 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
