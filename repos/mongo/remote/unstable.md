## `mongo:unstable`

```console
$ docker pull mongo@sha256:177bb208a21af06a62bc3db6ca19624538cb04fb47e15adab2578a4c604227d9
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128956286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2635ac982bd2bc349e302d586e626af351f0e35c30587e0d39d237a260499566`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 31 May 2017 21:36:25 GMT
ENV MONGO_VERSION=3.5.8
# Wed, 31 May 2017 21:36:26 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Wed, 31 May 2017 21:36:28 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 May 2017 21:36:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 May 2017 21:36:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 May 2017 21:36:51 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 May 2017 21:36:52 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 31 May 2017 21:36:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 21:36:54 GMT
EXPOSE 27017/tcp
# Wed, 31 May 2017 21:36:54 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4956db9472bcaba8c1dd255e08ec338d1a51ec95add2fb723cc43f834e547e4`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7172bf85ce73a7532dd175187dbcacf4e92cd84c82724e67f514ef0f4bb3bc51`  
		Last Modified: Wed, 31 May 2017 21:40:39 GMT  
		Size: 95.0 MB (95019583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa001677984be68f95db08e3962c53b520f0653a7aa5278c2201be2e69c60aa`  
		Last Modified: Wed, 31 May 2017 21:40:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af12436c2b9c14d25f01b64ee038d1c2f8dd664dc83be4f04ad5b8582096ab35`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
