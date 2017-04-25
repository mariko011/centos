<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.12`](#mongo3212)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.12-windowsservercore`](#mongo3212-windowsservercore)
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
$ docker pull mongo@sha256:a8fc822685804df9223a2006c954fb82359d18aa5aee71c855f3584b25bd188d
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84667677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e31fae38c7dd15f629274acf1480544d09ea6397a5ff62922fc8f0ce543501d`
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
# Mon, 24 Apr 2017 23:51:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:51:22 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:51:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:51:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:51:38 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Mon, 24 Apr 2017 23:51:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:51:40 GMT
ENV MONGO_MAJOR=3.0
# Mon, 24 Apr 2017 23:51:40 GMT
ENV MONGO_VERSION=3.0.14
# Mon, 24 Apr 2017 23:51:41 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 24 Apr 2017 23:51:42 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:51:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:51:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:51:55 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:51:56 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:51:58 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:51:59 GMT
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
	-	`sha256:d7c9bbd3da0990064ef9d648a7a3bff0b9808edc4b86fedd0ef34795538ebe9c`  
		Last Modified: Tue, 25 Apr 2017 00:14:59 GMT  
		Size: 569.3 KB (569291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07aa1f1d3c38ce997e9ce970d1083986a073fb22408b2a12d40a29369f7067f5`  
		Last Modified: Tue, 25 Apr 2017 00:14:58 GMT  
		Size: 1.3 MB (1266728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f13ffed2feb1d14762d5d1a93936ba8ef1a52c11020444750bab2593b45ba8`  
		Last Modified: Tue, 25 Apr 2017 00:14:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c158e69a01ebfef123e54e5a273815cd964bc8ee7e13bbaf8842373a105bbd`  
		Last Modified: Tue, 25 Apr 2017 00:14:58 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3f2dff34fbc4caeca871e1dcaf19b9d1534aad6fe189db67b57a3d53cc98de`  
		Last Modified: Tue, 25 Apr 2017 00:14:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247a14934e3ea44ac46e2c52f9ef2af3ba1a49b82a3d8451789c09efaab7fd83`  
		Last Modified: Tue, 25 Apr 2017 00:15:09 GMT  
		Size: 63.2 MB (63196054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03eda4b042f7d5c89f054b787c9b4c864c9fd1e62a79bb9abbf26d9208896146`  
		Last Modified: Tue, 25 Apr 2017 00:14:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e21773652f508d83943d1e555279b7212a5bf2e13fc1f4434565b4379782430`  
		Last Modified: Tue, 25 Apr 2017 00:14:54 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99e99f8a59f260f9e0530a73745071f3bd598c3f6da225d8e63db192639c524`  
		Last Modified: Tue, 25 Apr 2017 00:14:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:a8fc822685804df9223a2006c954fb82359d18aa5aee71c855f3584b25bd188d
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84667677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e31fae38c7dd15f629274acf1480544d09ea6397a5ff62922fc8f0ce543501d`
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
# Mon, 24 Apr 2017 23:51:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:51:22 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:51:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:51:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:51:38 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Mon, 24 Apr 2017 23:51:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:51:40 GMT
ENV MONGO_MAJOR=3.0
# Mon, 24 Apr 2017 23:51:40 GMT
ENV MONGO_VERSION=3.0.14
# Mon, 24 Apr 2017 23:51:41 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 24 Apr 2017 23:51:42 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:51:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:51:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:51:55 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:51:56 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:51:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:51:58 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:51:59 GMT
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
	-	`sha256:d7c9bbd3da0990064ef9d648a7a3bff0b9808edc4b86fedd0ef34795538ebe9c`  
		Last Modified: Tue, 25 Apr 2017 00:14:59 GMT  
		Size: 569.3 KB (569291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07aa1f1d3c38ce997e9ce970d1083986a073fb22408b2a12d40a29369f7067f5`  
		Last Modified: Tue, 25 Apr 2017 00:14:58 GMT  
		Size: 1.3 MB (1266728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f13ffed2feb1d14762d5d1a93936ba8ef1a52c11020444750bab2593b45ba8`  
		Last Modified: Tue, 25 Apr 2017 00:14:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c158e69a01ebfef123e54e5a273815cd964bc8ee7e13bbaf8842373a105bbd`  
		Last Modified: Tue, 25 Apr 2017 00:14:58 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3f2dff34fbc4caeca871e1dcaf19b9d1534aad6fe189db67b57a3d53cc98de`  
		Last Modified: Tue, 25 Apr 2017 00:14:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247a14934e3ea44ac46e2c52f9ef2af3ba1a49b82a3d8451789c09efaab7fd83`  
		Last Modified: Tue, 25 Apr 2017 00:15:09 GMT  
		Size: 63.2 MB (63196054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03eda4b042f7d5c89f054b787c9b4c864c9fd1e62a79bb9abbf26d9208896146`  
		Last Modified: Tue, 25 Apr 2017 00:14:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e21773652f508d83943d1e555279b7212a5bf2e13fc1f4434565b4379782430`  
		Last Modified: Tue, 25 Apr 2017 00:14:54 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99e99f8a59f260f9e0530a73745071f3bd598c3f6da225d8e63db192639c524`  
		Last Modified: Tue, 25 Apr 2017 00:14:55 GMT  
		Size: 121.0 B  
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

## `mongo:3.2.12`

```console
$ docker pull mongo@sha256:4e52bc09b1ad7285ce0689a2b5ae2401800f7948d24f48b6c4c2a0eb9af92c24
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.12` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9eabdf8baf0493b207fc7e1246dbf31a432d3d8734e88530a9c0b44eab2e5b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:52:16 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 24 Apr 2017 23:52:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:52:19 GMT
ENV MONGO_MAJOR=3.2
# Mon, 24 Apr 2017 23:52:20 GMT
ENV MONGO_VERSION=3.2.12
# Mon, 24 Apr 2017 23:52:20 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 24 Apr 2017 23:52:22 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:52:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:52:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:52:40 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:52:41 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:52:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:52:44 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:52:44 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169518cf64b29380e90810c27835f242a2fe05a92261fe7bc2c10f0df630749f`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5264bf56e36a5a7c179431e538f2d2943c10e7a9fb53f5b1cd0d35e795debf62`  
		Last Modified: Tue, 25 Apr 2017 00:16:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450a8bf3f523410d4f3e7b626b21a011fe81662fdcbc62b121c54ae8091f0c1a`  
		Last Modified: Tue, 25 Apr 2017 00:16:22 GMT  
		Size: 71.9 MB (71947941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a15224625239ac07bdbda93fa7abdf779606638b64e0a5d902b4130581a4fe`  
		Last Modified: Tue, 25 Apr 2017 00:16:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fc8241164ae12ac2093f40b666e0bb6888b3f6f901e587f1892479ed2fb8ba`  
		Last Modified: Tue, 25 Apr 2017 00:16:08 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235b3bdc8fc440873783fd3ff50a66db798e57ba1ccd4bd1102f02456e818776`  
		Last Modified: Tue, 25 Apr 2017 00:16:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:4e52bc09b1ad7285ce0689a2b5ae2401800f7948d24f48b6c4c2a0eb9af92c24
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104084064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9eabdf8baf0493b207fc7e1246dbf31a432d3d8734e88530a9c0b44eab2e5b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:52:16 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 24 Apr 2017 23:52:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:52:19 GMT
ENV MONGO_MAJOR=3.2
# Mon, 24 Apr 2017 23:52:20 GMT
ENV MONGO_VERSION=3.2.12
# Mon, 24 Apr 2017 23:52:20 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 24 Apr 2017 23:52:22 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:52:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:52:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:52:40 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:52:41 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:52:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:52:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:52:44 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:52:44 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169518cf64b29380e90810c27835f242a2fe05a92261fe7bc2c10f0df630749f`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5264bf56e36a5a7c179431e538f2d2943c10e7a9fb53f5b1cd0d35e795debf62`  
		Last Modified: Tue, 25 Apr 2017 00:16:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450a8bf3f523410d4f3e7b626b21a011fe81662fdcbc62b121c54ae8091f0c1a`  
		Last Modified: Tue, 25 Apr 2017 00:16:22 GMT  
		Size: 71.9 MB (71947941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a15224625239ac07bdbda93fa7abdf779606638b64e0a5d902b4130581a4fe`  
		Last Modified: Tue, 25 Apr 2017 00:16:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fc8241164ae12ac2093f40b666e0bb6888b3f6f901e587f1892479ed2fb8ba`  
		Last Modified: Tue, 25 Apr 2017 00:16:08 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235b3bdc8fc440873783fd3ff50a66db798e57ba1ccd4bd1102f02456e818776`  
		Last Modified: Tue, 25 Apr 2017 00:16:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.12-windowsservercore`

```console
$ docker pull mongo@sha256:4402cd3dd10594592bfebcd8ec0133070ebcbde6fb3594156f3bdcb3dafff9b8
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.12-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284828494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2618299344a1074f15e8a424790d6e4f5a303423156ae856a258ab0d5b9bb2`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:10:39 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 18 Apr 2017 17:10:42 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.12-signed.msi
# Tue, 18 Apr 2017 17:10:45 GMT
ENV MONGO_DOWNLOAD_SHA256=9b8312e067c076808b6c8fd91e327b13caa0286ae21c1221cf29076ad110b116
# Tue, 18 Apr 2017 17:11:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:11:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:11:34 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:11:37 GMT
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
	-	`sha256:c39f8e8a32c988b1b50badfee9ce4bed82825e5942de2c077b25e61d56fce31d`  
		Last Modified: Tue, 18 Apr 2017 17:14:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d1f078ce4eeb2cad6f221ab017c4a9b27a9ea6858fba740fdafda1d36edd09`  
		Last Modified: Tue, 18 Apr 2017 17:14:46 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd9065069ece37ee9b7ac69a61ced0030f1a8b32b9cbbfebff337934d398db9`  
		Last Modified: Tue, 18 Apr 2017 17:14:36 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707bef5698f067df5ef209f1b4f09b653c80ff90fdbb38fe92550ecba0976b4d`  
		Last Modified: Tue, 18 Apr 2017 17:14:48 GMT  
		Size: 52.9 MB (52932049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72894f2ec93cbb2bca3e9ff0e703a3971a4df3b35c8a3fa8bd6c9693a1805380`  
		Last Modified: Tue, 18 Apr 2017 17:14:37 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7299148b6150f690a62491fd8bf46a803e36155d93b86d5c8d0e0d215ff766`  
		Last Modified: Tue, 18 Apr 2017 17:14:36 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b501afbfdfd8e9ad26fd828f303cec0ac719249002cbeb81ae0ef1cdf1e83d7e`  
		Last Modified: Tue, 18 Apr 2017 17:14:35 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:4402cd3dd10594592bfebcd8ec0133070ebcbde6fb3594156f3bdcb3dafff9b8
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284828494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2618299344a1074f15e8a424790d6e4f5a303423156ae856a258ab0d5b9bb2`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:10:39 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 18 Apr 2017 17:10:42 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.12-signed.msi
# Tue, 18 Apr 2017 17:10:45 GMT
ENV MONGO_DOWNLOAD_SHA256=9b8312e067c076808b6c8fd91e327b13caa0286ae21c1221cf29076ad110b116
# Tue, 18 Apr 2017 17:11:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:11:31 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:11:34 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:11:37 GMT
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
	-	`sha256:c39f8e8a32c988b1b50badfee9ce4bed82825e5942de2c077b25e61d56fce31d`  
		Last Modified: Tue, 18 Apr 2017 17:14:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d1f078ce4eeb2cad6f221ab017c4a9b27a9ea6858fba740fdafda1d36edd09`  
		Last Modified: Tue, 18 Apr 2017 17:14:46 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd9065069ece37ee9b7ac69a61ced0030f1a8b32b9cbbfebff337934d398db9`  
		Last Modified: Tue, 18 Apr 2017 17:14:36 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707bef5698f067df5ef209f1b4f09b653c80ff90fdbb38fe92550ecba0976b4d`  
		Last Modified: Tue, 18 Apr 2017 17:14:48 GMT  
		Size: 52.9 MB (52932049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72894f2ec93cbb2bca3e9ff0e703a3971a4df3b35c8a3fa8bd6c9693a1805380`  
		Last Modified: Tue, 18 Apr 2017 17:14:37 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7299148b6150f690a62491fd8bf46a803e36155d93b86d5c8d0e0d215ff766`  
		Last Modified: Tue, 18 Apr 2017 17:14:36 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b501afbfdfd8e9ad26fd828f303cec0ac719249002cbeb81ae0ef1cdf1e83d7e`  
		Last Modified: Tue, 18 Apr 2017 17:14:35 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.4`

```console
$ docker pull mongo@sha256:b37aaa85f165a7a6be115a16cfef2115d7033650af8a1a839fcb494c9df5d9e1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131699727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6329fba85f659b362927801fb9a3baea98688791d01630ea7b25d79deb9e0053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:50:21 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 24 Apr 2017 23:50:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:50:25 GMT
ENV MONGO_MAJOR=3.4
# Tue, 25 Apr 2017 00:12:01 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 25 Apr 2017 00:12:02 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 25 Apr 2017 00:12:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 25 Apr 2017 00:12:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 25 Apr 2017 00:12:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 25 Apr 2017 00:12:44 GMT
VOLUME [/data/db /data/configdb]
# Tue, 25 Apr 2017 00:12:45 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 25 Apr 2017 00:12:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 00:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 00:12:48 GMT
EXPOSE 27017/tcp
# Tue, 25 Apr 2017 00:12:48 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f67488220c27832c697aa4acefeb9c7b01de743c04fa75b542bbbeedc7fb98`  
		Last Modified: Tue, 25 Apr 2017 00:17:07 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de17099d47ff1edf54d87af201e8e6f7c9be781d7a680a504f51d970c5ffa7df`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a180e6abe1191b7d1b784d07abc8346b91dc22db0e293360fa249a2c1d90326`  
		Last Modified: Tue, 25 Apr 2017 00:17:24 GMT  
		Size: 99.6 MB (99565236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc25b86cb5cff8031701ddb2498284f77b632da4b59d951a2a9c0715aab4dd5c`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6400c13c01f61586a7b9850a9bbbe8b118580e6268e2510ea1b1af0e96823896`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c7ea74f012d9443df63ed0f8bff542a556bbda7c610d6fc3e956dd11cac1a9`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:b37aaa85f165a7a6be115a16cfef2115d7033650af8a1a839fcb494c9df5d9e1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131699727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6329fba85f659b362927801fb9a3baea98688791d01630ea7b25d79deb9e0053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:50:21 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 24 Apr 2017 23:50:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:50:25 GMT
ENV MONGO_MAJOR=3.4
# Tue, 25 Apr 2017 00:12:01 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 25 Apr 2017 00:12:02 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 25 Apr 2017 00:12:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 25 Apr 2017 00:12:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 25 Apr 2017 00:12:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 25 Apr 2017 00:12:44 GMT
VOLUME [/data/db /data/configdb]
# Tue, 25 Apr 2017 00:12:45 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 25 Apr 2017 00:12:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 00:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 00:12:48 GMT
EXPOSE 27017/tcp
# Tue, 25 Apr 2017 00:12:48 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f67488220c27832c697aa4acefeb9c7b01de743c04fa75b542bbbeedc7fb98`  
		Last Modified: Tue, 25 Apr 2017 00:17:07 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de17099d47ff1edf54d87af201e8e6f7c9be781d7a680a504f51d970c5ffa7df`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a180e6abe1191b7d1b784d07abc8346b91dc22db0e293360fa249a2c1d90326`  
		Last Modified: Tue, 25 Apr 2017 00:17:24 GMT  
		Size: 99.6 MB (99565236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc25b86cb5cff8031701ddb2498284f77b632da4b59d951a2a9c0715aab4dd5c`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6400c13c01f61586a7b9850a9bbbe8b118580e6268e2510ea1b1af0e96823896`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c7ea74f012d9443df63ed0f8bff542a556bbda7c610d6fc3e956dd11cac1a9`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:b37aaa85f165a7a6be115a16cfef2115d7033650af8a1a839fcb494c9df5d9e1
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131699727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6329fba85f659b362927801fb9a3baea98688791d01630ea7b25d79deb9e0053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:50:21 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 24 Apr 2017 23:50:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:50:25 GMT
ENV MONGO_MAJOR=3.4
# Tue, 25 Apr 2017 00:12:01 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 25 Apr 2017 00:12:02 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 25 Apr 2017 00:12:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 25 Apr 2017 00:12:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 25 Apr 2017 00:12:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 25 Apr 2017 00:12:44 GMT
VOLUME [/data/db /data/configdb]
# Tue, 25 Apr 2017 00:12:45 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 25 Apr 2017 00:12:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 00:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 00:12:48 GMT
EXPOSE 27017/tcp
# Tue, 25 Apr 2017 00:12:48 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f67488220c27832c697aa4acefeb9c7b01de743c04fa75b542bbbeedc7fb98`  
		Last Modified: Tue, 25 Apr 2017 00:17:07 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de17099d47ff1edf54d87af201e8e6f7c9be781d7a680a504f51d970c5ffa7df`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a180e6abe1191b7d1b784d07abc8346b91dc22db0e293360fa249a2c1d90326`  
		Last Modified: Tue, 25 Apr 2017 00:17:24 GMT  
		Size: 99.6 MB (99565236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc25b86cb5cff8031701ddb2498284f77b632da4b59d951a2a9c0715aab4dd5c`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6400c13c01f61586a7b9850a9bbbe8b118580e6268e2510ea1b1af0e96823896`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c7ea74f012d9443df63ed0f8bff542a556bbda7c610d6fc3e956dd11cac1a9`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:b37aaa85f165a7a6be115a16cfef2115d7033650af8a1a839fcb494c9df5d9e1
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131699727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6329fba85f659b362927801fb9a3baea98688791d01630ea7b25d79deb9e0053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:50:21 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 24 Apr 2017 23:50:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:50:25 GMT
ENV MONGO_MAJOR=3.4
# Tue, 25 Apr 2017 00:12:01 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 25 Apr 2017 00:12:02 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 25 Apr 2017 00:12:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 25 Apr 2017 00:12:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 25 Apr 2017 00:12:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 25 Apr 2017 00:12:44 GMT
VOLUME [/data/db /data/configdb]
# Tue, 25 Apr 2017 00:12:45 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 25 Apr 2017 00:12:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 25 Apr 2017 00:12:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 00:12:48 GMT
EXPOSE 27017/tcp
# Tue, 25 Apr 2017 00:12:48 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f67488220c27832c697aa4acefeb9c7b01de743c04fa75b542bbbeedc7fb98`  
		Last Modified: Tue, 25 Apr 2017 00:17:07 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de17099d47ff1edf54d87af201e8e6f7c9be781d7a680a504f51d970c5ffa7df`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a180e6abe1191b7d1b784d07abc8346b91dc22db0e293360fa249a2c1d90326`  
		Last Modified: Tue, 25 Apr 2017 00:17:24 GMT  
		Size: 99.6 MB (99565236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc25b86cb5cff8031701ddb2498284f77b632da4b59d951a2a9c0715aab4dd5c`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6400c13c01f61586a7b9850a9bbbe8b118580e6268e2510ea1b1af0e96823896`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c7ea74f012d9443df63ed0f8bff542a556bbda7c610d6fc3e956dd11cac1a9`  
		Last Modified: Tue, 25 Apr 2017 00:17:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.4-windowsservercore`

**does not exist** (yet?)

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:e9730ece1e91761196771f9cb8d9b6abd675ac070b9fb9cb838910b4ec0398ca
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294899228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9445580f9df77e256be8795f3c51f6810ab5680248c4de7b89733859367300ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:11:40 GMT
ENV MONGO_VERSION=3.4.3
# Tue, 18 Apr 2017 17:11:42 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Tue, 18 Apr 2017 17:11:45 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Tue, 18 Apr 2017 17:12:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:12:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:12:46 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:12:48 GMT
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
	-	`sha256:8bc24102645d01a3dbaa0f7aa84e95629f1fb32d2c6a3dfa0e64490a258713e7`  
		Last Modified: Tue, 18 Apr 2017 17:15:10 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ff6b68ae1a37539b05d680fb6094cadb05bfe20d5ab5be50ab1e43d5907c93`  
		Last Modified: Tue, 18 Apr 2017 17:15:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181850100d5db99a148f654115c5b1a58dc0c708f8050cf60267417a4f38be85`  
		Last Modified: Tue, 18 Apr 2017 17:15:00 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6562072bcf8827580333c539bfad953bfc66edc405bb624befa69acccdda12`  
		Last Modified: Tue, 18 Apr 2017 17:15:13 GMT  
		Size: 63.0 MB (63002752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dca3504063047e39bc1cde0a3f0eec4c83cec1b66db19ed7e4d31fbdd63a958`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0ddeea4ac54b7b144e04f64e94a9731cf4530ae7f3216ca175ffbce33ba872`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cf647a40fb1bc2ee03147c2638d871f63d783088ec395cb82333b26b7e1432`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:e9730ece1e91761196771f9cb8d9b6abd675ac070b9fb9cb838910b4ec0398ca
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294899228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9445580f9df77e256be8795f3c51f6810ab5680248c4de7b89733859367300ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:11:40 GMT
ENV MONGO_VERSION=3.4.3
# Tue, 18 Apr 2017 17:11:42 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Tue, 18 Apr 2017 17:11:45 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Tue, 18 Apr 2017 17:12:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:12:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:12:46 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:12:48 GMT
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
	-	`sha256:8bc24102645d01a3dbaa0f7aa84e95629f1fb32d2c6a3dfa0e64490a258713e7`  
		Last Modified: Tue, 18 Apr 2017 17:15:10 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ff6b68ae1a37539b05d680fb6094cadb05bfe20d5ab5be50ab1e43d5907c93`  
		Last Modified: Tue, 18 Apr 2017 17:15:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181850100d5db99a148f654115c5b1a58dc0c708f8050cf60267417a4f38be85`  
		Last Modified: Tue, 18 Apr 2017 17:15:00 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6562072bcf8827580333c539bfad953bfc66edc405bb624befa69acccdda12`  
		Last Modified: Tue, 18 Apr 2017 17:15:13 GMT  
		Size: 63.0 MB (63002752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dca3504063047e39bc1cde0a3f0eec4c83cec1b66db19ed7e4d31fbdd63a958`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0ddeea4ac54b7b144e04f64e94a9731cf4530ae7f3216ca175ffbce33ba872`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cf647a40fb1bc2ee03147c2638d871f63d783088ec395cb82333b26b7e1432`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:e9730ece1e91761196771f9cb8d9b6abd675ac070b9fb9cb838910b4ec0398ca
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294899228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9445580f9df77e256be8795f3c51f6810ab5680248c4de7b89733859367300ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 18 Apr 2017 17:11:40 GMT
ENV MONGO_VERSION=3.4.3
# Tue, 18 Apr 2017 17:11:42 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Tue, 18 Apr 2017 17:11:45 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Tue, 18 Apr 2017 17:12:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 18 Apr 2017 17:12:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 18 Apr 2017 17:12:46 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:12:48 GMT
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
	-	`sha256:8bc24102645d01a3dbaa0f7aa84e95629f1fb32d2c6a3dfa0e64490a258713e7`  
		Last Modified: Tue, 18 Apr 2017 17:15:10 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ff6b68ae1a37539b05d680fb6094cadb05bfe20d5ab5be50ab1e43d5907c93`  
		Last Modified: Tue, 18 Apr 2017 17:15:10 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181850100d5db99a148f654115c5b1a58dc0c708f8050cf60267417a4f38be85`  
		Last Modified: Tue, 18 Apr 2017 17:15:00 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6562072bcf8827580333c539bfad953bfc66edc405bb624befa69acccdda12`  
		Last Modified: Tue, 18 Apr 2017 17:15:13 GMT  
		Size: 63.0 MB (63002752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dca3504063047e39bc1cde0a3f0eec4c83cec1b66db19ed7e4d31fbdd63a958`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0ddeea4ac54b7b144e04f64e94a9731cf4530ae7f3216ca175ffbce33ba872`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cf647a40fb1bc2ee03147c2638d871f63d783088ec395cb82333b26b7e1432`  
		Last Modified: Tue, 18 Apr 2017 17:14:59 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.6`

```console
$ docker pull mongo@sha256:9016a9e0383a37e145688a5c470aa868d6ab1952c6b032bf695cbb3e76f43e90
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132988017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e8ded2634bd884bf28c7639f76d3f34cdbe97e6a9fc111fce51ee9160e6bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:53:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 24 Apr 2017 23:53:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:53:05 GMT
ENV MONGO_MAJOR=3.5
# Mon, 24 Apr 2017 23:53:05 GMT
ENV MONGO_VERSION=3.5.6
# Mon, 24 Apr 2017 23:53:06 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 24 Apr 2017 23:53:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:53:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:53:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:53:28 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:53:29 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:53:33 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:53:33 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f650183a759eccbecd1ec63dda19df8303fba31cd02c0779670adef977e7d1e`  
		Last Modified: Tue, 25 Apr 2017 00:19:01 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d45532ed89390217bdeb3f5791b2d30fb3c06c930c126971fd179533d53a120`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169cbcba4839387c28026bf10bd0d55b386a5ec05f979be6882242821a2579b`  
		Last Modified: Tue, 25 Apr 2017 00:19:18 GMT  
		Size: 100.9 MB (100853528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8600174fe1f3f331455d4af6d892281a97aec3398f6dc7b69126cb90f4e9cc`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccaf3c2467921d98af878da58a1b220ca83537f07b617286a21d6ec45f767f8`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76ed3b11277d7a779eacfea517563884936afaa61c064a9b58ed2acb4d88fbd`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:9016a9e0383a37e145688a5c470aa868d6ab1952c6b032bf695cbb3e76f43e90
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132988017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e8ded2634bd884bf28c7639f76d3f34cdbe97e6a9fc111fce51ee9160e6bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:53:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 24 Apr 2017 23:53:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:53:05 GMT
ENV MONGO_MAJOR=3.5
# Mon, 24 Apr 2017 23:53:05 GMT
ENV MONGO_VERSION=3.5.6
# Mon, 24 Apr 2017 23:53:06 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 24 Apr 2017 23:53:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:53:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:53:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:53:28 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:53:29 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:53:33 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:53:33 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f650183a759eccbecd1ec63dda19df8303fba31cd02c0779670adef977e7d1e`  
		Last Modified: Tue, 25 Apr 2017 00:19:01 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d45532ed89390217bdeb3f5791b2d30fb3c06c930c126971fd179533d53a120`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169cbcba4839387c28026bf10bd0d55b386a5ec05f979be6882242821a2579b`  
		Last Modified: Tue, 25 Apr 2017 00:19:18 GMT  
		Size: 100.9 MB (100853528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8600174fe1f3f331455d4af6d892281a97aec3398f6dc7b69126cb90f4e9cc`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccaf3c2467921d98af878da58a1b220ca83537f07b617286a21d6ec45f767f8`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76ed3b11277d7a779eacfea517563884936afaa61c064a9b58ed2acb4d88fbd`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:9016a9e0383a37e145688a5c470aa868d6ab1952c6b032bf695cbb3e76f43e90
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132988017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e8ded2634bd884bf28c7639f76d3f34cdbe97e6a9fc111fce51ee9160e6bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Apr 2017 19:21:19 GMT
ADD file:a13c726be90f637e04ad902f42b3a6d973309bf0c098eb82dda7e518adbd8833 in / 
# Mon, 24 Apr 2017 19:21:20 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:49:51 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 24 Apr 2017 23:50:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:50:00 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:50:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Apr 2017 23:53:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 24 Apr 2017 23:53:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:53:05 GMT
ENV MONGO_MAJOR=3.5
# Mon, 24 Apr 2017 23:53:05 GMT
ENV MONGO_VERSION=3.5.6
# Mon, 24 Apr 2017 23:53:06 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 24 Apr 2017 23:53:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 24 Apr 2017 23:53:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 24 Apr 2017 23:53:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 24 Apr 2017 23:53:28 GMT
VOLUME [/data/db /data/configdb]
# Mon, 24 Apr 2017 23:53:29 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Mon, 24 Apr 2017 23:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 24 Apr 2017 23:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:53:33 GMT
EXPOSE 27017/tcp
# Mon, 24 Apr 2017 23:53:33 GMT
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
	-	`sha256:e327192905617490ec92d0a2378a4e48968247d5cc6f541f33098cb93d217f25`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 213.2 KB (213203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8f1b053c53701099e213c3e91d9e032b4f761521d6796a3cf24d5e343328d`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 1.3 MB (1308566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836acd00557e4e3dafa3b5389fbe3fb953b6f8ae94888cdfa6bc20623f04bef`  
		Last Modified: Tue, 25 Apr 2017 00:16:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f650183a759eccbecd1ec63dda19df8303fba31cd02c0779670adef977e7d1e`  
		Last Modified: Tue, 25 Apr 2017 00:19:01 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d45532ed89390217bdeb3f5791b2d30fb3c06c930c126971fd179533d53a120`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169cbcba4839387c28026bf10bd0d55b386a5ec05f979be6882242821a2579b`  
		Last Modified: Tue, 25 Apr 2017 00:19:18 GMT  
		Size: 100.9 MB (100853528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8600174fe1f3f331455d4af6d892281a97aec3398f6dc7b69126cb90f4e9cc`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccaf3c2467921d98af878da58a1b220ca83537f07b617286a21d6ec45f767f8`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76ed3b11277d7a779eacfea517563884936afaa61c064a9b58ed2acb4d88fbd`  
		Last Modified: Tue, 25 Apr 2017 00:18:58 GMT  
		Size: 119.0 B  
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
