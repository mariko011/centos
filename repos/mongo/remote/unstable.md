## `mongo:unstable`

```console
$ docker pull mongo@sha256:56e22a335d446ea6dd89047ab27f8ff200942444736e2cbadd3ca1f4055dbe50
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128398284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7f251465c9526dc7695f0c7b0be5cb9ca574b8de23aaf17eeac51197e85f95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:39:56 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 08 Jun 2017 06:41:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:41:28 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 06:41:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 08 Jun 2017 06:41:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 06:42:41 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 08 Jun 2017 06:42:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 06:42:45 GMT
ENV MONGO_MAJOR=3.5
# Thu, 08 Jun 2017 06:42:45 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 08 Jun 2017 06:42:46 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Thu, 08 Jun 2017 06:42:48 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 08 Jun 2017 06:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 08 Jun 2017 06:43:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 08 Jun 2017 06:43:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 08 Jun 2017 06:43:10 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Thu, 08 Jun 2017 06:43:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 06:43:12 GMT
EXPOSE 27017/tcp
# Thu, 08 Jun 2017 06:43:12 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5894f1b797148760c3a238be5fe2439a6a583384e11193b89bc328de1e3a061`  
		Last Modified: Wed, 14 Jun 2017 05:13:38 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe9d8dc79c93f562432e6bae67c7dc1575bfc6ffb1a8c90d05d8d21501601ec`  
		Last Modified: Wed, 14 Jun 2017 05:14:52 GMT  
		Size: 2.4 MB (2397664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e541ce41ff422880d0bcce797144cfbac9694eee846834d9bd84ab110d605587`  
		Last Modified: Wed, 14 Jun 2017 05:14:51 GMT  
		Size: 881.7 KB (881657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e8fcd29198e4065d71e1c0538e5153cbec58c1daf5cf575959c4745ecbf5e1`  
		Last Modified: Wed, 14 Jun 2017 05:14:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ccd8538a101a844ca1056cd372aa1ec17422a0d138235d167291d36eb5408a`  
		Last Modified: Wed, 14 Jun 2017 05:16:57 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f926475f3cee9660d7a1bb330d7600d80bafe92a2fcafb21cbb7835e8f1524`  
		Last Modified: Wed, 14 Jun 2017 05:16:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e963d072842a81bc6adf55c112dd9d0da868e320718ca26be88294e632ac7111`  
		Last Modified: Wed, 14 Jun 2017 05:17:18 GMT  
		Size: 95.0 MB (95013224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deecc8c41ff1025f645b581637630c001e67c2e60db0b6a7ced546c195d8a09`  
		Last Modified: Wed, 14 Jun 2017 05:16:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7184fe3a575d5850367ad3d10348d2ffd8afea3aad3e98aaab912cccea4d0a`  
		Last Modified: Wed, 14 Jun 2017 05:16:57 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
