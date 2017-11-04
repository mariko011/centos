## `mongo:jessie`

```console
$ docker pull mongo@sha256:7618c602d518811af0c69c2187474e028308bd0c6343922fc681511c37257814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
