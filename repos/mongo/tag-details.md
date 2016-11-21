<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.11`](#mongo3211)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.2.11-windowsservercore`](#mongo3211-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.3.15`](#mongo3315)
-	[`mongo:3.3`](#mongo33)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.3.15-windowsservercore`](#mongo3315-windowsservercore)
-	[`mongo:3.3-windowsservercore`](#mongo33-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)
-	[`mongo:3.4.0-rc4`](#mongo340-rc4)
-	[`mongo:3.4.0`](#mongo340)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4-rc`](#mongo34-rc)
-	[`mongo:rc`](#mongorc)
-	[`mongo:3.4.0-rc4-windowsservercore`](#mongo340-rc4-windowsservercore)
-	[`mongo:3.4.0-windowsservercore`](#mongo340-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3.4-rc-windowsservercore`](#mongo34-rc-windowsservercore)
-	[`mongo:rc-windowsservercore`](#mongorc-windowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:873d2ec8ac7cd17c0f37fa7f79fca46a05b4bdd5c6a7f2fa14ef294e3e3e4844
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100849723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039bd79bf1c5eafc93caf09865f8ce82ae054b6adfbbe8ff8f469c6739bc473c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:03 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:26:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:26:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:26:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:26:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 08 Nov 2016 19:26:38 GMT
ENV MONGO_MAJOR=3.0
# Tue, 08 Nov 2016 19:26:38 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 08 Nov 2016 19:26:39 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 08 Nov 2016 19:26:40 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 08 Nov 2016 19:26:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 08 Nov 2016 19:26:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 08 Nov 2016 19:26:53 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Nov 2016 19:26:54 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 08 Nov 2016 19:26:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:26:55 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 19:26:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5545cca12a90af1b88d9830f0ffa71c9aaa6b28da9d1c28c1edc79da42a87077`  
		Last Modified: Tue, 08 Nov 2016 19:29:18 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbeaec10e385683a9c8579df7801a131eade092beffeff8561244c4300538488`  
		Last Modified: Tue, 08 Nov 2016 19:29:19 GMT  
		Size: 146.3 KB (146310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb389db08d1a3ac4a2ba62b761e24a85a45fe14f51bed540f03994a18a1efd98`  
		Last Modified: Tue, 08 Nov 2016 19:29:19 GMT  
		Size: 1.2 MB (1174637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d3e7574e9292c1d540a0a334de825bcfdc1c5203ea261bceea44e4d7dfb64`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 29.8 KB (29816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf18ab0ec156347395ce36f476131e9e30501a0c89a6b242232fba3ee964344`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf1b7de1de740b49465b405cfac1eb626571ca377fc8aec88336b076f04b6a`  
		Last Modified: Tue, 08 Nov 2016 19:29:45 GMT  
		Size: 62.3 MB (62287968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fc2596571d07f4b77e59c77e03be7339895fdaa4f66decf4173e6b11e1a435`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d777a0ee4259adeeb16a92b1e369846ea65758e464c1317dc364b42f6ba4bc8f`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:873d2ec8ac7cd17c0f37fa7f79fca46a05b4bdd5c6a7f2fa14ef294e3e3e4844
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.8 MB (100849723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039bd79bf1c5eafc93caf09865f8ce82ae054b6adfbbe8ff8f469c6739bc473c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:03 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:26:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:26:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:26:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:26:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 08 Nov 2016 19:26:38 GMT
ENV MONGO_MAJOR=3.0
# Tue, 08 Nov 2016 19:26:38 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 08 Nov 2016 19:26:39 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 08 Nov 2016 19:26:40 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 08 Nov 2016 19:26:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 08 Nov 2016 19:26:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 08 Nov 2016 19:26:53 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Nov 2016 19:26:54 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 08 Nov 2016 19:26:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:26:55 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 19:26:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5545cca12a90af1b88d9830f0ffa71c9aaa6b28da9d1c28c1edc79da42a87077`  
		Last Modified: Tue, 08 Nov 2016 19:29:18 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbeaec10e385683a9c8579df7801a131eade092beffeff8561244c4300538488`  
		Last Modified: Tue, 08 Nov 2016 19:29:19 GMT  
		Size: 146.3 KB (146310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb389db08d1a3ac4a2ba62b761e24a85a45fe14f51bed540f03994a18a1efd98`  
		Last Modified: Tue, 08 Nov 2016 19:29:19 GMT  
		Size: 1.2 MB (1174637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d3e7574e9292c1d540a0a334de825bcfdc1c5203ea261bceea44e4d7dfb64`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 29.8 KB (29816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf18ab0ec156347395ce36f476131e9e30501a0c89a6b242232fba3ee964344`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf1b7de1de740b49465b405cfac1eb626571ca377fc8aec88336b076f04b6a`  
		Last Modified: Tue, 08 Nov 2016 19:29:45 GMT  
		Size: 62.3 MB (62287968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fc2596571d07f4b77e59c77e03be7339895fdaa4f66decf4173e6b11e1a435`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d777a0ee4259adeeb16a92b1e369846ea65758e464c1317dc364b42f6ba4bc8f`  
		Last Modified: Tue, 08 Nov 2016 19:29:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.14-windowsservercore`

```console
$ docker pull mongo@sha256:f67682f52cbee621fd9bc0cdd567d92800d773d987c59e8f205b0ddf16e5a3f6
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667807959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c66482b3f3b4d3e8e80c5266ac497d3123027b252e5087eadcc93c7d43f737c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:32:28 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 15 Nov 2016 00:32:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Tue, 15 Nov 2016 00:32:33 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Tue, 15 Nov 2016 00:33:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:33:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 15 Nov 2016 00:33:32 GMT
EXPOSE 27017/tcp
# Tue, 15 Nov 2016 00:33:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f5e0612b58b5e1907eac2aa0f7b3e6f7c97f4852f80b0c6df467f24c915d8`  
		Last Modified: Tue, 15 Nov 2016 00:33:51 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4184a8facba1c8e4a4d8ae8d6585b459cf7ba966db9fdcba82c96992dd560236`  
		Last Modified: Tue, 15 Nov 2016 00:33:50 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8aad23149a2b8b15f784854ed51568e1fad5a00125cd20043f8d346604a17e`  
		Last Modified: Tue, 15 Nov 2016 00:33:42 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9d0d6d95eb4cf2b32772894e83a1934bec66b225694254dbe75ed53098f05`  
		Last Modified: Tue, 15 Nov 2016 00:33:57 GMT  
		Size: 51.1 MB (51122975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599b8d9d51594388878a4d883c17e71f912df4bc21024478d436a6b1d78f6ee`  
		Last Modified: Tue, 15 Nov 2016 00:33:40 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce9f885ef142af39d6a1142465495f12a549671b1b614e953af93120692e4a3`  
		Last Modified: Tue, 15 Nov 2016 00:33:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3fb26778c7509e6f99e28de06cae19a155ccf076d9ffb9addd154ddfdd13b4`  
		Last Modified: Tue, 15 Nov 2016 00:33:42 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:f67682f52cbee621fd9bc0cdd567d92800d773d987c59e8f205b0ddf16e5a3f6
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667807959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c66482b3f3b4d3e8e80c5266ac497d3123027b252e5087eadcc93c7d43f737c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:32:28 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 15 Nov 2016 00:32:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Tue, 15 Nov 2016 00:32:33 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Tue, 15 Nov 2016 00:33:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:33:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 15 Nov 2016 00:33:32 GMT
EXPOSE 27017/tcp
# Tue, 15 Nov 2016 00:33:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f5e0612b58b5e1907eac2aa0f7b3e6f7c97f4852f80b0c6df467f24c915d8`  
		Last Modified: Tue, 15 Nov 2016 00:33:51 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4184a8facba1c8e4a4d8ae8d6585b459cf7ba966db9fdcba82c96992dd560236`  
		Last Modified: Tue, 15 Nov 2016 00:33:50 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8aad23149a2b8b15f784854ed51568e1fad5a00125cd20043f8d346604a17e`  
		Last Modified: Tue, 15 Nov 2016 00:33:42 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f9d0d6d95eb4cf2b32772894e83a1934bec66b225694254dbe75ed53098f05`  
		Last Modified: Tue, 15 Nov 2016 00:33:57 GMT  
		Size: 51.1 MB (51122975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599b8d9d51594388878a4d883c17e71f912df4bc21024478d436a6b1d78f6ee`  
		Last Modified: Tue, 15 Nov 2016 00:33:40 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce9f885ef142af39d6a1142465495f12a549671b1b614e953af93120692e4a3`  
		Last Modified: Tue, 15 Nov 2016 00:33:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3fb26778c7509e6f99e28de06cae19a155ccf076d9ffb9addd154ddfdd13b4`  
		Last Modified: Tue, 15 Nov 2016 00:33:42 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.11`

```console
$ docker pull mongo@sha256:5c0b6ec4ed120b591ba625806d4b4e59379e0e8ecb0591e41b3f16cfdf0015a2
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123538492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5185a5940643c0d212083b3b6275bb2f149030530fea44e12be861186293451`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:26 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 08 Nov 2016 19:27:28 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 19:27:29 GMT
ENV MONGO_MAJOR=3.2
# Mon, 21 Nov 2016 20:29:19 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 21 Nov 2016 20:29:20 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 21 Nov 2016 20:29:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 Nov 2016 20:29:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 Nov 2016 20:29:35 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 Nov 2016 20:29:36 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 21 Nov 2016 20:29:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 20:29:37 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:29:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bedd83d0855930190d351b87b631bc7365ee08cb4dcac23573f648f05ce1b14`  
		Last Modified: Tue, 08 Nov 2016 19:30:22 GMT  
		Size: 3.1 KB (3117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162b676846521ebe8c2f65f7a4a4fc2783f1d1c7b8a991cc7b23f6705a02f78d`  
		Last Modified: Mon, 21 Nov 2016 20:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f53b7d829e0e96a8cc7ad8d560ad4f07975f3a23aaa896a434d4af8f28a8d8`  
		Last Modified: Mon, 21 Nov 2016 20:31:04 GMT  
		Size: 70.8 MB (70823779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef8f3d7f86626db1d7dfe1c528516f627e99749d562f53a99b182e2f91c0529`  
		Last Modified: Mon, 21 Nov 2016 20:30:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2272eba3caccf4e67ea59d8ee64ecd977d1009aff1453c71370563c60cca1b3d`  
		Last Modified: Mon, 21 Nov 2016 20:30:40 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:5c0b6ec4ed120b591ba625806d4b4e59379e0e8ecb0591e41b3f16cfdf0015a2
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123538492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5185a5940643c0d212083b3b6275bb2f149030530fea44e12be861186293451`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:26 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 08 Nov 2016 19:27:28 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 19:27:29 GMT
ENV MONGO_MAJOR=3.2
# Mon, 21 Nov 2016 20:29:19 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 21 Nov 2016 20:29:20 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 21 Nov 2016 20:29:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 Nov 2016 20:29:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 Nov 2016 20:29:35 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 Nov 2016 20:29:36 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 21 Nov 2016 20:29:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 20:29:37 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:29:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bedd83d0855930190d351b87b631bc7365ee08cb4dcac23573f648f05ce1b14`  
		Last Modified: Tue, 08 Nov 2016 19:30:22 GMT  
		Size: 3.1 KB (3117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162b676846521ebe8c2f65f7a4a4fc2783f1d1c7b8a991cc7b23f6705a02f78d`  
		Last Modified: Mon, 21 Nov 2016 20:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f53b7d829e0e96a8cc7ad8d560ad4f07975f3a23aaa896a434d4af8f28a8d8`  
		Last Modified: Mon, 21 Nov 2016 20:31:04 GMT  
		Size: 70.8 MB (70823779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef8f3d7f86626db1d7dfe1c528516f627e99749d562f53a99b182e2f91c0529`  
		Last Modified: Mon, 21 Nov 2016 20:30:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2272eba3caccf4e67ea59d8ee64ecd977d1009aff1453c71370563c60cca1b3d`  
		Last Modified: Mon, 21 Nov 2016 20:30:40 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:5c0b6ec4ed120b591ba625806d4b4e59379e0e8ecb0591e41b3f16cfdf0015a2
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123538492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5185a5940643c0d212083b3b6275bb2f149030530fea44e12be861186293451`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:26 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 08 Nov 2016 19:27:28 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 19:27:29 GMT
ENV MONGO_MAJOR=3.2
# Mon, 21 Nov 2016 20:29:19 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 21 Nov 2016 20:29:20 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 21 Nov 2016 20:29:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 Nov 2016 20:29:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 Nov 2016 20:29:35 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 Nov 2016 20:29:36 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 21 Nov 2016 20:29:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 21 Nov 2016 20:29:37 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:29:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bedd83d0855930190d351b87b631bc7365ee08cb4dcac23573f648f05ce1b14`  
		Last Modified: Tue, 08 Nov 2016 19:30:22 GMT  
		Size: 3.1 KB (3117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162b676846521ebe8c2f65f7a4a4fc2783f1d1c7b8a991cc7b23f6705a02f78d`  
		Last Modified: Mon, 21 Nov 2016 20:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f53b7d829e0e96a8cc7ad8d560ad4f07975f3a23aaa896a434d4af8f28a8d8`  
		Last Modified: Mon, 21 Nov 2016 20:31:04 GMT  
		Size: 70.8 MB (70823779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef8f3d7f86626db1d7dfe1c528516f627e99749d562f53a99b182e2f91c0529`  
		Last Modified: Mon, 21 Nov 2016 20:30:41 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2272eba3caccf4e67ea59d8ee64ecd977d1009aff1453c71370563c60cca1b3d`  
		Last Modified: Mon, 21 Nov 2016 20:30:40 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:532a19da83ee0e4e2a2ec6bc4212fc4af26357c040675d5c2629a4e4c4563cef
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123438877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9198c04d624e3ea6aafc1b81c4364db5d5e341df5a69fbc8719e39c944f894`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:26 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 08 Nov 2016 19:27:28 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 19:27:29 GMT
ENV MONGO_MAJOR=3.2
# Tue, 08 Nov 2016 19:27:29 GMT
ENV MONGO_VERSION=3.2.10
# Tue, 08 Nov 2016 19:27:30 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 08 Nov 2016 19:27:31 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 08 Nov 2016 19:27:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 08 Nov 2016 19:27:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 08 Nov 2016 19:27:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Nov 2016 19:27:50 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 08 Nov 2016 19:27:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:27:51 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 19:27:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bedd83d0855930190d351b87b631bc7365ee08cb4dcac23573f648f05ce1b14`  
		Last Modified: Tue, 08 Nov 2016 19:30:22 GMT  
		Size: 3.1 KB (3117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b5d21a0edac15412e14de6e6eb564dc65ce9eeacd4f0487dc1fb07709cd855`  
		Last Modified: Tue, 08 Nov 2016 19:30:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7354b6c26240cc1b99b8a5c30a34d39cbf56124a04bd5981cba273023ffe466f`  
		Last Modified: Tue, 08 Nov 2016 19:30:51 GMT  
		Size: 70.7 MB (70724168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db792d386b51c981087ab70680c1b4767c58cc91a3273af27a8bc57ec135c514`  
		Last Modified: Tue, 08 Nov 2016 19:30:21 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a867bd77950c2e6ee586e2216e01efe41434491521ca9ce692ce0404c3fd437f`  
		Last Modified: Tue, 08 Nov 2016 19:30:21 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.11-windowsservercore`

```console
$ docker pull mongo@sha256:1a6fdf263fe9339da39549c15bcc5eae418969648932aca3ac50d36ec6f6b4ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.11-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673646874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9571bff8687c0abf0d90b0f3f2da056311fcf352826c21612006a64f49fbfb`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:24:50 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:24:52 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Mon, 21 Nov 2016 20:24:55 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Mon, 21 Nov 2016 20:25:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:25:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:26:00 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:26:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e32dc2ea997675699ec499cc6a2365b59851ff084b24c352a071355e961c3df`  
		Last Modified: Mon, 21 Nov 2016 20:27:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc665330fb02acf894027a96bc2f38791aa345d0b039ed343dfe6f079f2f2c63`  
		Last Modified: Mon, 21 Nov 2016 20:27:44 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3d2ef713e1fc158c3921d74937a342f627b67c1113c55ab0f6144299cff4b6`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4b2a44b1121103e8b468bbba8a8731a888e9f0e436e5df89c993d3239b4745`  
		Last Modified: Mon, 21 Nov 2016 20:27:49 GMT  
		Size: 57.0 MB (56961950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612d431a130e3ebbae662f91f1498819b4639a4b6d0d6cff1735f02a21103486`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59e22d55289f70a0421801cb5c8a6717f860585f7afd98897a1a67e57f07a68`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6109630a7707f20ba2f1a1649308e72bcfc7b5200f96edd7052b0af21a221a9`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:1a6fdf263fe9339da39549c15bcc5eae418969648932aca3ac50d36ec6f6b4ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673646874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9571bff8687c0abf0d90b0f3f2da056311fcf352826c21612006a64f49fbfb`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:24:50 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:24:52 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Mon, 21 Nov 2016 20:24:55 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Mon, 21 Nov 2016 20:25:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:25:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:26:00 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:26:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e32dc2ea997675699ec499cc6a2365b59851ff084b24c352a071355e961c3df`  
		Last Modified: Mon, 21 Nov 2016 20:27:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc665330fb02acf894027a96bc2f38791aa345d0b039ed343dfe6f079f2f2c63`  
		Last Modified: Mon, 21 Nov 2016 20:27:44 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3d2ef713e1fc158c3921d74937a342f627b67c1113c55ab0f6144299cff4b6`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4b2a44b1121103e8b468bbba8a8731a888e9f0e436e5df89c993d3239b4745`  
		Last Modified: Mon, 21 Nov 2016 20:27:49 GMT  
		Size: 57.0 MB (56961950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612d431a130e3ebbae662f91f1498819b4639a4b6d0d6cff1735f02a21103486`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59e22d55289f70a0421801cb5c8a6717f860585f7afd98897a1a67e57f07a68`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6109630a7707f20ba2f1a1649308e72bcfc7b5200f96edd7052b0af21a221a9`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:1a6fdf263fe9339da39549c15bcc5eae418969648932aca3ac50d36ec6f6b4ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673646874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9571bff8687c0abf0d90b0f3f2da056311fcf352826c21612006a64f49fbfb`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:24:50 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:24:52 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Mon, 21 Nov 2016 20:24:55 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Mon, 21 Nov 2016 20:25:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:25:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:26:00 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:26:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e32dc2ea997675699ec499cc6a2365b59851ff084b24c352a071355e961c3df`  
		Last Modified: Mon, 21 Nov 2016 20:27:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc665330fb02acf894027a96bc2f38791aa345d0b039ed343dfe6f079f2f2c63`  
		Last Modified: Mon, 21 Nov 2016 20:27:44 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3d2ef713e1fc158c3921d74937a342f627b67c1113c55ab0f6144299cff4b6`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4b2a44b1121103e8b468bbba8a8731a888e9f0e436e5df89c993d3239b4745`  
		Last Modified: Mon, 21 Nov 2016 20:27:49 GMT  
		Size: 57.0 MB (56961950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612d431a130e3ebbae662f91f1498819b4639a4b6d0d6cff1735f02a21103486`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59e22d55289f70a0421801cb5c8a6717f860585f7afd98897a1a67e57f07a68`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6109630a7707f20ba2f1a1649308e72bcfc7b5200f96edd7052b0af21a221a9`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:1a6fdf263fe9339da39549c15bcc5eae418969648932aca3ac50d36ec6f6b4ff
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4673646874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9571bff8687c0abf0d90b0f3f2da056311fcf352826c21612006a64f49fbfb`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:24:50 GMT
ENV MONGO_VERSION=3.2.11
# Mon, 21 Nov 2016 20:24:52 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Mon, 21 Nov 2016 20:24:55 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Mon, 21 Nov 2016 20:25:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:25:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:26:00 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:26:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e32dc2ea997675699ec499cc6a2365b59851ff084b24c352a071355e961c3df`  
		Last Modified: Mon, 21 Nov 2016 20:27:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc665330fb02acf894027a96bc2f38791aa345d0b039ed343dfe6f079f2f2c63`  
		Last Modified: Mon, 21 Nov 2016 20:27:44 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3d2ef713e1fc158c3921d74937a342f627b67c1113c55ab0f6144299cff4b6`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4b2a44b1121103e8b468bbba8a8731a888e9f0e436e5df89c993d3239b4745`  
		Last Modified: Mon, 21 Nov 2016 20:27:49 GMT  
		Size: 57.0 MB (56961950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612d431a130e3ebbae662f91f1498819b4639a4b6d0d6cff1735f02a21103486`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59e22d55289f70a0421801cb5c8a6717f860585f7afd98897a1a67e57f07a68`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6109630a7707f20ba2f1a1649308e72bcfc7b5200f96edd7052b0af21a221a9`  
		Last Modified: Mon, 21 Nov 2016 20:27:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.15`

```console
$ docker pull mongo@sha256:08a90c3d7c40aca81f234f0b2aaeed0254054b1c6705087b10da1c1901d07b5d
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3.15` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150101050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abda4f464435605cfdc282076ec08725c35b7c3ff273d1e3cfefb6722d17bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:27:55 GMT
ENV MONGO_MAJOR=3.3
# Tue, 08 Nov 2016 19:27:55 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 08 Nov 2016 19:27:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 08 Nov 2016 19:27:57 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 08 Nov 2016 19:28:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 08 Nov 2016 19:28:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 08 Nov 2016 19:28:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Nov 2016 19:28:20 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 08 Nov 2016 19:28:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:28:21 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 19:28:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14474a0ebc1b228684142cdfd115a382ab655a2e528ff721e9b06d47893b34a3`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42389b77aa8d43f8b2acb4c83aef91bcb56663225c497ebfffbb841e5807ef`  
		Last Modified: Tue, 08 Nov 2016 19:32:33 GMT  
		Size: 97.4 MB (97388023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77b4fcbe149842ed0199bf1db89925f3197ade2528d857834fc10d4a0edff4`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975aabf0feac4c2fc0a3c01f890ad684fe89f4e28ca37a03da7b6000d4e9e7e5`  
		Last Modified: Tue, 08 Nov 2016 19:31:59 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3`

```console
$ docker pull mongo@sha256:08a90c3d7c40aca81f234f0b2aaeed0254054b1c6705087b10da1c1901d07b5d
```

-	Platforms:
	-	linux; amd64

### `mongo:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150101050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abda4f464435605cfdc282076ec08725c35b7c3ff273d1e3cfefb6722d17bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:27:55 GMT
ENV MONGO_MAJOR=3.3
# Tue, 08 Nov 2016 19:27:55 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 08 Nov 2016 19:27:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 08 Nov 2016 19:27:57 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 08 Nov 2016 19:28:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 08 Nov 2016 19:28:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 08 Nov 2016 19:28:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Nov 2016 19:28:20 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 08 Nov 2016 19:28:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:28:21 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 19:28:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14474a0ebc1b228684142cdfd115a382ab655a2e528ff721e9b06d47893b34a3`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42389b77aa8d43f8b2acb4c83aef91bcb56663225c497ebfffbb841e5807ef`  
		Last Modified: Tue, 08 Nov 2016 19:32:33 GMT  
		Size: 97.4 MB (97388023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77b4fcbe149842ed0199bf1db89925f3197ade2528d857834fc10d4a0edff4`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975aabf0feac4c2fc0a3c01f890ad684fe89f4e28ca37a03da7b6000d4e9e7e5`  
		Last Modified: Tue, 08 Nov 2016 19:31:59 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:08a90c3d7c40aca81f234f0b2aaeed0254054b1c6705087b10da1c1901d07b5d
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150101050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abda4f464435605cfdc282076ec08725c35b7c3ff273d1e3cfefb6722d17bf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:27:55 GMT
ENV MONGO_MAJOR=3.3
# Tue, 08 Nov 2016 19:27:55 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 08 Nov 2016 19:27:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 08 Nov 2016 19:27:57 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 08 Nov 2016 19:28:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 08 Nov 2016 19:28:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 08 Nov 2016 19:28:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 08 Nov 2016 19:28:20 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 08 Nov 2016 19:28:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 08 Nov 2016 19:28:21 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 19:28:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14474a0ebc1b228684142cdfd115a382ab655a2e528ff721e9b06d47893b34a3`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42389b77aa8d43f8b2acb4c83aef91bcb56663225c497ebfffbb841e5807ef`  
		Last Modified: Tue, 08 Nov 2016 19:32:33 GMT  
		Size: 97.4 MB (97388023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77b4fcbe149842ed0199bf1db89925f3197ade2528d857834fc10d4a0edff4`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975aabf0feac4c2fc0a3c01f890ad684fe89f4e28ca37a03da7b6000d4e9e7e5`  
		Last Modified: Tue, 08 Nov 2016 19:31:59 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3.15-windowsservercore`

```console
$ docker pull mongo@sha256:a2edfd70d3c075b9e05a7801b704b9f7e9b1a435cde8db0bf1b3c09a9cefbfc6
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683214665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f23925fb29dc4fc2fe175ab2cf1484a205c443fe6c04aba659a0f08559cd12`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:36:21 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 15 Nov 2016 00:36:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Tue, 15 Nov 2016 00:36:29 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Tue, 15 Nov 2016 00:37:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:37:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 15 Nov 2016 00:37:51 GMT
EXPOSE 27017/tcp
# Tue, 15 Nov 2016 00:37:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1800a34094d7e01314e6de429cec6a0bd702dc065449aafbedd688031c44a2`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85a8f6aa5cb5844c29a8295541102c5fcf3c45ecb564ea828fd00326578f613`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4340cb6c53cb6ade50cd523cd2b2b838c777a1577e603aa90f7dd328242ad375`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257ff9a4c4ee00b3485f7843aa7053c973646c0d2fd17aef310a4579b69d5547`  
		Last Modified: Tue, 15 Nov 2016 00:38:15 GMT  
		Size: 66.5 MB (66529692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6289189cdb5bac746fd7fd87c319fa6c93df398be6e11c46603e6dabb53a06`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0629f4acb35a826e158f173c7af16a61c1869781f6a6a6ba15e7d63ee7abe31`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f44c6128038b8b0c1791834505eb6a9d01ef7c187911c322813624d3f921ee`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:a2edfd70d3c075b9e05a7801b704b9f7e9b1a435cde8db0bf1b3c09a9cefbfc6
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683214665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f23925fb29dc4fc2fe175ab2cf1484a205c443fe6c04aba659a0f08559cd12`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:36:21 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 15 Nov 2016 00:36:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Tue, 15 Nov 2016 00:36:29 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Tue, 15 Nov 2016 00:37:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:37:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 15 Nov 2016 00:37:51 GMT
EXPOSE 27017/tcp
# Tue, 15 Nov 2016 00:37:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1800a34094d7e01314e6de429cec6a0bd702dc065449aafbedd688031c44a2`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85a8f6aa5cb5844c29a8295541102c5fcf3c45ecb564ea828fd00326578f613`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4340cb6c53cb6ade50cd523cd2b2b838c777a1577e603aa90f7dd328242ad375`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257ff9a4c4ee00b3485f7843aa7053c973646c0d2fd17aef310a4579b69d5547`  
		Last Modified: Tue, 15 Nov 2016 00:38:15 GMT  
		Size: 66.5 MB (66529692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6289189cdb5bac746fd7fd87c319fa6c93df398be6e11c46603e6dabb53a06`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0629f4acb35a826e158f173c7af16a61c1869781f6a6a6ba15e7d63ee7abe31`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f44c6128038b8b0c1791834505eb6a9d01ef7c187911c322813624d3f921ee`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:a2edfd70d3c075b9e05a7801b704b9f7e9b1a435cde8db0bf1b3c09a9cefbfc6
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683214665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f23925fb29dc4fc2fe175ab2cf1484a205c443fe6c04aba659a0f08559cd12`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Nov 2016 00:36:21 GMT
ENV MONGO_VERSION=3.3.15
# Tue, 15 Nov 2016 00:36:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Tue, 15 Nov 2016 00:36:29 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Tue, 15 Nov 2016 00:37:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 15 Nov 2016 00:37:46 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 15 Nov 2016 00:37:51 GMT
EXPOSE 27017/tcp
# Tue, 15 Nov 2016 00:37:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1800a34094d7e01314e6de429cec6a0bd702dc065449aafbedd688031c44a2`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85a8f6aa5cb5844c29a8295541102c5fcf3c45ecb564ea828fd00326578f613`  
		Last Modified: Tue, 15 Nov 2016 00:38:08 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4340cb6c53cb6ade50cd523cd2b2b838c777a1577e603aa90f7dd328242ad375`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257ff9a4c4ee00b3485f7843aa7053c973646c0d2fd17aef310a4579b69d5547`  
		Last Modified: Tue, 15 Nov 2016 00:38:15 GMT  
		Size: 66.5 MB (66529692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6289189cdb5bac746fd7fd87c319fa6c93df398be6e11c46603e6dabb53a06`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0629f4acb35a826e158f173c7af16a61c1869781f6a6a6ba15e7d63ee7abe31`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f44c6128038b8b0c1791834505eb6a9d01ef7c187911c322813624d3f921ee`  
		Last Modified: Tue, 15 Nov 2016 00:37:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-rc4`

**does not exist** (yet?)

## `mongo:3.4.0`

```console
$ docker pull mongo@sha256:9b7a9af5a22bd3132987e14c7992de72b79ca3aac2606d1d1d6d3c02758bc7cb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150356635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a8bab0b3c7946a69e7e0230e09f73e608567fe2e5c0e8f30a1b022ff1f882`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:28:23 GMT
ENV MONGO_MAJOR=testing
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_VERSION=3.4.0~rc3
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 14 Nov 2016 23:11:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 14 Nov 2016 23:11:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 14 Nov 2016 23:11:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 14 Nov 2016 23:11:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 14 Nov 2016 23:11:40 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 14 Nov 2016 23:11:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 23:11:41 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:11:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df986eee24f921f541542d687a5cc0f57362a64afd8480788c5829087aca842`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eaa5d3cfda7ffc55bb9f22d4195ad88721a3a54897984f883b8dd5a7dfcdd7`  
		Last Modified: Mon, 14 Nov 2016 23:14:30 GMT  
		Size: 97.6 MB (97643607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd691d591973f72f09dfeaf2c472957278f94b6941e10da261ef125d74121ae6`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e3e11f4c5361878559aa2cad13c03d252f0d140c9c9d4878effce4b5d24b0`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:9b7a9af5a22bd3132987e14c7992de72b79ca3aac2606d1d1d6d3c02758bc7cb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150356635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a8bab0b3c7946a69e7e0230e09f73e608567fe2e5c0e8f30a1b022ff1f882`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:28:23 GMT
ENV MONGO_MAJOR=testing
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_VERSION=3.4.0~rc3
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 14 Nov 2016 23:11:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 14 Nov 2016 23:11:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 14 Nov 2016 23:11:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 14 Nov 2016 23:11:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 14 Nov 2016 23:11:40 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 14 Nov 2016 23:11:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 23:11:41 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:11:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df986eee24f921f541542d687a5cc0f57362a64afd8480788c5829087aca842`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eaa5d3cfda7ffc55bb9f22d4195ad88721a3a54897984f883b8dd5a7dfcdd7`  
		Last Modified: Mon, 14 Nov 2016 23:14:30 GMT  
		Size: 97.6 MB (97643607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd691d591973f72f09dfeaf2c472957278f94b6941e10da261ef125d74121ae6`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e3e11f4c5361878559aa2cad13c03d252f0d140c9c9d4878effce4b5d24b0`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc`

```console
$ docker pull mongo@sha256:9b7a9af5a22bd3132987e14c7992de72b79ca3aac2606d1d1d6d3c02758bc7cb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4-rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150356635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a8bab0b3c7946a69e7e0230e09f73e608567fe2e5c0e8f30a1b022ff1f882`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:28:23 GMT
ENV MONGO_MAJOR=testing
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_VERSION=3.4.0~rc3
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 14 Nov 2016 23:11:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 14 Nov 2016 23:11:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 14 Nov 2016 23:11:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 14 Nov 2016 23:11:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 14 Nov 2016 23:11:40 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 14 Nov 2016 23:11:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 23:11:41 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:11:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df986eee24f921f541542d687a5cc0f57362a64afd8480788c5829087aca842`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eaa5d3cfda7ffc55bb9f22d4195ad88721a3a54897984f883b8dd5a7dfcdd7`  
		Last Modified: Mon, 14 Nov 2016 23:14:30 GMT  
		Size: 97.6 MB (97643607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd691d591973f72f09dfeaf2c472957278f94b6941e10da261ef125d74121ae6`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e3e11f4c5361878559aa2cad13c03d252f0d140c9c9d4878effce4b5d24b0`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc`

```console
$ docker pull mongo@sha256:9b7a9af5a22bd3132987e14c7992de72b79ca3aac2606d1d1d6d3c02758bc7cb
```

-	Platforms:
	-	linux; amd64

### `mongo:rc` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150356635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14a8bab0b3c7946a69e7e0230e09f73e608567fe2e5c0e8f30a1b022ff1f882`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:26:57 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 08 Nov 2016 19:27:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:27:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:27:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:27:54 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 08 Nov 2016 19:28:23 GMT
ENV MONGO_MAJOR=testing
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_VERSION=3.4.0~rc3
# Mon, 14 Nov 2016 23:11:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 14 Nov 2016 23:11:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 14 Nov 2016 23:11:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 14 Nov 2016 23:11:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 14 Nov 2016 23:11:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 14 Nov 2016 23:11:40 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Mon, 14 Nov 2016 23:11:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 14 Nov 2016 23:11:41 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:11:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524267bc200a2ed2d3ea5058f892d1bd342972dc522761efc4547450255865b4`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476d61c7c43ac1387783b5e57b1a4e0dc393fc18fc17fcf27ef8cf1015f40f20`  
		Last Modified: Tue, 08 Nov 2016 19:30:27 GMT  
		Size: 134.5 KB (134510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0750d0e28b90576723fadafddd87d9880e0acaeea75e8ec491ac3a21ce63ed37`  
		Last Modified: Tue, 08 Nov 2016 19:30:25 GMT  
		Size: 1.2 MB (1217337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a78c5fad8eb09600e44161913da26b02de10f8961f423e59aa8e2348a5d1a1`  
		Last Modified: Tue, 08 Nov 2016 19:31:58 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df986eee24f921f541542d687a5cc0f57362a64afd8480788c5829087aca842`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eaa5d3cfda7ffc55bb9f22d4195ad88721a3a54897984f883b8dd5a7dfcdd7`  
		Last Modified: Mon, 14 Nov 2016 23:14:30 GMT  
		Size: 97.6 MB (97643607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd691d591973f72f09dfeaf2c472957278f94b6941e10da261ef125d74121ae6`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e3e11f4c5361878559aa2cad13c03d252f0d140c9c9d4878effce4b5d24b0`  
		Last Modified: Mon, 14 Nov 2016 23:14:01 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-rc4-windowsservercore`

```console
$ docker pull mongo@sha256:3a998926fe3a2fce220b4dc1eca7fd35217bd156ba6c1199fc5c9d4bce9a5411
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-rc4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683411128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be6380ce2f890c876f2c87dff11dcc9b81f0ae9f39df14e74d07ed7e4eac750`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:26:10 GMT
ENV MONGO_VERSION=3.4.0-rc4
# Mon, 21 Nov 2016 20:26:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc4-signed.msi
# Mon, 21 Nov 2016 20:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=83270be71ac2b8b45b1fe73ee7e143749cef4209975802825b07d47b0261727e
# Mon, 21 Nov 2016 20:27:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:27:21 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:27:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e080ef1f37e1bff1eb81e8072a1f794030887e9ca48e7ce042fd07cae8c618`  
		Last Modified: Mon, 21 Nov 2016 20:28:21 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414818f195af447a88a1de776efbe5e7a53c99e4c28dec9a0c450b3f33e2004d`  
		Last Modified: Mon, 21 Nov 2016 20:28:19 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806bf2122f55cc83d20beac9dd53acaeca56d7dbc5437706d9fcbaa14f30701`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6afae73201dcb6c7bc4efa100fe1fc72a99f69de62968162909ee63bcd6f02`  
		Last Modified: Mon, 21 Nov 2016 20:28:26 GMT  
		Size: 66.7 MB (66726173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fc8da1091c21b63903cfc22cdcf6d9817396c8f97380c8ef71c7b1865291f`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236b12d61e2ea4422dc5530f57ccafe084a8da439e00b503e90f9a7e76789176`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e33e79c6e18a4e8bbdbd1e9e04a35c4b19edef46023b9aba5eab0ab5a60153`  
		Last Modified: Mon, 21 Nov 2016 20:28:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-windowsservercore`

```console
$ docker pull mongo@sha256:3a998926fe3a2fce220b4dc1eca7fd35217bd156ba6c1199fc5c9d4bce9a5411
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683411128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be6380ce2f890c876f2c87dff11dcc9b81f0ae9f39df14e74d07ed7e4eac750`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:26:10 GMT
ENV MONGO_VERSION=3.4.0-rc4
# Mon, 21 Nov 2016 20:26:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc4-signed.msi
# Mon, 21 Nov 2016 20:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=83270be71ac2b8b45b1fe73ee7e143749cef4209975802825b07d47b0261727e
# Mon, 21 Nov 2016 20:27:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:27:21 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:27:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e080ef1f37e1bff1eb81e8072a1f794030887e9ca48e7ce042fd07cae8c618`  
		Last Modified: Mon, 21 Nov 2016 20:28:21 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414818f195af447a88a1de776efbe5e7a53c99e4c28dec9a0c450b3f33e2004d`  
		Last Modified: Mon, 21 Nov 2016 20:28:19 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806bf2122f55cc83d20beac9dd53acaeca56d7dbc5437706d9fcbaa14f30701`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6afae73201dcb6c7bc4efa100fe1fc72a99f69de62968162909ee63bcd6f02`  
		Last Modified: Mon, 21 Nov 2016 20:28:26 GMT  
		Size: 66.7 MB (66726173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fc8da1091c21b63903cfc22cdcf6d9817396c8f97380c8ef71c7b1865291f`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236b12d61e2ea4422dc5530f57ccafe084a8da439e00b503e90f9a7e76789176`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e33e79c6e18a4e8bbdbd1e9e04a35c4b19edef46023b9aba5eab0ab5a60153`  
		Last Modified: Mon, 21 Nov 2016 20:28:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:3a998926fe3a2fce220b4dc1eca7fd35217bd156ba6c1199fc5c9d4bce9a5411
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683411128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be6380ce2f890c876f2c87dff11dcc9b81f0ae9f39df14e74d07ed7e4eac750`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:26:10 GMT
ENV MONGO_VERSION=3.4.0-rc4
# Mon, 21 Nov 2016 20:26:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc4-signed.msi
# Mon, 21 Nov 2016 20:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=83270be71ac2b8b45b1fe73ee7e143749cef4209975802825b07d47b0261727e
# Mon, 21 Nov 2016 20:27:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:27:21 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:27:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e080ef1f37e1bff1eb81e8072a1f794030887e9ca48e7ce042fd07cae8c618`  
		Last Modified: Mon, 21 Nov 2016 20:28:21 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414818f195af447a88a1de776efbe5e7a53c99e4c28dec9a0c450b3f33e2004d`  
		Last Modified: Mon, 21 Nov 2016 20:28:19 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806bf2122f55cc83d20beac9dd53acaeca56d7dbc5437706d9fcbaa14f30701`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6afae73201dcb6c7bc4efa100fe1fc72a99f69de62968162909ee63bcd6f02`  
		Last Modified: Mon, 21 Nov 2016 20:28:26 GMT  
		Size: 66.7 MB (66726173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fc8da1091c21b63903cfc22cdcf6d9817396c8f97380c8ef71c7b1865291f`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236b12d61e2ea4422dc5530f57ccafe084a8da439e00b503e90f9a7e76789176`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e33e79c6e18a4e8bbdbd1e9e04a35c4b19edef46023b9aba5eab0ab5a60153`  
		Last Modified: Mon, 21 Nov 2016 20:28:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc-windowsservercore`

```console
$ docker pull mongo@sha256:3a998926fe3a2fce220b4dc1eca7fd35217bd156ba6c1199fc5c9d4bce9a5411
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683411128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be6380ce2f890c876f2c87dff11dcc9b81f0ae9f39df14e74d07ed7e4eac750`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:26:10 GMT
ENV MONGO_VERSION=3.4.0-rc4
# Mon, 21 Nov 2016 20:26:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc4-signed.msi
# Mon, 21 Nov 2016 20:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=83270be71ac2b8b45b1fe73ee7e143749cef4209975802825b07d47b0261727e
# Mon, 21 Nov 2016 20:27:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:27:21 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:27:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e080ef1f37e1bff1eb81e8072a1f794030887e9ca48e7ce042fd07cae8c618`  
		Last Modified: Mon, 21 Nov 2016 20:28:21 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414818f195af447a88a1de776efbe5e7a53c99e4c28dec9a0c450b3f33e2004d`  
		Last Modified: Mon, 21 Nov 2016 20:28:19 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806bf2122f55cc83d20beac9dd53acaeca56d7dbc5437706d9fcbaa14f30701`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6afae73201dcb6c7bc4efa100fe1fc72a99f69de62968162909ee63bcd6f02`  
		Last Modified: Mon, 21 Nov 2016 20:28:26 GMT  
		Size: 66.7 MB (66726173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fc8da1091c21b63903cfc22cdcf6d9817396c8f97380c8ef71c7b1865291f`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236b12d61e2ea4422dc5530f57ccafe084a8da439e00b503e90f9a7e76789176`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e33e79c6e18a4e8bbdbd1e9e04a35c4b19edef46023b9aba5eab0ab5a60153`  
		Last Modified: Mon, 21 Nov 2016 20:28:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc-windowsservercore`

```console
$ docker pull mongo@sha256:3a998926fe3a2fce220b4dc1eca7fd35217bd156ba6c1199fc5c9d4bce9a5411
```

-	Platforms:
	-	windows; amd64

### `mongo:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683411128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be6380ce2f890c876f2c87dff11dcc9b81f0ae9f39df14e74d07ed7e4eac750`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 21 Nov 2016 20:26:10 GMT
ENV MONGO_VERSION=3.4.0-rc4
# Mon, 21 Nov 2016 20:26:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc4-signed.msi
# Mon, 21 Nov 2016 20:26:17 GMT
ENV MONGO_DOWNLOAD_SHA256=83270be71ac2b8b45b1fe73ee7e143749cef4209975802825b07d47b0261727e
# Mon, 21 Nov 2016 20:27:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 21 Nov 2016 20:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 21 Nov 2016 20:27:21 GMT
EXPOSE 27017/tcp
# Mon, 21 Nov 2016 20:27:24 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d33fff6043a134da85e10360f9932543f1dfc0c3a22e1edd062aa9b088a86c5b`  
		Size: 878.9 MB (878852116 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f24cd6bb1240a6a8641fa44a4bbea3e59d3729b9e1513ca48370c4576b6fddea`  
		Last Modified: Tue, 15 Nov 2016 00:13:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e080ef1f37e1bff1eb81e8072a1f794030887e9ca48e7ce042fd07cae8c618`  
		Last Modified: Mon, 21 Nov 2016 20:28:21 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414818f195af447a88a1de776efbe5e7a53c99e4c28dec9a0c450b3f33e2004d`  
		Last Modified: Mon, 21 Nov 2016 20:28:19 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806bf2122f55cc83d20beac9dd53acaeca56d7dbc5437706d9fcbaa14f30701`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6afae73201dcb6c7bc4efa100fe1fc72a99f69de62968162909ee63bcd6f02`  
		Last Modified: Mon, 21 Nov 2016 20:28:26 GMT  
		Size: 66.7 MB (66726173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fc8da1091c21b63903cfc22cdcf6d9817396c8f97380c8ef71c7b1865291f`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236b12d61e2ea4422dc5530f57ccafe084a8da439e00b503e90f9a7e76789176`  
		Last Modified: Mon, 21 Nov 2016 20:28:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e33e79c6e18a4e8bbdbd1e9e04a35c4b19edef46023b9aba5eab0ab5a60153`  
		Last Modified: Mon, 21 Nov 2016 20:28:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
