<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.13`](#mongo3213)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.13-windowsservercore`](#mongo3213-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.4`](#mongo344)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.4-windowsservercore`](#mongo344-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.6`](#mongo356)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.6-windowsservercore`](#mongo356-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:4623b8fa3b03f76ffa770e5eed36f30f8ef5ade2660f71f359abe4fa78835546
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84936936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f478f921e210654d9e1c20294822f279b01c67b621815b0b0c81687dc8d7b0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:39 GMT
ADD file:edd53258d76467737f1123f7682942f71cd2facec912c4a7ca6f1cdbb0e29457 in / 
# Mon, 24 Apr 2017 19:30:40 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:51:11 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:51:13 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 01 May 2017 18:35:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:35:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:35:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:35:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:35:24 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Mon, 01 May 2017 18:35:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:35:27 GMT
ENV MONGO_MAJOR=3.0
# Mon, 01 May 2017 18:35:27 GMT
ENV MONGO_VERSION=3.0.14
# Mon, 01 May 2017 18:35:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 18:35:30 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:35:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:35:41 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:35:42 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:35:43 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:35:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:35:46 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:35:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:cf3933aa50ae5e040431b1f70b546fb99f66c6a91422ec870aef462da2fc6b2a`  
		Last Modified: Mon, 24 Apr 2017 19:42:59 GMT  
		Size: 19.6 MB (19628177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe9a03b3eff770a4f0a2d9f1c1ae8e2bd5cc92be941726613b7ccef5baa39e7`  
		Last Modified: Tue, 25 Apr 2017 00:15:00 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b718456ecc6458d96a7bba2d2ef1ae193683341445553b570104bac56e25aa`  
		Last Modified: Tue, 25 Apr 2017 00:14:59 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf504d7322cd0b4a0e4e0509b2b2afaa41b8f4c947b06ad54bc446964cb82fe3`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 2.7 MB (2669032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a9870fbf09712f8239baa41774a1ef17435340a031981d32587b4207c95026`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 923.0 KB (922992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7632911a355bc4e3f6db077b4f7fddf6e77dbd1c56f66c15f5087133941b78`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26c3558d10a9b2bbe85aad2380bc51f1f89141f4ed7aa36e0472fc63b7fa46b`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9a766a36233ea39c74b42caaa896069b4ed3e117e30a730d03fab50bfbb790`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a758e7583b697d5042b321f503cb5e707ea710b660f91cea6e944fa0ff2b1a0`  
		Last Modified: Mon, 01 May 2017 18:39:49 GMT  
		Size: 61.7 MB (61709317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b4814537ebf023bc8302efb93d5d3f35c10b417f20eeeda7537a323e29f444`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5070096f8f66f5c9956f526b34c495c504023042af9eb919805f11afd15af3c6`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 2.9 KB (2907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdc525674d00687665862ee7ad6043e001ade6b79486423969a7602a13c0296`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:4623b8fa3b03f76ffa770e5eed36f30f8ef5ade2660f71f359abe4fa78835546
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84936936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f478f921e210654d9e1c20294822f279b01c67b621815b0b0c81687dc8d7b0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:39 GMT
ADD file:edd53258d76467737f1123f7682942f71cd2facec912c4a7ca6f1cdbb0e29457 in / 
# Mon, 24 Apr 2017 19:30:40 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:51:11 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:51:13 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Mon, 01 May 2017 18:35:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:35:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:35:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:35:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:35:24 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Mon, 01 May 2017 18:35:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:35:27 GMT
ENV MONGO_MAJOR=3.0
# Mon, 01 May 2017 18:35:27 GMT
ENV MONGO_VERSION=3.0.14
# Mon, 01 May 2017 18:35:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 18:35:30 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:35:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:35:41 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:35:42 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:35:43 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:35:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:35:46 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:35:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:cf3933aa50ae5e040431b1f70b546fb99f66c6a91422ec870aef462da2fc6b2a`  
		Last Modified: Mon, 24 Apr 2017 19:42:59 GMT  
		Size: 19.6 MB (19628177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe9a03b3eff770a4f0a2d9f1c1ae8e2bd5cc92be941726613b7ccef5baa39e7`  
		Last Modified: Tue, 25 Apr 2017 00:15:00 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b718456ecc6458d96a7bba2d2ef1ae193683341445553b570104bac56e25aa`  
		Last Modified: Tue, 25 Apr 2017 00:14:59 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf504d7322cd0b4a0e4e0509b2b2afaa41b8f4c947b06ad54bc446964cb82fe3`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 2.7 MB (2669032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a9870fbf09712f8239baa41774a1ef17435340a031981d32587b4207c95026`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 923.0 KB (922992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7632911a355bc4e3f6db077b4f7fddf6e77dbd1c56f66c15f5087133941b78`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26c3558d10a9b2bbe85aad2380bc51f1f89141f4ed7aa36e0472fc63b7fa46b`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9a766a36233ea39c74b42caaa896069b4ed3e117e30a730d03fab50bfbb790`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a758e7583b697d5042b321f503cb5e707ea710b660f91cea6e944fa0ff2b1a0`  
		Last Modified: Mon, 01 May 2017 18:39:49 GMT  
		Size: 61.7 MB (61709317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b4814537ebf023bc8302efb93d5d3f35c10b417f20eeeda7537a323e29f444`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5070096f8f66f5c9956f526b34c495c504023042af9eb919805f11afd15af3c6`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 2.9 KB (2907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbdc525674d00687665862ee7ad6043e001ade6b79486423969a7602a13c0296`  
		Last Modified: Mon, 01 May 2017 18:39:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.14-windowsservercore`

```console
$ docker pull mongo@sha256:e68167ae0769f8dbc79938f24fff895681065188a20babea2ca55d7f87f90feb
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5278977113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5600ee3da127ec86793a40a60081a8ed71ab8c1486c58efbe34b1531bfd8b7d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:08:51 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 18 Apr 2017 17:08:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Tue, 18 Apr 2017 17:08:57 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Tue, 18 Apr 2017 17:10:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:10:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:10:30 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:10:33 GMT
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
	-	`sha256:1b76c9792757ab416ab336f8b9ce8ccee00096af204de6e94c42dd589bc63ff3`  
		Last Modified: Tue, 18 Apr 2017 17:14:23 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c2b1aa10386ecf3993fe3f25e21f02a579c9216e18474b0fcf8d58132aa5a3`  
		Last Modified: Tue, 18 Apr 2017 17:14:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2bb4212d5b0441d8b0c282ec3ff49ef106d1b3420607c3f374a0d0896fcbca`  
		Last Modified: Tue, 18 Apr 2017 17:14:15 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dec9697745b3d9e59cf5f2e2a4f1b0d3499b2b02e79f44a1fc3249bfb6904c9`  
		Last Modified: Tue, 18 Apr 2017 17:14:25 GMT  
		Size: 47.1 MB (47080664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc41a09a3347b315194c10cb8598aa75dcb72a1e6ff644df0e691dd19d979d0`  
		Last Modified: Tue, 18 Apr 2017 17:14:15 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d9e980779d0a8524108f61bfde3ed92187ee4804951f264051054b7e20c523`  
		Last Modified: Tue, 18 Apr 2017 17:14:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef03e3e26abcc28e482e7114765d2da8f1cca1430c2308ace7c49f1ba40f4a3`  
		Last Modified: Tue, 18 Apr 2017 17:14:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:e68167ae0769f8dbc79938f24fff895681065188a20babea2ca55d7f87f90feb
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5278977113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5600ee3da127ec86793a40a60081a8ed71ab8c1486c58efbe34b1531bfd8b7d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:08:51 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 18 Apr 2017 17:08:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Tue, 18 Apr 2017 17:08:57 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Tue, 18 Apr 2017 17:10:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:10:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:10:30 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:10:33 GMT
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
	-	`sha256:1b76c9792757ab416ab336f8b9ce8ccee00096af204de6e94c42dd589bc63ff3`  
		Last Modified: Tue, 18 Apr 2017 17:14:23 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c2b1aa10386ecf3993fe3f25e21f02a579c9216e18474b0fcf8d58132aa5a3`  
		Last Modified: Tue, 18 Apr 2017 17:14:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2bb4212d5b0441d8b0c282ec3ff49ef106d1b3420607c3f374a0d0896fcbca`  
		Last Modified: Tue, 18 Apr 2017 17:14:15 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dec9697745b3d9e59cf5f2e2a4f1b0d3499b2b02e79f44a1fc3249bfb6904c9`  
		Last Modified: Tue, 18 Apr 2017 17:14:25 GMT  
		Size: 47.1 MB (47080664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc41a09a3347b315194c10cb8598aa75dcb72a1e6ff644df0e691dd19d979d0`  
		Last Modified: Tue, 18 Apr 2017 17:14:15 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d9e980779d0a8524108f61bfde3ed92187ee4804951f264051054b7e20c523`  
		Last Modified: Tue, 18 Apr 2017 17:14:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef03e3e26abcc28e482e7114765d2da8f1cca1430c2308ace7c49f1ba40f4a3`  
		Last Modified: Tue, 18 Apr 2017 17:14:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.13`

```console
$ docker pull mongo@sha256:e803abf730d76864b2c2f49b40e794bdcba71191702044666657935d8dd0a658
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.13` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104411609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cad31906abb7d0a3a5e4388179bb0a6f8ead5b5c44677b87a2f91cf3373a6c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:36:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:36:19 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:36:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:36:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:36:37 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 01 May 2017 18:36:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:36:40 GMT
ENV MONGO_MAJOR=3.2
# Mon, 01 May 2017 22:43:31 GMT
ENV MONGO_VERSION=3.2.13
# Mon, 01 May 2017 22:43:32 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 22:43:33 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 22:43:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 22:43:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 22:43:54 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 22:43:55 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 22:43:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 22:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 22:43:57 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:43:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccb5ca0e379b0dffd96db987307bbd9fa7ee11f0c417e6f6f62b799543a1f73`  
		Last Modified: Mon, 01 May 2017 18:40:34 GMT  
		Size: 2.4 MB (2404926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e4f9843922c7699a9eb7aed1d1eb435f14f9520de05c3708626febbcf5311`  
		Last Modified: Mon, 01 May 2017 18:40:35 GMT  
		Size: 889.1 KB (889086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6016a5833771ec6dddea1d25cdb308cb310d01776d8392094b533eddf78167`  
		Last Modified: Mon, 01 May 2017 18:40:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21527fa8188f7dd14bee7ee45177c7907a661ce9c5918c15dbb7f574d49d621`  
		Last Modified: Mon, 01 May 2017 18:40:34 GMT  
		Size: 3.1 KB (3068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59702b309edf30aac60dc507ab82259522df003635b7631f867f6cc0769b297`  
		Last Modified: Mon, 01 May 2017 22:45:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f681c213d244501e6554f6cd4b546f3625faa96741463e22dab1a7e554fab93`  
		Last Modified: Mon, 01 May 2017 22:45:20 GMT  
		Size: 70.5 MB (70503244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fcad850e9b452ab4b67f77900e7e716528cbbd1dcba0ac43cefa9f5e6c4f0`  
		Last Modified: Mon, 01 May 2017 22:45:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f879e063f17128b1cf9ad3c5ad03c48222899b65a753e77bc429d40fe8a3a7`  
		Last Modified: Mon, 01 May 2017 22:45:07 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bb1072afbd4151564cfccb762ed0dde4b4571b4cffe369524ade8e40602371`  
		Last Modified: Mon, 01 May 2017 22:45:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:e803abf730d76864b2c2f49b40e794bdcba71191702044666657935d8dd0a658
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104411609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cad31906abb7d0a3a5e4388179bb0a6f8ead5b5c44677b87a2f91cf3373a6c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:36:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:36:19 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:36:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:36:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:36:37 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 01 May 2017 18:36:40 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:36:40 GMT
ENV MONGO_MAJOR=3.2
# Mon, 01 May 2017 22:43:31 GMT
ENV MONGO_VERSION=3.2.13
# Mon, 01 May 2017 22:43:32 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 22:43:33 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 22:43:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 22:43:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 22:43:54 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 22:43:55 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 22:43:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 22:43:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 22:43:57 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:43:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccb5ca0e379b0dffd96db987307bbd9fa7ee11f0c417e6f6f62b799543a1f73`  
		Last Modified: Mon, 01 May 2017 18:40:34 GMT  
		Size: 2.4 MB (2404926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1e4f9843922c7699a9eb7aed1d1eb435f14f9520de05c3708626febbcf5311`  
		Last Modified: Mon, 01 May 2017 18:40:35 GMT  
		Size: 889.1 KB (889086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6016a5833771ec6dddea1d25cdb308cb310d01776d8392094b533eddf78167`  
		Last Modified: Mon, 01 May 2017 18:40:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21527fa8188f7dd14bee7ee45177c7907a661ce9c5918c15dbb7f574d49d621`  
		Last Modified: Mon, 01 May 2017 18:40:34 GMT  
		Size: 3.1 KB (3068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59702b309edf30aac60dc507ab82259522df003635b7631f867f6cc0769b297`  
		Last Modified: Mon, 01 May 2017 22:45:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f681c213d244501e6554f6cd4b546f3625faa96741463e22dab1a7e554fab93`  
		Last Modified: Mon, 01 May 2017 22:45:20 GMT  
		Size: 70.5 MB (70503244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3fcad850e9b452ab4b67f77900e7e716528cbbd1dcba0ac43cefa9f5e6c4f0`  
		Last Modified: Mon, 01 May 2017 22:45:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f879e063f17128b1cf9ad3c5ad03c48222899b65a753e77bc429d40fe8a3a7`  
		Last Modified: Mon, 01 May 2017 22:45:07 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bb1072afbd4151564cfccb762ed0dde4b4571b4cffe369524ade8e40602371`  
		Last Modified: Mon, 01 May 2017 22:45:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.13-windowsservercore`

```console
$ docker pull mongo@sha256:51288c47268b36f933cda80f968070118d69c5c57cfb790299afa218fccc7748
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.13-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284922537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a484c4074669a21c763ec0f04206c7fdbcc1797281a17933c4f5a3326c22a90e`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:55:32 GMT
ENV MONGO_VERSION=3.2.13
# Mon, 01 May 2017 22:55:35 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.13-signed.msi
# Mon, 01 May 2017 22:55:39 GMT
ENV MONGO_DOWNLOAD_SHA256=d6dd767bc9584e3457ebbb6993db14464a5eba5c625f8314a65efdb191d6095a
# Mon, 01 May 2017 22:56:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:56:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:56:53 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:56:56 GMT
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
	-	`sha256:5b339fb8040dfb2bd9e36674790bbe6bd3cd9e282709791e1e39f4745556ff96`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb6d4be5586aa6a3e9d5bfa96c810ec23e250d1416a250a34a6e93e3d4b528c`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce3bbebed1e0d477754c79e0450b5a254d54552fe98e6016d459c59d5ae4d66`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f872fa0bbdc91ee3f5e3d9e457a3fdd967466c15851240753635c4cb9c1837ec`  
		Last Modified: Mon, 01 May 2017 22:59:01 GMT  
		Size: 53.0 MB (53026069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb5918d7c3b3becc7245106fc78259830c7763df51b755133a296becc2ce41a`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e585f2b2bed1066fcebbbe146beaf13e1a9523b7bfbaa6a6531133a8b8382c8`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186a58be3a4fbf42219a59930adb1f1c1c0b7e601b61ee0dc03c30f308faf0fc`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:51288c47268b36f933cda80f968070118d69c5c57cfb790299afa218fccc7748
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284922537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a484c4074669a21c763ec0f04206c7fdbcc1797281a17933c4f5a3326c22a90e`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:55:32 GMT
ENV MONGO_VERSION=3.2.13
# Mon, 01 May 2017 22:55:35 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.13-signed.msi
# Mon, 01 May 2017 22:55:39 GMT
ENV MONGO_DOWNLOAD_SHA256=d6dd767bc9584e3457ebbb6993db14464a5eba5c625f8314a65efdb191d6095a
# Mon, 01 May 2017 22:56:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:56:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:56:53 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:56:56 GMT
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
	-	`sha256:5b339fb8040dfb2bd9e36674790bbe6bd3cd9e282709791e1e39f4745556ff96`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb6d4be5586aa6a3e9d5bfa96c810ec23e250d1416a250a34a6e93e3d4b528c`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce3bbebed1e0d477754c79e0450b5a254d54552fe98e6016d459c59d5ae4d66`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f872fa0bbdc91ee3f5e3d9e457a3fdd967466c15851240753635c4cb9c1837ec`  
		Last Modified: Mon, 01 May 2017 22:59:01 GMT  
		Size: 53.0 MB (53026069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb5918d7c3b3becc7245106fc78259830c7763df51b755133a296becc2ce41a`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e585f2b2bed1066fcebbbe146beaf13e1a9523b7bfbaa6a6531133a8b8382c8`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186a58be3a4fbf42219a59930adb1f1c1c0b7e601b61ee0dc03c30f308faf0fc`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.4`

```console
$ docker pull mongo@sha256:04ff09008c6bf8f5e72600485a5d1b35ab0a1f9b28c53c8a6c7b1bc6a4189250
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131909632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f03b16565e14412f4de1f9a5898a097bd906caaa5f31db846da4105325df03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:37:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 01 May 2017 18:37:56 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_MAJOR=3.4
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 18:37:58 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 18:38:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:38:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:38:19 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:38:20 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:38:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:38:23 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:38:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c2ad4739341547c2f27054921c9aa5cfc7fed24e99e69df2e8b3711690b5c`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9a2d6977fa6a92bc0ba38e907268b9ba964358e14df7b96c7edee0fa4ec28a`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7df3703a745e3250d2460f247c811b451fedbe3cc50ac712cb701300acacdc`  
		Last Modified: Mon, 01 May 2017 18:41:47 GMT  
		Size: 98.0 MB (98003086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2fdfb53f629fd2781979bfb98de5650152f003775f93cff07369b3c243c165`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b754732112bdb403f5f8e4077567607963ebfd3addbdfef33650327bc0520`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef5fbd2b07516c0bd1f991f2639ac8a75e861d45132660799acdad8bb99a64e`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:04ff09008c6bf8f5e72600485a5d1b35ab0a1f9b28c53c8a6c7b1bc6a4189250
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131909632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f03b16565e14412f4de1f9a5898a097bd906caaa5f31db846da4105325df03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:37:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 01 May 2017 18:37:56 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_MAJOR=3.4
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 18:37:58 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 18:38:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:38:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:38:19 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:38:20 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:38:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:38:23 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:38:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c2ad4739341547c2f27054921c9aa5cfc7fed24e99e69df2e8b3711690b5c`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9a2d6977fa6a92bc0ba38e907268b9ba964358e14df7b96c7edee0fa4ec28a`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7df3703a745e3250d2460f247c811b451fedbe3cc50ac712cb701300acacdc`  
		Last Modified: Mon, 01 May 2017 18:41:47 GMT  
		Size: 98.0 MB (98003086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2fdfb53f629fd2781979bfb98de5650152f003775f93cff07369b3c243c165`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b754732112bdb403f5f8e4077567607963ebfd3addbdfef33650327bc0520`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef5fbd2b07516c0bd1f991f2639ac8a75e861d45132660799acdad8bb99a64e`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:04ff09008c6bf8f5e72600485a5d1b35ab0a1f9b28c53c8a6c7b1bc6a4189250
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131909632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f03b16565e14412f4de1f9a5898a097bd906caaa5f31db846da4105325df03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:37:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 01 May 2017 18:37:56 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_MAJOR=3.4
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 18:37:58 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 18:38:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:38:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:38:19 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:38:20 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:38:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:38:23 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:38:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c2ad4739341547c2f27054921c9aa5cfc7fed24e99e69df2e8b3711690b5c`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9a2d6977fa6a92bc0ba38e907268b9ba964358e14df7b96c7edee0fa4ec28a`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7df3703a745e3250d2460f247c811b451fedbe3cc50ac712cb701300acacdc`  
		Last Modified: Mon, 01 May 2017 18:41:47 GMT  
		Size: 98.0 MB (98003086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2fdfb53f629fd2781979bfb98de5650152f003775f93cff07369b3c243c165`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b754732112bdb403f5f8e4077567607963ebfd3addbdfef33650327bc0520`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef5fbd2b07516c0bd1f991f2639ac8a75e861d45132660799acdad8bb99a64e`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:04ff09008c6bf8f5e72600485a5d1b35ab0a1f9b28c53c8a6c7b1bc6a4189250
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131909632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f03b16565e14412f4de1f9a5898a097bd906caaa5f31db846da4105325df03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:37:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 01 May 2017 18:37:56 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_MAJOR=3.4
# Mon, 01 May 2017 18:37:57 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 18:37:58 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 01 May 2017 18:38:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:38:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:38:19 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:38:20 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:38:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:38:23 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:38:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c2ad4739341547c2f27054921c9aa5cfc7fed24e99e69df2e8b3711690b5c`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9a2d6977fa6a92bc0ba38e907268b9ba964358e14df7b96c7edee0fa4ec28a`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7df3703a745e3250d2460f247c811b451fedbe3cc50ac712cb701300acacdc`  
		Last Modified: Mon, 01 May 2017 18:41:47 GMT  
		Size: 98.0 MB (98003086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2fdfb53f629fd2781979bfb98de5650152f003775f93cff07369b3c243c165`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b754732112bdb403f5f8e4077567607963ebfd3addbdfef33650327bc0520`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef5fbd2b07516c0bd1f991f2639ac8a75e861d45132660799acdad8bb99a64e`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.4-windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.6`

```console
$ docker pull mongo@sha256:1bb1e8d131864151880356fe394db5c47c4ad1e5f57727d38f265b005ae1ee21
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133193680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7996f59f72706dea1dcfc0adf28991ef9390cfc42e9cf28004649a018ee019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:38:42 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 01 May 2017 18:38:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:38:46 GMT
ENV MONGO_MAJOR=3.5
# Mon, 01 May 2017 18:38:47 GMT
ENV MONGO_VERSION=3.5.6
# Mon, 01 May 2017 18:38:47 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 01 May 2017 18:38:49 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:39:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:39:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:39:09 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:39:10 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:39:14 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:39:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1db636d00e7e5a22f8ac6688a735c6e50fda8a1063fe2a99c28021be7786cf1`  
		Last Modified: Mon, 01 May 2017 18:43:11 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf5e4d2143644cdfd8e2f8a8877f594e1175c88fef026b1e3a4764a0eb8ab66`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b0e5fe26ca16c2824d0eff2041510d59a12c8baf2ab724b95603eefcba0277`  
		Last Modified: Mon, 01 May 2017 18:43:26 GMT  
		Size: 99.3 MB (99287135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25029c729cd2212ee14af83c5f9032cb793c9ffe5a96f45aa37e472974b7b98`  
		Last Modified: Mon, 01 May 2017 18:43:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3516a30b2e209e7a91d1a07c86fe24ce895be2007b9ba9cfeef0dbd468901e6e`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 2.9 KB (2908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26450f445075a32fe0cf2e0f3bb2d02b1d7ca5fe7a7b7e43efb5be0989fc1dd0`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:1bb1e8d131864151880356fe394db5c47c4ad1e5f57727d38f265b005ae1ee21
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133193680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7996f59f72706dea1dcfc0adf28991ef9390cfc42e9cf28004649a018ee019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:38:42 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 01 May 2017 18:38:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:38:46 GMT
ENV MONGO_MAJOR=3.5
# Mon, 01 May 2017 18:38:47 GMT
ENV MONGO_VERSION=3.5.6
# Mon, 01 May 2017 18:38:47 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 01 May 2017 18:38:49 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:39:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:39:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:39:09 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:39:10 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:39:14 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:39:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1db636d00e7e5a22f8ac6688a735c6e50fda8a1063fe2a99c28021be7786cf1`  
		Last Modified: Mon, 01 May 2017 18:43:11 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf5e4d2143644cdfd8e2f8a8877f594e1175c88fef026b1e3a4764a0eb8ab66`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b0e5fe26ca16c2824d0eff2041510d59a12c8baf2ab724b95603eefcba0277`  
		Last Modified: Mon, 01 May 2017 18:43:26 GMT  
		Size: 99.3 MB (99287135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25029c729cd2212ee14af83c5f9032cb793c9ffe5a96f45aa37e472974b7b98`  
		Last Modified: Mon, 01 May 2017 18:43:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3516a30b2e209e7a91d1a07c86fe24ce895be2007b9ba9cfeef0dbd468901e6e`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 2.9 KB (2908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26450f445075a32fe0cf2e0f3bb2d02b1d7ca5fe7a7b7e43efb5be0989fc1dd0`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:1bb1e8d131864151880356fe394db5c47c4ad1e5f57727d38f265b005ae1ee21
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133193680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7996f59f72706dea1dcfc0adf28991ef9390cfc42e9cf28004649a018ee019`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 01 May 2017 18:37:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:37:36 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 May 2017 18:37:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Mon, 01 May 2017 18:37:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 May 2017 18:38:42 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 01 May 2017 18:38:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 01 May 2017 18:38:46 GMT
ENV MONGO_MAJOR=3.5
# Mon, 01 May 2017 18:38:47 GMT
ENV MONGO_VERSION=3.5.6
# Mon, 01 May 2017 18:38:47 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 01 May 2017 18:38:49 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 01 May 2017 18:39:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 01 May 2017 18:39:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 01 May 2017 18:39:09 GMT
VOLUME [/data/db /data/configdb]
# Mon, 01 May 2017 18:39:10 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 01 May 2017 18:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 01 May 2017 18:39:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 01 May 2017 18:39:14 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 18:39:14 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:47e616392c23265a5e531497d94557c2e269cf3ae5616c37fbe1a75bb02b40f4`  
		Last Modified: Mon, 24 Apr 2017 19:33:31 GMT  
		Size: 30.6 MB (30605723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc044ce904d18c6e4abaee657e7ed9f9d400c6f85700b65929bbe1ef9526db`  
		Last Modified: Tue, 25 Apr 2017 00:16:13 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8484c3282b46d5ab254b86a9280cef3b14452d4c3c1d3647c8522ceb2181e1`  
		Last Modified: Mon, 01 May 2017 18:41:32 GMT  
		Size: 2.4 MB (2404770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95d3755f06a0214f73154fea5d2c4eb5fbe5d5177644408fd73c05cf2fe19c6`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 889.1 KB (889059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477845b3b4c225b129eba586b2b7d675836f49d26e254f7485a91f6ac3966fb`  
		Last Modified: Mon, 01 May 2017 18:41:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1db636d00e7e5a22f8ac6688a735c6e50fda8a1063fe2a99c28021be7786cf1`  
		Last Modified: Mon, 01 May 2017 18:43:11 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf5e4d2143644cdfd8e2f8a8877f594e1175c88fef026b1e3a4764a0eb8ab66`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b0e5fe26ca16c2824d0eff2041510d59a12c8baf2ab724b95603eefcba0277`  
		Last Modified: Mon, 01 May 2017 18:43:26 GMT  
		Size: 99.3 MB (99287135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25029c729cd2212ee14af83c5f9032cb793c9ffe5a96f45aa37e472974b7b98`  
		Last Modified: Mon, 01 May 2017 18:43:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3516a30b2e209e7a91d1a07c86fe24ce895be2007b9ba9cfeef0dbd468901e6e`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 2.9 KB (2908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26450f445075a32fe0cf2e0f3bb2d02b1d7ca5fe7a7b7e43efb5be0989fc1dd0`  
		Last Modified: Mon, 01 May 2017 18:43:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.6-windowsservercore`

```console
$ docker pull mongo@sha256:f9d820e35fa02d9709c2c0a6debb5813c35c68949b794e4617a5ddd9cc532b97
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295267441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c06aee055c5f61e3c30eaac11477ed3035befc15f9de1b53659de152b68483`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:12:51 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:12:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.6-signed.msi
# Tue, 18 Apr 2017 17:12:58 GMT
ENV MONGO_DOWNLOAD_SHA256=c92b82a10d53f4801126c32e16b4beaa78b99d71d0a97769fd4eba359e0d32b6
# Tue, 18 Apr 2017 17:13:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:13:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:13:58 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:14:01 GMT
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
	-	`sha256:021add1049c41e71b4346a7f4edf3bda1d6ca5d4405666c78d687e00ba531709`  
		Last Modified: Tue, 18 Apr 2017 17:15:40 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc66fd10df3bd6050a0c0ddc1608d5ab31f295470aafada1215aa1f6034f3bfa`  
		Last Modified: Tue, 18 Apr 2017 17:15:40 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d49815abdcfab3f3271b88dfc4db7a9e31a4bfec4562b24ba00f700a6a381`  
		Last Modified: Tue, 18 Apr 2017 17:15:30 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85ca6f7dc3f344ebe072ed90749e7cf282987ef0bf87ceb69ec7b9c23596ca5`  
		Last Modified: Tue, 18 Apr 2017 17:15:44 GMT  
		Size: 63.4 MB (63370955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59ef3570dffa4b6b852050a91e7554adbc18e53fb8384f616bdf9c8106c37cb`  
		Last Modified: Tue, 18 Apr 2017 17:15:31 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29502ae9854fd9f094b68574acd4b0193df65f850f252474610aa34f27c5934e`  
		Last Modified: Tue, 18 Apr 2017 17:15:30 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e111540199b2ca87239d7c6f5f24cb8e8ba6e70a623215e9d116889b5b2eb`  
		Last Modified: Tue, 18 Apr 2017 17:15:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:f9d820e35fa02d9709c2c0a6debb5813c35c68949b794e4617a5ddd9cc532b97
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295267441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c06aee055c5f61e3c30eaac11477ed3035befc15f9de1b53659de152b68483`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:12:51 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:12:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.6-signed.msi
# Tue, 18 Apr 2017 17:12:58 GMT
ENV MONGO_DOWNLOAD_SHA256=c92b82a10d53f4801126c32e16b4beaa78b99d71d0a97769fd4eba359e0d32b6
# Tue, 18 Apr 2017 17:13:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:13:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:13:58 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:14:01 GMT
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
	-	`sha256:021add1049c41e71b4346a7f4edf3bda1d6ca5d4405666c78d687e00ba531709`  
		Last Modified: Tue, 18 Apr 2017 17:15:40 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc66fd10df3bd6050a0c0ddc1608d5ab31f295470aafada1215aa1f6034f3bfa`  
		Last Modified: Tue, 18 Apr 2017 17:15:40 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d49815abdcfab3f3271b88dfc4db7a9e31a4bfec4562b24ba00f700a6a381`  
		Last Modified: Tue, 18 Apr 2017 17:15:30 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85ca6f7dc3f344ebe072ed90749e7cf282987ef0bf87ceb69ec7b9c23596ca5`  
		Last Modified: Tue, 18 Apr 2017 17:15:44 GMT  
		Size: 63.4 MB (63370955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59ef3570dffa4b6b852050a91e7554adbc18e53fb8384f616bdf9c8106c37cb`  
		Last Modified: Tue, 18 Apr 2017 17:15:31 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29502ae9854fd9f094b68574acd4b0193df65f850f252474610aa34f27c5934e`  
		Last Modified: Tue, 18 Apr 2017 17:15:30 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e111540199b2ca87239d7c6f5f24cb8e8ba6e70a623215e9d116889b5b2eb`  
		Last Modified: Tue, 18 Apr 2017 17:15:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:f9d820e35fa02d9709c2c0a6debb5813c35c68949b794e4617a5ddd9cc532b97
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295267441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c06aee055c5f61e3c30eaac11477ed3035befc15f9de1b53659de152b68483`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:12:51 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:12:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.6-signed.msi
# Tue, 18 Apr 2017 17:12:58 GMT
ENV MONGO_DOWNLOAD_SHA256=c92b82a10d53f4801126c32e16b4beaa78b99d71d0a97769fd4eba359e0d32b6
# Tue, 18 Apr 2017 17:13:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:13:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:13:58 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:14:01 GMT
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
	-	`sha256:021add1049c41e71b4346a7f4edf3bda1d6ca5d4405666c78d687e00ba531709`  
		Last Modified: Tue, 18 Apr 2017 17:15:40 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc66fd10df3bd6050a0c0ddc1608d5ab31f295470aafada1215aa1f6034f3bfa`  
		Last Modified: Tue, 18 Apr 2017 17:15:40 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d49815abdcfab3f3271b88dfc4db7a9e31a4bfec4562b24ba00f700a6a381`  
		Last Modified: Tue, 18 Apr 2017 17:15:30 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85ca6f7dc3f344ebe072ed90749e7cf282987ef0bf87ceb69ec7b9c23596ca5`  
		Last Modified: Tue, 18 Apr 2017 17:15:44 GMT  
		Size: 63.4 MB (63370955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59ef3570dffa4b6b852050a91e7554adbc18e53fb8384f616bdf9c8106c37cb`  
		Last Modified: Tue, 18 Apr 2017 17:15:31 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29502ae9854fd9f094b68574acd4b0193df65f850f252474610aa34f27c5934e`  
		Last Modified: Tue, 18 Apr 2017 17:15:30 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7e111540199b2ca87239d7c6f5f24cb8e8ba6e70a623215e9d116889b5b2eb`  
		Last Modified: Tue, 18 Apr 2017 17:15:31 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
