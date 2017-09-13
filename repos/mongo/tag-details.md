<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.16`](#mongo3216)
-	[`mongo:3.2.16-windowsservercore`](#mongo3216-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.9`](#mongo349)
-	[`mongo:3.4.9-windowsservercore`](#mongo349-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:3.5.13`](#mongo3513)
-	[`mongo:3.5.13-windowsservercore`](#mongo3513-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)

## `mongo:3`

```console
$ docker pull mongo@sha256:72cb40825706fe3202fe9f99a571a9015b8b5e91221ffc7a6204ab8dab9e21a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:6bc81a7941f7f284a118a926526033df6952cebcb918ce752f2089ebb98ea4ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9674f0cb183b311e890f408716045890d0463865ab9b60e250a516e5fb16a88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:17:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:17:26 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:17:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:17:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:17:51 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Sep 2017 21:17:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 21:17:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:18:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:18:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:18:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:18:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:18:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:18:22 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:18:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffae3aad27f244dd6c9f755e33ae7c1c6c3fe77e1d5c21855e7c12420668dd81`  
		Last Modified: Tue, 12 Sep 2017 21:19:52 GMT  
		Size: 2.4 MB (2397832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4d710f3683283aa11dce435918e93f27cf2425324eb9327b05d9467c04dd0`  
		Last Modified: Tue, 12 Sep 2017 21:19:51 GMT  
		Size: 1.1 MB (1108744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7013bed6a7c4247a07415d1490fefe00a82f418f6bbae6d161c1edda39af0`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9f4e2c0950214f2548ca7637726939d79c9158dba62a8c43b7f46c8602cb7`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ae537a6f5a320ebfe022ad4c7b0a2ff477bf1809bc2a797ce93855b9403dce`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ae26523762c6e13d7794d5f82b5070a0eca79634a54b4ea915570e396f3455`  
		Last Modified: Tue, 12 Sep 2017 21:20:04 GMT  
		Size: 98.5 MB (98477923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bc8461256bdefb8a63df61d5ee60bbccb288a3021c80fd9ae3687b86976e4a`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc399e90f3b5341356f171aeeda7a65b5b6bac0ada057245b58d6d4b7cace59`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2e8b97b698a985fb8c34e21fbd57abfdb3b558b4cc3d7c95f3bf396493d27e`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:bac427de20a5404c2cc93e1d0adc66c8995c9bc1dd0d556072e700a6e2d2d065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:a0fb58606eaf405d04e21dd5002f46a70de218862f8ba2070a6709989d049ab6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e224a8ceee6b6a3976fc9043c5d8004a3a3097d8f2a1b040b84fe5b71bcf000`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:09:15 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Thu, 07 Sep 2017 23:09:15 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 21:15:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:15:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:15:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:15:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:15:38 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 12 Sep 2017 21:15:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:15:40 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:15:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:15:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:15:40 GMT
ENV MONGO_MAJOR=3.0
# Tue, 12 Sep 2017 21:15:40 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 12 Sep 2017 21:15:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:15:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:15:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:15:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:15:51 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:15:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:15:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:15:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd2be5b9c97f767a41ed4da6b94d8eaaafc06ced9ef580d9e6e12dfa07327cf`  
		Last Modified: Tue, 12 Sep 2017 21:19:07 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46f10a9b99edbd02518775a5dc748c5d7583d938385d67fa6d458a4e17d2fc3`  
		Last Modified: Tue, 12 Sep 2017 21:19:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a87efb11af6efde3b0372ffc00b18fd0e740fd59f3d6496d83a8415d82622`  
		Last Modified: Tue, 12 Sep 2017 21:19:07 GMT  
		Size: 2.7 MB (2660745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f957de80a6de3b4f784f1a90b3b0e7a5960a7e52609ff7cec789ebe2b3074`  
		Last Modified: Tue, 12 Sep 2017 21:19:05 GMT  
		Size: 1.1 MB (1103191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2137efb7e3bec403e2a2cbdb6d3d9d32ee29e21bdf10442561900ea945362de`  
		Last Modified: Tue, 12 Sep 2017 21:19:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a809a59ee0f7abde69d5c095cea8c5778e6bdc7d91ff0f6015423cb0e68b36d0`  
		Last Modified: Tue, 12 Sep 2017 21:19:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3e5a3acbcd6d10f5026c2a1884d2edc7ce8d3d8d1bd93fb85a2b7b682bf07`  
		Last Modified: Tue, 12 Sep 2017 21:19:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafd2fa34823820fb214703557d1453d1a4511ad86596aa9cc3204b0b1fb8c2f`  
		Last Modified: Tue, 12 Sep 2017 21:19:14 GMT  
		Size: 61.9 MB (61886307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e5f122d662c721f134f6ff2b30f5e772d4fe7441ea5278fc764ea66764b43f`  
		Last Modified: Tue, 12 Sep 2017 21:19:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47156cf4425266c59d76f9e000fd66af882fb3125cd96a3479ea3062b493e0ca`  
		Last Modified: Tue, 12 Sep 2017 21:19:03 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f710d5cf050bf8ad78219bb53e12200ad94471cda0d03eff9da67319c29242`  
		Last Modified: Tue, 12 Sep 2017 21:19:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:bac427de20a5404c2cc93e1d0adc66c8995c9bc1dd0d556072e700a6e2d2d065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:a0fb58606eaf405d04e21dd5002f46a70de218862f8ba2070a6709989d049ab6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e224a8ceee6b6a3976fc9043c5d8004a3a3097d8f2a1b040b84fe5b71bcf000`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:09:15 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Thu, 07 Sep 2017 23:09:15 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:17 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Sep 2017 21:15:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:15:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:15:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:15:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:15:38 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 12 Sep 2017 21:15:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:15:40 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:15:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:15:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:15:40 GMT
ENV MONGO_MAJOR=3.0
# Tue, 12 Sep 2017 21:15:40 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 12 Sep 2017 21:15:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:15:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:15:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:15:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:15:51 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:15:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:15:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:15:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd2be5b9c97f767a41ed4da6b94d8eaaafc06ced9ef580d9e6e12dfa07327cf`  
		Last Modified: Tue, 12 Sep 2017 21:19:07 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46f10a9b99edbd02518775a5dc748c5d7583d938385d67fa6d458a4e17d2fc3`  
		Last Modified: Tue, 12 Sep 2017 21:19:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262a87efb11af6efde3b0372ffc00b18fd0e740fd59f3d6496d83a8415d82622`  
		Last Modified: Tue, 12 Sep 2017 21:19:07 GMT  
		Size: 2.7 MB (2660745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6f957de80a6de3b4f784f1a90b3b0e7a5960a7e52609ff7cec789ebe2b3074`  
		Last Modified: Tue, 12 Sep 2017 21:19:05 GMT  
		Size: 1.1 MB (1103191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2137efb7e3bec403e2a2cbdb6d3d9d32ee29e21bdf10442561900ea945362de`  
		Last Modified: Tue, 12 Sep 2017 21:19:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a809a59ee0f7abde69d5c095cea8c5778e6bdc7d91ff0f6015423cb0e68b36d0`  
		Last Modified: Tue, 12 Sep 2017 21:19:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e3e5a3acbcd6d10f5026c2a1884d2edc7ce8d3d8d1bd93fb85a2b7b682bf07`  
		Last Modified: Tue, 12 Sep 2017 21:19:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafd2fa34823820fb214703557d1453d1a4511ad86596aa9cc3204b0b1fb8c2f`  
		Last Modified: Tue, 12 Sep 2017 21:19:14 GMT  
		Size: 61.9 MB (61886307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e5f122d662c721f134f6ff2b30f5e772d4fe7441ea5278fc764ea66764b43f`  
		Last Modified: Tue, 12 Sep 2017 21:19:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47156cf4425266c59d76f9e000fd66af882fb3125cd96a3479ea3062b493e0ca`  
		Last Modified: Tue, 12 Sep 2017 21:19:03 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f710d5cf050bf8ad78219bb53e12200ad94471cda0d03eff9da67319c29242`  
		Last Modified: Tue, 12 Sep 2017 21:19:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore`

```console
$ docker pull mongo@sha256:7c02d8cb44155531dd06f382ee7d8085d61a04667e6e4ff44855c6e722c7ce5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.0.15-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:72ce51c8b42d816644de933a0039ef1bdd2fab6e504b17a324c435e934ce5508
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5374594967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4064544d209b639fefb97b7228035a5e450486ba6d6099604fc644293ee6d1b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:26:27 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 09 Aug 2017 23:26:29 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 09 Aug 2017 23:26:31 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 09 Aug 2017 23:27:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:27:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:27:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f7525f35ef975b00f5befc1ecca513a5a2825d5c35f5a73ef742e27730e4b`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be84f10938eb7737c7539aa14060c02ca640a97b842fd45513d26468543f29f`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e685bfc300c53104b2bd6da75da3496d414be74073e44948ff56debc40ef31`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f845ecff39ee85d05b53864084a3721c016d11a80e92e8cc2405a39f120d20`  
		Last Modified: Wed, 09 Aug 2017 23:31:33 GMT  
		Size: 46.9 MB (46902236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5491943309ee39fa354a7b6f5a1027c5ef8832db1fb6a03a1db75dd51af3c0`  
		Last Modified: Wed, 09 Aug 2017 23:31:24 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6e44a90b089dec68db52f44a59ad83e11d7a17c5ada34b587c8b53cadccf8c`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dcc1b0d176ac33da3bf5522ad880898b38ca55d9397d50ac62b26a5a9fb20`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:7c02d8cb44155531dd06f382ee7d8085d61a04667e6e4ff44855c6e722c7ce5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.0-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:72ce51c8b42d816644de933a0039ef1bdd2fab6e504b17a324c435e934ce5508
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5374594967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4064544d209b639fefb97b7228035a5e450486ba6d6099604fc644293ee6d1b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:26:27 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 09 Aug 2017 23:26:29 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 09 Aug 2017 23:26:31 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 09 Aug 2017 23:27:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:27:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:27:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f7525f35ef975b00f5befc1ecca513a5a2825d5c35f5a73ef742e27730e4b`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be84f10938eb7737c7539aa14060c02ca640a97b842fd45513d26468543f29f`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e685bfc300c53104b2bd6da75da3496d414be74073e44948ff56debc40ef31`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f845ecff39ee85d05b53864084a3721c016d11a80e92e8cc2405a39f120d20`  
		Last Modified: Wed, 09 Aug 2017 23:31:33 GMT  
		Size: 46.9 MB (46902236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5491943309ee39fa354a7b6f5a1027c5ef8832db1fb6a03a1db75dd51af3c0`  
		Last Modified: Wed, 09 Aug 2017 23:31:24 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6e44a90b089dec68db52f44a59ad83e11d7a17c5ada34b587c8b53cadccf8c`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dcc1b0d176ac33da3bf5522ad880898b38ca55d9397d50ac62b26a5a9fb20`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:73a92b023dd5c80d05c82f7eca8577ccb9ea541fcf861335321a4c1807719ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:796e66961691d22c4a62e50282daba169ee72bdd829f367b65cbf41f49fe63be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f020b0d7217f0bccec22c94e0d095c47a87d324f75e61ef9644d49863c134d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:16:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:16:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:16:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:16:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:16:38 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 12 Sep 2017 21:16:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:16:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:16:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:16:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:16:44 GMT
ENV MONGO_MAJOR=3.2
# Tue, 12 Sep 2017 21:16:44 GMT
ENV MONGO_VERSION=3.2.16
# Tue, 12 Sep 2017 21:16:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:17:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:17:07 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:17:07 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:17:07 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:17:08 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:17:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b6e3f6a061298e69d3d2badab9eb0685fe12cc621bcfae65b3fb932fd7cb3a`  
		Last Modified: Tue, 12 Sep 2017 21:19:28 GMT  
		Size: 2.4 MB (2397821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff66875b81f9e33d5f269bd1f700ae9ad340bdc3652370269ba9b5a4c5fa07d`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 1.1 MB (1108745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b3a044da97ded789be0e16eeaac48fabb1c4937469b2f77155229adbf3e1e`  
		Last Modified: Tue, 12 Sep 2017 21:19:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68edc7337b8ed6e0ffe8a08ed7989861af39058d84234a36852365cad5fb1366`  
		Last Modified: Tue, 12 Sep 2017 21:19:27 GMT  
		Size: 3.1 KB (3070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4357a0e4bb8668306f529f3ac03150a013d1d97c19b53d4a8e2621ae1ba467ff`  
		Last Modified: Tue, 12 Sep 2017 21:19:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29254ba32eb173d23c43f6cc64dafd9278d1da6ca2669dda42e9b71962dab88`  
		Last Modified: Tue, 12 Sep 2017 21:19:38 GMT  
		Size: 70.8 MB (70823567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbb718748e0b98ab69807cf5c26df43f5664c65dc940004c79f28837cf480c2`  
		Last Modified: Tue, 12 Sep 2017 21:19:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce6d957d08ae1822915e47da517f77d2e135581409864c4d9df668201be0c21`  
		Last Modified: Tue, 12 Sep 2017 21:19:24 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0d12537a1500ee5dd1db1097261809edabb7dfd5ff5838bfc5c84127aea7a2`  
		Last Modified: Tue, 12 Sep 2017 21:19:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16`

```console
$ docker pull mongo@sha256:73a92b023dd5c80d05c82f7eca8577ccb9ea541fcf861335321a4c1807719ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.16` - linux; amd64

```console
$ docker pull mongo@sha256:796e66961691d22c4a62e50282daba169ee72bdd829f367b65cbf41f49fe63be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f020b0d7217f0bccec22c94e0d095c47a87d324f75e61ef9644d49863c134d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:16:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:16:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:16:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:16:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:16:38 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 12 Sep 2017 21:16:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:16:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:16:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:16:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:16:44 GMT
ENV MONGO_MAJOR=3.2
# Tue, 12 Sep 2017 21:16:44 GMT
ENV MONGO_VERSION=3.2.16
# Tue, 12 Sep 2017 21:16:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:17:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:17:07 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:17:07 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:17:07 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:17:08 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:17:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b6e3f6a061298e69d3d2badab9eb0685fe12cc621bcfae65b3fb932fd7cb3a`  
		Last Modified: Tue, 12 Sep 2017 21:19:28 GMT  
		Size: 2.4 MB (2397821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff66875b81f9e33d5f269bd1f700ae9ad340bdc3652370269ba9b5a4c5fa07d`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 1.1 MB (1108745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8b3a044da97ded789be0e16eeaac48fabb1c4937469b2f77155229adbf3e1e`  
		Last Modified: Tue, 12 Sep 2017 21:19:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68edc7337b8ed6e0ffe8a08ed7989861af39058d84234a36852365cad5fb1366`  
		Last Modified: Tue, 12 Sep 2017 21:19:27 GMT  
		Size: 3.1 KB (3070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4357a0e4bb8668306f529f3ac03150a013d1d97c19b53d4a8e2621ae1ba467ff`  
		Last Modified: Tue, 12 Sep 2017 21:19:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29254ba32eb173d23c43f6cc64dafd9278d1da6ca2669dda42e9b71962dab88`  
		Last Modified: Tue, 12 Sep 2017 21:19:38 GMT  
		Size: 70.8 MB (70823567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbb718748e0b98ab69807cf5c26df43f5664c65dc940004c79f28837cf480c2`  
		Last Modified: Tue, 12 Sep 2017 21:19:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce6d957d08ae1822915e47da517f77d2e135581409864c4d9df668201be0c21`  
		Last Modified: Tue, 12 Sep 2017 21:19:24 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0d12537a1500ee5dd1db1097261809edabb7dfd5ff5838bfc5c84127aea7a2`  
		Last Modified: Tue, 12 Sep 2017 21:19:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16-windowsservercore`

```console
$ docker pull mongo@sha256:ce29600bc4f2434ef749bbd26571a57e0e67993f3dacf5ff5fb88d1394ed5324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.2.16-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:54812ed05c0b7aa54cfebcdce99b0e411e586b6807564eede630bc023ff6e3af
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380576554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fda73086b96978d2bb579f273261bf1359bbcb6de576ac1b0a0c1b3d7c5d560`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:27:28 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 09 Aug 2017 23:27:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Wed, 09 Aug 2017 23:27:33 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Wed, 09 Aug 2017 23:28:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:28:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:28:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:28:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81e684e1fae36e71fbb56768612bc521935935dc467dd156c0ce143fcc384b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207f3020275df8c87dc381f53c6b5fe64c8944879c517af8443e20fba58328b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92451224920586ad919138ef57f4f779d94b3c3feb1e0767b05e0397e378a97d`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3076b9cffa8f6b3fb3443a9b81db96924ea48e2da14febafc5a0c88587b2d`  
		Last Modified: Wed, 09 Aug 2017 23:31:55 GMT  
		Size: 52.9 MB (52883816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf16f812ebb17d481cdf791a674d801e06673f930d7f450877375abdeba69a8`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d63dfcbc390afaa99e1db4f24505fbfab3719de9caca6a4ae32d82f234374f`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58158c49402aedd4a1c1877eda2e5eaf76dc19033abc873850875f48f3d75db`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:ce29600bc4f2434ef749bbd26571a57e0e67993f3dacf5ff5fb88d1394ed5324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:54812ed05c0b7aa54cfebcdce99b0e411e586b6807564eede630bc023ff6e3af
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380576554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fda73086b96978d2bb579f273261bf1359bbcb6de576ac1b0a0c1b3d7c5d560`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:27:28 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 09 Aug 2017 23:27:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Wed, 09 Aug 2017 23:27:33 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Wed, 09 Aug 2017 23:28:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:28:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:28:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:28:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81e684e1fae36e71fbb56768612bc521935935dc467dd156c0ce143fcc384b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207f3020275df8c87dc381f53c6b5fe64c8944879c517af8443e20fba58328b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92451224920586ad919138ef57f4f779d94b3c3feb1e0767b05e0397e378a97d`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3076b9cffa8f6b3fb3443a9b81db96924ea48e2da14febafc5a0c88587b2d`  
		Last Modified: Wed, 09 Aug 2017 23:31:55 GMT  
		Size: 52.9 MB (52883816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf16f812ebb17d481cdf791a674d801e06673f930d7f450877375abdeba69a8`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d63dfcbc390afaa99e1db4f24505fbfab3719de9caca6a4ae32d82f234374f`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58158c49402aedd4a1c1877eda2e5eaf76dc19033abc873850875f48f3d75db`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:72cb40825706fe3202fe9f99a571a9015b8b5e91221ffc7a6204ab8dab9e21a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:6bc81a7941f7f284a118a926526033df6952cebcb918ce752f2089ebb98ea4ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9674f0cb183b311e890f408716045890d0463865ab9b60e250a516e5fb16a88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:17:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:17:26 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:17:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:17:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:17:51 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Sep 2017 21:17:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 21:17:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:18:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:18:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:18:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:18:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:18:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:18:22 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:18:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffae3aad27f244dd6c9f755e33ae7c1c6c3fe77e1d5c21855e7c12420668dd81`  
		Last Modified: Tue, 12 Sep 2017 21:19:52 GMT  
		Size: 2.4 MB (2397832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4d710f3683283aa11dce435918e93f27cf2425324eb9327b05d9467c04dd0`  
		Last Modified: Tue, 12 Sep 2017 21:19:51 GMT  
		Size: 1.1 MB (1108744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7013bed6a7c4247a07415d1490fefe00a82f418f6bbae6d161c1edda39af0`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9f4e2c0950214f2548ca7637726939d79c9158dba62a8c43b7f46c8602cb7`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ae537a6f5a320ebfe022ad4c7b0a2ff477bf1809bc2a797ce93855b9403dce`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ae26523762c6e13d7794d5f82b5070a0eca79634a54b4ea915570e396f3455`  
		Last Modified: Tue, 12 Sep 2017 21:20:04 GMT  
		Size: 98.5 MB (98477923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bc8461256bdefb8a63df61d5ee60bbccb288a3021c80fd9ae3687b86976e4a`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc399e90f3b5341356f171aeeda7a65b5b6bac0ada057245b58d6d4b7cace59`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2e8b97b698a985fb8c34e21fbd57abfdb3b558b4cc3d7c95f3bf396493d27e`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.9`

```console
$ docker pull mongo@sha256:72cb40825706fe3202fe9f99a571a9015b8b5e91221ffc7a6204ab8dab9e21a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.9` - linux; amd64

```console
$ docker pull mongo@sha256:6bc81a7941f7f284a118a926526033df6952cebcb918ce752f2089ebb98ea4ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9674f0cb183b311e890f408716045890d0463865ab9b60e250a516e5fb16a88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:17:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:17:26 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:17:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:17:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:17:51 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Sep 2017 21:17:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 21:17:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:18:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:18:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:18:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:18:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:18:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:18:22 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:18:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffae3aad27f244dd6c9f755e33ae7c1c6c3fe77e1d5c21855e7c12420668dd81`  
		Last Modified: Tue, 12 Sep 2017 21:19:52 GMT  
		Size: 2.4 MB (2397832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4d710f3683283aa11dce435918e93f27cf2425324eb9327b05d9467c04dd0`  
		Last Modified: Tue, 12 Sep 2017 21:19:51 GMT  
		Size: 1.1 MB (1108744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7013bed6a7c4247a07415d1490fefe00a82f418f6bbae6d161c1edda39af0`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9f4e2c0950214f2548ca7637726939d79c9158dba62a8c43b7f46c8602cb7`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ae537a6f5a320ebfe022ad4c7b0a2ff477bf1809bc2a797ce93855b9403dce`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ae26523762c6e13d7794d5f82b5070a0eca79634a54b4ea915570e396f3455`  
		Last Modified: Tue, 12 Sep 2017 21:20:04 GMT  
		Size: 98.5 MB (98477923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bc8461256bdefb8a63df61d5ee60bbccb288a3021c80fd9ae3687b86976e4a`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc399e90f3b5341356f171aeeda7a65b5b6bac0ada057245b58d6d4b7cace59`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2e8b97b698a985fb8c34e21fbd57abfdb3b558b4cc3d7c95f3bf396493d27e`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.9-windowsservercore`

**does not exist** (yet?)

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:8b6bded5ec73ce23513049b8bc03554b7c3710b0171ae93e696acd45a46e5acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

```console
$ docker pull mongo@sha256:2689c517d67c1c0037c7f4b011781070a925f9ee8e39bbb7e25b15ac69edd044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a390da782feb05ab4aa985787623d1ec11aa0c2b511c010162eeca1651409b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:17:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:17:26 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:17:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:17:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:18:22 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Sep 2017 21:18:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:18:27 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 12 Sep 2017 21:18:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:18:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:18:27 GMT
ENV MONGO_MAJOR=3.5
# Tue, 12 Sep 2017 21:18:28 GMT
ENV MONGO_VERSION=3.5.12
# Tue, 12 Sep 2017 21:18:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:18:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:18:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:18:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:18:52 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:18:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:18:53 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffae3aad27f244dd6c9f755e33ae7c1c6c3fe77e1d5c21855e7c12420668dd81`  
		Last Modified: Tue, 12 Sep 2017 21:19:52 GMT  
		Size: 2.4 MB (2397832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4d710f3683283aa11dce435918e93f27cf2425324eb9327b05d9467c04dd0`  
		Last Modified: Tue, 12 Sep 2017 21:19:51 GMT  
		Size: 1.1 MB (1108744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7013bed6a7c4247a07415d1490fefe00a82f418f6bbae6d161c1edda39af0`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a5a8c16f6f3e965f10a23f7a16a91a3f755f596fc9711d892536f8343996e8`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b2f3e31819e48d0541ca465a3dcdb0010732af44137975251ccf1ad21049bc`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53eb625de32f9a526ea3bca00aef5e8d1eb861d83fd3a6f04ad5f1133fc2d97`  
		Last Modified: Tue, 12 Sep 2017 21:20:38 GMT  
		Size: 98.5 MB (98483172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceec2190a5cae6a5d7716df876693265fb096bd5b65e6183bfb063da8785908`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbae36397d0c76d3d99910e65fdd6d82211ae55de559da8ed2c5b6213f282d91`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13`

**does not exist** (yet?)

## `mongo:3.5.13-windowsservercore`

**does not exist** (yet?)

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:3ef6fae398cb580f74b6e422a7e4d33ab7c12c351b940b9df06af015515938f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.5-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:9f5cd919b90498dad0e30842caf73daeb10c3d8b7feb4baa135f7e3f54b75149
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5392612175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc0766c32354cd8f3e8eecaaf9e56cb3358c05860d7ea1ef7b67b77e7aa6034`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 24 Aug 2017 01:36:32 GMT
ENV MONGO_VERSION=3.5.12
# Thu, 24 Aug 2017 01:36:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.12-signed.msi
# Thu, 24 Aug 2017 01:36:37 GMT
ENV MONGO_DOWNLOAD_SHA256=15cedbca560a65dc3362a42a070c4f110e1b8cb20ebcd5e61bd795f673ededdc
# Thu, 24 Aug 2017 01:37:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 01:37:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 24 Aug 2017 01:37:46 GMT
EXPOSE 27017/tcp
# Thu, 24 Aug 2017 01:37:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c898968f529278c0af8db05709183928d28f86024f198eaa7ed10269c3a2e65c`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a7ee713204b5839c54f61f60404498f3257cc80f5d5cebc89481740a2ecdc`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce1c2768ad669f71bfe571800bece463fbc4573b7cd23f9fe9265832c757a6e`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a810382195d4deab495bbd2492395698a029aca8a86e202bda4ba25b6eb51`  
		Last Modified: Thu, 24 Aug 2017 01:38:30 GMT  
		Size: 64.9 MB (64919441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08929e16eef1f65703588e8b59447f4536cbc39f076830e8fa5259fb27bb4d86`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eb5a438b35a85fa9c6e06382b9815beb3ac2fa76179c8b99eee8ff47b9e555`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02f5fe2f1c2e58c1497651ece6f4e01ac3c8ac16595b945217b278a064a727`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:72cb40825706fe3202fe9f99a571a9015b8b5e91221ffc7a6204ab8dab9e21a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:6bc81a7941f7f284a118a926526033df6952cebcb918ce752f2089ebb98ea4ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9674f0cb183b311e890f408716045890d0463865ab9b60e250a516e5fb16a88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:17:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:17:26 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:17:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:17:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:17:51 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Sep 2017 21:17:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Sep 2017 21:17:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 21:17:56 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 21:17:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:18:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:18:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:18:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:18:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:18:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 21:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:18:22 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:18:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffae3aad27f244dd6c9f755e33ae7c1c6c3fe77e1d5c21855e7c12420668dd81`  
		Last Modified: Tue, 12 Sep 2017 21:19:52 GMT  
		Size: 2.4 MB (2397832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4d710f3683283aa11dce435918e93f27cf2425324eb9327b05d9467c04dd0`  
		Last Modified: Tue, 12 Sep 2017 21:19:51 GMT  
		Size: 1.1 MB (1108744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7013bed6a7c4247a07415d1490fefe00a82f418f6bbae6d161c1edda39af0`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9f4e2c0950214f2548ca7637726939d79c9158dba62a8c43b7f46c8602cb7`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ae537a6f5a320ebfe022ad4c7b0a2ff477bf1809bc2a797ce93855b9403dce`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ae26523762c6e13d7794d5f82b5070a0eca79634a54b4ea915570e396f3455`  
		Last Modified: Tue, 12 Sep 2017 21:20:04 GMT  
		Size: 98.5 MB (98477923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bc8461256bdefb8a63df61d5ee60bbccb288a3021c80fd9ae3687b86976e4a`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc399e90f3b5341356f171aeeda7a65b5b6bac0ada057245b58d6d4b7cace59`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2e8b97b698a985fb8c34e21fbd57abfdb3b558b4cc3d7c95f3bf396493d27e`  
		Last Modified: Tue, 12 Sep 2017 21:19:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:8b6bded5ec73ce23513049b8bc03554b7c3710b0171ae93e696acd45a46e5acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:2689c517d67c1c0037c7f4b011781070a925f9ee8e39bbb7e25b15ac69edd044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a390da782feb05ab4aa985787623d1ec11aa0c2b511c010162eeca1651409b1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 21:15:53 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Sep 2017 21:17:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:17:26 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Sep 2017 21:17:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Sep 2017 21:17:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Sep 2017 21:18:22 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Sep 2017 21:18:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 21:18:27 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 12 Sep 2017 21:18:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:18:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 12 Sep 2017 21:18:27 GMT
ENV MONGO_MAJOR=3.5
# Tue, 12 Sep 2017 21:18:28 GMT
ENV MONGO_VERSION=3.5.12
# Tue, 12 Sep 2017 21:18:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 21:18:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 21:18:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 21:18:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 21:18:52 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Sep 2017 21:18:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 21:18:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 21:18:53 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399da3f03c7e2deac13c439ea62c25533915c49b893f9a2b2725c3f6e585415`  
		Last Modified: Tue, 12 Sep 2017 21:19:29 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffae3aad27f244dd6c9f755e33ae7c1c6c3fe77e1d5c21855e7c12420668dd81`  
		Last Modified: Tue, 12 Sep 2017 21:19:52 GMT  
		Size: 2.4 MB (2397832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4d710f3683283aa11dce435918e93f27cf2425324eb9327b05d9467c04dd0`  
		Last Modified: Tue, 12 Sep 2017 21:19:51 GMT  
		Size: 1.1 MB (1108744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a7013bed6a7c4247a07415d1490fefe00a82f418f6bbae6d161c1edda39af0`  
		Last Modified: Tue, 12 Sep 2017 21:19:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a5a8c16f6f3e965f10a23f7a16a91a3f755f596fc9711d892536f8343996e8`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b2f3e31819e48d0541ca465a3dcdb0010732af44137975251ccf1ad21049bc`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53eb625de32f9a526ea3bca00aef5e8d1eb861d83fd3a6f04ad5f1133fc2d97`  
		Last Modified: Tue, 12 Sep 2017 21:20:38 GMT  
		Size: 98.5 MB (98483172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceec2190a5cae6a5d7716df876693265fb096bd5b65e6183bfb063da8785908`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbae36397d0c76d3d99910e65fdd6d82211ae55de559da8ed2c5b6213f282d91`  
		Last Modified: Tue, 12 Sep 2017 21:20:20 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:3ef6fae398cb580f74b6e422a7e4d33ab7c12c351b940b9df06af015515938f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:9f5cd919b90498dad0e30842caf73daeb10c3d8b7feb4baa135f7e3f54b75149
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5392612175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc0766c32354cd8f3e8eecaaf9e56cb3358c05860d7ea1ef7b67b77e7aa6034`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 24 Aug 2017 01:36:32 GMT
ENV MONGO_VERSION=3.5.12
# Thu, 24 Aug 2017 01:36:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.12-signed.msi
# Thu, 24 Aug 2017 01:36:37 GMT
ENV MONGO_DOWNLOAD_SHA256=15cedbca560a65dc3362a42a070c4f110e1b8cb20ebcd5e61bd795f673ededdc
# Thu, 24 Aug 2017 01:37:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 01:37:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 24 Aug 2017 01:37:46 GMT
EXPOSE 27017/tcp
# Thu, 24 Aug 2017 01:37:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c898968f529278c0af8db05709183928d28f86024f198eaa7ed10269c3a2e65c`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a7ee713204b5839c54f61f60404498f3257cc80f5d5cebc89481740a2ecdc`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce1c2768ad669f71bfe571800bece463fbc4573b7cd23f9fe9265832c757a6e`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a810382195d4deab495bbd2492395698a029aca8a86e202bda4ba25b6eb51`  
		Last Modified: Thu, 24 Aug 2017 01:38:30 GMT  
		Size: 64.9 MB (64919441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08929e16eef1f65703588e8b59447f4536cbc39f076830e8fa5259fb27bb4d86`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eb5a438b35a85fa9c6e06382b9815beb3ac2fa76179c8b99eee8ff47b9e555`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02f5fe2f1c2e58c1497651ece6f4e01ac3c8ac16595b945217b278a064a727`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
