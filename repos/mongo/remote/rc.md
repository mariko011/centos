## `mongo:rc`

```console
$ docker pull mongo@sha256:9b7a9af5a22bd3132987e14c7992de72b79ca3aac2606d1d1d6d3c02758bc7cb
```

-	Platforms:
	-	linux; amd64

### `mongo:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150356635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a8bab0b3c7946a69e7e0230e09f73e608567fe2e5c0e8f30a1b022ff1f882`
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
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_VERSION=3.4.0~rc3
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 14 Nov 2016 23:11:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 14 Nov 2016 23:11:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 14 Nov 2016 23:11:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 14 Nov 2016 23:11:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 14 Nov 2016 23:11:40 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 14 Nov 2016 23:11:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 23:11:41 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:11:41 GMT
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
	-	`sha256:1df986eee24f921f541542d687a5cc0f57362a64afd8480788c5829087aca842`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eaa5d3cfda7ffc55bb9f22d4195ad88721a3a54897984f883b8dd5a7dfcdd7`  
		Last Modified: Mon, 14 Nov 2016 23:14:30 GMT  
		Size: 97.6 MB (97643607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd691d591973f72f09dfeaf2c472957278f94b6941e10da261ef125d74121ae6`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e3e11f4c5361878559aa2cad13c03d252f0d140c9c9d4878effce4b5d24b0`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
