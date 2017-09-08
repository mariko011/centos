## `mongo:unstable`

```console
$ docker pull mongo@sha256:b32f0167f971dd63f93b2bc9f894c4939439e4b8873f07a38f8706fb33b57798
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131656982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed1813c0468ed7d1fc6f3416b17523fe7d4067f30d838a821858ffc830d4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:09:31 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 08 Sep 2017 08:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:09:36 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 08 Sep 2017 08:09:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_MAJOR=3.5
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_VERSION=3.5.12
# Fri, 08 Sep 2017 08:09:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:10:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:10:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:10:02 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:10:03 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:10:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:10:03 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:10:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5415b9414455a81c5db55753e5254975f41d65107b8d95b9c433cacb093c6e2`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f4921c17678a51cb5909f82a3a28f3f1794593efc65e41808476eb1284d1ef`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7d406af172e13350218e997efc4e68bc9d276855e509c3587c236d582f140`  
		Last Modified: Fri, 08 Sep 2017 23:29:34 GMT  
		Size: 98.3 MB (98257011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a13d9742a6f5532123232503abdac7ad98efc000e0a4b7c902ee00345c059`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74657325a1c9435f42ad0da865436c5541d0171f71063b3932a418fb1d8af63`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
