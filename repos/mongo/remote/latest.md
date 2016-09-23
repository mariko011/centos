## `mongo:latest`

```console
$ docker pull mongo@sha256:27cfe059af7d5fad5b1a0381e0cf85fa52e3222915adfe96e0d3004bd9851d0b
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126231019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d2bbc1f992fabadfcd8450b3d000149fc64ddd824bdad17f388776b1053493`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:05:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 23 Sep 2016 20:06:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 20:06:02 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 20:06:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 20:06:19 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 23 Sep 2016 20:06:21 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Sep 2016 20:06:21 GMT
ENV MONGO_MAJOR=3.2
# Fri, 23 Sep 2016 20:06:22 GMT
ENV MONGO_VERSION=3.2.9
# Fri, 23 Sep 2016 20:06:23 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 23 Sep 2016 20:06:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		mongodb-org=$MONGO_VERSION 		mongodb-org-server=$MONGO_VERSION 		mongodb-org-shell=$MONGO_VERSION 		mongodb-org-mongos=$MONGO_VERSION 		mongodb-org-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 23 Sep 2016 20:06:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 23 Sep 2016 20:06:36 GMT
VOLUME [/data/db /data/configdb]
# Fri, 23 Sep 2016 20:06:37 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Fri, 23 Sep 2016 20:06:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 20:06:38 GMT
EXPOSE 27017/tcp
# Fri, 23 Sep 2016 20:06:38 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068577f76f42dee918ef4710b25307b905d6a9862755ac4ccb5d5b262e8f3eb6`  
		Last Modified: Fri, 23 Sep 2016 20:06:50 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9ca5f1cfbce73ad508bd74c3792d486f9e1aecd8b322141d24a31c6f1441d`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 134.2 KB (134192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd64f14877aa3979f5fc39114e197a43b003146e0b9a4ca5644588dd7835f0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:48 GMT  
		Size: 1.2 MB (1217241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd11288b8c62379ff17e992d285f6d48ae4258bf6bf74927fca15633b48d57f4`  
		Last Modified: Fri, 23 Sep 2016 20:06:47 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbacb99d024b8fa76f9148448578fa7a927c8a003ecb7030752b53f2aed344`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f597c343b97b8d8e17ef9745ae9f2e13e7bd78ed054b921dbf409f5d7972c6`  
		Last Modified: Fri, 23 Sep 2016 20:07:10 GMT  
		Size: 73.5 MB (73519351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2293335b21fb0c30ec872af195f61755043ffbb7892f1028dcfd5493f24acbf0`  
		Last Modified: Fri, 23 Sep 2016 20:06:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e650573d37cb56733f31c91f137e380713ccd8e405bfc255ae882dffe00fc0e`  
		Last Modified: Fri, 23 Sep 2016 20:06:46 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
