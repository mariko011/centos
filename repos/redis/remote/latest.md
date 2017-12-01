## `redis:latest`

```console
$ docker pull redis@sha256:bc64ad1a00fc552545c1b2d402cc8e22760d2ede7c17ad020984164bde63c2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm64 variant v8

### `redis:latest` - linux; arm64 variant v8

```console
$ docker pull redis@sha256:420ae0e3bb344f8a8d2059f6286dfcb9328e65b9e1e0f7f359f1ac5d8ae6f9c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36862491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514024c66539efe4a39580ccc0356260825afdae6eaf529ef5d1310c12949f49`
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
# Fri, 01 Dec 2017 19:23:31 GMT
ENV REDIS_VERSION=4.0.5
# Fri, 01 Dec 2017 19:23:33 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.5.tar.gz
# Fri, 01 Dec 2017 19:23:34 GMT
ENV REDIS_DOWNLOAD_SHA=d52bf355b96e20905916482962235e0442634c849934adb034f85362b31ed978
# Fri, 01 Dec 2017 19:26:14 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		libc6-dev 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)"; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Fri, 01 Dec 2017 19:26:16 GMT
RUN mkdir /data && chown redis:redis /data
# Fri, 01 Dec 2017 19:26:17 GMT
VOLUME [/data]
# Fri, 01 Dec 2017 19:26:17 GMT
WORKDIR /data
# Fri, 01 Dec 2017 19:26:18 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Fri, 01 Dec 2017 19:26:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Dec 2017 19:26:20 GMT
EXPOSE 6379/tcp
# Fri, 01 Dec 2017 19:26:20 GMT
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
	-	`sha256:ae1c8d095ad5784c909a93462870783d0e438138239c50cc50859d94f9e8b9b6`  
		Last Modified: Fri, 01 Dec 2017 19:28:14 GMT  
		Size: 8.4 MB (8430655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821085efd9701c7901c95d2f49be4bc196b25b133b3d1fad4ccdeae02dc57fe`  
		Last Modified: Fri, 01 Dec 2017 19:28:12 GMT  
		Size: 99.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ace674017b514e90e48317cc41e990125e7e53d5808e2e4c26e064def374db`  
		Last Modified: Fri, 01 Dec 2017 19:28:11 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
