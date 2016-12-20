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
-	[`mongo:3.4.0`](#mongo340)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.0-windowsservercore`](#mongo340-windowsservercore)
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

## `mongo:3.4.0`

```console
$ docker pull mongo@sha256:c20800f787af2d6bddfbfc884fe436aa7a3992bfd2d181b55c57c7ff04b84b87
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150383547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca01b33b859af5f405aa3ea5030a15246bb970058ac71295eae258527abc8819`
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
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:04:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:04:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:04:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:04:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:04:27 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:04:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:04:27 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:04:27 GMT
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
	-	`sha256:624e8737b906d1e304736bebb53e9a6ecf739c20f07ba3a90ff3104548d50afd`  
		Last Modified: Tue, 20 Dec 2016 00:00:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c16ab9781243edf021c93c37c3a44efd451939a539fb83341c4e3eac3942a6`  
		Last Modified: Tue, 20 Dec 2016 00:01:06 GMT  
		Size: 97.7 MB (97663769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a11392424cb88070342479a254e33b002cf548739c762d3d55d91620c55e5b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf1bf22fdd09440dfc9ba3ab990d77b951eccc75320e7a464c5bd684d454e6b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:c20800f787af2d6bddfbfc884fe436aa7a3992bfd2d181b55c57c7ff04b84b87
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150383547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca01b33b859af5f405aa3ea5030a15246bb970058ac71295eae258527abc8819`
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
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:04:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:04:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:04:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:04:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:04:27 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:04:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:04:27 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:04:27 GMT
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
	-	`sha256:624e8737b906d1e304736bebb53e9a6ecf739c20f07ba3a90ff3104548d50afd`  
		Last Modified: Tue, 20 Dec 2016 00:00:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c16ab9781243edf021c93c37c3a44efd451939a539fb83341c4e3eac3942a6`  
		Last Modified: Tue, 20 Dec 2016 00:01:06 GMT  
		Size: 97.7 MB (97663769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a11392424cb88070342479a254e33b002cf548739c762d3d55d91620c55e5b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf1bf22fdd09440dfc9ba3ab990d77b951eccc75320e7a464c5bd684d454e6b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:c20800f787af2d6bddfbfc884fe436aa7a3992bfd2d181b55c57c7ff04b84b87
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150383547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca01b33b859af5f405aa3ea5030a15246bb970058ac71295eae258527abc8819`
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
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:04:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:04:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:04:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:04:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:04:27 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:04:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:04:27 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:04:27 GMT
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
	-	`sha256:624e8737b906d1e304736bebb53e9a6ecf739c20f07ba3a90ff3104548d50afd`  
		Last Modified: Tue, 20 Dec 2016 00:00:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c16ab9781243edf021c93c37c3a44efd451939a539fb83341c4e3eac3942a6`  
		Last Modified: Tue, 20 Dec 2016 00:01:06 GMT  
		Size: 97.7 MB (97663769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a11392424cb88070342479a254e33b002cf548739c762d3d55d91620c55e5b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf1bf22fdd09440dfc9ba3ab990d77b951eccc75320e7a464c5bd684d454e6b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:c20800f787af2d6bddfbfc884fe436aa7a3992bfd2d181b55c57c7ff04b84b87
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150383547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca01b33b859af5f405aa3ea5030a15246bb970058ac71295eae258527abc8819`
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
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 14 Dec 2016 01:04:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Wed, 14 Dec 2016 01:04:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 14 Dec 2016 01:04:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Dec 2016 01:04:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Dec 2016 01:04:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Dec 2016 01:04:27 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Wed, 14 Dec 2016 01:04:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2016 01:04:27 GMT
EXPOSE 27017/tcp
# Wed, 14 Dec 2016 01:04:27 GMT
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
	-	`sha256:624e8737b906d1e304736bebb53e9a6ecf739c20f07ba3a90ff3104548d50afd`  
		Last Modified: Tue, 20 Dec 2016 00:00:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c16ab9781243edf021c93c37c3a44efd451939a539fb83341c4e3eac3942a6`  
		Last Modified: Tue, 20 Dec 2016 00:01:06 GMT  
		Size: 97.7 MB (97663769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a11392424cb88070342479a254e33b002cf548739c762d3d55d91620c55e5b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf1bf22fdd09440dfc9ba3ab990d77b951eccc75320e7a464c5bd684d454e6b`  
		Last Modified: Tue, 20 Dec 2016 00:00:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.0-windowsservercore`

```console
$ docker pull mongo@sha256:b1426b287e9a037f5be4139e9cb299ffd2832eeb01d8e5307ee392aeacb6aa81
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683403198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5588b1fadc7318203b447071f4a695662322c04bdbbe472f85228eb5ca322840`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 30 Nov 2016 21:46:38 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 30 Nov 2016 21:46:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-signed.msi
# Wed, 30 Nov 2016 21:46:43 GMT
ENV MONGO_DOWNLOAD_SHA256=4fb83583305d97e8600f705944ba9586fd8e121a1c989165b8fd4ddb28358b4d
# Wed, 30 Nov 2016 21:47:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 30 Nov 2016 21:47:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 30 Nov 2016 21:47:53 GMT
EXPOSE 27017/tcp
# Wed, 30 Nov 2016 21:47:57 GMT
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
	-	`sha256:a29d03d2d012665de4bf7a14c68d6f491e7927a007ffd42a19733b8751d3f203`  
		Last Modified: Wed, 30 Nov 2016 21:48:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f828c231fd1b2bf9d994afda7cfbe04ece0adc8c8fe3e78862adb785cb833a`  
		Last Modified: Wed, 30 Nov 2016 21:48:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6c882237adcb17ecbf5e6ea6d4993f403c0250bb1d24785b3ca400877fa48`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41938ae9a02079eb4ddb5788e341ec7bb696ad363a3406ece2953575a0baeedd`  
		Last Modified: Wed, 30 Nov 2016 21:48:29 GMT  
		Size: 66.7 MB (66718221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba037078467dacaa774d82cd9b6c19b31572b89393b567d7f83e8cedea28af58`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62027bf6ff30c5fa0a3631b959b329039c69a336e8053f1fd828fc5878ed9594`  
		Last Modified: Wed, 30 Nov 2016 21:48:16 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba465fe2a729a49670970cb4f8bd2268b45622d5f56e3092b4112ceab38813a`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:b1426b287e9a037f5be4139e9cb299ffd2832eeb01d8e5307ee392aeacb6aa81
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683403198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5588b1fadc7318203b447071f4a695662322c04bdbbe472f85228eb5ca322840`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 30 Nov 2016 21:46:38 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 30 Nov 2016 21:46:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-signed.msi
# Wed, 30 Nov 2016 21:46:43 GMT
ENV MONGO_DOWNLOAD_SHA256=4fb83583305d97e8600f705944ba9586fd8e121a1c989165b8fd4ddb28358b4d
# Wed, 30 Nov 2016 21:47:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 30 Nov 2016 21:47:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 30 Nov 2016 21:47:53 GMT
EXPOSE 27017/tcp
# Wed, 30 Nov 2016 21:47:57 GMT
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
	-	`sha256:a29d03d2d012665de4bf7a14c68d6f491e7927a007ffd42a19733b8751d3f203`  
		Last Modified: Wed, 30 Nov 2016 21:48:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f828c231fd1b2bf9d994afda7cfbe04ece0adc8c8fe3e78862adb785cb833a`  
		Last Modified: Wed, 30 Nov 2016 21:48:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6c882237adcb17ecbf5e6ea6d4993f403c0250bb1d24785b3ca400877fa48`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41938ae9a02079eb4ddb5788e341ec7bb696ad363a3406ece2953575a0baeedd`  
		Last Modified: Wed, 30 Nov 2016 21:48:29 GMT  
		Size: 66.7 MB (66718221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba037078467dacaa774d82cd9b6c19b31572b89393b567d7f83e8cedea28af58`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62027bf6ff30c5fa0a3631b959b329039c69a336e8053f1fd828fc5878ed9594`  
		Last Modified: Wed, 30 Nov 2016 21:48:16 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba465fe2a729a49670970cb4f8bd2268b45622d5f56e3092b4112ceab38813a`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:b1426b287e9a037f5be4139e9cb299ffd2832eeb01d8e5307ee392aeacb6aa81
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683403198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5588b1fadc7318203b447071f4a695662322c04bdbbe472f85228eb5ca322840`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 30 Nov 2016 21:46:38 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 30 Nov 2016 21:46:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-signed.msi
# Wed, 30 Nov 2016 21:46:43 GMT
ENV MONGO_DOWNLOAD_SHA256=4fb83583305d97e8600f705944ba9586fd8e121a1c989165b8fd4ddb28358b4d
# Wed, 30 Nov 2016 21:47:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 30 Nov 2016 21:47:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 30 Nov 2016 21:47:53 GMT
EXPOSE 27017/tcp
# Wed, 30 Nov 2016 21:47:57 GMT
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
	-	`sha256:a29d03d2d012665de4bf7a14c68d6f491e7927a007ffd42a19733b8751d3f203`  
		Last Modified: Wed, 30 Nov 2016 21:48:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f828c231fd1b2bf9d994afda7cfbe04ece0adc8c8fe3e78862adb785cb833a`  
		Last Modified: Wed, 30 Nov 2016 21:48:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6c882237adcb17ecbf5e6ea6d4993f403c0250bb1d24785b3ca400877fa48`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41938ae9a02079eb4ddb5788e341ec7bb696ad363a3406ece2953575a0baeedd`  
		Last Modified: Wed, 30 Nov 2016 21:48:29 GMT  
		Size: 66.7 MB (66718221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba037078467dacaa774d82cd9b6c19b31572b89393b567d7f83e8cedea28af58`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62027bf6ff30c5fa0a3631b959b329039c69a336e8053f1fd828fc5878ed9594`  
		Last Modified: Wed, 30 Nov 2016 21:48:16 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba465fe2a729a49670970cb4f8bd2268b45622d5f56e3092b4112ceab38813a`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:b1426b287e9a037f5be4139e9cb299ffd2832eeb01d8e5307ee392aeacb6aa81
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 GB (4683403198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5588b1fadc7318203b447071f4a695662322c04bdbbe472f85228eb5ca322840`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 15 Nov 2016 00:01:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 30 Nov 2016 21:46:38 GMT
ENV MONGO_VERSION=3.4.0
# Wed, 30 Nov 2016 21:46:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.0-signed.msi
# Wed, 30 Nov 2016 21:46:43 GMT
ENV MONGO_DOWNLOAD_SHA256=4fb83583305d97e8600f705944ba9586fd8e121a1c989165b8fd4ddb28358b4d
# Wed, 30 Nov 2016 21:47:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 30 Nov 2016 21:47:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 30 Nov 2016 21:47:53 GMT
EXPOSE 27017/tcp
# Wed, 30 Nov 2016 21:47:57 GMT
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
	-	`sha256:a29d03d2d012665de4bf7a14c68d6f491e7927a007ffd42a19733b8751d3f203`  
		Last Modified: Wed, 30 Nov 2016 21:48:24 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f828c231fd1b2bf9d994afda7cfbe04ece0adc8c8fe3e78862adb785cb833a`  
		Last Modified: Wed, 30 Nov 2016 21:48:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c6c882237adcb17ecbf5e6ea6d4993f403c0250bb1d24785b3ca400877fa48`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41938ae9a02079eb4ddb5788e341ec7bb696ad363a3406ece2953575a0baeedd`  
		Last Modified: Wed, 30 Nov 2016 21:48:29 GMT  
		Size: 66.7 MB (66718221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba037078467dacaa774d82cd9b6c19b31572b89393b567d7f83e8cedea28af58`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62027bf6ff30c5fa0a3631b959b329039c69a336e8053f1fd828fc5878ed9594`  
		Last Modified: Wed, 30 Nov 2016 21:48:16 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba465fe2a729a49670970cb4f8bd2268b45622d5f56e3092b4112ceab38813a`  
		Last Modified: Wed, 30 Nov 2016 21:48:15 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
