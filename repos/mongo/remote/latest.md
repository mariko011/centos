## `mongo:latest`

```console
$ docker pull mongo@sha256:0d4453308cc7f0fff863df2ecb7aae226ee7fe0c5257f857fd892edf6d2d9057
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150417788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad974e767ec4f06945b1e7ffdfc57bd10e06baf66cdaf5a003e0e6a36924e30b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:20:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jan 2017 17:20:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_MAJOR=3.4
# Tue, 07 Feb 2017 20:00:04 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 07 Feb 2017 20:00:04 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 07 Feb 2017 20:00:06 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 07 Feb 2017 20:00:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 07 Feb 2017 20:00:25 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 07 Feb 2017 20:00:25 GMT
VOLUME [/data/db /data/configdb]
# Wed, 08 Feb 2017 21:41:43 GMT
COPY file:31c99192d9c1648c6f48dc5557de182c76080376f32685657130407fda705b3b in /entrypoint.sh 
# Wed, 08 Feb 2017 21:41:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Feb 2017 21:41:44 GMT
EXPOSE 27017/tcp
# Wed, 08 Feb 2017 21:41:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efff42d23e56240211ded6a6409387dc94d2179772646ea3e9c6377686e9e09`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df9f20d1d07a58a87910069f2d1a6e7d8e8a7759bc5b6ef993d8ecc26cfdea7`  
		Last Modified: Tue, 07 Feb 2017 20:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ac0a1517cc46ff535665db717c6f78119ca8f73ad70e785720b615a5d415`  
		Last Modified: Tue, 07 Feb 2017 20:02:15 GMT  
		Size: 97.7 MB (97700417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010dcda0f65b87511f4117fa7aa079112fbead7f093d6c2847f0c2dac3b6a773`  
		Last Modified: Tue, 07 Feb 2017 20:01:46 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec68d17240b358d84c580d79b72e71a9dd2cf84934752efd918f6fca6f90c6f7`  
		Last Modified: Wed, 08 Feb 2017 21:43:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
