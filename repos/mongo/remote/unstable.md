## `mongo:unstable`

```console
$ docker pull mongo@sha256:6b97da14c7db7bc5b1e5a38493ced16f0b433e9f494cee4f90bc422e09119ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
