<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.10`](#mongo3210)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.2.10-windowsservercore`](#mongo3210-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.3.15`](#mongo3315)
-	[`mongo:3.3`](#mongo33)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.3.15-windowsservercore`](#mongo3315-windowsservercore)
-	[`mongo:3.3-windowsservercore`](#mongo33-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)
-	[`mongo:3.4.0-rc2`](#mongo340-rc2)
-	[`mongo:3.4.0`](#mongo340)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4-rc`](#mongo34-rc)
-	[`mongo:rc`](#mongorc)
-	[`mongo:3.4.0-rc2-windowsservercore`](#mongo340-rc2-windowsservercore)
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
$ docker pull mongo@sha256:b0f2b9fd2ce1c6023590b615800ac210ecc9da9891bc0d7386efa5065bfc2edb
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 GB (4521837707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c21c7c81536ab9dfafe279074845b692b2d41b9f86f2c4ca3a83d3fb5ee05b2`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 08 Nov 2016 18:38:49 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 08 Nov 2016 18:38:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Tue, 08 Nov 2016 18:38:56 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Tue, 08 Nov 2016 18:41:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Nov 2016 18:41:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Nov 2016 18:41:09 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 18:41:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9738d19de072402f99a5c0d993ae26377082c06f6c6dadc595a33f4929c9179c`  
		Last Modified: Tue, 08 Nov 2016 18:41:24 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c22c1c13c0b3f71231a092a33f90fcb6a7d14213d373deea35375d9cf695811`  
		Last Modified: Tue, 08 Nov 2016 18:41:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6827703ef76cd2f50e1dd7a23c96a321925fd697733215e511d8cab539d94e`  
		Last Modified: Tue, 08 Nov 2016 18:41:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38696097a90b90cef36fdbe842a87587799e9dca5fe4c8baa5bde9877911`  
		Last Modified: Tue, 08 Nov 2016 18:41:48 GMT  
		Size: 166.4 MB (166421493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ecd6b91e89d02298f9df311f96ce103ac87c4b77a87c8019cc07a755de5c4c`  
		Last Modified: Tue, 08 Nov 2016 18:41:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4769de989fa5f97c9c3adb7265633b700ff29f8c5b1b811e8c50d7f58c3d345`  
		Last Modified: Tue, 08 Nov 2016 18:41:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31c16f11b871d5b9ebc191d0df16e91389740d8b777187fe4638ab9ba460bf7`  
		Last Modified: Tue, 08 Nov 2016 18:41:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:b0f2b9fd2ce1c6023590b615800ac210ecc9da9891bc0d7386efa5065bfc2edb
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 GB (4521837707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c21c7c81536ab9dfafe279074845b692b2d41b9f86f2c4ca3a83d3fb5ee05b2`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 08 Nov 2016 18:38:49 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 08 Nov 2016 18:38:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Tue, 08 Nov 2016 18:38:56 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Tue, 08 Nov 2016 18:41:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Nov 2016 18:41:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Nov 2016 18:41:09 GMT
EXPOSE 27017/tcp
# Tue, 08 Nov 2016 18:41:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9738d19de072402f99a5c0d993ae26377082c06f6c6dadc595a33f4929c9179c`  
		Last Modified: Tue, 08 Nov 2016 18:41:24 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c22c1c13c0b3f71231a092a33f90fcb6a7d14213d373deea35375d9cf695811`  
		Last Modified: Tue, 08 Nov 2016 18:41:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6827703ef76cd2f50e1dd7a23c96a321925fd697733215e511d8cab539d94e`  
		Last Modified: Tue, 08 Nov 2016 18:41:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace38696097a90b90cef36fdbe842a87587799e9dca5fe4c8baa5bde9877911`  
		Last Modified: Tue, 08 Nov 2016 18:41:48 GMT  
		Size: 166.4 MB (166421493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ecd6b91e89d02298f9df311f96ce103ac87c4b77a87c8019cc07a755de5c4c`  
		Last Modified: Tue, 08 Nov 2016 18:41:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4769de989fa5f97c9c3adb7265633b700ff29f8c5b1b811e8c50d7f58c3d345`  
		Last Modified: Tue, 08 Nov 2016 18:41:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31c16f11b871d5b9ebc191d0df16e91389740d8b777187fe4638ab9ba460bf7`  
		Last Modified: Tue, 08 Nov 2016 18:41:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.10`

```console
$ docker pull mongo@sha256:532a19da83ee0e4e2a2ec6bc4212fc4af26357c040675d5c2629a4e4c4563cef
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.10` - linux; amd64

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

## `mongo:3.2`

```console
$ docker pull mongo@sha256:532a19da83ee0e4e2a2ec6bc4212fc4af26357c040675d5c2629a4e4c4563cef
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

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

## `mongo:3`

```console
$ docker pull mongo@sha256:532a19da83ee0e4e2a2ec6bc4212fc4af26357c040675d5c2629a4e4c4563cef
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

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

## `mongo:latest`

```console
$ docker pull mongo@sha256:89ad0ed6321f48107356db1e11984e56614bdee64c3ad8a05484187f276ff705
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123434517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135883d5d0b960b498e4c6c2009444b243b322d3fcb8fc4aa0cc741542dd6528`
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
# Fri, 21 Oct 2016 20:43:33 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 21 Oct 2016 20:43:36 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_MAJOR=3.2
# Fri, 21 Oct 2016 20:43:36 GMT
ENV MONGO_VERSION=3.2.10
# Tue, 01 Nov 2016 23:30:45 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:30:47 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:02 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:03 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:04 GMT
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
	-	`sha256:9256de55cd57ecdc8598e8a3d5a49249ceb1daf22763654ae7b42dba5fd267b5`  
		Last Modified: Fri, 21 Oct 2016 20:44:07 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9dc6db2834aebc60ab24d1caa842ad3dcca75d5db313f865e891a21f041a02`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2b45b7a40c8688c64c5c88805666309b0c0cfb363b685c636726f14442b5ad`  
		Last Modified: Tue, 01 Nov 2016 23:34:04 GMT  
		Size: 70.7 MB (70724075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f5d27d1e75a86e99ef0f84d966a4545aa4a2b9c238ca3373c3e93685d6b17a`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51170f94141d1bf285906977778b2ee630bf28c871fb6194b0307808a2b89efc`  
		Last Modified: Tue, 01 Nov 2016 23:33:37 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.10-windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.10-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:30432077f7d93ddd49d8a84ea9f370360a2bb600a210ea8270caa3d19d66d584
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 GB (4569053773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44af0f461ea14896bd6232ffd32c2cf92c0f86f223e4035bc03552ecf9256ed`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:30:47 GMT
ENV MONGO_VERSION=3.2.10
# Wed, 12 Oct 2016 19:30:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Wed, 12 Oct 2016 19:31:00 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Wed, 12 Oct 2016 19:33:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:34:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:34:10 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:34:19 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a658c98dc0f6f152961d7636994d1f1b7e60a11fe42b7485c24010d81a5d54d3`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0866f2bfeb998c8ea9171faff8d5478d27175e8f397dff664cf5aa6bf950b644`  
		Last Modified: Wed, 12 Oct 2016 19:50:23 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e603a6450b8542e99e6e5da7ecfa97e1258d43b768ef8351fb93d3c5cfdfb472`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf5e96bb87c2e78cdbc6918ff3086f41e1ebbefc7333ef2b6fca01cfed43f2f`  
		Last Modified: Wed, 12 Oct 2016 19:51:18 GMT  
		Size: 213.6 MB (213637546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ca146e8004a4f978728e5d9ed1f5b104808a4e0e8f2f2eb7eb83fb782831ec`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b56d2a0f0699947171a4dbbd2e506c2549cbeebccf18feb724cc3b4071d685`  
		Last Modified: Wed, 12 Oct 2016 19:50:20 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c223b6087b92f47fb85708afa62dd803858e75dd10b7cbf208eb152b81ba3`  
		Last Modified: Wed, 12 Oct 2016 19:50:21 GMT  
		Size: 1.2 KB (1211 bytes)  
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
$ docker pull mongo@sha256:534f6347bfae560aa8036f6fe430fbffb64079f8966df56f22fb9e3c6b252688
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667637922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dcfbf68f82a7da670689e9d7d7e7519fb8ae9e5d7e108b7ad89ce0cbcbf9d9`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:34:32 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 19:34:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 19:34:47 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:40:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:40:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:40:30 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:40:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19757ebf22102a8812eb128ef2736f5881d4df111997b60ef9b4c2cdbfb1a13`  
		Last Modified: Wed, 12 Oct 2016 19:51:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccb1ebe767ff47faffd98b614de913a0d93fa05e16823fab759a202a2cd033`  
		Last Modified: Wed, 12 Oct 2016 19:51:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac2394515b91479422aa719c6af15ec5c4937a21047362c38f99ed8d06cc107`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fff81db8e11d3c4a5e5986c59af3e12c6b9ebfe72f89f8d4d67a007c75d89`  
		Last Modified: Wed, 12 Oct 2016 19:53:12 GMT  
		Size: 312.2 MB (312221714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257f71b3bc49e4d7defa6ac334ff73b52bba4229c945486e174b05852bbd198`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380f46dbca92825aa958f26a40a5dfef1470afe303672b80493a3b7faa21daa`  
		Last Modified: Wed, 12 Oct 2016 19:51:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63bb1fc58295c0c11d39d051f9b645dbe4af4153797267b6133b74dd3e2786b`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:534f6347bfae560aa8036f6fe430fbffb64079f8966df56f22fb9e3c6b252688
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667637922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dcfbf68f82a7da670689e9d7d7e7519fb8ae9e5d7e108b7ad89ce0cbcbf9d9`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:34:32 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 19:34:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 19:34:47 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:40:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:40:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:40:30 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:40:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19757ebf22102a8812eb128ef2736f5881d4df111997b60ef9b4c2cdbfb1a13`  
		Last Modified: Wed, 12 Oct 2016 19:51:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccb1ebe767ff47faffd98b614de913a0d93fa05e16823fab759a202a2cd033`  
		Last Modified: Wed, 12 Oct 2016 19:51:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac2394515b91479422aa719c6af15ec5c4937a21047362c38f99ed8d06cc107`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fff81db8e11d3c4a5e5986c59af3e12c6b9ebfe72f89f8d4d67a007c75d89`  
		Last Modified: Wed, 12 Oct 2016 19:53:12 GMT  
		Size: 312.2 MB (312221714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257f71b3bc49e4d7defa6ac334ff73b52bba4229c945486e174b05852bbd198`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380f46dbca92825aa958f26a40a5dfef1470afe303672b80493a3b7faa21daa`  
		Last Modified: Wed, 12 Oct 2016 19:51:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63bb1fc58295c0c11d39d051f9b645dbe4af4153797267b6133b74dd3e2786b`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:534f6347bfae560aa8036f6fe430fbffb64079f8966df56f22fb9e3c6b252688
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667637922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dcfbf68f82a7da670689e9d7d7e7519fb8ae9e5d7e108b7ad89ce0cbcbf9d9`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Oct 2016 19:34:32 GMT
ENV MONGO_VERSION=3.3.15
# Wed, 12 Oct 2016 19:34:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Wed, 12 Oct 2016 19:34:47 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Wed, 12 Oct 2016 19:40:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Oct 2016 19:40:24 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Oct 2016 19:40:30 GMT
EXPOSE 27017/tcp
# Wed, 12 Oct 2016 19:40:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19757ebf22102a8812eb128ef2736f5881d4df111997b60ef9b4c2cdbfb1a13`  
		Last Modified: Wed, 12 Oct 2016 19:51:44 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ccb1ebe767ff47faffd98b614de913a0d93fa05e16823fab759a202a2cd033`  
		Last Modified: Wed, 12 Oct 2016 19:51:43 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac2394515b91479422aa719c6af15ec5c4937a21047362c38f99ed8d06cc107`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968fff81db8e11d3c4a5e5986c59af3e12c6b9ebfe72f89f8d4d67a007c75d89`  
		Last Modified: Wed, 12 Oct 2016 19:53:12 GMT  
		Size: 312.2 MB (312221714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257f71b3bc49e4d7defa6ac334ff73b52bba4229c945486e174b05852bbd198`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380f46dbca92825aa958f26a40a5dfef1470afe303672b80493a3b7faa21daa`  
		Last Modified: Wed, 12 Oct 2016 19:51:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63bb1fc58295c0c11d39d051f9b645dbe4af4153797267b6133b74dd3e2786b`  
		Last Modified: Wed, 12 Oct 2016 19:51:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-rc2`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0-rc2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
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
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
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
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
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
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
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
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
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
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
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
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4-rc` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
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
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
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
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc`

```console
$ docker pull mongo@sha256:4df9df58bfb36c6e45a8ea8591b43ed3077601cd9aff3fd10096301597d93e73
```

-	Platforms:
	-	linux; amd64

### `mongo:rc` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150272618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa99e55d0c49d22924a3566d02b31feeb95a8ee440de1900c6d35700a4e30e44`
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
# Tue, 01 Nov 2016 23:31:24 GMT
ENV MONGO_MAJOR=testing
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_VERSION=3.4.0~rc2
# Tue, 01 Nov 2016 23:31:25 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 01 Nov 2016 23:31:26 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 01 Nov 2016 23:31:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 01 Nov 2016 23:31:54 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 01 Nov 2016 23:31:55 GMT
VOLUME [/data/db /data/configdb]
# Tue, 01 Nov 2016 23:31:56 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 01 Nov 2016 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 23:31:56 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:31:57 GMT
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
	-	`sha256:c8abd5996a60845f0e4ace81f503214dedf6ac356dc9089e05364ac36f8299a2`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf72a3c170d5eca90f46e0da7688b1e49feb5f0f1c3deab099128dd2e429f843`  
		Last Modified: Tue, 01 Nov 2016 23:36:31 GMT  
		Size: 97.6 MB (97563853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f1b778a1b3d859ad78128442a6590ad14b5c9f55534ba4fca0bb4a499a476`  
		Last Modified: Tue, 01 Nov 2016 23:36:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850bf903d1d76e8ae1b00f4e2182342c153e5b34b6e91ce89280afba34f5f3a4`  
		Last Modified: Tue, 01 Nov 2016 23:36:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-rc2-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-rc2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc-windowsservercore`

```console
$ docker pull mongo@sha256:18f22a79495a48310e7062a25935b6817b6846751cb54aff67daffafd6386b85
```

-	Platforms:
	-	windows; amd64

### `mongo:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4667446584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7dae06a3232508b678e0f78890be4877d095b097e646c16c0b289b73ecfd31`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Oct 2016 19:27:18 GMT
RUN [Environment]::SetEnvironmentVariable('PATH', 'C:\mongodb\bin;' + $env:PATH, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Nov 2016 23:13:42 GMT
ENV MONGO_VERSION=3.4.0-rc2
# Tue, 01 Nov 2016 23:13:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc2-signed.msi
# Tue, 01 Nov 2016 23:13:49 GMT
ENV MONGO_DOWNLOAD_SHA256=f378e3f3e31ebf6529f18a0cf22e33d61bf9ed7d73abf5e54e35d23d7a30c46a
# Tue, 01 Nov 2016 23:16:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 01 Nov 2016 23:16:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 01 Nov 2016 23:16:52 GMT
EXPOSE 27017/tcp
# Tue, 01 Nov 2016 23:16:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:9c7f9c7d9bc2915388ecc5d08e89a7583658285469d7325281f95d8ee279cc60`  
		Size: 3.7 GB (3737824348 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:de5064718b3f2749727c8b5ffddf2da7698189277afe0df6fc0a57ad573bca0f`  
		Size: 613.1 MB (613059969 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce8c033b9d9ab0f42b7bc1457fc9094bbf37079117ad712092b3e48f11a6e218`  
		Last Modified: Wed, 12 Oct 2016 19:49:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0574e57a032f6716dc9a5ead72d392e1b5d8ab6f46171ef8e3ad5f0e6eb2c270`  
		Last Modified: Wed, 12 Oct 2016 19:49:29 GMT  
		Size: 4.5 MB (4523412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50677b6c0c707da22092ea97b2cef8db5848dfb4d8315f3500501665e3ba25a0`  
		Last Modified: Tue, 01 Nov 2016 23:18:20 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced9b0abc601380c9d88b5a7e180c459159444e1f973d20f45d7646a5218bbb1`  
		Last Modified: Tue, 01 Nov 2016 23:18:19 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9eaa03b3c6c9e253d8ff751232c3871fbf4de2a93d8b3b19cdc6a4639b2e0`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45a3f74ef7acc9c6392f83c63ba4afaebc13b8926f12793076505062234fc2d`  
		Last Modified: Tue, 01 Nov 2016 23:18:50 GMT  
		Size: 312.0 MB (312030352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623a05fa19025e2d571bdecfbce1d5d3bb4ac7e74af7a5d68389f2c3518654a5`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e51dcc0883477d0f5e00226df2c98c02e0a601730c47eda0c2e54ba7cbf83fb`  
		Last Modified: Tue, 01 Nov 2016 23:18:12 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b278f69de75c7b06ab75446afc949495b3ca9bf81b9d89bf6920c0da9f5a9ca`  
		Last Modified: Tue, 01 Nov 2016 23:18:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
