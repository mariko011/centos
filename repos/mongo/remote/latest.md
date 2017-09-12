## `mongo:latest`

```console
$ docker pull mongo@sha256:20f47ee0831342614b2fe33df128440829fe56e4f8cc7dc6944d2fb8f8c667c1
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131650511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1390a921cb55c6cf62dd1841539a2d4f7671270b0cb4ea87eb5a581e10ce29c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

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
# Fri, 08 Sep 2017 08:08:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 08 Sep 2017 08:08:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 17:48:23 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 17:48:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 17:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 17:48:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 17:48:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 17:48:50 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 17:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 17:48:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 17:48:52 GMT
CMD ["mongod"]
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
	-	`sha256:266b0c4c873344b1b2573e52bca301e1a0de82e22d7a905fcef92a1180d013a7`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f89e28a451cb14f1ce305998b25e7b6e2a55a725ac64acc5fc830ede198082e`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b32a54f95d61753127d7daae3c78514ccd362e8f94555742bed029f5d1bc02f`  
		Last Modified: Tue, 12 Sep 2017 17:49:19 GMT  
		Size: 98.3 MB (98250482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6705a7fa39157b8c7e94a0af1faa68c4587d0e3b9173bcb3e5613ed6dad23ce`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c1660e0fa189111cddc80c3a96dfbd408c2ea1242bb7ef4c7d8fe98b82ecf`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3eb91e73017bc13d4ee781d86e9e5abeea2dffceab1ab89542b9cc3a1b95b6`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
