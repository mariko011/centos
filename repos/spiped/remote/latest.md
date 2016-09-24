## `spiped:latest`

```console
$ docker pull spiped@sha256:80e7348817cf67e70cd1cc34c62e87ea592584184e710f84c88b1aa34117af2b
```

-	Platforms:
	-	linux; amd64

### `spiped:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 MB (55605407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d215c4010c87077fc3f5600f1e2dd4d0511e35e09efb23b75144eb313fc48a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:42:15 GMT
MAINTAINER Tim Düsterhus
# Fri, 23 Sep 2016 23:42:16 GMT
RUN groupadd -r spiped &&	useradd -r -g spiped spiped
# Fri, 23 Sep 2016 23:42:23 GMT
RUN apt-get update &&	apt-get install -y libssl1.0.0 --no-install-recommends &&	rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_VERSION=1.5.0
# Fri, 23 Sep 2016 23:42:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.5.0.tgz
# Fri, 23 Sep 2016 23:42:24 GMT
ENV SPIPED_DOWNLOAD_SHA256=b2f74b34fb62fd37d6e2bfc969a209c039b88847e853a49e91768dec625facd7
# Fri, 23 Sep 2016 23:42:24 GMT
COPY file:0f26a499fef90f06070551ff66a17abfb7e814a4f023905e52236c31b216a7bb in /0001-Fix-docker-stop-issue.patch 
# Fri, 23 Sep 2016 23:42:51 GMT
RUN buildDeps='libssl-dev gcc make curl ca-certificates patch' &&	apt-get update && apt-get install -y $buildDeps --no-install-recommends &&	rm -rf /var/lib/apt/lists/* &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	patch -p1 -d /usr/local/src/spiped/ < /0001-Fix-docker-stop-issue.patch &&	make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Sep 2016 23:42:52 GMT
VOLUME [/spiped]
# Fri, 23 Sep 2016 23:42:52 GMT
WORKDIR /spiped
# Fri, 23 Sep 2016 23:42:53 GMT
COPY multi:cece67136bcb3e9eb15d965c7f2f0aa1577fa83acbd640e2016eb71cc01e0cfa in /usr/local/bin/ 
# Fri, 23 Sep 2016 23:42:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 23:42:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a3142e86705b8aab84a1b79ba3797f9cf17821592cb4e34658145a691ad9d3`  
		Last Modified: Fri, 23 Sep 2016 23:43:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9bf31813ea7dc992fc0a10a60b9b347fc6ca72c326ba6bb0418f3f7d6728c3`  
		Last Modified: Fri, 23 Sep 2016 23:43:03 GMT  
		Size: 1.7 MB (1690299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec65ade24a52277a043ed627eed639fc2a80dfe6d27f95be51bcc2c95377691`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd145ff8dfd27fe6d248b7b9537745c6d2f1d48a306f78159d436fc5c3338406`  
		Last Modified: Fri, 23 Sep 2016 23:43:02 GMT  
		Size: 2.6 MB (2557035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ee17f939bd4af637877db0729ed73ec5d5148de12df92f89f018d1717626e3`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af4c685b5c8b6bd93b70a5740ffe54175534fc02ea6369a513e01e375b0f491`  
		Last Modified: Fri, 23 Sep 2016 23:43:01 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
