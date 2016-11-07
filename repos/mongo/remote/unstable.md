## `mongo:unstable`

```console
$ docker pull mongo@sha256:562f2d4a1e4de4b0155082c58e5103d8876c7e075a83bfbcbb54cc6d0e3f106e
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150096613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497f4cbca776dcdbfc99a6917d812ed9f45b69d12b296cb61fe3f6f597d63d26`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 20:43:08 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 21 Oct 2016 20:43:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:43:15 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 20:43:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 20:46:45 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 21 Oct 2016 20:46:46 GMT
ENV MONGO_MAJOR=3.3
# Fri, 21 Oct 2016 20:46:46 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 01 Nov 2016 23:31:04 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 01 Nov 2016 23:31:05 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:22 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:23 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679a27ed88fac3c31379d57fa7074d642c278f5409a07ca962483ee0446fd559`  
		Last Modified: Fri, 21 Oct 2016 20:44:09 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480a2b7cac8990ee07670ed31df6114a2d7a8470bda789fa4476bffcabf89b0a`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 134.2 KB (134190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47cdcec4958f6ba41e40b6dd25acb668ddcf3d800273784609abb52e1fe75c`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 1.2 MB (1217248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cf5c9c07c17af6df6f2a7935aa49e2f595d5b6a201870d14767a8830b8d6c2`  
		Last Modified: Fri, 21 Oct 2016 20:47:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdbb5c09b9665f3b243f2ce8df4dc0b5e43086fca132f120839054cb2a65340`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4992dfef29253ceac5ccf80af2a787fec1215e13ce9a0763b20143953d1aad21`  
		Last Modified: Tue, 01 Nov 2016 23:35:29 GMT  
		Size: 97.4 MB (97387853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136b2b50cc6ae998a0500db46a05f176b91040edd4988284f6a66d6aa359e44`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc59f2746c55ae02421270b71b54ba4f78f47d43551386995e49c7b115ceeb59`  
		Last Modified: Tue, 01 Nov 2016 23:35:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
