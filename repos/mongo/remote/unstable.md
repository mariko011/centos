## `mongo:unstable`

```console
$ docker pull mongo@sha256:ae498085ee51b48c8ff045c3aeb767a8c19f1cb1506b62888889dbe9c84f798c
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131958513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c78c702f2d2f47b1095a90356a1deb6f2ca0b4add10a5c2680c124ec150ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 18 Apr 2017 17:08:42 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 18 Apr 2017 17:09:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Apr 2017 17:09:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Apr 2017 17:09:04 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Apr 2017 17:09:05 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 18 Apr 2017 17:09:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Apr 2017 17:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Apr 2017 17:09:07 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:09:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d66361a32aa95f84a20d28c49bf7c256f2cae6236e915a6896849eb53a1db5f`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa3a05a055efc00e0d6c43f835da1fe161f9679b81013f4303c91978ba3f16`  
		Last Modified: Tue, 18 Apr 2017 17:12:04 GMT  
		Size: 100.9 MB (100853432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71809df1ec25a519b832150c99cd6307c9a34bf5e798147f5451554eb40e2ee`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c64adc05e9ecb03aedb0202e4916f1ef78b364d73621f766201235e2aa0cee8`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895688560e9c4e1d9c855f0697edd5c37e9bc1b44fe44123873a179a09bb2aa`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
