<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0.15-wheezy`](#mongo3015-wheezy)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-wheezy`](#mongo30-wheezy)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.17`](#mongo3217)
-	[`mongo:3.2.17-jessie`](#mongo3217-jessie)
-	[`mongo:3.2.17-windowsservercore`](#mongo3217-windowsservercore)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.10`](#mongo3410)
-	[`mongo:3.4.10-jessie`](#mongo3410-jessie)
-	[`mongo:3.4.10-windowsservercore`](#mongo3410-windowsservercore)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:3.5.13`](#mongo3513)
-	[`mongo:3.5.13-jessie`](#mongo3513-jessie)
-	[`mongo:3.5.13-windowsservercore`](#mongo3513-windowsservercore)
-	[`mongo:3.5-jessie`](#mongo35-jessie)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)

## `mongo:3`

```console
$ docker pull mongo@sha256:5d08a3463cdc20abfe6ac749102d89ed6ededb2f9c6649b7d1c9670db473ee96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:bfe2d51d6b5578772631c96bff31911179c368e8d7d1a8c75beff3dd4a58d2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:45cece53df81e2ae4da9f705088ff61a78608bcd4367152f8e06e8f0b6188e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef915c2e85322aae22c10498f4861c0e3e2cf01c7ebb2536e9f5b5fb9ea024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:05 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:45:05 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:45:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:45:18 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:45:29 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 03 Nov 2017 22:45:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_MAJOR=3.0
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 03 Nov 2017 22:45:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:45:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:45:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:45:46 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:45:46 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:45:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:45:47 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:45:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7b516e4d976933639d8830b24d4b9ea7d49ba03f93b534b30673deb2c2c7fd`  
		Last Modified: Fri, 03 Nov 2017 22:48:59 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0a0ddad603bc5e090c7e255c5f776b928b88dbbe44aed68b9fa34952b74251`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a334fa2dffe8634dbb0936e59d86df2e390a12d5521ceba6f9daae17a3525`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 2.7 MB (2660775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad41477368bdcba8421847cef4f6cfc2b8da17bfda34ea266b37d4d6c9f8c4d`  
		Last Modified: Fri, 03 Nov 2017 22:48:57 GMT  
		Size: 1.1 MB (1103171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9987491bc639d818a95d48abdf9f77b6105c76f866fcf2acdb86cf1f2f361c8`  
		Last Modified: Fri, 03 Nov 2017 22:48:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a834f235a5a46b723ad9b80115c3cf6e6cba340c77877cc68ecde840268a4e34`  
		Last Modified: Fri, 03 Nov 2017 22:49:02 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af08112afbf691e164a2b6baa52b0be1aa53150c22e0ea542213991aa7fcfce`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9adaeaa13d635b0802e5102a54c3a7c8e2d3148421b47da2a9272e407080d`  
		Last Modified: Fri, 03 Nov 2017 22:49:07 GMT  
		Size: 61.9 MB (61886347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e174461df0bb7e0aa00ae92afcd62b5c448051f46bac3a6cefa1b6c729d4a92`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebb25a6bc083f322fc0fecea144206c8c0b374e1d1c8ca75106be5f6cc06313`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ac771b71ad5b76819c6b2d997f5833674327b6c424180730b69283255a7810`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:bfe2d51d6b5578772631c96bff31911179c368e8d7d1a8c75beff3dd4a58d2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:45cece53df81e2ae4da9f705088ff61a78608bcd4367152f8e06e8f0b6188e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef915c2e85322aae22c10498f4861c0e3e2cf01c7ebb2536e9f5b5fb9ea024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:05 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:45:05 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:45:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:45:18 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:45:29 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 03 Nov 2017 22:45:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_MAJOR=3.0
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 03 Nov 2017 22:45:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:45:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:45:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:45:46 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:45:46 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:45:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:45:47 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:45:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7b516e4d976933639d8830b24d4b9ea7d49ba03f93b534b30673deb2c2c7fd`  
		Last Modified: Fri, 03 Nov 2017 22:48:59 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0a0ddad603bc5e090c7e255c5f776b928b88dbbe44aed68b9fa34952b74251`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a334fa2dffe8634dbb0936e59d86df2e390a12d5521ceba6f9daae17a3525`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 2.7 MB (2660775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad41477368bdcba8421847cef4f6cfc2b8da17bfda34ea266b37d4d6c9f8c4d`  
		Last Modified: Fri, 03 Nov 2017 22:48:57 GMT  
		Size: 1.1 MB (1103171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9987491bc639d818a95d48abdf9f77b6105c76f866fcf2acdb86cf1f2f361c8`  
		Last Modified: Fri, 03 Nov 2017 22:48:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a834f235a5a46b723ad9b80115c3cf6e6cba340c77877cc68ecde840268a4e34`  
		Last Modified: Fri, 03 Nov 2017 22:49:02 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af08112afbf691e164a2b6baa52b0be1aa53150c22e0ea542213991aa7fcfce`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9adaeaa13d635b0802e5102a54c3a7c8e2d3148421b47da2a9272e407080d`  
		Last Modified: Fri, 03 Nov 2017 22:49:07 GMT  
		Size: 61.9 MB (61886347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e174461df0bb7e0aa00ae92afcd62b5c448051f46bac3a6cefa1b6c729d4a92`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebb25a6bc083f322fc0fecea144206c8c0b374e1d1c8ca75106be5f6cc06313`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ac771b71ad5b76819c6b2d997f5833674327b6c424180730b69283255a7810`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-wheezy`

```console
$ docker pull mongo@sha256:03eec9fe4721e35545d4be79046a6fe436064d9a6403aa51ec33f7a24d4393ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:45cece53df81e2ae4da9f705088ff61a78608bcd4367152f8e06e8f0b6188e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef915c2e85322aae22c10498f4861c0e3e2cf01c7ebb2536e9f5b5fb9ea024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:05 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:45:05 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:45:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:45:18 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:45:29 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 03 Nov 2017 22:45:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_MAJOR=3.0
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 03 Nov 2017 22:45:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:45:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:45:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:45:46 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:45:46 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:45:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:45:47 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:45:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7b516e4d976933639d8830b24d4b9ea7d49ba03f93b534b30673deb2c2c7fd`  
		Last Modified: Fri, 03 Nov 2017 22:48:59 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0a0ddad603bc5e090c7e255c5f776b928b88dbbe44aed68b9fa34952b74251`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a334fa2dffe8634dbb0936e59d86df2e390a12d5521ceba6f9daae17a3525`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 2.7 MB (2660775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad41477368bdcba8421847cef4f6cfc2b8da17bfda34ea266b37d4d6c9f8c4d`  
		Last Modified: Fri, 03 Nov 2017 22:48:57 GMT  
		Size: 1.1 MB (1103171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9987491bc639d818a95d48abdf9f77b6105c76f866fcf2acdb86cf1f2f361c8`  
		Last Modified: Fri, 03 Nov 2017 22:48:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a834f235a5a46b723ad9b80115c3cf6e6cba340c77877cc68ecde840268a4e34`  
		Last Modified: Fri, 03 Nov 2017 22:49:02 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af08112afbf691e164a2b6baa52b0be1aa53150c22e0ea542213991aa7fcfce`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9adaeaa13d635b0802e5102a54c3a7c8e2d3148421b47da2a9272e407080d`  
		Last Modified: Fri, 03 Nov 2017 22:49:07 GMT  
		Size: 61.9 MB (61886347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e174461df0bb7e0aa00ae92afcd62b5c448051f46bac3a6cefa1b6c729d4a92`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebb25a6bc083f322fc0fecea144206c8c0b374e1d1c8ca75106be5f6cc06313`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ac771b71ad5b76819c6b2d997f5833674327b6c424180730b69283255a7810`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore`

```console
$ docker pull mongo@sha256:990306d679a2e41726a7b88168438ce4d8677b9977c9245ac57f012ba4324c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0.15-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-wheezy`

```console
$ docker pull mongo@sha256:03eec9fe4721e35545d4be79046a6fe436064d9a6403aa51ec33f7a24d4393ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:45cece53df81e2ae4da9f705088ff61a78608bcd4367152f8e06e8f0b6188e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef915c2e85322aae22c10498f4861c0e3e2cf01c7ebb2536e9f5b5fb9ea024d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:05 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:45:05 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 03 Nov 2017 22:45:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:45:18 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:45:29 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 03 Nov 2017 22:45:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:45:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_MAJOR=3.0
# Fri, 03 Nov 2017 22:45:31 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 03 Nov 2017 22:45:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:45:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:45:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:45:46 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:45:46 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:45:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:45:47 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:45:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7b516e4d976933639d8830b24d4b9ea7d49ba03f93b534b30673deb2c2c7fd`  
		Last Modified: Fri, 03 Nov 2017 22:48:59 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0a0ddad603bc5e090c7e255c5f776b928b88dbbe44aed68b9fa34952b74251`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37a334fa2dffe8634dbb0936e59d86df2e390a12d5521ceba6f9daae17a3525`  
		Last Modified: Fri, 03 Nov 2017 22:48:58 GMT  
		Size: 2.7 MB (2660775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad41477368bdcba8421847cef4f6cfc2b8da17bfda34ea266b37d4d6c9f8c4d`  
		Last Modified: Fri, 03 Nov 2017 22:48:57 GMT  
		Size: 1.1 MB (1103171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9987491bc639d818a95d48abdf9f77b6105c76f866fcf2acdb86cf1f2f361c8`  
		Last Modified: Fri, 03 Nov 2017 22:48:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a834f235a5a46b723ad9b80115c3cf6e6cba340c77877cc68ecde840268a4e34`  
		Last Modified: Fri, 03 Nov 2017 22:49:02 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af08112afbf691e164a2b6baa52b0be1aa53150c22e0ea542213991aa7fcfce`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9adaeaa13d635b0802e5102a54c3a7c8e2d3148421b47da2a9272e407080d`  
		Last Modified: Fri, 03 Nov 2017 22:49:07 GMT  
		Size: 61.9 MB (61886347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e174461df0bb7e0aa00ae92afcd62b5c448051f46bac3a6cefa1b6c729d4a92`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebb25a6bc083f322fc0fecea144206c8c0b374e1d1c8ca75106be5f6cc06313`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ac771b71ad5b76819c6b2d997f5833674327b6c424180730b69283255a7810`  
		Last Modified: Fri, 03 Nov 2017 22:48:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:990306d679a2e41726a7b88168438ce4d8677b9977c9245ac57f012ba4324c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:ea6ec4ecbd6e7413e9d60f1f6e856c8d07181e3fb9729c3a0a3f4fe48dfb2cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:fd1be90e2107cabe2ad510ae0a426b6ed10b820b9e7f170610ec7a05fbf81d3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e859f0d67141004f7107d8d5a0a1a15af91e33f7e10b1fc80265b934ff89b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:46:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:46:05 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:46:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:46:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:46:24 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 03 Nov 2017 22:46:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:46:26 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:46:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_MAJOR=3.2
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_VERSION=3.2.17
# Fri, 03 Nov 2017 22:46:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:46:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:46:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:46:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:46:49 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:46:51 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:46:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd9d9ec1bf9e3aee10e3563d8001f71a578da45297dd12a47046c844559c306`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.4 MB (2397976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81b8c0f23dd26e25555b73d8a025b357f2582df13c0ce3e09d89663e8856f21`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 1.1 MB (1108717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22936c9b974d1dfe6890f2bacbeef897a36d9ac17f20f24f1bf94754af11d12c`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de40b7a58e298214fe1053dba72ee81291d5186bae1fb37afd2d808a2e14c84`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c93320010ba5505801eb931a3d88b00670ed235f3d1a8c60ed65fed3d2ba637`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c388231b2f0df4107ec46239b0145139e17992e32b00bf04db0f87dceaa9bb5`  
		Last Modified: Fri, 03 Nov 2017 22:49:34 GMT  
		Size: 70.8 MB (70829932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b70a5a86c08e929699431afaab1bb0fdc2e4346acc48219ec62cfcefc28ec61`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fac3d25363c76878565734f8e23ddb463dde3745d376b700f46719c5751047`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531b1cdfdcc75e00ed32128e8b834be8aa4ab9bf0d9abc97553098eb977fa685`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17`

```console
$ docker pull mongo@sha256:ea6ec4ecbd6e7413e9d60f1f6e856c8d07181e3fb9729c3a0a3f4fe48dfb2cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2.17` - linux; amd64

```console
$ docker pull mongo@sha256:fd1be90e2107cabe2ad510ae0a426b6ed10b820b9e7f170610ec7a05fbf81d3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e859f0d67141004f7107d8d5a0a1a15af91e33f7e10b1fc80265b934ff89b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:46:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:46:05 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:46:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:46:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:46:24 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 03 Nov 2017 22:46:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:46:26 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:46:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_MAJOR=3.2
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_VERSION=3.2.17
# Fri, 03 Nov 2017 22:46:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:46:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:46:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:46:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:46:49 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:46:51 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:46:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd9d9ec1bf9e3aee10e3563d8001f71a578da45297dd12a47046c844559c306`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.4 MB (2397976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81b8c0f23dd26e25555b73d8a025b357f2582df13c0ce3e09d89663e8856f21`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 1.1 MB (1108717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22936c9b974d1dfe6890f2bacbeef897a36d9ac17f20f24f1bf94754af11d12c`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de40b7a58e298214fe1053dba72ee81291d5186bae1fb37afd2d808a2e14c84`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c93320010ba5505801eb931a3d88b00670ed235f3d1a8c60ed65fed3d2ba637`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c388231b2f0df4107ec46239b0145139e17992e32b00bf04db0f87dceaa9bb5`  
		Last Modified: Fri, 03 Nov 2017 22:49:34 GMT  
		Size: 70.8 MB (70829932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b70a5a86c08e929699431afaab1bb0fdc2e4346acc48219ec62cfcefc28ec61`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fac3d25363c76878565734f8e23ddb463dde3745d376b700f46719c5751047`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531b1cdfdcc75e00ed32128e8b834be8aa4ab9bf0d9abc97553098eb977fa685`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2.17` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17-jessie`

```console
$ docker pull mongo@sha256:91a38ca1ac88d397fcaf6f4d907a6858cc9b76e31018d5f3c704e4a5b63333e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.17-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd1be90e2107cabe2ad510ae0a426b6ed10b820b9e7f170610ec7a05fbf81d3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e859f0d67141004f7107d8d5a0a1a15af91e33f7e10b1fc80265b934ff89b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:46:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:46:05 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:46:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:46:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:46:24 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 03 Nov 2017 22:46:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:46:26 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:46:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_MAJOR=3.2
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_VERSION=3.2.17
# Fri, 03 Nov 2017 22:46:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:46:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:46:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:46:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:46:49 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:46:51 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:46:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd9d9ec1bf9e3aee10e3563d8001f71a578da45297dd12a47046c844559c306`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.4 MB (2397976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81b8c0f23dd26e25555b73d8a025b357f2582df13c0ce3e09d89663e8856f21`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 1.1 MB (1108717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22936c9b974d1dfe6890f2bacbeef897a36d9ac17f20f24f1bf94754af11d12c`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de40b7a58e298214fe1053dba72ee81291d5186bae1fb37afd2d808a2e14c84`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c93320010ba5505801eb931a3d88b00670ed235f3d1a8c60ed65fed3d2ba637`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c388231b2f0df4107ec46239b0145139e17992e32b00bf04db0f87dceaa9bb5`  
		Last Modified: Fri, 03 Nov 2017 22:49:34 GMT  
		Size: 70.8 MB (70829932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b70a5a86c08e929699431afaab1bb0fdc2e4346acc48219ec62cfcefc28ec61`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fac3d25363c76878565734f8e23ddb463dde3745d376b700f46719c5751047`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531b1cdfdcc75e00ed32128e8b834be8aa4ab9bf0d9abc97553098eb977fa685`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17-windowsservercore`

```console
$ docker pull mongo@sha256:cb993b53943b619fa102268ed5e1a3b9c303b9e1f81881c1d473980063fdddc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2.17-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:91a38ca1ac88d397fcaf6f4d907a6858cc9b76e31018d5f3c704e4a5b63333e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd1be90e2107cabe2ad510ae0a426b6ed10b820b9e7f170610ec7a05fbf81d3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e859f0d67141004f7107d8d5a0a1a15af91e33f7e10b1fc80265b934ff89b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:46:05 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:46:05 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:46:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:46:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:46:24 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 03 Nov 2017 22:46:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:46:26 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:46:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_MAJOR=3.2
# Fri, 03 Nov 2017 22:46:27 GMT
ENV MONGO_VERSION=3.2.17
# Fri, 03 Nov 2017 22:46:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:46:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:46:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:46:49 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:46:49 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:46:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:46:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:46:51 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:46:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd9d9ec1bf9e3aee10e3563d8001f71a578da45297dd12a47046c844559c306`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.4 MB (2397976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81b8c0f23dd26e25555b73d8a025b357f2582df13c0ce3e09d89663e8856f21`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 1.1 MB (1108717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22936c9b974d1dfe6890f2bacbeef897a36d9ac17f20f24f1bf94754af11d12c`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de40b7a58e298214fe1053dba72ee81291d5186bae1fb37afd2d808a2e14c84`  
		Last Modified: Fri, 03 Nov 2017 22:49:23 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c93320010ba5505801eb931a3d88b00670ed235f3d1a8c60ed65fed3d2ba637`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c388231b2f0df4107ec46239b0145139e17992e32b00bf04db0f87dceaa9bb5`  
		Last Modified: Fri, 03 Nov 2017 22:49:34 GMT  
		Size: 70.8 MB (70829932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b70a5a86c08e929699431afaab1bb0fdc2e4346acc48219ec62cfcefc28ec61`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fac3d25363c76878565734f8e23ddb463dde3745d376b700f46719c5751047`  
		Last Modified: Fri, 03 Nov 2017 22:49:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531b1cdfdcc75e00ed32128e8b834be8aa4ab9bf0d9abc97553098eb977fa685`  
		Last Modified: Fri, 03 Nov 2017 22:49:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:cb993b53943b619fa102268ed5e1a3b9c303b9e1f81881c1d473980063fdddc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:5d08a3463cdc20abfe6ac749102d89ed6ededb2f9c6649b7d1c9670db473ee96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10`

```console
$ docker pull mongo@sha256:5d08a3463cdc20abfe6ac749102d89ed6ededb2f9c6649b7d1c9670db473ee96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4.10` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.10` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-jessie`

```console
$ docker pull mongo@sha256:7618c602d518811af0c69c2187474e028308bd0c6343922fc681511c37257814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.10-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4.10-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:7618c602d518811af0c69c2187474e028308bd0c6343922fc681511c37257814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:c7721bf0bfdf5f8341257a22586583a20931ac0c3bef488f5b8b20b590796d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5` - linux; amd64

```console
$ docker pull mongo@sha256:fd6f9bf935b27cf05e53b104f7de516d3fb73a247993525b146b2a490c0dfd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9975111794891966a4d90a6ddbdf8257a61e6fecb4355f938d5b0e587b86cf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:48:08 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 03 Nov 2017 22:48:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_MAJOR=3.5
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 03 Nov 2017 22:48:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:48:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:48:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:48:39 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:48:40 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:41 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e8565aa6c6967c298c53c827d16d765543185358632a35d35ab7f752c3a2f`  
		Last Modified: Fri, 03 Nov 2017 22:50:23 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1411c001d634e2a9497bb1fb00394b0a8551634801e718d86483e6275767acf`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e6b7a8ff04a9403c21376aff38154fa1ad460052d7462c1087cfd02fe598f`  
		Last Modified: Fri, 03 Nov 2017 22:50:37 GMT  
		Size: 99.2 MB (99185480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a751d387145cc022891cb9a63f984f754b663a973191731dfc63e2729d5178`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a7a6e6b46adc9dc66488bd506f909b531254a2002ca61f1a1dc124550107f`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 3.2 KB (3174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.5` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13`

```console
$ docker pull mongo@sha256:c7721bf0bfdf5f8341257a22586583a20931ac0c3bef488f5b8b20b590796d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5.13` - linux; amd64

```console
$ docker pull mongo@sha256:fd6f9bf935b27cf05e53b104f7de516d3fb73a247993525b146b2a490c0dfd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9975111794891966a4d90a6ddbdf8257a61e6fecb4355f938d5b0e587b86cf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:48:08 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 03 Nov 2017 22:48:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_MAJOR=3.5
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 03 Nov 2017 22:48:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:48:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:48:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:48:39 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:48:40 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:41 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e8565aa6c6967c298c53c827d16d765543185358632a35d35ab7f752c3a2f`  
		Last Modified: Fri, 03 Nov 2017 22:50:23 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1411c001d634e2a9497bb1fb00394b0a8551634801e718d86483e6275767acf`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e6b7a8ff04a9403c21376aff38154fa1ad460052d7462c1087cfd02fe598f`  
		Last Modified: Fri, 03 Nov 2017 22:50:37 GMT  
		Size: 99.2 MB (99185480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a751d387145cc022891cb9a63f984f754b663a973191731dfc63e2729d5178`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a7a6e6b46adc9dc66488bd506f909b531254a2002ca61f1a1dc124550107f`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 3.2 KB (3174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.5.13` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13-jessie`

```console
$ docker pull mongo@sha256:49bb71b6ae3e78b2945622255584ab1723c184c7bb157f38e8dbace0986b21ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5.13-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd6f9bf935b27cf05e53b104f7de516d3fb73a247993525b146b2a490c0dfd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9975111794891966a4d90a6ddbdf8257a61e6fecb4355f938d5b0e587b86cf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:48:08 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 03 Nov 2017 22:48:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_MAJOR=3.5
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 03 Nov 2017 22:48:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:48:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:48:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:48:39 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:48:40 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:41 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e8565aa6c6967c298c53c827d16d765543185358632a35d35ab7f752c3a2f`  
		Last Modified: Fri, 03 Nov 2017 22:50:23 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1411c001d634e2a9497bb1fb00394b0a8551634801e718d86483e6275767acf`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e6b7a8ff04a9403c21376aff38154fa1ad460052d7462c1087cfd02fe598f`  
		Last Modified: Fri, 03 Nov 2017 22:50:37 GMT  
		Size: 99.2 MB (99185480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a751d387145cc022891cb9a63f984f754b663a973191731dfc63e2729d5178`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a7a6e6b46adc9dc66488bd506f909b531254a2002ca61f1a1dc124550107f`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 3.2 KB (3174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13-windowsservercore`

```console
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5.13-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-jessie`

```console
$ docker pull mongo@sha256:49bb71b6ae3e78b2945622255584ab1723c184c7bb157f38e8dbace0986b21ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd6f9bf935b27cf05e53b104f7de516d3fb73a247993525b146b2a490c0dfd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9975111794891966a4d90a6ddbdf8257a61e6fecb4355f938d5b0e587b86cf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:48:08 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 03 Nov 2017 22:48:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_MAJOR=3.5
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 03 Nov 2017 22:48:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:48:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:48:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:48:39 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:48:40 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:41 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e8565aa6c6967c298c53c827d16d765543185358632a35d35ab7f752c3a2f`  
		Last Modified: Fri, 03 Nov 2017 22:50:23 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1411c001d634e2a9497bb1fb00394b0a8551634801e718d86483e6275767acf`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e6b7a8ff04a9403c21376aff38154fa1ad460052d7462c1087cfd02fe598f`  
		Last Modified: Fri, 03 Nov 2017 22:50:37 GMT  
		Size: 99.2 MB (99185480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a751d387145cc022891cb9a63f984f754b663a973191731dfc63e2729d5178`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a7a6e6b46adc9dc66488bd506f909b531254a2002ca61f1a1dc124550107f`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 3.2 KB (3174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:7618c602d518811af0c69c2187474e028308bd0c6343922fc681511c37257814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:7618c602d518811af0c69c2187474e028308bd0c6343922fc681511c37257814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:5d08a3463cdc20abfe6ac749102d89ed6ededb2f9c6649b7d1c9670db473ee96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:2e58d6644e9cbe5f10e744bd7bf727e90cf0d43b2254eaf3019f43591aec945d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415eb47ab6a29e6e113123f82691b606e5381a97a78f7f1ade1fde8011e8147d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:47:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 03 Nov 2017 22:47:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 03 Nov 2017 22:47:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_MAJOR=3.4
# Fri, 03 Nov 2017 22:47:34 GMT
ENV MONGO_VERSION=3.4.10
# Fri, 03 Nov 2017 22:47:35 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:47:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:47:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:47:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:47:59 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:47:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 03 Nov 2017 22:48:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:00 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b430c6fbd0f40b8a4bdf40ccdd535630b5cbc28dd881739ff22af653bc4d315`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a73e04f9408c912bc2c2992bd6df3addc66cd3d37995f1d498e2926a43f3175`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e555b2d96ea86f1f54b8feb092731599ad53cf82e2ce95d3667ae73a720632cd`  
		Last Modified: Fri, 03 Nov 2017 22:50:06 GMT  
		Size: 98.5 MB (98517974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cf188ce4bfb8e2ac31525e9e20bd00ebce58727e3f1522d74b30397d7ba184`  
		Last Modified: Fri, 03 Nov 2017 22:49:48 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1410d1a4b591d772a83a76853d2c7e72f796aa72765cd6e8f294eccd5b14bda`  
		Last Modified: Fri, 03 Nov 2017 22:49:45 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1989377dd9138426d93522963bca8ee927098eb24971d357d5df6737e46ee`  
		Last Modified: Fri, 03 Nov 2017 22:49:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:c7721bf0bfdf5f8341257a22586583a20931ac0c3bef488f5b8b20b590796d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:fd6f9bf935b27cf05e53b104f7de516d3fb73a247993525b146b2a490c0dfd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9975111794891966a4d90a6ddbdf8257a61e6fecb4355f938d5b0e587b86cf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:48:08 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 03 Nov 2017 22:48:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_MAJOR=3.5
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 03 Nov 2017 22:48:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:48:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:48:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:48:39 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:48:40 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:41 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e8565aa6c6967c298c53c827d16d765543185358632a35d35ab7f752c3a2f`  
		Last Modified: Fri, 03 Nov 2017 22:50:23 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1411c001d634e2a9497bb1fb00394b0a8551634801e718d86483e6275767acf`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e6b7a8ff04a9403c21376aff38154fa1ad460052d7462c1087cfd02fe598f`  
		Last Modified: Fri, 03 Nov 2017 22:50:37 GMT  
		Size: 99.2 MB (99185480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a751d387145cc022891cb9a63f984f754b663a973191731dfc63e2729d5178`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a7a6e6b46adc9dc66488bd506f909b531254a2002ca61f1a1dc124550107f`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 3.2 KB (3174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:49bb71b6ae3e78b2945622255584ab1723c184c7bb157f38e8dbace0986b21ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd6f9bf935b27cf05e53b104f7de516d3fb73a247993525b146b2a490c0dfd88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9975111794891966a4d90a6ddbdf8257a61e6fecb4355f938d5b0e587b86cf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:45:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 03 Nov 2017 22:47:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:47:12 GMT
ENV GOSU_VERSION=1.7
# Fri, 03 Nov 2017 22:47:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 22:47:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Nov 2017 22:48:08 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 03 Nov 2017 22:48:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 03 Nov 2017 22:48:13 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_MAJOR=3.5
# Fri, 03 Nov 2017 22:48:13 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 03 Nov 2017 22:48:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 03 Nov 2017 22:48:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 03 Nov 2017 22:48:37 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 03 Nov 2017 22:48:39 GMT
VOLUME [/data/db /data/configdb]
# Fri, 03 Nov 2017 22:48:40 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 03 Nov 2017 22:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:48:41 GMT
EXPOSE 27017/tcp
# Fri, 03 Nov 2017 22:48:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c84d5ed92f14e2e29a4bcb3dc9e09223f8e1d673825baa8ee382e92535fe3ea`  
		Last Modified: Fri, 03 Nov 2017 22:49:25 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b630d3b5dc8e2d34fcdde2674f3bc2c5c69f888970b594c3f2304638512371a`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 2.4 MB (2397854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4826ec7ed70b274b157d1b0d63970d06fd8a8c1f992691fa82698e01b1d1bf69`  
		Last Modified: Fri, 03 Nov 2017 22:49:51 GMT  
		Size: 1.1 MB (1108728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d52b6d8d0825d977c722bfb8798f941a58a46dc131cf891c832d281c4af7b4e`  
		Last Modified: Fri, 03 Nov 2017 22:49:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e8565aa6c6967c298c53c827d16d765543185358632a35d35ab7f752c3a2f`  
		Last Modified: Fri, 03 Nov 2017 22:50:23 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1411c001d634e2a9497bb1fb00394b0a8551634801e718d86483e6275767acf`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94e6b7a8ff04a9403c21376aff38154fa1ad460052d7462c1087cfd02fe598f`  
		Last Modified: Fri, 03 Nov 2017 22:50:37 GMT  
		Size: 99.2 MB (99185480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a751d387145cc022891cb9a63f984f754b663a973191731dfc63e2729d5178`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427a7a6e6b46adc9dc66488bd506f909b531254a2002ca61f1a1dc124550107f`  
		Last Modified: Fri, 03 Nov 2017 22:50:21 GMT  
		Size: 3.2 KB (3174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
