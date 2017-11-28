## `mongo:rc`

```console
$ docker pull mongo@sha256:752ea249730dfc6de3e9faf9912220c2253fa2396deab995e455648acb30290f
```

-	Platforms:
	-	linux; amd64

### `mongo:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150376393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f655b2a8124ced139e15e0ea876b3b30a701bf3b2891f8a8a94adc363192d31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:28:23 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 Nov 2016 21:03:26 GMT
ENV MONGO_VERSION=3.4.0~rc5
# Wed, 23 Nov 2016 21:03:26 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 23 Nov 2016 21:03:27 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 23 Nov 2016 21:03:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 Nov 2016 21:03:44 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 Nov 2016 21:03:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 Nov 2016 21:03:46 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 23 Nov 2016 21:03:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Nov 2016 21:03:46 GMT
EXPOSE 27017/tcp
# Wed, 23 Nov 2016 21:03:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1189dc55286b81495a1c8392fefde78fd51d4a61627e59de40c4780666cb4318`  
		Last Modified: Wed, 23 Nov 2016 21:06:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad04025ab1dde05eb6d2b2a2bab1c0e219c7746ffa88e4a2f02037896a30a9b`  
		Last Modified: Wed, 23 Nov 2016 21:06:34 GMT  
		Size: 97.7 MB (97663365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a918fdb885dcbe2107f8ee2d5d0910fde3461aaf0df57e9eb2dd624b642bfef`  
		Last Modified: Wed, 23 Nov 2016 21:06:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003273e609cea264d6c4c3775554b2c2ad5a29c732f435c06a4fe80170931654`  
		Last Modified: Wed, 23 Nov 2016 21:06:05 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
