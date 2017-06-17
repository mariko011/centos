<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.14`](#mongo3214)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.14-windowsservercore`](#mongo3214-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.5`](#mongo345)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.5-windowsservercore`](#mongo345-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.8`](#mongo358)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.8-windowsservercore`](#mongo358-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:1cfb225dae4cc93a8ff42f8bccb2a846596a65c352ad16ffd2f05f702064b547
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84441004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21831f994bb467c3184df6d533f1d11c247cc9793698b5313f3a0f3b6ca50286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 07 Jun 2017 17:56:14 GMT
ADD file:feb5611ac08089350d5dcf6a9703a7e93106ee120f43e68d583985826fc4a988 in / 
# Wed, 07 Jun 2017 17:56:15 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:38:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 08 Jun 2017 06:38:44 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 08 Jun 2017 06:38:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:38:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 06:39:09 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 08 Jun 2017 06:39:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 06:39:11 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 08 Jun 2017 06:39:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:49:23 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:49:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:49:25 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:49:26 GMT
ENV MONGO_MAJOR=3.0
# Sat, 17 Jun 2017 05:49:27 GMT
ENV MONGO_VERSION=3.0.15
# Sat, 17 Jun 2017 05:49:29 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:50:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:50:07 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:50:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:50:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:50:12 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:50:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ae74d3cab9876ec3011ec9e3d22f591c714f5dd8750eb94611dcd6d5c35ad955`  
		Last Modified: Wed, 07 Jun 2017 18:18:37 GMT  
		Size: 19.2 MB (19159172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ae947e54854405c77be523777a969d7a4aaf61ab0cec7c839e749d2ea2f173`  
		Last Modified: Wed, 14 Jun 2017 05:12:22 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cac2d20e23989d42517912ed0815ec6e0ee010727dde7937ddacceccb64e91e`  
		Last Modified: Wed, 14 Jun 2017 05:12:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22e8c4971ef61c4e32544611cada1b4ad45747a40977a05a1a9737285dd4868`  
		Last Modified: Wed, 14 Jun 2017 05:12:24 GMT  
		Size: 2.7 MB (2660711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848f947b12cc022e7f7d8c6eeb7c3d7318145d8a37839d78d46cdd5156d459ec`  
		Last Modified: Wed, 14 Jun 2017 05:12:22 GMT  
		Size: 914.7 KB (914694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71d3073f298e69e746db8318fe71d2b019377b2b0fdc4649ba00a9898ce2c3d`  
		Last Modified: Wed, 14 Jun 2017 05:12:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d918c46560cf4f5dd7fff65f63de708ed2ac925d70de9db7138a570adbf9d46`  
		Last Modified: Wed, 14 Jun 2017 05:12:19 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d887041c0430eea639ae60f709852a58f419d6924e3aa1e0db1c5cc8987cf292`  
		Last Modified: Sat, 17 Jun 2017 05:57:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deffa3e0384d4edea712e27fe689b81f72089fa6c4309d95c8da507951d58bb2`  
		Last Modified: Sat, 17 Jun 2017 05:58:00 GMT  
		Size: 61.7 MB (61698799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe552de340a78af231967c425dfb58203cf194216adda228bc0d58622c98720d`  
		Last Modified: Sat, 17 Jun 2017 05:57:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19786545b2255c8e8367f3f94f1e51a1f6fc8ef6daf4c6e0a5a979a5e5c02eb0`  
		Last Modified: Sat, 17 Jun 2017 05:57:41 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63457d6fe51a59adee240ac5e35778aed5383d829d004ab5605280915e26c830`  
		Last Modified: Sat, 17 Jun 2017 05:57:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:1cfb225dae4cc93a8ff42f8bccb2a846596a65c352ad16ffd2f05f702064b547
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84441004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21831f994bb467c3184df6d533f1d11c247cc9793698b5313f3a0f3b6ca50286`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 07 Jun 2017 17:56:14 GMT
ADD file:feb5611ac08089350d5dcf6a9703a7e93106ee120f43e68d583985826fc4a988 in / 
# Wed, 07 Jun 2017 17:56:15 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:38:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 08 Jun 2017 06:38:44 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 08 Jun 2017 06:38:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:38:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 06:39:09 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 08 Jun 2017 06:39:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 06:39:11 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 08 Jun 2017 06:39:13 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:49:23 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:49:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:49:25 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:49:26 GMT
ENV MONGO_MAJOR=3.0
# Sat, 17 Jun 2017 05:49:27 GMT
ENV MONGO_VERSION=3.0.15
# Sat, 17 Jun 2017 05:49:29 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:50:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:50:07 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:50:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:50:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:50:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:50:12 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:50:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:ae74d3cab9876ec3011ec9e3d22f591c714f5dd8750eb94611dcd6d5c35ad955`  
		Last Modified: Wed, 07 Jun 2017 18:18:37 GMT  
		Size: 19.2 MB (19159172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ae947e54854405c77be523777a969d7a4aaf61ab0cec7c839e749d2ea2f173`  
		Last Modified: Wed, 14 Jun 2017 05:12:22 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cac2d20e23989d42517912ed0815ec6e0ee010727dde7937ddacceccb64e91e`  
		Last Modified: Wed, 14 Jun 2017 05:12:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22e8c4971ef61c4e32544611cada1b4ad45747a40977a05a1a9737285dd4868`  
		Last Modified: Wed, 14 Jun 2017 05:12:24 GMT  
		Size: 2.7 MB (2660711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848f947b12cc022e7f7d8c6eeb7c3d7318145d8a37839d78d46cdd5156d459ec`  
		Last Modified: Wed, 14 Jun 2017 05:12:22 GMT  
		Size: 914.7 KB (914694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71d3073f298e69e746db8318fe71d2b019377b2b0fdc4649ba00a9898ce2c3d`  
		Last Modified: Wed, 14 Jun 2017 05:12:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d918c46560cf4f5dd7fff65f63de708ed2ac925d70de9db7138a570adbf9d46`  
		Last Modified: Wed, 14 Jun 2017 05:12:19 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d887041c0430eea639ae60f709852a58f419d6924e3aa1e0db1c5cc8987cf292`  
		Last Modified: Sat, 17 Jun 2017 05:57:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deffa3e0384d4edea712e27fe689b81f72089fa6c4309d95c8da507951d58bb2`  
		Last Modified: Sat, 17 Jun 2017 05:58:00 GMT  
		Size: 61.7 MB (61698799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe552de340a78af231967c425dfb58203cf194216adda228bc0d58622c98720d`  
		Last Modified: Sat, 17 Jun 2017 05:57:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19786545b2255c8e8367f3f94f1e51a1f6fc8ef6daf4c6e0a5a979a5e5c02eb0`  
		Last Modified: Sat, 17 Jun 2017 05:57:41 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63457d6fe51a59adee240ac5e35778aed5383d829d004ab5605280915e26c830`  
		Last Modified: Sat, 17 Jun 2017 05:57:41 GMT  
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

## `mongo:3.2.14`

```console
$ docker pull mongo@sha256:24c5b5579520cf54966763730e27e08960e23847ceb8ebddb9fdec7a4b224baa
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.14` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103914190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616e1a61366f0b59630ffc888d25563fc2ba742b80ea650ae8de7a01e0ba728`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:39:56 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 08 Jun 2017 06:40:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:40:09 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 06:40:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 08 Jun 2017 06:40:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 06:40:26 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 08 Jun 2017 06:40:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:50:41 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:50:42 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:50:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:50:45 GMT
ENV MONGO_MAJOR=3.2
# Sat, 17 Jun 2017 05:50:46 GMT
ENV MONGO_VERSION=3.2.14
# Sat, 17 Jun 2017 05:50:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:51:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:51:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:51:16 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:51:18 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:51:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:51:21 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:51:22 GMT
CMD ["mongod"]
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
	-	`sha256:354dd8e0bee0d3f3ddbf7bb2fe0b4e0d8d63c1894fd3f05aac02bb5d040aca35`  
		Last Modified: Wed, 14 Jun 2017 05:13:39 GMT  
		Size: 2.4 MB (2397537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b568b029bb1ac5f6a46c13b6268444278e3ab9f50c4a825357d95495d6a186a`  
		Last Modified: Wed, 14 Jun 2017 05:13:38 GMT  
		Size: 881.7 KB (881660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b71a4a1ab98126f577d559e78861a59359c385cc3b9cdb12c62f0ce1d044aa0`  
		Last Modified: Wed, 14 Jun 2017 05:13:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bd4b2d277e48b558a82223cdb34d3036bfed677f0e124b175cc9719632e395`  
		Last Modified: Wed, 14 Jun 2017 05:13:35 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4cdd9487144c1e40adba5212e165d260a92cf83c6ad38215a7b2c196cdf989`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e157067c216dbf199c7aad3855e8ab97988a5212f9fe1033ff4f554afccec155`  
		Last Modified: Sat, 17 Jun 2017 05:59:22 GMT  
		Size: 70.5 MB (70527560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac92dbdc3c8ada68139c868c79d899cd1446aaa0b909fb82409eabb40fe499f`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133c3191b60380df42cdfc246c7c35e2dde1c7e07ded9958867ecb1a26460263`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2a56bfcbdb426d8fe4ed638e2beb163d47c5e52526bc46010d34edfb645174`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:24c5b5579520cf54966763730e27e08960e23847ceb8ebddb9fdec7a4b224baa
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103914190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b616e1a61366f0b59630ffc888d25563fc2ba742b80ea650ae8de7a01e0ba728`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:39:56 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 08 Jun 2017 06:40:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:40:09 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 06:40:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Thu, 08 Jun 2017 06:40:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 06:40:26 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 08 Jun 2017 06:40:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:50:41 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:50:42 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:50:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:50:45 GMT
ENV MONGO_MAJOR=3.2
# Sat, 17 Jun 2017 05:50:46 GMT
ENV MONGO_VERSION=3.2.14
# Sat, 17 Jun 2017 05:50:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:51:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:51:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:51:16 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:51:18 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:51:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:51:21 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:51:22 GMT
CMD ["mongod"]
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
	-	`sha256:354dd8e0bee0d3f3ddbf7bb2fe0b4e0d8d63c1894fd3f05aac02bb5d040aca35`  
		Last Modified: Wed, 14 Jun 2017 05:13:39 GMT  
		Size: 2.4 MB (2397537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b568b029bb1ac5f6a46c13b6268444278e3ab9f50c4a825357d95495d6a186a`  
		Last Modified: Wed, 14 Jun 2017 05:13:38 GMT  
		Size: 881.7 KB (881660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b71a4a1ab98126f577d559e78861a59359c385cc3b9cdb12c62f0ce1d044aa0`  
		Last Modified: Wed, 14 Jun 2017 05:13:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bd4b2d277e48b558a82223cdb34d3036bfed677f0e124b175cc9719632e395`  
		Last Modified: Wed, 14 Jun 2017 05:13:35 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4cdd9487144c1e40adba5212e165d260a92cf83c6ad38215a7b2c196cdf989`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e157067c216dbf199c7aad3855e8ab97988a5212f9fe1033ff4f554afccec155`  
		Last Modified: Sat, 17 Jun 2017 05:59:22 GMT  
		Size: 70.5 MB (70527560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac92dbdc3c8ada68139c868c79d899cd1446aaa0b909fb82409eabb40fe499f`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133c3191b60380df42cdfc246c7c35e2dde1c7e07ded9958867ecb1a26460263`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2a56bfcbdb426d8fe4ed638e2beb163d47c5e52526bc46010d34edfb645174`  
		Last Modified: Sat, 17 Jun 2017 05:59:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.14-windowsservercore`

```console
$ docker pull mongo@sha256:442729995ef9eb79f238adb34ab194213e1f98feb294a1244f7eece341a8bf5f
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.14-windowsservercore` - windows; amd64

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

## `mongo:3.4.5`

```console
$ docker pull mongo@sha256:f6645c8462314b4eaca470c1031399fd58bbaf3135a976f14fd3656310e96251
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131386845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b7188af8650840f863cc12fce930179e53d33f0d16446129d4b2e066b4a32c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

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
# Thu, 08 Jun 2017 06:41:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 08 Jun 2017 06:41:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:51:51 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:51:52 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:53 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:54 GMT
ENV MONGO_MAJOR=3.4
# Sat, 17 Jun 2017 05:51:55 GMT
ENV MONGO_VERSION=3.4.5
# Sat, 17 Jun 2017 05:51:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:52:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:52:19 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:52:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:52:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:52:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:52:25 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:52:26 GMT
CMD ["mongod"]
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
	-	`sha256:61eb4c099eb9f06de38788fc9a60e36d7dd07abb8e74e15a101574e6370f501c`  
		Last Modified: Wed, 14 Jun 2017 05:14:48 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaac4920caec8d75051fd5f34c935c92a7b9a20aab0fdc1040fc6d1c492045c`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054e056873de201cfec0dd09c0a4cd5ef44a7d73f4c121be03a121e0b48b6bd`  
		Last Modified: Sat, 17 Jun 2017 06:00:53 GMT  
		Size: 98.0 MB (98001725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384315c781fab5c56579fb68114c3e8f680182e3642c78f9de0d81ca59322492`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403d9820909aeb42b1ce0af544c14198566c76f16a0c2a9bd7af908fd8ac8d13`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ed4fc35ec32bcf1b9300b16f0a4885cdcbfe80110865a89aa76099a73ab8b6`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:f6645c8462314b4eaca470c1031399fd58bbaf3135a976f14fd3656310e96251
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131386845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b7188af8650840f863cc12fce930179e53d33f0d16446129d4b2e066b4a32c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

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
# Thu, 08 Jun 2017 06:41:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 08 Jun 2017 06:41:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:51:51 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:51:52 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:53 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:54 GMT
ENV MONGO_MAJOR=3.4
# Sat, 17 Jun 2017 05:51:55 GMT
ENV MONGO_VERSION=3.4.5
# Sat, 17 Jun 2017 05:51:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:52:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:52:19 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:52:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:52:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:52:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:52:25 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:52:26 GMT
CMD ["mongod"]
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
	-	`sha256:61eb4c099eb9f06de38788fc9a60e36d7dd07abb8e74e15a101574e6370f501c`  
		Last Modified: Wed, 14 Jun 2017 05:14:48 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaac4920caec8d75051fd5f34c935c92a7b9a20aab0fdc1040fc6d1c492045c`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054e056873de201cfec0dd09c0a4cd5ef44a7d73f4c121be03a121e0b48b6bd`  
		Last Modified: Sat, 17 Jun 2017 06:00:53 GMT  
		Size: 98.0 MB (98001725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384315c781fab5c56579fb68114c3e8f680182e3642c78f9de0d81ca59322492`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403d9820909aeb42b1ce0af544c14198566c76f16a0c2a9bd7af908fd8ac8d13`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ed4fc35ec32bcf1b9300b16f0a4885cdcbfe80110865a89aa76099a73ab8b6`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:f6645c8462314b4eaca470c1031399fd58bbaf3135a976f14fd3656310e96251
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131386845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b7188af8650840f863cc12fce930179e53d33f0d16446129d4b2e066b4a32c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

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
# Thu, 08 Jun 2017 06:41:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 08 Jun 2017 06:41:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:51:51 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:51:52 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:53 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:54 GMT
ENV MONGO_MAJOR=3.4
# Sat, 17 Jun 2017 05:51:55 GMT
ENV MONGO_VERSION=3.4.5
# Sat, 17 Jun 2017 05:51:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:52:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:52:19 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:52:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:52:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:52:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:52:25 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:52:26 GMT
CMD ["mongod"]
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
	-	`sha256:61eb4c099eb9f06de38788fc9a60e36d7dd07abb8e74e15a101574e6370f501c`  
		Last Modified: Wed, 14 Jun 2017 05:14:48 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaac4920caec8d75051fd5f34c935c92a7b9a20aab0fdc1040fc6d1c492045c`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054e056873de201cfec0dd09c0a4cd5ef44a7d73f4c121be03a121e0b48b6bd`  
		Last Modified: Sat, 17 Jun 2017 06:00:53 GMT  
		Size: 98.0 MB (98001725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384315c781fab5c56579fb68114c3e8f680182e3642c78f9de0d81ca59322492`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403d9820909aeb42b1ce0af544c14198566c76f16a0c2a9bd7af908fd8ac8d13`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ed4fc35ec32bcf1b9300b16f0a4885cdcbfe80110865a89aa76099a73ab8b6`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:f6645c8462314b4eaca470c1031399fd58bbaf3135a976f14fd3656310e96251
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131386845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b7188af8650840f863cc12fce930179e53d33f0d16446129d4b2e066b4a32c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

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
# Thu, 08 Jun 2017 06:41:45 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 08 Jun 2017 06:41:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Jun 2017 05:51:51 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 17 Jun 2017 05:51:52 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:53 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:51:54 GMT
ENV MONGO_MAJOR=3.4
# Sat, 17 Jun 2017 05:51:55 GMT
ENV MONGO_VERSION=3.4.5
# Sat, 17 Jun 2017 05:51:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:52:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:52:19 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:52:21 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:52:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Jun 2017 05:52:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:52:25 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:52:26 GMT
CMD ["mongod"]
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
	-	`sha256:61eb4c099eb9f06de38788fc9a60e36d7dd07abb8e74e15a101574e6370f501c`  
		Last Modified: Wed, 14 Jun 2017 05:14:48 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfaac4920caec8d75051fd5f34c935c92a7b9a20aab0fdc1040fc6d1c492045c`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054e056873de201cfec0dd09c0a4cd5ef44a7d73f4c121be03a121e0b48b6bd`  
		Last Modified: Sat, 17 Jun 2017 06:00:53 GMT  
		Size: 98.0 MB (98001725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384315c781fab5c56579fb68114c3e8f680182e3642c78f9de0d81ca59322492`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403d9820909aeb42b1ce0af544c14198566c76f16a0c2a9bd7af908fd8ac8d13`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ed4fc35ec32bcf1b9300b16f0a4885cdcbfe80110865a89aa76099a73ab8b6`  
		Last Modified: Sat, 17 Jun 2017 06:00:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.5-windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.8`

```console
$ docker pull mongo@sha256:a2dfe4218ae00abe25c9d752afbf5bf4eaacdef828b9c6dd4b66ec66a8595761
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128398302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795d2941d9373c7742a644e3fce12313fd80ec0c281960dac2395311b11d646c`
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
# Sat, 17 Jun 2017 05:52:53 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 17 Jun 2017 05:52:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:53:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:53:18 GMT
ENV MONGO_MAJOR=3.5
# Sat, 17 Jun 2017 05:53:20 GMT
ENV MONGO_VERSION=3.5.8
# Sat, 17 Jun 2017 05:53:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:54:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:54:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:54:40 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:54:41 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:54:43 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:54:44 GMT
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
	-	`sha256:0b89aa62e45b85d0835ba7496a3eab10bd8752439d480ccf35730e5351847121`  
		Last Modified: Sat, 17 Jun 2017 06:02:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ea01a815d65f385af1a321b6d9dbb18dffeffced48faa208faec76bf0991`  
		Last Modified: Sat, 17 Jun 2017 06:03:10 GMT  
		Size: 95.0 MB (95013239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177d6670019970b4c304c4d404b12be07d3bf4e69348111e1f2c086e8b32b70`  
		Last Modified: Sat, 17 Jun 2017 06:02:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e6dea208f9c0c2431739c1f2c871d0f1b644a88d211faafd01b164f714ea86`  
		Last Modified: Sat, 17 Jun 2017 06:02:46 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:a2dfe4218ae00abe25c9d752afbf5bf4eaacdef828b9c6dd4b66ec66a8595761
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128398302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795d2941d9373c7742a644e3fce12313fd80ec0c281960dac2395311b11d646c`
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
# Sat, 17 Jun 2017 05:52:53 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 17 Jun 2017 05:52:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:53:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:53:18 GMT
ENV MONGO_MAJOR=3.5
# Sat, 17 Jun 2017 05:53:20 GMT
ENV MONGO_VERSION=3.5.8
# Sat, 17 Jun 2017 05:53:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:54:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:54:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:54:40 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:54:41 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:54:43 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:54:44 GMT
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
	-	`sha256:0b89aa62e45b85d0835ba7496a3eab10bd8752439d480ccf35730e5351847121`  
		Last Modified: Sat, 17 Jun 2017 06:02:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ea01a815d65f385af1a321b6d9dbb18dffeffced48faa208faec76bf0991`  
		Last Modified: Sat, 17 Jun 2017 06:03:10 GMT  
		Size: 95.0 MB (95013239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177d6670019970b4c304c4d404b12be07d3bf4e69348111e1f2c086e8b32b70`  
		Last Modified: Sat, 17 Jun 2017 06:02:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e6dea208f9c0c2431739c1f2c871d0f1b644a88d211faafd01b164f714ea86`  
		Last Modified: Sat, 17 Jun 2017 06:02:46 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:a2dfe4218ae00abe25c9d752afbf5bf4eaacdef828b9c6dd4b66ec66a8595761
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128398302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795d2941d9373c7742a644e3fce12313fd80ec0c281960dac2395311b11d646c`
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
# Sat, 17 Jun 2017 05:52:53 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 17 Jun 2017 05:52:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:53:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 17 Jun 2017 05:53:18 GMT
ENV MONGO_MAJOR=3.5
# Sat, 17 Jun 2017 05:53:20 GMT
ENV MONGO_VERSION=3.5.8
# Sat, 17 Jun 2017 05:53:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 17 Jun 2017 05:54:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 17 Jun 2017 05:54:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 17 Jun 2017 05:54:40 GMT
VOLUME [/data/db /data/configdb]
# Sat, 17 Jun 2017 05:54:41 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 17 Jun 2017 05:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Jun 2017 05:54:43 GMT
EXPOSE 27017/tcp
# Sat, 17 Jun 2017 05:54:44 GMT
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
	-	`sha256:0b89aa62e45b85d0835ba7496a3eab10bd8752439d480ccf35730e5351847121`  
		Last Modified: Sat, 17 Jun 2017 06:02:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ea01a815d65f385af1a321b6d9dbb18dffeffced48faa208faec76bf0991`  
		Last Modified: Sat, 17 Jun 2017 06:03:10 GMT  
		Size: 95.0 MB (95013239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177d6670019970b4c304c4d404b12be07d3bf4e69348111e1f2c086e8b32b70`  
		Last Modified: Sat, 17 Jun 2017 06:02:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e6dea208f9c0c2431739c1f2c871d0f1b644a88d211faafd01b164f714ea86`  
		Last Modified: Sat, 17 Jun 2017 06:02:46 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.8-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
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
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
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
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
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
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
