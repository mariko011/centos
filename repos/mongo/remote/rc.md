## `mongo:rc`

```console
$ docker pull mongo@sha256:b72b024de3b46658082fc5038a3253c15c936d29f84b1e20607e99fb01c5f174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:rc` - linux; amd64

```console
$ docker pull mongo@sha256:7605fc88c62228efc143bdb07dd26ecbafba71bf94e08af0526d01c2e97c2330
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb8e665f59867008e91bbc2fe1f61c8ae345681632b473a6852757b739955f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Nov 2017 01:16:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 28 Nov 2017 01:16:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 28 Nov 2017 01:16:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 28 Nov 2017 01:16:18 GMT
ENV MONGO_MAJOR=testing
# Tue, 28 Nov 2017 01:16:19 GMT
ENV MONGO_VERSION=3.6.0~rc5
# Tue, 28 Nov 2017 01:16:20 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 28 Nov 2017 01:16:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 28 Nov 2017 01:16:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 28 Nov 2017 01:16:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 28 Nov 2017 01:16:50 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 28 Nov 2017 01:16:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Nov 2017 01:16:50 GMT
EXPOSE 27017/tcp
# Tue, 28 Nov 2017 01:16:51 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46999c0135ac5138f70fb35558dc9fb043ceb0f67f9df401107769826d727f62`  
		Last Modified: Tue, 28 Nov 2017 01:17:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b028773c36199127a260a736ad2ba56095e9356fbc8b989d8c14887e0143e1bc`  
		Last Modified: Tue, 28 Nov 2017 01:17:28 GMT  
		Size: 97.0 MB (97013400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6634f52f07ad3b4add67c86704d70716a7e68eb26c2ffad3a6abffb483ab339d`  
		Last Modified: Tue, 28 Nov 2017 01:17:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978a9ced2d42648120479ff202773921fc06b62247404723465059c8641d4371`  
		Last Modified: Tue, 28 Nov 2017 01:17:11 GMT  
		Size: 3.2 KB (3178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
