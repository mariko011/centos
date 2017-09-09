## `mongo:latest`

```console
$ docker pull mongo@sha256:100997a571c8d4c478e77b504f82e74ee14ac0d5f172361cfea7c81b7d776f23
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131650013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917819fa18fdcfc3d2d2b5b845928a7c4d0046bbdeddd9b443eb2bbf73ad9aa1`
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
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_VERSION=3.4.8
# Fri, 08 Sep 2017 08:09:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:09:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:09:23 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:09:24 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:09:24 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:09:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:09:26 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:09:26 GMT
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
	-	`sha256:bcd03c9dc08e23aaafa46367b69ad4e50775e0d58061e4c243bd6687100ce4d3`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c5575dee1415228f2a665f0dcc9408a70ad78db945f4a24c6c4936a609792a`  
		Last Modified: Fri, 08 Sep 2017 23:28:41 GMT  
		Size: 98.2 MB (98249982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb596371f1e30b5da70a7bf2e9b88bd7412a49bb86120d147522eb59aeed53b`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ec63a705b288837d1f8e9ceadc18b10361621a56c0a4079ffb3ccfcae01d30`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241b43012106e0592963b79c0516318a6664ac3cb2310e8539cde0478c5028da`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
