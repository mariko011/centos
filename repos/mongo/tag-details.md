<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.11`](#mongo3211)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.11-windowsservercore`](#mongo3211-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.1`](#mongo341)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.1-windowsservercore`](#mongo341-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:d648181631583e05e60c7533079f022138446ef1660393370a9456b360ce4aff
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101067905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f539071e68377efb4f73c92e38f21d05b5defed989d1b2b37abf2ccfcdb9f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:04:29 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:04:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:04:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:04:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 14 Dec 2016 01:04:51 GMT
ENV MONGO_MAJOR=3.0
# Wed, 14 Dec 2016 01:04:52 GMT
ENV MONGO_VERSION=3.0.14
# Wed, 14 Dec 2016 01:04:52 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:04:53 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:05:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:05:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:05:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:05:05 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:05:05 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:05:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaceb182e9f02c2e52304afa6b6198e2e12dc1bd92e4329bd5d794ef017411e3`  
		Last Modified: Mon, 19 Dec 2016 23:58:09 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27822a2af4e7830dd84fe3b657e70b67330281a2bafb3cf0dba5d347c4aa1e24`  
		Last Modified: Mon, 19 Dec 2016 23:58:08 GMT  
		Size: 146.3 KB (146280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6b5ca2cd4c51b31271c1506db8c46f3125028edae862ac399b7c534f2f9a3b`  
		Last Modified: Mon, 19 Dec 2016 23:58:08 GMT  
		Size: 1.2 MB (1245616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3b7cbc3a49abc0c8b2ebfa2f4e28a59660ea4fb9347546e80bf5a3ec860919`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 29.8 KB (29831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448179883afad006d12b8ada705a9cdc57edc171671373fe25c5451dd97a2fd9`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3df984881d60e3c209e3495eed832cdf5228240c7fdb06be408eccab4c5cbf3`  
		Last Modified: Mon, 19 Dec 2016 23:58:29 GMT  
		Size: 62.4 MB (62359617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cea36764b71c77a4674ae560c9123d58e48dca34cf645b5b265fba9aa3758a9`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fb337c9326b5a5e59117aad3d13f3ec027c49c3586a277b8c0f5a23db5ea5f`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:d648181631583e05e60c7533079f022138446ef1660393370a9456b360ce4aff
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101067905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f539071e68377efb4f73c92e38f21d05b5defed989d1b2b37abf2ccfcdb9f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:04:29 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:04:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:04:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:04:51 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 14 Dec 2016 01:04:51 GMT
ENV MONGO_MAJOR=3.0
# Wed, 14 Dec 2016 01:04:52 GMT
ENV MONGO_VERSION=3.0.14
# Wed, 14 Dec 2016 01:04:52 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:04:53 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:05:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:05:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:05:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:05:05 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:05:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:05:05 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:05:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaceb182e9f02c2e52304afa6b6198e2e12dc1bd92e4329bd5d794ef017411e3`  
		Last Modified: Mon, 19 Dec 2016 23:58:09 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27822a2af4e7830dd84fe3b657e70b67330281a2bafb3cf0dba5d347c4aa1e24`  
		Last Modified: Mon, 19 Dec 2016 23:58:08 GMT  
		Size: 146.3 KB (146280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6b5ca2cd4c51b31271c1506db8c46f3125028edae862ac399b7c534f2f9a3b`  
		Last Modified: Mon, 19 Dec 2016 23:58:08 GMT  
		Size: 1.2 MB (1245616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3b7cbc3a49abc0c8b2ebfa2f4e28a59660ea4fb9347546e80bf5a3ec860919`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 29.8 KB (29831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448179883afad006d12b8ada705a9cdc57edc171671373fe25c5451dd97a2fd9`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3df984881d60e3c209e3495eed832cdf5228240c7fdb06be408eccab4c5cbf3`  
		Last Modified: Mon, 19 Dec 2016 23:58:29 GMT  
		Size: 62.4 MB (62359617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cea36764b71c77a4674ae560c9123d58e48dca34cf645b5b265fba9aa3758a9`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fb337c9326b5a5e59117aad3d13f3ec027c49c3586a277b8c0f5a23db5ea5f`  
		Last Modified: Mon, 19 Dec 2016 23:58:05 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.14-windowsservercore`

```console
$ docker pull mongo@sha256:8b44407ef8a7a61aa617efbe66de87841af533cfb526526c2f9057058979e529
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4975689454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3192ee189276a48a3538538e233f8921146f5c0ba5b9dbadfd66d1bf36319416`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:27:37 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 06 Jan 2017 23:27:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Fri, 06 Jan 2017 23:27:44 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Fri, 06 Jan 2017 23:28:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:28:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:28:49 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:28:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e057a4dc6fa94a442dd59ed686abaff451a9d98e91052f9ce05a2cc2629792ef`  
		Last Modified: Fri, 06 Jan 2017 23:32:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8410665e5e84e769e210ca8d9bc5a0ca074e6224bb53864d302cad78bfa8df`  
		Last Modified: Fri, 06 Jan 2017 23:32:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5a017152aaec3fec15570a894736caeac063d121dd8a539437843bfaf0a997`  
		Last Modified: Fri, 06 Jan 2017 23:31:50 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad3f4ccb9e411ee9b47caea7e99bc1438365ccb31730652b9c075a09123f99`  
		Last Modified: Fri, 06 Jan 2017 23:32:04 GMT  
		Size: 51.3 MB (51275314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52f9dc4e0d1cc870ab45e8224dc86a9745592c96973c4522fdcda8535abbcf`  
		Last Modified: Fri, 06 Jan 2017 23:31:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c148a39223b02aaff565cbe4a09a8e6b1f1a7a91a473de85b6fb061bd4c5b7b`  
		Last Modified: Fri, 06 Jan 2017 23:31:51 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc5af74139ac6846fddffc1504d2525cb92997c2e3c6c591a8f153fda1acded`  
		Last Modified: Fri, 06 Jan 2017 23:31:50 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:8b44407ef8a7a61aa617efbe66de87841af533cfb526526c2f9057058979e529
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4975689454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3192ee189276a48a3538538e233f8921146f5c0ba5b9dbadfd66d1bf36319416`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:27:37 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 06 Jan 2017 23:27:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Fri, 06 Jan 2017 23:27:44 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Fri, 06 Jan 2017 23:28:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:28:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:28:49 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:28:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e057a4dc6fa94a442dd59ed686abaff451a9d98e91052f9ce05a2cc2629792ef`  
		Last Modified: Fri, 06 Jan 2017 23:32:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8410665e5e84e769e210ca8d9bc5a0ca074e6224bb53864d302cad78bfa8df`  
		Last Modified: Fri, 06 Jan 2017 23:32:00 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5a017152aaec3fec15570a894736caeac063d121dd8a539437843bfaf0a997`  
		Last Modified: Fri, 06 Jan 2017 23:31:50 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad3f4ccb9e411ee9b47caea7e99bc1438365ccb31730652b9c075a09123f99`  
		Last Modified: Fri, 06 Jan 2017 23:32:04 GMT  
		Size: 51.3 MB (51275314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e52f9dc4e0d1cc870ab45e8224dc86a9745592c96973c4522fdcda8535abbcf`  
		Last Modified: Fri, 06 Jan 2017 23:31:50 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c148a39223b02aaff565cbe4a09a8e6b1f1a7a91a473de85b6fb061bd4c5b7b`  
		Last Modified: Fri, 06 Jan 2017 23:31:51 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc5af74139ac6846fddffc1504d2525cb92997c2e3c6c591a8f153fda1acded`  
		Last Modified: Fri, 06 Jan 2017 23:31:50 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.11`

```console
$ docker pull mongo@sha256:a94df1666064f88f90f45513385488b77056efdf6a0c4b017bdc635d9a88ab19
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123545735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042382c3ac1d7643e50c1ed5ecf98a00c7c92b8552bcfa82c65a25c88b495e7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:46 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:05:06 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 14 Dec 2016 01:05:10 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 14 Dec 2016 01:05:10 GMT
ENV MONGO_MAJOR=3.2
# Wed, 14 Dec 2016 01:05:10 GMT
ENV MONGO_VERSION=3.2.11
# Wed, 14 Dec 2016 01:05:11 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:05:12 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:05:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:05:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:05:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:05:28 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:05:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:05:28 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:05:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf369f658b6e4148ed366e1b3433ffd3d2187c54398a73773fca1063d126ebc`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb343d20eb7857450e9941bfe56fa088af8ee5d72e7749c1d0e786d45887e`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 134.6 KB (134593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a933a908f75926d8bfb0dc65d604d53d2b4b128ecacb9bed02f5c155ddffbd`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 1.2 MB (1217869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f21a3db4c9518881710b206e05177f64055f802f76e69bc127cb238190cdc9`  
		Last Modified: Mon, 19 Dec 2016 23:59:13 GMT  
		Size: 3.1 KB (3117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ede79ebfd30d8428b1f2451d7f186f73bea3dc119807fb08dc14759a842abe`  
		Last Modified: Mon, 19 Dec 2016 23:59:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1c6b61a778aa3b7e8080aa6aa5dd6db721eec00dfd488627354eab24869e8c`  
		Last Modified: Mon, 19 Dec 2016 23:59:43 GMT  
		Size: 70.8 MB (70824277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e5c15aec566fa01a70d1597c92b1e041ad5705c33da1f755e42a172d678e7b`  
		Last Modified: Mon, 19 Dec 2016 23:59:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96afe51470afdd968772e26b2269107c03563597fee8af03830c88c109a94b19`  
		Last Modified: Mon, 19 Dec 2016 23:59:12 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:a94df1666064f88f90f45513385488b77056efdf6a0c4b017bdc635d9a88ab19
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123545735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042382c3ac1d7643e50c1ed5ecf98a00c7c92b8552bcfa82c65a25c88b495e7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:46 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:05:06 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 14 Dec 2016 01:05:10 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 14 Dec 2016 01:05:10 GMT
ENV MONGO_MAJOR=3.2
# Wed, 14 Dec 2016 01:05:10 GMT
ENV MONGO_VERSION=3.2.11
# Wed, 14 Dec 2016 01:05:11 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:05:12 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:05:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:05:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:05:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:05:28 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:05:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:05:28 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:05:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf369f658b6e4148ed366e1b3433ffd3d2187c54398a73773fca1063d126ebc`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb343d20eb7857450e9941bfe56fa088af8ee5d72e7749c1d0e786d45887e`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 134.6 KB (134593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a933a908f75926d8bfb0dc65d604d53d2b4b128ecacb9bed02f5c155ddffbd`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 1.2 MB (1217869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f21a3db4c9518881710b206e05177f64055f802f76e69bc127cb238190cdc9`  
		Last Modified: Mon, 19 Dec 2016 23:59:13 GMT  
		Size: 3.1 KB (3117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ede79ebfd30d8428b1f2451d7f186f73bea3dc119807fb08dc14759a842abe`  
		Last Modified: Mon, 19 Dec 2016 23:59:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1c6b61a778aa3b7e8080aa6aa5dd6db721eec00dfd488627354eab24869e8c`  
		Last Modified: Mon, 19 Dec 2016 23:59:43 GMT  
		Size: 70.8 MB (70824277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e5c15aec566fa01a70d1597c92b1e041ad5705c33da1f755e42a172d678e7b`  
		Last Modified: Mon, 19 Dec 2016 23:59:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96afe51470afdd968772e26b2269107c03563597fee8af03830c88c109a94b19`  
		Last Modified: Mon, 19 Dec 2016 23:59:12 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.11-windowsservercore`

```console
$ docker pull mongo@sha256:92c2cac9c864f278cb9615f3317b570033fe40e735305de70ae24e5e2483993e
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.11-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4981515318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b283ef62cd49c2a8d6ad28e58b83d0dcb78da17757e0abc005c78bcdf289da4d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:28:56 GMT
ENV MONGO_VERSION=3.2.11
# Fri, 06 Jan 2017 23:29:00 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Fri, 06 Jan 2017 23:29:03 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Fri, 06 Jan 2017 23:30:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:30:11 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:30:14 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:30:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce316b7e67f51b4adbcedfc3f5dbf57ee12375d2f8777babb985cf476b393865`  
		Last Modified: Fri, 06 Jan 2017 23:32:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacafce094ef0d4f059600a2da9153068035c624efbdd6fd327060a3868bf853`  
		Last Modified: Fri, 06 Jan 2017 23:32:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce07257ad91b79cf5710c5408c18fdcda7980ee7da7b9607fae303d1a92b85c`  
		Last Modified: Fri, 06 Jan 2017 23:32:15 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd1a800959fa45c55fb3e48607aada12a4e5310afd9f6f42e7200796d3ddeaf`  
		Last Modified: Fri, 06 Jan 2017 23:32:29 GMT  
		Size: 57.1 MB (57101187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd6b741330eaeb0de18a2cd2a8438b32df3796f9ee6ed168cb18a567e2e64ae`  
		Last Modified: Fri, 06 Jan 2017 23:32:14 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3fef1bb8670eab0b06f67c704ef8bf09f39a2c7ed7beb9b48ec8d8f6eedb45`  
		Last Modified: Fri, 06 Jan 2017 23:32:14 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf879df33c744daf34f699a1800de0df4116efd0b28ed6e25255ffb2b3239f34`  
		Last Modified: Fri, 06 Jan 2017 23:32:14 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:92c2cac9c864f278cb9615f3317b570033fe40e735305de70ae24e5e2483993e
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4981515318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b283ef62cd49c2a8d6ad28e58b83d0dcb78da17757e0abc005c78bcdf289da4d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:28:56 GMT
ENV MONGO_VERSION=3.2.11
# Fri, 06 Jan 2017 23:29:00 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.11-signed.msi
# Fri, 06 Jan 2017 23:29:03 GMT
ENV MONGO_DOWNLOAD_SHA256=981059deb1a6a67f05857368b262061c41eb2495379847d50f73bc1c0e8c9059
# Fri, 06 Jan 2017 23:30:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:30:11 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:30:14 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:30:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce316b7e67f51b4adbcedfc3f5dbf57ee12375d2f8777babb985cf476b393865`  
		Last Modified: Fri, 06 Jan 2017 23:32:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacafce094ef0d4f059600a2da9153068035c624efbdd6fd327060a3868bf853`  
		Last Modified: Fri, 06 Jan 2017 23:32:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce07257ad91b79cf5710c5408c18fdcda7980ee7da7b9607fae303d1a92b85c`  
		Last Modified: Fri, 06 Jan 2017 23:32:15 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd1a800959fa45c55fb3e48607aada12a4e5310afd9f6f42e7200796d3ddeaf`  
		Last Modified: Fri, 06 Jan 2017 23:32:29 GMT  
		Size: 57.1 MB (57101187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd6b741330eaeb0de18a2cd2a8438b32df3796f9ee6ed168cb18a567e2e64ae`  
		Last Modified: Fri, 06 Jan 2017 23:32:14 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3fef1bb8670eab0b06f67c704ef8bf09f39a2c7ed7beb9b48ec8d8f6eedb45`  
		Last Modified: Fri, 06 Jan 2017 23:32:14 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf879df33c744daf34f699a1800de0df4116efd0b28ed6e25255ffb2b3239f34`  
		Last Modified: Fri, 06 Jan 2017 23:32:14 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.1`

```console
$ docker pull mongo@sha256:23e5cdbd9bc26a6d1ae4db8252a295d6bdba8332dec68483816d5b7bb2438d7d
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150408827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bfb96cf65e2423100802f30d1ba8289b8c3d8b6cf6e565726f824d80c2830c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:46 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:04:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_MAJOR=3.4
# Thu, 22 Dec 2016 20:34:23 GMT
ENV MONGO_VERSION=3.4.1
# Thu, 22 Dec 2016 20:34:24 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 22 Dec 2016 20:34:25 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 22 Dec 2016 20:34:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Dec 2016 20:34:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Dec 2016 20:34:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Dec 2016 20:34:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Thu, 22 Dec 2016 20:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2016 20:34:53 GMT
EXPOSE 27017/tcp
# Thu, 22 Dec 2016 20:34:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf369f658b6e4148ed366e1b3433ffd3d2187c54398a73773fca1063d126ebc`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb343d20eb7857450e9941bfe56fa088af8ee5d72e7749c1d0e786d45887e`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 134.6 KB (134593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a933a908f75926d8bfb0dc65d604d53d2b4b128ecacb9bed02f5c155ddffbd`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 1.2 MB (1217869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658569c28c5522b409962ecb26689acbbf4fa1dd914932979de5285bc058daaf`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124a8bf940da53f30dc0f2f9aa9a9572c6a23abf8aa5a9d6ce3947c5faa9f6b4`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c19551df503f72df45bf939ed23e020e489bf9bb58bd83cab53b2e374f72cc3`  
		Last Modified: Thu, 22 Dec 2016 20:37:06 GMT  
		Size: 97.7 MB (97689046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18347fe18d9cb817df0f847e0f00bea1f4e01633350ac722eea33c24576e34a`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e710c6ec29cb13053cadb2a7c1be96bb4b812f982813bb90d02bc0fe4794e0`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:23e5cdbd9bc26a6d1ae4db8252a295d6bdba8332dec68483816d5b7bb2438d7d
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150408827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bfb96cf65e2423100802f30d1ba8289b8c3d8b6cf6e565726f824d80c2830c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:46 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:04:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_MAJOR=3.4
# Thu, 22 Dec 2016 20:34:23 GMT
ENV MONGO_VERSION=3.4.1
# Thu, 22 Dec 2016 20:34:24 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 22 Dec 2016 20:34:25 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 22 Dec 2016 20:34:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Dec 2016 20:34:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Dec 2016 20:34:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Dec 2016 20:34:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Thu, 22 Dec 2016 20:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2016 20:34:53 GMT
EXPOSE 27017/tcp
# Thu, 22 Dec 2016 20:34:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf369f658b6e4148ed366e1b3433ffd3d2187c54398a73773fca1063d126ebc`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb343d20eb7857450e9941bfe56fa088af8ee5d72e7749c1d0e786d45887e`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 134.6 KB (134593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a933a908f75926d8bfb0dc65d604d53d2b4b128ecacb9bed02f5c155ddffbd`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 1.2 MB (1217869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658569c28c5522b409962ecb26689acbbf4fa1dd914932979de5285bc058daaf`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124a8bf940da53f30dc0f2f9aa9a9572c6a23abf8aa5a9d6ce3947c5faa9f6b4`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c19551df503f72df45bf939ed23e020e489bf9bb58bd83cab53b2e374f72cc3`  
		Last Modified: Thu, 22 Dec 2016 20:37:06 GMT  
		Size: 97.7 MB (97689046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18347fe18d9cb817df0f847e0f00bea1f4e01633350ac722eea33c24576e34a`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e710c6ec29cb13053cadb2a7c1be96bb4b812f982813bb90d02bc0fe4794e0`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:23e5cdbd9bc26a6d1ae4db8252a295d6bdba8332dec68483816d5b7bb2438d7d
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150408827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bfb96cf65e2423100802f30d1ba8289b8c3d8b6cf6e565726f824d80c2830c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:46 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:04:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_MAJOR=3.4
# Thu, 22 Dec 2016 20:34:23 GMT
ENV MONGO_VERSION=3.4.1
# Thu, 22 Dec 2016 20:34:24 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 22 Dec 2016 20:34:25 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 22 Dec 2016 20:34:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Dec 2016 20:34:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Dec 2016 20:34:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Dec 2016 20:34:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Thu, 22 Dec 2016 20:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2016 20:34:53 GMT
EXPOSE 27017/tcp
# Thu, 22 Dec 2016 20:34:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf369f658b6e4148ed366e1b3433ffd3d2187c54398a73773fca1063d126ebc`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb343d20eb7857450e9941bfe56fa088af8ee5d72e7749c1d0e786d45887e`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 134.6 KB (134593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a933a908f75926d8bfb0dc65d604d53d2b4b128ecacb9bed02f5c155ddffbd`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 1.2 MB (1217869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658569c28c5522b409962ecb26689acbbf4fa1dd914932979de5285bc058daaf`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124a8bf940da53f30dc0f2f9aa9a9572c6a23abf8aa5a9d6ce3947c5faa9f6b4`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c19551df503f72df45bf939ed23e020e489bf9bb58bd83cab53b2e374f72cc3`  
		Last Modified: Thu, 22 Dec 2016 20:37:06 GMT  
		Size: 97.7 MB (97689046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18347fe18d9cb817df0f847e0f00bea1f4e01633350ac722eea33c24576e34a`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e710c6ec29cb13053cadb2a7c1be96bb4b812f982813bb90d02bc0fe4794e0`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:23e5cdbd9bc26a6d1ae4db8252a295d6bdba8332dec68483816d5b7bb2438d7d
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150408827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bfb96cf65e2423100802f30d1ba8289b8c3d8b6cf6e565726f824d80c2830c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:03:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Dec 2016 01:03:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:03:46 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:04:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:04:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_MAJOR=3.4
# Thu, 22 Dec 2016 20:34:23 GMT
ENV MONGO_VERSION=3.4.1
# Thu, 22 Dec 2016 20:34:24 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 22 Dec 2016 20:34:25 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 22 Dec 2016 20:34:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 22 Dec 2016 20:34:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 22 Dec 2016 20:34:51 GMT
VOLUME [/data/db /data/configdb]
# Thu, 22 Dec 2016 20:34:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Thu, 22 Dec 2016 20:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Dec 2016 20:34:53 GMT
EXPOSE 27017/tcp
# Thu, 22 Dec 2016 20:34:54 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf369f658b6e4148ed366e1b3433ffd3d2187c54398a73773fca1063d126ebc`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7cb343d20eb7857450e9941bfe56fa088af8ee5d72e7749c1d0e786d45887e`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 134.6 KB (134593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a933a908f75926d8bfb0dc65d604d53d2b4b128ecacb9bed02f5c155ddffbd`  
		Last Modified: Mon, 19 Dec 2016 23:59:15 GMT  
		Size: 1.2 MB (1217869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658569c28c5522b409962ecb26689acbbf4fa1dd914932979de5285bc058daaf`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124a8bf940da53f30dc0f2f9aa9a9572c6a23abf8aa5a9d6ce3947c5faa9f6b4`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c19551df503f72df45bf939ed23e020e489bf9bb58bd83cab53b2e374f72cc3`  
		Last Modified: Thu, 22 Dec 2016 20:37:06 GMT  
		Size: 97.7 MB (97689046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18347fe18d9cb817df0f847e0f00bea1f4e01633350ac722eea33c24576e34a`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e710c6ec29cb13053cadb2a7c1be96bb4b812f982813bb90d02bc0fe4794e0`  
		Last Modified: Thu, 22 Dec 2016 20:36:22 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.1-windowsservercore`

```console
$ docker pull mongo@sha256:fe9004ce4ae20d6a1ff8c984ee1336ac32b1008c846d90e56b03440b81d99630
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.1-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4991318628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2480b14896c666c28d7e561e2638148f5772b4138e005110ab4ee913fff81c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:30:21 GMT
ENV MONGO_VERSION=3.4.1
# Fri, 06 Jan 2017 23:30:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Fri, 06 Jan 2017 23:30:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Fri, 06 Jan 2017 23:31:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:31:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:31:40 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:31:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499352f0ec04cfe2e9e0da498d98f1f6529be591c49f1e7d6c60e6290b6484e4`  
		Last Modified: Fri, 06 Jan 2017 23:32:59 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e604f6c0987c2f2611a6d513e5378bab3219b181d3e3531c3d02d759b846c8`  
		Last Modified: Fri, 06 Jan 2017 23:32:56 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cd796568efe78d089a175f718cf89ab9fb3790f34f859b1f97ff0447dd12ca`  
		Last Modified: Fri, 06 Jan 2017 23:32:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8543559f8ac88542999a9150021875aa749e869052ed22b28c9795da946a6`  
		Last Modified: Fri, 06 Jan 2017 23:33:02 GMT  
		Size: 66.9 MB (66904501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbac1e090b0eb7ea1ac281dc00fbe09fd3d928f64244cf1903275c9a47ffa5c`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732b653b9719e64a7658273ff12e81e2a046dda878eb914f891ae311e7471b06`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fd043dbb36cdf4d7a2cf4c3ae93231382ba934f41aacef13b096d2f61db016`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:fe9004ce4ae20d6a1ff8c984ee1336ac32b1008c846d90e56b03440b81d99630
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4991318628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2480b14896c666c28d7e561e2638148f5772b4138e005110ab4ee913fff81c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:30:21 GMT
ENV MONGO_VERSION=3.4.1
# Fri, 06 Jan 2017 23:30:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Fri, 06 Jan 2017 23:30:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Fri, 06 Jan 2017 23:31:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:31:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:31:40 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:31:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499352f0ec04cfe2e9e0da498d98f1f6529be591c49f1e7d6c60e6290b6484e4`  
		Last Modified: Fri, 06 Jan 2017 23:32:59 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e604f6c0987c2f2611a6d513e5378bab3219b181d3e3531c3d02d759b846c8`  
		Last Modified: Fri, 06 Jan 2017 23:32:56 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cd796568efe78d089a175f718cf89ab9fb3790f34f859b1f97ff0447dd12ca`  
		Last Modified: Fri, 06 Jan 2017 23:32:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8543559f8ac88542999a9150021875aa749e869052ed22b28c9795da946a6`  
		Last Modified: Fri, 06 Jan 2017 23:33:02 GMT  
		Size: 66.9 MB (66904501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbac1e090b0eb7ea1ac281dc00fbe09fd3d928f64244cf1903275c9a47ffa5c`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732b653b9719e64a7658273ff12e81e2a046dda878eb914f891ae311e7471b06`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fd043dbb36cdf4d7a2cf4c3ae93231382ba934f41aacef13b096d2f61db016`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:fe9004ce4ae20d6a1ff8c984ee1336ac32b1008c846d90e56b03440b81d99630
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4991318628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2480b14896c666c28d7e561e2638148f5772b4138e005110ab4ee913fff81c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:30:21 GMT
ENV MONGO_VERSION=3.4.1
# Fri, 06 Jan 2017 23:30:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Fri, 06 Jan 2017 23:30:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Fri, 06 Jan 2017 23:31:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:31:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:31:40 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:31:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499352f0ec04cfe2e9e0da498d98f1f6529be591c49f1e7d6c60e6290b6484e4`  
		Last Modified: Fri, 06 Jan 2017 23:32:59 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e604f6c0987c2f2611a6d513e5378bab3219b181d3e3531c3d02d759b846c8`  
		Last Modified: Fri, 06 Jan 2017 23:32:56 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cd796568efe78d089a175f718cf89ab9fb3790f34f859b1f97ff0447dd12ca`  
		Last Modified: Fri, 06 Jan 2017 23:32:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8543559f8ac88542999a9150021875aa749e869052ed22b28c9795da946a6`  
		Last Modified: Fri, 06 Jan 2017 23:33:02 GMT  
		Size: 66.9 MB (66904501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbac1e090b0eb7ea1ac281dc00fbe09fd3d928f64244cf1903275c9a47ffa5c`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732b653b9719e64a7658273ff12e81e2a046dda878eb914f891ae311e7471b06`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fd043dbb36cdf4d7a2cf4c3ae93231382ba934f41aacef13b096d2f61db016`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:fe9004ce4ae20d6a1ff8c984ee1336ac32b1008c846d90e56b03440b81d99630
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (4991318628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2480b14896c666c28d7e561e2638148f5772b4138e005110ab4ee913fff81c`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2017 23:27:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 06 Jan 2017 23:30:21 GMT
ENV MONGO_VERSION=3.4.1
# Fri, 06 Jan 2017 23:30:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Fri, 06 Jan 2017 23:30:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Fri, 06 Jan 2017 23:31:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 06 Jan 2017 23:31:37 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 06 Jan 2017 23:31:40 GMT
EXPOSE 27017/tcp
# Fri, 06 Jan 2017 23:31:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:04ee5d718c7adc0144556d740900f778129e41be806c95191710d1d92051a7b3`  
		Size: 854.4 MB (854419699 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0ff1ee712365925730d5bdda1284ee8e09aa3f7969e5f679f4914fe8c712c12`  
		Last Modified: Fri, 06 Jan 2017 23:32:02 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499352f0ec04cfe2e9e0da498d98f1f6529be591c49f1e7d6c60e6290b6484e4`  
		Last Modified: Fri, 06 Jan 2017 23:32:59 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e604f6c0987c2f2611a6d513e5378bab3219b181d3e3531c3d02d759b846c8`  
		Last Modified: Fri, 06 Jan 2017 23:32:56 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cd796568efe78d089a175f718cf89ab9fb3790f34f859b1f97ff0447dd12ca`  
		Last Modified: Fri, 06 Jan 2017 23:32:48 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c8543559f8ac88542999a9150021875aa749e869052ed22b28c9795da946a6`  
		Last Modified: Fri, 06 Jan 2017 23:33:02 GMT  
		Size: 66.9 MB (66904501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbac1e090b0eb7ea1ac281dc00fbe09fd3d928f64244cf1903275c9a47ffa5c`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732b653b9719e64a7658273ff12e81e2a046dda878eb914f891ae311e7471b06`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fd043dbb36cdf4d7a2cf4c3ae93231382ba934f41aacef13b096d2f61db016`  
		Last Modified: Fri, 06 Jan 2017 23:32:47 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
