<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.15`](#mongo3215)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.15-windowsservercore`](#mongo3215-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.6`](#mongo346)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.6-windowsservercore`](#mongo346-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.9`](#mongo359)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.9-windowsservercore`](#mongo359-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:d400d2d9b9873256f22612975a2342e98ee4dd12df884a4a28765a03b167d02e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84441170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf849dcba8141fa313711128767347ec632054341e98e71c1bb70f0ea8971cdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:31:15 GMT
ADD file:99d706a1b056666b3cfadb00ebc3fe2bef3f3790d09a14a8a4f349c652aa98b1 in / 
# Tue, 20 Jun 2017 20:31:16 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:43:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:43:51 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 22 Jun 2017 20:44:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:44:02 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:44:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:44:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:44:15 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 22 Jun 2017 20:44:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:44:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:44:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:44:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:44:20 GMT
ENV MONGO_MAJOR=3.0
# Thu, 22 Jun 2017 20:44:21 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 22 Jun 2017 20:44:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 22 Jun 2017 20:44:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Jun 2017 20:44:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Jun 2017 20:44:37 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Jun 2017 20:44:39 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 22 Jun 2017 20:44:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 22 Jun 2017 20:44:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 20:44:42 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 20:44:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e905db3f7c950542ae57979a09389fae88fbe10a10d30f30928c3e7d177bf051`  
		Last Modified: Tue, 20 Jun 2017 21:07:00 GMT  
		Size: 19.2 MB (19159206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c3685ad811359a832598f43f781f60600f6541b20cdbb77a735f650043be37`  
		Last Modified: Thu, 22 Jun 2017 20:52:29 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c051db37473387675c36b37b7cf539829d3b981fb1bb7fb001d37f34860dfff9`  
		Last Modified: Thu, 22 Jun 2017 20:52:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b489b1c67f58507bda71c7d71d364ecbe345597b8d7160c5d235cb402bb6ea`  
		Last Modified: Thu, 22 Jun 2017 20:52:29 GMT  
		Size: 2.7 MB (2660802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10ea76ac8cf571ca5cc7e9d5f62d2341a85728c3618a2928b635a3e964b3cb`  
		Last Modified: Thu, 22 Jun 2017 20:52:28 GMT  
		Size: 914.7 KB (914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8f23be6c05f7d28362537266def3df2633b2a05b7c54862c9db35f8ad88f8`  
		Last Modified: Thu, 22 Jun 2017 20:52:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659cdc1d65f820b1702e8394c0e9437e0370810d82d0a7803078c912d229bedb`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9c920d600bcd4f39af3ed807fce2bc5a71d22ababc583a669b8ab98c5738b7`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7097400513248a168f8c73ef58f72d222536805a5abfe5ffdfd978b8218111b`  
		Last Modified: Thu, 22 Jun 2017 20:52:42 GMT  
		Size: 61.7 MB (61698780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350613e9aa6ff7bf835c662bbf0eed9c72affe7f71122a985b23cc7ceba84ac9`  
		Last Modified: Thu, 22 Jun 2017 20:52:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f086828c17d1826e59cbd6b3821cb184dff15c7759feb6a309b89e62e34803`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a81c3f4a2d161c544698bf658d90511b6ef39dd09fa76f0348dcc57af286ef`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:d400d2d9b9873256f22612975a2342e98ee4dd12df884a4a28765a03b167d02e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84441170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf849dcba8141fa313711128767347ec632054341e98e71c1bb70f0ea8971cdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:31:15 GMT
ADD file:99d706a1b056666b3cfadb00ebc3fe2bef3f3790d09a14a8a4f349c652aa98b1 in / 
# Tue, 20 Jun 2017 20:31:16 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:43:49 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:43:51 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 22 Jun 2017 20:44:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:44:02 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:44:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:44:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:44:15 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 22 Jun 2017 20:44:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:44:17 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:44:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:44:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:44:20 GMT
ENV MONGO_MAJOR=3.0
# Thu, 22 Jun 2017 20:44:21 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 22 Jun 2017 20:44:22 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 22 Jun 2017 20:44:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Jun 2017 20:44:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Jun 2017 20:44:37 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Jun 2017 20:44:39 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 22 Jun 2017 20:44:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 22 Jun 2017 20:44:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 20:44:42 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 20:44:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e905db3f7c950542ae57979a09389fae88fbe10a10d30f30928c3e7d177bf051`  
		Last Modified: Tue, 20 Jun 2017 21:07:00 GMT  
		Size: 19.2 MB (19159206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c3685ad811359a832598f43f781f60600f6541b20cdbb77a735f650043be37`  
		Last Modified: Thu, 22 Jun 2017 20:52:29 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c051db37473387675c36b37b7cf539829d3b981fb1bb7fb001d37f34860dfff9`  
		Last Modified: Thu, 22 Jun 2017 20:52:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b489b1c67f58507bda71c7d71d364ecbe345597b8d7160c5d235cb402bb6ea`  
		Last Modified: Thu, 22 Jun 2017 20:52:29 GMT  
		Size: 2.7 MB (2660802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10ea76ac8cf571ca5cc7e9d5f62d2341a85728c3618a2928b635a3e964b3cb`  
		Last Modified: Thu, 22 Jun 2017 20:52:28 GMT  
		Size: 914.7 KB (914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c8f23be6c05f7d28362537266def3df2633b2a05b7c54862c9db35f8ad88f8`  
		Last Modified: Thu, 22 Jun 2017 20:52:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659cdc1d65f820b1702e8394c0e9437e0370810d82d0a7803078c912d229bedb`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9c920d600bcd4f39af3ed807fce2bc5a71d22ababc583a669b8ab98c5738b7`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7097400513248a168f8c73ef58f72d222536805a5abfe5ffdfd978b8218111b`  
		Last Modified: Thu, 22 Jun 2017 20:52:42 GMT  
		Size: 61.7 MB (61698780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350613e9aa6ff7bf835c662bbf0eed9c72affe7f71122a985b23cc7ceba84ac9`  
		Last Modified: Thu, 22 Jun 2017 20:52:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f086828c17d1826e59cbd6b3821cb184dff15c7759feb6a309b89e62e34803`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a81c3f4a2d161c544698bf658d90511b6ef39dd09fa76f0348dcc57af286ef`  
		Last Modified: Thu, 22 Jun 2017 20:52:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore`

```console
$ docker pull mongo@sha256:7a59e60a662838db8e32a324e3c19230904e70c97e2bf9fcb865e7944088ce12
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5278975697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9e19b59b4eda8892da2442405afd7659a91ee31a3c5d131057326127bacfc0`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:39:10 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 23 May 2017 22:39:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Tue, 23 May 2017 22:39:15 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Tue, 23 May 2017 22:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:40:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:40:04 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:40:07 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be41011569f799924864ad0229d7e5468768bc89a4138fa7e761f6d431a1fd6`  
		Last Modified: Tue, 23 May 2017 22:41:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a726453c0b90b3f382490c227b2b61d9543d5745dd8792f37dc68f37bc48dcc`  
		Last Modified: Tue, 23 May 2017 22:41:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0556eda5a5c1a6a2db1ad79019405b6b32ee4399e7682577efb76e9a2e15d85`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cdcaa5fb0b4620a5deab20dc12840d0dbf58d06c2b9237aa12aed11e4fbac1`  
		Last Modified: Tue, 23 May 2017 22:41:47 GMT  
		Size: 47.1 MB (47079237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835af2fd84ca0c0c00f6b43d340a6fe0c37b73d9ea0f03b907f5022daf85425b`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e544e76d4f6d90f537dae7944611963b9c69a6b35076a058b3f1c9fa5899a`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f64d66b50da900848bfad55d015a7f6f42baf142a13cf688071c00e74a8fa48`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:7a59e60a662838db8e32a324e3c19230904e70c97e2bf9fcb865e7944088ce12
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5278975697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9e19b59b4eda8892da2442405afd7659a91ee31a3c5d131057326127bacfc0`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:39:10 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 23 May 2017 22:39:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Tue, 23 May 2017 22:39:15 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Tue, 23 May 2017 22:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:40:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:40:04 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:40:07 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be41011569f799924864ad0229d7e5468768bc89a4138fa7e761f6d431a1fd6`  
		Last Modified: Tue, 23 May 2017 22:41:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a726453c0b90b3f382490c227b2b61d9543d5745dd8792f37dc68f37bc48dcc`  
		Last Modified: Tue, 23 May 2017 22:41:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0556eda5a5c1a6a2db1ad79019405b6b32ee4399e7682577efb76e9a2e15d85`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cdcaa5fb0b4620a5deab20dc12840d0dbf58d06c2b9237aa12aed11e4fbac1`  
		Last Modified: Tue, 23 May 2017 22:41:47 GMT  
		Size: 47.1 MB (47079237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835af2fd84ca0c0c00f6b43d340a6fe0c37b73d9ea0f03b907f5022daf85425b`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e544e76d4f6d90f537dae7944611963b9c69a6b35076a058b3f1c9fa5899a`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f64d66b50da900848bfad55d015a7f6f42baf142a13cf688071c00e74a8fa48`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.15`

**does not exist** (yet?)

## `mongo:3.2`

```console
$ docker pull mongo@sha256:0278ed186aa1904b64ab1a30f827563120938398040d78c2c3c856958f75dbff
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103947535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c370e8ecad132defe86afcadcff828aa87b12b67fa2bc2f384223f52fcc6e390`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:46:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:46:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:47:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:47:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:47:08 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 22 Jun 2017 20:47:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:47:12 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:47:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:47:14 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:47:15 GMT
ENV MONGO_MAJOR=3.2
# Thu, 22 Jun 2017 20:47:15 GMT
ENV MONGO_VERSION=3.2.14
# Thu, 22 Jun 2017 20:47:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 22 Jun 2017 20:47:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Jun 2017 20:47:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Jun 2017 20:47:36 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Jun 2017 20:47:37 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 22 Jun 2017 20:47:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 22 Jun 2017 20:47:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 20:47:40 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 20:47:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1f514cd0138484a892e63a7e7aa099f678e405fa4e0fbbc82fc6b7c209e8b9`  
		Last Modified: Thu, 22 Jun 2017 20:53:44 GMT  
		Size: 2.4 MB (2399082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593014b81b1025731e119524f18f85bdc312bd600550d4e718fb1f0f8be3d291`  
		Last Modified: Thu, 22 Jun 2017 20:53:42 GMT  
		Size: 881.7 KB (881745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dda4ea4bc739212f435facda276c90e34f5e696dc79186bbd5728b8f40c18f`  
		Last Modified: Thu, 22 Jun 2017 20:53:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd770a4da9f6ada8da3d0abe1c7760a84fd23e79794c132b5052dddf05ac341d`  
		Last Modified: Thu, 22 Jun 2017 20:53:40 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbadfd9e27a9ee9ee1b66da9a1be7ac6d53cc0150668fd0e6f6e52fa2b793304`  
		Last Modified: Thu, 22 Jun 2017 20:53:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66cc6fdb43d20d194013a2e32caf1be7971d769070a7026da63ee66ab5aac5e`  
		Last Modified: Thu, 22 Jun 2017 20:54:00 GMT  
		Size: 70.5 MB (70527593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38866cf7a9f60d025b77ff79d112eb45aca2ec2939725baeb10c509ea2ed0af8`  
		Last Modified: Thu, 22 Jun 2017 20:53:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc9209766e0484f4055334ac318773a9210fe0616bf105bd2fd8e64280b5f58`  
		Last Modified: Thu, 22 Jun 2017 20:53:40 GMT  
		Size: 3.1 KB (3103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d350163ced129e0cff660fbf59c148ece92c315bd42ee1020428a1b45200c4`  
		Last Modified: Thu, 22 Jun 2017 20:53:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.15-windowsservercore`

**does not exist** (yet?)

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:442729995ef9eb79f238adb34ab194213e1f98feb294a1244f7eece341a8bf5f
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284929528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9857cbdba494997cbeb230a026453c30d514722b4ba2472cb6c1aec2b58ebc7`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:39:14 GMT
ENV MONGO_VERSION=3.2.14
# Thu, 15 Jun 2017 17:39:17 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.14-signed.msi
# Thu, 15 Jun 2017 17:39:19 GMT
ENV MONGO_DOWNLOAD_SHA256=3dc885163e6d3ed82164456149353e3c93b146a66ac7f0d9caca03773a050c91
# Thu, 15 Jun 2017 17:40:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:40:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:40:22 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:40:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8d8c0f77aa9b1bfee0b9a6e3bf58bc7226ae234f1c8a049412f2b50e1aca4`  
		Last Modified: Thu, 15 Jun 2017 17:43:29 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d57defd68a954636aaa5c47134a536eb26a65238e9f1aa8c522088410052f4`  
		Last Modified: Thu, 15 Jun 2017 17:43:28 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281f2b45b83e3098f6d4d8ad8034140d02b4a49f708ea688474b9aa19f26bb3`  
		Last Modified: Thu, 15 Jun 2017 17:43:19 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0f8c4bbcec3623d9c1b3d51369b5c6252e998c87c982d9827f8a95bcbb117e`  
		Last Modified: Thu, 15 Jun 2017 17:43:32 GMT  
		Size: 53.0 MB (53033057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f77d253b327447e89bfdd03ced7d7ee62e9e185c1977f8db44c254b45292ed6`  
		Last Modified: Thu, 15 Jun 2017 17:43:21 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2b8364137711f2f9dd355839e8b7099cf18c63d4fb77110139a7e380ff66bf`  
		Last Modified: Thu, 15 Jun 2017 17:43:20 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722943b3c701c2921f828b09f018247e41c9aa19c4ea2d48c83cb76db2db5feb`  
		Last Modified: Thu, 15 Jun 2017 17:43:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.6`

```console
$ docker pull mongo@sha256:3f4d30f7f0b256e14bd24df6d931eafb04403f3938792fd17c96075705c18e53
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131637317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c67caab3d8f9ed1fbffe159b10be52e0a0610122c16b3efea50a90ff435584`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:50:01 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 22 Jun 2017 20:50:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 06 Jul 2017 21:55:23 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:55:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 06 Jul 2017 21:55:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 06 Jul 2017 21:55:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 06 Jul 2017 21:55:46 GMT
VOLUME [/data/db /data/configdb]
# Thu, 06 Jul 2017 21:55:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:55:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:55:51 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:55:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99973eccc29acdec1b2563ebf60ec060afa8b3792e965bfac015abcd364e71bf`  
		Last Modified: Thu, 22 Jun 2017 20:54:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c434afa81dd6e165cf36f15cb0b8642b7768e0b28b578428dbe8805d724ed41`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8f112dafbff8fcece795868edff1ca8aef82abd623e0fca8d52f120b6dc698`  
		Last Modified: Thu, 06 Jul 2017 22:02:47 GMT  
		Size: 98.2 MB (98218935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d30b51d2ca2941707417f2b69868225c481b356a772e7fcdcbe22e00a764b8`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f430709fcf13b0a234ce93277fbf2993ba084215a68cfefedef69e927ef44`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e1ebc5c9671d49401e8cbf5f3e850a085bef573b48dafb36cb399786f15b9f`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:3f4d30f7f0b256e14bd24df6d931eafb04403f3938792fd17c96075705c18e53
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131637317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c67caab3d8f9ed1fbffe159b10be52e0a0610122c16b3efea50a90ff435584`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:50:01 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 22 Jun 2017 20:50:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 06 Jul 2017 21:55:23 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:55:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 06 Jul 2017 21:55:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 06 Jul 2017 21:55:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 06 Jul 2017 21:55:46 GMT
VOLUME [/data/db /data/configdb]
# Thu, 06 Jul 2017 21:55:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:55:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:55:51 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:55:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99973eccc29acdec1b2563ebf60ec060afa8b3792e965bfac015abcd364e71bf`  
		Last Modified: Thu, 22 Jun 2017 20:54:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c434afa81dd6e165cf36f15cb0b8642b7768e0b28b578428dbe8805d724ed41`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8f112dafbff8fcece795868edff1ca8aef82abd623e0fca8d52f120b6dc698`  
		Last Modified: Thu, 06 Jul 2017 22:02:47 GMT  
		Size: 98.2 MB (98218935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d30b51d2ca2941707417f2b69868225c481b356a772e7fcdcbe22e00a764b8`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f430709fcf13b0a234ce93277fbf2993ba084215a68cfefedef69e927ef44`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e1ebc5c9671d49401e8cbf5f3e850a085bef573b48dafb36cb399786f15b9f`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:3f4d30f7f0b256e14bd24df6d931eafb04403f3938792fd17c96075705c18e53
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131637317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c67caab3d8f9ed1fbffe159b10be52e0a0610122c16b3efea50a90ff435584`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:50:01 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 22 Jun 2017 20:50:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 06 Jul 2017 21:55:23 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:55:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 06 Jul 2017 21:55:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 06 Jul 2017 21:55:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 06 Jul 2017 21:55:46 GMT
VOLUME [/data/db /data/configdb]
# Thu, 06 Jul 2017 21:55:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:55:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:55:51 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:55:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99973eccc29acdec1b2563ebf60ec060afa8b3792e965bfac015abcd364e71bf`  
		Last Modified: Thu, 22 Jun 2017 20:54:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c434afa81dd6e165cf36f15cb0b8642b7768e0b28b578428dbe8805d724ed41`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8f112dafbff8fcece795868edff1ca8aef82abd623e0fca8d52f120b6dc698`  
		Last Modified: Thu, 06 Jul 2017 22:02:47 GMT  
		Size: 98.2 MB (98218935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d30b51d2ca2941707417f2b69868225c481b356a772e7fcdcbe22e00a764b8`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f430709fcf13b0a234ce93277fbf2993ba084215a68cfefedef69e927ef44`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e1ebc5c9671d49401e8cbf5f3e850a085bef573b48dafb36cb399786f15b9f`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:3f4d30f7f0b256e14bd24df6d931eafb04403f3938792fd17c96075705c18e53
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131637317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c67caab3d8f9ed1fbffe159b10be52e0a0610122c16b3efea50a90ff435584`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:50:01 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 22 Jun 2017 20:50:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 22 Jun 2017 20:50:05 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:50:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 06 Jul 2017 21:55:23 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:55:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 06 Jul 2017 21:55:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 06 Jul 2017 21:55:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 06 Jul 2017 21:55:46 GMT
VOLUME [/data/db /data/configdb]
# Thu, 06 Jul 2017 21:55:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 06 Jul 2017 21:55:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jul 2017 21:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jul 2017 21:55:51 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:55:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99973eccc29acdec1b2563ebf60ec060afa8b3792e965bfac015abcd364e71bf`  
		Last Modified: Thu, 22 Jun 2017 20:54:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c434afa81dd6e165cf36f15cb0b8642b7768e0b28b578428dbe8805d724ed41`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8f112dafbff8fcece795868edff1ca8aef82abd623e0fca8d52f120b6dc698`  
		Last Modified: Thu, 06 Jul 2017 22:02:47 GMT  
		Size: 98.2 MB (98218935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d30b51d2ca2941707417f2b69868225c481b356a772e7fcdcbe22e00a764b8`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6f430709fcf13b0a234ce93277fbf2993ba084215a68cfefedef69e927ef44`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e1ebc5c9671d49401e8cbf5f3e850a085bef573b48dafb36cb399786f15b9f`  
		Last Modified: Thu, 06 Jul 2017 22:02:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.6-windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.9`

```console
$ docker pull mongo@sha256:618b9d9c5ea11b5a2688d06a5f6f5d2add59c3bff63166f39fb6318b003de7a1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128700084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8d3153eeef5ca8e7866e8764d26e47865dcfc3c699ff232a80a2697116f8c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:51:22 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 22 Jun 2017 20:51:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:51:26 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 22 Jun 2017 20:51:26 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:51:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:51:28 GMT
ENV MONGO_MAJOR=3.5
# Thu, 22 Jun 2017 20:51:29 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 20:51:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 22 Jun 2017 20:51:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Jun 2017 20:51:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Jun 2017 20:51:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Jun 2017 20:51:53 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Thu, 22 Jun 2017 20:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 20:51:54 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 20:51:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9e8d47828ff0174cadb0a3e8ef6124f2ec31a5b323ed40ed64f752a5814357`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1cdb6d2abf7625200e4ff1268e1adc7cf698be1d9c3240e7c5dbced66e3793`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9aeab0ad068d448a1495f4c80a379cdaab135392eaf97c5abfa39f84db04d82`  
		Last Modified: Thu, 22 Jun 2017 20:57:29 GMT  
		Size: 95.3 MB (95281760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9718f708e7839bb1144b79a214c7905d46498bdac6b182dabdd980cbcab69b9`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916ca7d8ca824a38929ad36bd6c58d6cdb622fb3f7dc08cdbae7c60ed4fbc943`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:618b9d9c5ea11b5a2688d06a5f6f5d2add59c3bff63166f39fb6318b003de7a1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128700084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8d3153eeef5ca8e7866e8764d26e47865dcfc3c699ff232a80a2697116f8c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:51:22 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 22 Jun 2017 20:51:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:51:26 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 22 Jun 2017 20:51:26 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:51:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:51:28 GMT
ENV MONGO_MAJOR=3.5
# Thu, 22 Jun 2017 20:51:29 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 20:51:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 22 Jun 2017 20:51:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Jun 2017 20:51:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Jun 2017 20:51:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Jun 2017 20:51:53 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Thu, 22 Jun 2017 20:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 20:51:54 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 20:51:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9e8d47828ff0174cadb0a3e8ef6124f2ec31a5b323ed40ed64f752a5814357`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1cdb6d2abf7625200e4ff1268e1adc7cf698be1d9c3240e7c5dbced66e3793`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9aeab0ad068d448a1495f4c80a379cdaab135392eaf97c5abfa39f84db04d82`  
		Last Modified: Thu, 22 Jun 2017 20:57:29 GMT  
		Size: 95.3 MB (95281760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9718f708e7839bb1144b79a214c7905d46498bdac6b182dabdd980cbcab69b9`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916ca7d8ca824a38929ad36bd6c58d6cdb622fb3f7dc08cdbae7c60ed4fbc943`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:618b9d9c5ea11b5a2688d06a5f6f5d2add59c3bff63166f39fb6318b003de7a1
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128700084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8d3153eeef5ca8e7866e8764d26e47865dcfc3c699ff232a80a2697116f8c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Thu, 22 Jun 2017 20:46:35 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 22 Jun 2017 20:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 22 Jun 2017 20:49:43 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Jun 2017 20:49:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 22 Jun 2017 20:50:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 22 Jun 2017 20:51:22 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 22 Jun 2017 20:51:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 22 Jun 2017 20:51:26 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 22 Jun 2017 20:51:26 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:51:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 22 Jun 2017 20:51:28 GMT
ENV MONGO_MAJOR=3.5
# Thu, 22 Jun 2017 20:51:29 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 20:51:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 22 Jun 2017 20:51:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Jun 2017 20:51:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Jun 2017 20:51:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Jun 2017 20:51:53 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Thu, 22 Jun 2017 20:51:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Jun 2017 20:51:54 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 20:51:55 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99b18c5f0ce9c19f6a53a4fe962536e120578dd2739e500b485bad5aa6b5d8c`  
		Last Modified: Thu, 22 Jun 2017 20:53:43 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abe504e54922f1683c3b7c5bc14d2bb9e5f2199784dd8e3e03fa26e0b8bb02d`  
		Last Modified: Thu, 22 Jun 2017 20:55:02 GMT  
		Size: 2.4 MB (2399182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010336760fd558342d46bcb45fd9e064be8f2e65e3f38cc2fed4e83af3c8f596`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 881.7 KB (881712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bebc569a09bda60617428252c336fc162f14b774d1233d20e81fd8986ddbab5`  
		Last Modified: Thu, 22 Jun 2017 20:55:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9e8d47828ff0174cadb0a3e8ef6124f2ec31a5b323ed40ed64f752a5814357`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1cdb6d2abf7625200e4ff1268e1adc7cf698be1d9c3240e7c5dbced66e3793`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9aeab0ad068d448a1495f4c80a379cdaab135392eaf97c5abfa39f84db04d82`  
		Last Modified: Thu, 22 Jun 2017 20:57:29 GMT  
		Size: 95.3 MB (95281760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9718f708e7839bb1144b79a214c7905d46498bdac6b182dabdd980cbcab69b9`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916ca7d8ca824a38929ad36bd6c58d6cdb622fb3f7dc08cdbae7c60ed4fbc943`  
		Last Modified: Thu, 22 Jun 2017 20:57:09 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.9-windowsservercore`

```console
$ docker pull mongo@sha256:ba285117a08e6c189cd98a6d19e585d10eb4004405ed313c24b124618294756f
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.9-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5301470343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3ad91ef5f410c2ee64ad8a1bea0accef0b055efae75b013a00e186f0ed99e8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 22 Jun 2017 18:16:13 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 18:16:16 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.9-signed.msi
# Thu, 22 Jun 2017 18:16:19 GMT
ENV MONGO_DOWNLOAD_SHA256=df474b0bfef73a252c029c738d5125eb24be80cc454844384247f0d796e860f4
# Thu, 22 Jun 2017 18:17:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 22 Jun 2017 18:18:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 22 Jun 2017 18:18:06 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 18:18:10 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107955967c68313a41408a73b640b2a805ddbd0686d5313e835128f6796fd58d`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0244551af03ed49a43804c5e0ce26a673d1069373e289273120a9e15ad44d519`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c73ea76dcc38fb3ad8e2d5676d2ff67af89182b48daa95a4bcac997cd62f040`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46312a3e5066024d6e01a15ce924ea62c7f0871a77d156995cf4e666dc5b5e43`  
		Last Modified: Thu, 22 Jun 2017 18:18:56 GMT  
		Size: 69.6 MB (69573883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6e1499ae0f9cc4fd93849d2cb53ded3746a8c4e02281ddef4d2db2f00f6e5`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd019eadcd3fe2d18e3196ac35bf556bda921fbcc257ee62d0985adf91c9f5a4`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08bb32c7451f78297ea86f395b872d416524b4e822877b3ac89a4e630cbf177`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:ba285117a08e6c189cd98a6d19e585d10eb4004405ed313c24b124618294756f
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5301470343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3ad91ef5f410c2ee64ad8a1bea0accef0b055efae75b013a00e186f0ed99e8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 22 Jun 2017 18:16:13 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 18:16:16 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.9-signed.msi
# Thu, 22 Jun 2017 18:16:19 GMT
ENV MONGO_DOWNLOAD_SHA256=df474b0bfef73a252c029c738d5125eb24be80cc454844384247f0d796e860f4
# Thu, 22 Jun 2017 18:17:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 22 Jun 2017 18:18:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 22 Jun 2017 18:18:06 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 18:18:10 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107955967c68313a41408a73b640b2a805ddbd0686d5313e835128f6796fd58d`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0244551af03ed49a43804c5e0ce26a673d1069373e289273120a9e15ad44d519`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c73ea76dcc38fb3ad8e2d5676d2ff67af89182b48daa95a4bcac997cd62f040`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46312a3e5066024d6e01a15ce924ea62c7f0871a77d156995cf4e666dc5b5e43`  
		Last Modified: Thu, 22 Jun 2017 18:18:56 GMT  
		Size: 69.6 MB (69573883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6e1499ae0f9cc4fd93849d2cb53ded3746a8c4e02281ddef4d2db2f00f6e5`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd019eadcd3fe2d18e3196ac35bf556bda921fbcc257ee62d0985adf91c9f5a4`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08bb32c7451f78297ea86f395b872d416524b4e822877b3ac89a4e630cbf177`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:ba285117a08e6c189cd98a6d19e585d10eb4004405ed313c24b124618294756f
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5301470343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3ad91ef5f410c2ee64ad8a1bea0accef0b055efae75b013a00e186f0ed99e8`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 22 Jun 2017 18:16:13 GMT
ENV MONGO_VERSION=3.5.9
# Thu, 22 Jun 2017 18:16:16 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.9-signed.msi
# Thu, 22 Jun 2017 18:16:19 GMT
ENV MONGO_DOWNLOAD_SHA256=df474b0bfef73a252c029c738d5125eb24be80cc454844384247f0d796e860f4
# Thu, 22 Jun 2017 18:17:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 22 Jun 2017 18:18:03 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 22 Jun 2017 18:18:06 GMT
EXPOSE 27017/tcp
# Thu, 22 Jun 2017 18:18:10 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2869ce7d2a7c3a942c84de08ac9b045cb0a8deefa17949b571dffa5cd1cc28cd`  
		Last Modified: Tue, 18 Apr 2017 17:14:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107955967c68313a41408a73b640b2a805ddbd0686d5313e835128f6796fd58d`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0244551af03ed49a43804c5e0ce26a673d1069373e289273120a9e15ad44d519`  
		Last Modified: Thu, 22 Jun 2017 18:18:52 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c73ea76dcc38fb3ad8e2d5676d2ff67af89182b48daa95a4bcac997cd62f040`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46312a3e5066024d6e01a15ce924ea62c7f0871a77d156995cf4e666dc5b5e43`  
		Last Modified: Thu, 22 Jun 2017 18:18:56 GMT  
		Size: 69.6 MB (69573883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6e1499ae0f9cc4fd93849d2cb53ded3746a8c4e02281ddef4d2db2f00f6e5`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd019eadcd3fe2d18e3196ac35bf556bda921fbcc257ee62d0985adf91c9f5a4`  
		Last Modified: Thu, 22 Jun 2017 18:18:44 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08bb32c7451f78297ea86f395b872d416524b4e822877b3ac89a4e630cbf177`  
		Last Modified: Thu, 22 Jun 2017 18:18:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
