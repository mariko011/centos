## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:f734d0fbaecefa95e269f8902525a69151cd3626da88cafa5a277d623e4d7c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:56210d12db53301f71b6f3d38c200c54d9e4722d4884605f6bb24876613efb2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130387820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1200574c8af96f9b81952bb1131c4a3853fc5c789d73bc50d623d0c6915d1172`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 01:16:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 21 Dec 2017 01:16:42 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 21 Dec 2017 01:17:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 21 Dec 2017 01:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 21 Dec 2017 01:21:07 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 21 Dec 2017 01:21:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 21 Dec 2017 01:21:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 21 Dec 2017 01:21:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 21 Dec 2017 01:21:18 GMT
ENV MONGO_MAJOR=3.6
# Thu, 28 Dec 2017 00:15:43 GMT
ENV MONGO_VERSION=3.6.1
# Thu, 28 Dec 2017 00:15:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Dec 2017 00:16:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Dec 2017 00:16:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Dec 2017 00:16:04 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Dec 2017 00:16:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Dec 2017 00:16:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Dec 2017 00:16:05 GMT
EXPOSE 27017/tcp
# Thu, 28 Dec 2017 00:16:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5ddc533743964c2e280d7a7e70667e892c29b518c04ee34aa56aa9449b59da`  
		Last Modified: Thu, 21 Dec 2017 01:23:21 GMT  
		Size: 816.7 KB (816688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d2af6e2069f3050614a5f983f7147427a7f4e907c67bbb070e346ab333ed5`  
		Last Modified: Thu, 21 Dec 2017 01:23:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6c28c0235b619029c8b8c9d512f97756a986bfa458e64b5aa45784af894ac3`  
		Last Modified: Thu, 21 Dec 2017 01:24:43 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6b165aa31730e9c9ebfe57bc966413905188436bb0c41eecfdef96a09f8c99`  
		Last Modified: Thu, 28 Dec 2017 00:22:36 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772467f0b4cd666887cd2c67701ce0c258d248a476e05f7d17f29fa678aeae3e`  
		Last Modified: Thu, 28 Dec 2017 00:22:54 GMT  
		Size: 97.1 MB (97051101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94d919fbb860064f1964560410ef4dc361653cd42e224e696821cedaba52859`  
		Last Modified: Thu, 28 Dec 2017 00:22:38 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cad17917cd13144fca5224b3e31f5f26ff3f1b1b6269a1c580653e9db9608b`  
		Last Modified: Thu, 28 Dec 2017 00:22:37 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
