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
-	[`mongo:3.4.0-rc3`](#mongo340-rc3)
-	[`mongo:3.4.0`](#mongo340)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4-rc`](#mongo34-rc)
-	[`mongo:rc`](#mongorc)
-	[`mongo:3.4.0-rc3-windowsservercore`](#mongo340-rc3-windowsservercore)
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
$ docker pull mongo@sha256:bba3a6fb78d4d654b78c61e2e4aca1911537d8abcbae22f078d651c63e573588
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4402074745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0808b496a7c246b764aadd887af37cc7f08a7a025d3eb33fc2ca6aa3fff4d348`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 22:54:34 GMT
ENV MONGO_VERSION=3.0.14
# Mon, 14 Nov 2016 22:54:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Mon, 14 Nov 2016 22:54:49 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Mon, 14 Nov 2016 22:58:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 22:59:07 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 22:59:13 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 22:59:22 GMT
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
	-	`sha256:109c461ed64710a9cdf6a7e644b8df3da736bc4fc4f357a77dcc4b1080c1df18`  
		Last Modified: Mon, 14 Nov 2016 23:12:53 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5c9509da8645d25bb5a9b70e986d61c7fa757c9e5cf0ac934049ebf8fcf4c`  
		Last Modified: Mon, 14 Nov 2016 23:12:53 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454db9540c006b30a611181634b095c3ef73dfce41e20fb2dec11c67249a93fe`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cca09b7c1bf96cd3d82cf5170863e3d7ab46e96f216ef62d0f9d61b28037f8e`  
		Last Modified: Mon, 14 Nov 2016 23:13:28 GMT  
		Size: 51.2 MB (51181927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8002a184d00e4e578fc78056fd6ba4feba843a8a4b2452b899975af10aa8403e`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e241b78343e3c54ea32629542b2036817a0878e5384272fd731f55582f19e5`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a04e9c40fc576c8bbae85dfe6f34160958e8cd38b1827c6d4f5b3b8a946f2a`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:bba3a6fb78d4d654b78c61e2e4aca1911537d8abcbae22f078d651c63e573588
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4402074745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0808b496a7c246b764aadd887af37cc7f08a7a025d3eb33fc2ca6aa3fff4d348`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 22:54:34 GMT
ENV MONGO_VERSION=3.0.14
# Mon, 14 Nov 2016 22:54:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Mon, 14 Nov 2016 22:54:49 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Mon, 14 Nov 2016 22:58:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 22:59:07 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 22:59:13 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 22:59:22 GMT
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
	-	`sha256:109c461ed64710a9cdf6a7e644b8df3da736bc4fc4f357a77dcc4b1080c1df18`  
		Last Modified: Mon, 14 Nov 2016 23:12:53 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5c9509da8645d25bb5a9b70e986d61c7fa757c9e5cf0ac934049ebf8fcf4c`  
		Last Modified: Mon, 14 Nov 2016 23:12:53 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454db9540c006b30a611181634b095c3ef73dfce41e20fb2dec11c67249a93fe`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cca09b7c1bf96cd3d82cf5170863e3d7ab46e96f216ef62d0f9d61b28037f8e`  
		Last Modified: Mon, 14 Nov 2016 23:13:28 GMT  
		Size: 51.2 MB (51181927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8002a184d00e4e578fc78056fd6ba4feba843a8a4b2452b899975af10aa8403e`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e241b78343e3c54ea32629542b2036817a0878e5384272fd731f55582f19e5`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a04e9c40fc576c8bbae85dfe6f34160958e8cd38b1827c6d4f5b3b8a946f2a`  
		Last Modified: Mon, 14 Nov 2016 23:12:50 GMT  
		Size: 1.2 KB (1217 bytes)  
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

## `mongo:3.2.10-windowsservercore`

```console
$ docker pull mongo@sha256:e2cd81522c55779793a5dead062dc995f09048f543422a4d113dc68745dd8ca3
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.10-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4407805914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430a0e96a397b22f1ad3240f0e50686b576f26c65e7fa31a561523f30fbae382`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 22:59:50 GMT
ENV MONGO_VERSION=3.2.10
# Mon, 14 Nov 2016 23:00:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Mon, 14 Nov 2016 23:00:19 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Mon, 14 Nov 2016 23:05:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:05:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:05:54 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:06:04 GMT
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
	-	`sha256:4e07448b457a16dd8d6c8d0ce521913d3535216c5842d9f96564bf23b44cc7af`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5bb689a8a366c38603033a466d43ffaecda5ae36f2ca3c105f0ea5f6d09f71`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c63d2e0d38b5569d0612b0c7a71d0dc77c8ae422bf6b66c76d629c1c8c1fd4a`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cd2afb5998f25139f231c845174e8cde688351a8a98be888a56fc4da921157`  
		Last Modified: Mon, 14 Nov 2016 23:14:19 GMT  
		Size: 56.9 MB (56913028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4906974f4e06b4306c22c86fa389994da513ce3c47c26f216ca34823a3dd016c`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df1421f57b8e3b1c78bf3dfc40e2f8f4a2e8194c2254dd8dc6d2e16632cbc4b`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad638867f481a621a2c0bd25fc1c6abb717e19922d922da852f7eafda4e3ad8`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:e2cd81522c55779793a5dead062dc995f09048f543422a4d113dc68745dd8ca3
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4407805914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430a0e96a397b22f1ad3240f0e50686b576f26c65e7fa31a561523f30fbae382`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 22:59:50 GMT
ENV MONGO_VERSION=3.2.10
# Mon, 14 Nov 2016 23:00:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Mon, 14 Nov 2016 23:00:19 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Mon, 14 Nov 2016 23:05:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:05:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:05:54 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:06:04 GMT
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
	-	`sha256:4e07448b457a16dd8d6c8d0ce521913d3535216c5842d9f96564bf23b44cc7af`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5bb689a8a366c38603033a466d43ffaecda5ae36f2ca3c105f0ea5f6d09f71`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c63d2e0d38b5569d0612b0c7a71d0dc77c8ae422bf6b66c76d629c1c8c1fd4a`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cd2afb5998f25139f231c845174e8cde688351a8a98be888a56fc4da921157`  
		Last Modified: Mon, 14 Nov 2016 23:14:19 GMT  
		Size: 56.9 MB (56913028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4906974f4e06b4306c22c86fa389994da513ce3c47c26f216ca34823a3dd016c`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df1421f57b8e3b1c78bf3dfc40e2f8f4a2e8194c2254dd8dc6d2e16632cbc4b`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad638867f481a621a2c0bd25fc1c6abb717e19922d922da852f7eafda4e3ad8`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:e2cd81522c55779793a5dead062dc995f09048f543422a4d113dc68745dd8ca3
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4407805914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430a0e96a397b22f1ad3240f0e50686b576f26c65e7fa31a561523f30fbae382`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 22:59:50 GMT
ENV MONGO_VERSION=3.2.10
# Mon, 14 Nov 2016 23:00:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Mon, 14 Nov 2016 23:00:19 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Mon, 14 Nov 2016 23:05:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:05:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:05:54 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:06:04 GMT
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
	-	`sha256:4e07448b457a16dd8d6c8d0ce521913d3535216c5842d9f96564bf23b44cc7af`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5bb689a8a366c38603033a466d43ffaecda5ae36f2ca3c105f0ea5f6d09f71`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c63d2e0d38b5569d0612b0c7a71d0dc77c8ae422bf6b66c76d629c1c8c1fd4a`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cd2afb5998f25139f231c845174e8cde688351a8a98be888a56fc4da921157`  
		Last Modified: Mon, 14 Nov 2016 23:14:19 GMT  
		Size: 56.9 MB (56913028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4906974f4e06b4306c22c86fa389994da513ce3c47c26f216ca34823a3dd016c`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df1421f57b8e3b1c78bf3dfc40e2f8f4a2e8194c2254dd8dc6d2e16632cbc4b`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad638867f481a621a2c0bd25fc1c6abb717e19922d922da852f7eafda4e3ad8`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:e2cd81522c55779793a5dead062dc995f09048f543422a4d113dc68745dd8ca3
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4407805914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430a0e96a397b22f1ad3240f0e50686b576f26c65e7fa31a561523f30fbae382`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 22:59:50 GMT
ENV MONGO_VERSION=3.2.10
# Mon, 14 Nov 2016 23:00:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi
# Mon, 14 Nov 2016 23:00:19 GMT
ENV MONGO_DOWNLOAD_SHA256=630b614df367d8ca98f7d57e3937cae7c3915e1fb8da100f316c680da8d7f4ef
# Mon, 14 Nov 2016 23:05:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:05:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:05:54 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:06:04 GMT
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
	-	`sha256:4e07448b457a16dd8d6c8d0ce521913d3535216c5842d9f96564bf23b44cc7af`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5bb689a8a366c38603033a466d43ffaecda5ae36f2ca3c105f0ea5f6d09f71`  
		Last Modified: Mon, 14 Nov 2016 23:13:46 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c63d2e0d38b5569d0612b0c7a71d0dc77c8ae422bf6b66c76d629c1c8c1fd4a`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2cd2afb5998f25139f231c845174e8cde688351a8a98be888a56fc4da921157`  
		Last Modified: Mon, 14 Nov 2016 23:14:19 GMT  
		Size: 56.9 MB (56913028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4906974f4e06b4306c22c86fa389994da513ce3c47c26f216ca34823a3dd016c`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df1421f57b8e3b1c78bf3dfc40e2f8f4a2e8194c2254dd8dc6d2e16632cbc4b`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad638867f481a621a2c0bd25fc1c6abb717e19922d922da852f7eafda4e3ad8`  
		Last Modified: Mon, 14 Nov 2016 23:13:40 GMT  
		Size: 1.2 KB (1221 bytes)  
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
$ docker pull mongo@sha256:fb355837ea53729de6406b5f18c243e71913b7d1b263631e75d2e9b909e4ec31
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4412948852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd43538ad0bee893a7b2fb3f06227754ee6fbfc7049a8df5e95b28bc9f34969d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:06:28 GMT
ENV MONGO_VERSION=3.3.15
# Mon, 14 Nov 2016 23:06:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Mon, 14 Nov 2016 23:06:48 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Mon, 14 Nov 2016 23:09:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:09:13 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:09:18 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:09:21 GMT
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
	-	`sha256:e5fed0c62c78903858730235e39e2d8666d4e1695447bf9708cb633d4992f01c`  
		Last Modified: Mon, 14 Nov 2016 23:14:41 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f344bb13e7588aca809d96a22289a5f9cfdd5178f44f303337bcc873a36fa82a`  
		Last Modified: Mon, 14 Nov 2016 23:14:41 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73897454ad2708f974f72e6ad2e204c32c447a6f4d6fba930739f242eeba9573`  
		Last Modified: Mon, 14 Nov 2016 23:14:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b78c11ea2a5ae3221fe77e755c53c0c1c3d99eadfef97ed3a47d2a63cc9282`  
		Last Modified: Mon, 14 Nov 2016 23:15:09 GMT  
		Size: 62.1 MB (62055999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34734eb8f47963c084eb3690126e0714b70ff4a7954451f21eb014024d1e6233`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc1b382b0d9233674f41bd1881f615198a52f2eb7d1f716d2f400017a39704d`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543f391a594d64c8d899e82c37876adcb2c54d72275e7a7cb0df625bbd4603f6`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.3-windowsservercore`

```console
$ docker pull mongo@sha256:fb355837ea53729de6406b5f18c243e71913b7d1b263631e75d2e9b909e4ec31
```

-	Platforms:
	-	windows; amd64

### `mongo:3.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4412948852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd43538ad0bee893a7b2fb3f06227754ee6fbfc7049a8df5e95b28bc9f34969d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:06:28 GMT
ENV MONGO_VERSION=3.3.15
# Mon, 14 Nov 2016 23:06:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Mon, 14 Nov 2016 23:06:48 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Mon, 14 Nov 2016 23:09:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:09:13 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:09:18 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:09:21 GMT
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
	-	`sha256:e5fed0c62c78903858730235e39e2d8666d4e1695447bf9708cb633d4992f01c`  
		Last Modified: Mon, 14 Nov 2016 23:14:41 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f344bb13e7588aca809d96a22289a5f9cfdd5178f44f303337bcc873a36fa82a`  
		Last Modified: Mon, 14 Nov 2016 23:14:41 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73897454ad2708f974f72e6ad2e204c32c447a6f4d6fba930739f242eeba9573`  
		Last Modified: Mon, 14 Nov 2016 23:14:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b78c11ea2a5ae3221fe77e755c53c0c1c3d99eadfef97ed3a47d2a63cc9282`  
		Last Modified: Mon, 14 Nov 2016 23:15:09 GMT  
		Size: 62.1 MB (62055999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34734eb8f47963c084eb3690126e0714b70ff4a7954451f21eb014024d1e6233`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc1b382b0d9233674f41bd1881f615198a52f2eb7d1f716d2f400017a39704d`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543f391a594d64c8d899e82c37876adcb2c54d72275e7a7cb0df625bbd4603f6`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:fb355837ea53729de6406b5f18c243e71913b7d1b263631e75d2e9b909e4ec31
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4412948852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd43538ad0bee893a7b2fb3f06227754ee6fbfc7049a8df5e95b28bc9f34969d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:06:28 GMT
ENV MONGO_VERSION=3.3.15
# Mon, 14 Nov 2016 23:06:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.3.15-signed.msi
# Mon, 14 Nov 2016 23:06:48 GMT
ENV MONGO_DOWNLOAD_SHA256=2b816461c55d8e45e159be1343f603a551ca1b0c468f30028c6fa25d2308e5eb
# Mon, 14 Nov 2016 23:09:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:09:13 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:09:18 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:09:21 GMT
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
	-	`sha256:e5fed0c62c78903858730235e39e2d8666d4e1695447bf9708cb633d4992f01c`  
		Last Modified: Mon, 14 Nov 2016 23:14:41 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f344bb13e7588aca809d96a22289a5f9cfdd5178f44f303337bcc873a36fa82a`  
		Last Modified: Mon, 14 Nov 2016 23:14:41 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73897454ad2708f974f72e6ad2e204c32c447a6f4d6fba930739f242eeba9573`  
		Last Modified: Mon, 14 Nov 2016 23:14:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b78c11ea2a5ae3221fe77e755c53c0c1c3d99eadfef97ed3a47d2a63cc9282`  
		Last Modified: Mon, 14 Nov 2016 23:15:09 GMT  
		Size: 62.1 MB (62055999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34734eb8f47963c084eb3690126e0714b70ff4a7954451f21eb014024d1e6233`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc1b382b0d9233674f41bd1881f615198a52f2eb7d1f716d2f400017a39704d`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543f391a594d64c8d899e82c37876adcb2c54d72275e7a7cb0df625bbd4603f6`  
		Last Modified: Mon, 14 Nov 2016 23:14:38 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-rc3`

```console
$ docker pull mongo@sha256:9b7a9af5a22bd3132987e14c7992de72b79ca3aac2606d1d1d6d3c02758bc7cb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0-rc3` - linux; amd64

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

## `mongo:3.4.0-rc3-windowsservercore`

```console
$ docker pull mongo@sha256:f042803949bd606e20d5119826491259aeadc2715473085932982b31719582cd
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-rc3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4413161364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ceacacc5df4ad8902ef6a058f53773b15800d5b694d2d98c0f8f2bd42a129`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:09:29 GMT
ENV MONGO_VERSION=3.4.0-rc3
# Mon, 14 Nov 2016 23:09:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc3-signed.msi
# Mon, 14 Nov 2016 23:09:40 GMT
ENV MONGO_DOWNLOAD_SHA256=25811f525841ae6a8ecb3615c7d93068b0a5f4d028d1488918d26a04f513b4dd
# Mon, 14 Nov 2016 23:11:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:12:08 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:12:22 GMT
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
	-	`sha256:798941ce4a107f59750fcaadfff90616f99c7adf8a5675c148e22a28d507a15c`  
		Last Modified: Mon, 14 Nov 2016 23:15:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4864a62f6d9c70df838247fae5864e2f92beae6136253bdc4729b277404a2d`  
		Last Modified: Mon, 14 Nov 2016 23:15:38 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e756abd544b58565d914d951d340fca255b70254c1577c136265b79845143ba0`  
		Last Modified: Mon, 14 Nov 2016 23:15:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eeff9c9c2ce19193e98432af113dc1cb0cacf90978c4ab4fbeecb082807883`  
		Last Modified: Mon, 14 Nov 2016 23:15:46 GMT  
		Size: 62.3 MB (62268530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870556afd97a970a310626fa6dc2cfd86db810c5292c5c2b29ec078b7fb6a658`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c3452b8b5dace48b9589f2bcf9fb2b0a959ef649ce82aee881b9260c302e16`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb025b5108cbef14cc115c50897431d3e576a9bb2b5422f78468f0422e9d67`  
		Last Modified: Mon, 14 Nov 2016 23:15:28 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-windowsservercore`

```console
$ docker pull mongo@sha256:f042803949bd606e20d5119826491259aeadc2715473085932982b31719582cd
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4413161364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ceacacc5df4ad8902ef6a058f53773b15800d5b694d2d98c0f8f2bd42a129`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:09:29 GMT
ENV MONGO_VERSION=3.4.0-rc3
# Mon, 14 Nov 2016 23:09:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc3-signed.msi
# Mon, 14 Nov 2016 23:09:40 GMT
ENV MONGO_DOWNLOAD_SHA256=25811f525841ae6a8ecb3615c7d93068b0a5f4d028d1488918d26a04f513b4dd
# Mon, 14 Nov 2016 23:11:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:12:08 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:12:22 GMT
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
	-	`sha256:798941ce4a107f59750fcaadfff90616f99c7adf8a5675c148e22a28d507a15c`  
		Last Modified: Mon, 14 Nov 2016 23:15:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4864a62f6d9c70df838247fae5864e2f92beae6136253bdc4729b277404a2d`  
		Last Modified: Mon, 14 Nov 2016 23:15:38 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e756abd544b58565d914d951d340fca255b70254c1577c136265b79845143ba0`  
		Last Modified: Mon, 14 Nov 2016 23:15:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eeff9c9c2ce19193e98432af113dc1cb0cacf90978c4ab4fbeecb082807883`  
		Last Modified: Mon, 14 Nov 2016 23:15:46 GMT  
		Size: 62.3 MB (62268530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870556afd97a970a310626fa6dc2cfd86db810c5292c5c2b29ec078b7fb6a658`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c3452b8b5dace48b9589f2bcf9fb2b0a959ef649ce82aee881b9260c302e16`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb025b5108cbef14cc115c50897431d3e576a9bb2b5422f78468f0422e9d67`  
		Last Modified: Mon, 14 Nov 2016 23:15:28 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:f042803949bd606e20d5119826491259aeadc2715473085932982b31719582cd
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4413161364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ceacacc5df4ad8902ef6a058f53773b15800d5b694d2d98c0f8f2bd42a129`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:09:29 GMT
ENV MONGO_VERSION=3.4.0-rc3
# Mon, 14 Nov 2016 23:09:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc3-signed.msi
# Mon, 14 Nov 2016 23:09:40 GMT
ENV MONGO_DOWNLOAD_SHA256=25811f525841ae6a8ecb3615c7d93068b0a5f4d028d1488918d26a04f513b4dd
# Mon, 14 Nov 2016 23:11:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:12:08 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:12:22 GMT
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
	-	`sha256:798941ce4a107f59750fcaadfff90616f99c7adf8a5675c148e22a28d507a15c`  
		Last Modified: Mon, 14 Nov 2016 23:15:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4864a62f6d9c70df838247fae5864e2f92beae6136253bdc4729b277404a2d`  
		Last Modified: Mon, 14 Nov 2016 23:15:38 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e756abd544b58565d914d951d340fca255b70254c1577c136265b79845143ba0`  
		Last Modified: Mon, 14 Nov 2016 23:15:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eeff9c9c2ce19193e98432af113dc1cb0cacf90978c4ab4fbeecb082807883`  
		Last Modified: Mon, 14 Nov 2016 23:15:46 GMT  
		Size: 62.3 MB (62268530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870556afd97a970a310626fa6dc2cfd86db810c5292c5c2b29ec078b7fb6a658`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c3452b8b5dace48b9589f2bcf9fb2b0a959ef649ce82aee881b9260c302e16`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb025b5108cbef14cc115c50897431d3e576a9bb2b5422f78468f0422e9d67`  
		Last Modified: Mon, 14 Nov 2016 23:15:28 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-rc-windowsservercore`

```console
$ docker pull mongo@sha256:f042803949bd606e20d5119826491259aeadc2715473085932982b31719582cd
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4413161364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ceacacc5df4ad8902ef6a058f53773b15800d5b694d2d98c0f8f2bd42a129`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:09:29 GMT
ENV MONGO_VERSION=3.4.0-rc3
# Mon, 14 Nov 2016 23:09:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc3-signed.msi
# Mon, 14 Nov 2016 23:09:40 GMT
ENV MONGO_DOWNLOAD_SHA256=25811f525841ae6a8ecb3615c7d93068b0a5f4d028d1488918d26a04f513b4dd
# Mon, 14 Nov 2016 23:11:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:12:08 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:12:22 GMT
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
	-	`sha256:798941ce4a107f59750fcaadfff90616f99c7adf8a5675c148e22a28d507a15c`  
		Last Modified: Mon, 14 Nov 2016 23:15:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4864a62f6d9c70df838247fae5864e2f92beae6136253bdc4729b277404a2d`  
		Last Modified: Mon, 14 Nov 2016 23:15:38 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e756abd544b58565d914d951d340fca255b70254c1577c136265b79845143ba0`  
		Last Modified: Mon, 14 Nov 2016 23:15:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eeff9c9c2ce19193e98432af113dc1cb0cacf90978c4ab4fbeecb082807883`  
		Last Modified: Mon, 14 Nov 2016 23:15:46 GMT  
		Size: 62.3 MB (62268530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870556afd97a970a310626fa6dc2cfd86db810c5292c5c2b29ec078b7fb6a658`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c3452b8b5dace48b9589f2bcf9fb2b0a959ef649ce82aee881b9260c302e16`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb025b5108cbef14cc115c50897431d3e576a9bb2b5422f78468f0422e9d67`  
		Last Modified: Mon, 14 Nov 2016 23:15:28 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc-windowsservercore`

```console
$ docker pull mongo@sha256:f042803949bd606e20d5119826491259aeadc2715473085932982b31719582cd
```

-	Platforms:
	-	windows; amd64

### `mongo:rc-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 GB (4413161364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90ceacacc5df4ad8902ef6a058f53773b15800d5b694d2d98c0f8f2bd42a129`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 12 Oct 2016 19:25:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 14 Nov 2016 23:09:29 GMT
ENV MONGO_VERSION=3.4.0-rc3
# Mon, 14 Nov 2016 23:09:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-rc3-signed.msi
# Mon, 14 Nov 2016 23:09:40 GMT
ENV MONGO_DOWNLOAD_SHA256=25811f525841ae6a8ecb3615c7d93068b0a5f4d028d1488918d26a04f513b4dd
# Mon, 14 Nov 2016 23:11:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 14 Nov 2016 23:11:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 14 Nov 2016 23:12:08 GMT
EXPOSE 27017/tcp
# Mon, 14 Nov 2016 23:12:22 GMT
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
	-	`sha256:798941ce4a107f59750fcaadfff90616f99c7adf8a5675c148e22a28d507a15c`  
		Last Modified: Mon, 14 Nov 2016 23:15:40 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4864a62f6d9c70df838247fae5864e2f92beae6136253bdc4729b277404a2d`  
		Last Modified: Mon, 14 Nov 2016 23:15:38 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e756abd544b58565d914d951d340fca255b70254c1577c136265b79845143ba0`  
		Last Modified: Mon, 14 Nov 2016 23:15:26 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eeff9c9c2ce19193e98432af113dc1cb0cacf90978c4ab4fbeecb082807883`  
		Last Modified: Mon, 14 Nov 2016 23:15:46 GMT  
		Size: 62.3 MB (62268530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870556afd97a970a310626fa6dc2cfd86db810c5292c5c2b29ec078b7fb6a658`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c3452b8b5dace48b9589f2bcf9fb2b0a959ef649ce82aee881b9260c302e16`  
		Last Modified: Mon, 14 Nov 2016 23:15:27 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb025b5108cbef14cc115c50897431d3e576a9bb2b5422f78468f0422e9d67`  
		Last Modified: Mon, 14 Nov 2016 23:15:28 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
