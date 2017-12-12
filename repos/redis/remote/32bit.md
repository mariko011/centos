## `redis:32bit`

```console
$ docker pull redis@sha256:8bed0b775931863b5d078327efd9223ff9577a1def0007f96bd8f8f90447a71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:13db2387fdaa531ca4c3a06624ce19341fae7bd0e1790ba35ee474eb77cc9a48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42984966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d9a849e79ad26118bff2bf3b068ca2b0262dc7ce397be87f2175cd60c1a33d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:11:57 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Tue, 12 Dec 2017 07:11:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 07:12:20 GMT
RUN set -ex; 		fetchDeps='ca-certificates wget'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 07:15:08 GMT
ENV REDIS_VERSION=4.0.6
# Tue, 12 Dec 2017 07:15:08 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.6.tar.gz
# Tue, 12 Dec 2017 07:15:08 GMT
ENV REDIS_DOWNLOAD_SHA=769b5d69ec237c3e0481a262ff5306ce30db9b5c8ceb14d1023491ca7be5f6fa
# Tue, 12 Dec 2017 07:16:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:17:18 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 07:17:19 GMT
RUN mkdir /data && chown redis:redis /data
# Tue, 12 Dec 2017 07:17:19 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 07:17:19 GMT
WORKDIR /data
# Tue, 12 Dec 2017 07:17:19 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Tue, 12 Dec 2017 07:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 07:17:20 GMT
EXPOSE 6379/tcp
# Tue, 12 Dec 2017 07:17:26 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58638acf67c5d1d65732b562d5a7f5525b9788155cc10d4cd96c3d5380fadf04`  
		Last Modified: Tue, 12 Dec 2017 07:17:40 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98d108cc38bde856021760374435ab87fa2ef7c4317cd18fd7b7ded7af506a3`  
		Last Modified: Tue, 12 Dec 2017 07:17:40 GMT  
		Size: 981.7 KB (981699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f27c9c500ee667dfaa0a03c087510c3cbf9d47147b9a3fae557209628dc578`  
		Last Modified: Tue, 12 Dec 2017 07:19:47 GMT  
		Size: 4.4 MB (4378535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f596b4d07546bd701ba0489878b8c33e1b65c1b55dbdc7e2f8c0ca0271db736`  
		Last Modified: Tue, 12 Dec 2017 07:19:47 GMT  
		Size: 7.5 MB (7507624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d798be9ee67706579c0ca166c9ded26da04ae2695656a77b44df6905239427bf`  
		Last Modified: Tue, 12 Dec 2017 07:19:46 GMT  
		Size: 97.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b767c1acbcafe54bc11cd58e20aa7cf7e87e611501c4b4902bc127dc742e1e6e`  
		Last Modified: Tue, 12 Dec 2017 07:19:47 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
