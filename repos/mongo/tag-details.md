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
$ docker pull mongo@sha256:f9bd00b28c4371e9b735d81446c3feb1ce0c919f06172a0541a013f2e781d5a8
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101041005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a23e88d99dfd4907704a5b89531fe29d94d1a8945f9594ccb2f00931dd44da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:55 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:21:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:21:00 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:21:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:21:15 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 17 Jan 2017 17:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:21:17 GMT
ENV MONGO_MAJOR=3.0
# Tue, 17 Jan 2017 17:21:17 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 17 Jan 2017 17:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:21:18 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:21:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:21:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:21:30 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:21:31 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:21:31 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:21:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86af0ceb0ad2725a3312997ce5dd90b68cc476401dc663b10917d88b642a58f4`  
		Last Modified: Wed, 18 Jan 2017 04:34:10 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa8ed626767748384bb835480cd80009c6d45cc2414ef34f731442387954ce`  
		Last Modified: Wed, 18 Jan 2017 04:34:10 GMT  
		Size: 146.5 KB (146458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac1d7028ea0dbd8eaf3f9e8590f9a14f8840dc2b3c806e72170b9e7e95159b3`  
		Last Modified: Wed, 18 Jan 2017 04:34:11 GMT  
		Size: 1.2 MB (1245780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdae8a6ff23b9e82fa6ee9dfae89738f74e8d1ba15cf823fba6d9d3bebf5494`  
		Last Modified: Wed, 18 Jan 2017 04:34:06 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5459966d6322f5e1285dc62410cfa734bbb1f3490b9e339f6fffec4366733c2`  
		Last Modified: Wed, 18 Jan 2017 04:34:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca033ce74db22f914a2fa69964253280c47a4b32a5df8ff7c9a7ac70eeb5c50`  
		Last Modified: Wed, 18 Jan 2017 04:34:31 GMT  
		Size: 62.4 MB (62359879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861121324821c018266f2e4e388ebc0eb59e65adaaf7895086f6edbb4888620d`  
		Last Modified: Wed, 18 Jan 2017 04:34:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecf39fcf11c1a337b3dfc789b7368ffdfa91db988ec07e2c094bf1aaef5b3be`  
		Last Modified: Wed, 18 Jan 2017 04:34:06 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:f9bd00b28c4371e9b735d81446c3feb1ce0c919f06172a0541a013f2e781d5a8
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101041005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a23e88d99dfd4907704a5b89531fe29d94d1a8945f9594ccb2f00931dd44da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:55 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:21:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:21:00 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:21:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:21:15 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 17 Jan 2017 17:21:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:21:17 GMT
ENV MONGO_MAJOR=3.0
# Tue, 17 Jan 2017 17:21:17 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 17 Jan 2017 17:21:18 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:21:18 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:21:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:21:30 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:21:30 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:21:31 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:21:31 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:21:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86af0ceb0ad2725a3312997ce5dd90b68cc476401dc663b10917d88b642a58f4`  
		Last Modified: Wed, 18 Jan 2017 04:34:10 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa8ed626767748384bb835480cd80009c6d45cc2414ef34f731442387954ce`  
		Last Modified: Wed, 18 Jan 2017 04:34:10 GMT  
		Size: 146.5 KB (146458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac1d7028ea0dbd8eaf3f9e8590f9a14f8840dc2b3c806e72170b9e7e95159b3`  
		Last Modified: Wed, 18 Jan 2017 04:34:11 GMT  
		Size: 1.2 MB (1245780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdae8a6ff23b9e82fa6ee9dfae89738f74e8d1ba15cf823fba6d9d3bebf5494`  
		Last Modified: Wed, 18 Jan 2017 04:34:06 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5459966d6322f5e1285dc62410cfa734bbb1f3490b9e339f6fffec4366733c2`  
		Last Modified: Wed, 18 Jan 2017 04:34:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca033ce74db22f914a2fa69964253280c47a4b32a5df8ff7c9a7ac70eeb5c50`  
		Last Modified: Wed, 18 Jan 2017 04:34:31 GMT  
		Size: 62.4 MB (62359879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861121324821c018266f2e4e388ebc0eb59e65adaaf7895086f6edbb4888620d`  
		Last Modified: Wed, 18 Jan 2017 04:34:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecf39fcf11c1a337b3dfc789b7368ffdfa91db988ec07e2c094bf1aaef5b3be`  
		Last Modified: Wed, 18 Jan 2017 04:34:06 GMT  
		Size: 351.0 B  
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
$ docker pull mongo@sha256:6e8000e4efe09ec67328a16cecffff18e83fc0d20fa8f6b03b7396cf75b389e4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123542781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721dca1741473d7b900f3e58e875fe2b8a118e92c177db57ca5894d5e8fd47cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:21:32 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 17 Jan 2017 17:21:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:21:34 GMT
ENV MONGO_MAJOR=3.2
# Tue, 17 Jan 2017 17:21:35 GMT
ENV MONGO_VERSION=3.2.11
# Tue, 17 Jan 2017 17:21:35 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:21:36 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:21:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:21:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:21:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:21:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:21:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:21:53 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:21:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69454c78dfd1036319948b4be36c3f681a3ee8994eefa3795488d6b9ac9017a1`  
		Last Modified: Wed, 18 Jan 2017 04:35:06 GMT  
		Size: 3.1 KB (3071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fba36478cc6ef66d4f29df592c5108b4805d4b8c36f63c5ff30ed212045336`  
		Last Modified: Wed, 18 Jan 2017 04:35:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f8db18496d0138d0f2bcb6cf1fb16ce9b017d2c0c494464524051915b21b8`  
		Last Modified: Wed, 18 Jan 2017 04:35:34 GMT  
		Size: 70.8 MB (70823924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a0ed9f848b28d94031040a1c244ce7b4b6386cf95c6e53b1586e0262d95da2`  
		Last Modified: Wed, 18 Jan 2017 04:35:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e19543cb40755f16e3025921c6b5b903afc8a88ef7d7bd3860377dbc3752b7a`  
		Last Modified: Wed, 18 Jan 2017 04:35:07 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:6e8000e4efe09ec67328a16cecffff18e83fc0d20fa8f6b03b7396cf75b389e4
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123542781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721dca1741473d7b900f3e58e875fe2b8a118e92c177db57ca5894d5e8fd47cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:21:32 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 17 Jan 2017 17:21:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:21:34 GMT
ENV MONGO_MAJOR=3.2
# Tue, 17 Jan 2017 17:21:35 GMT
ENV MONGO_VERSION=3.2.11
# Tue, 17 Jan 2017 17:21:35 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:21:36 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:21:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:21:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:21:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:21:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:21:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:21:53 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:21:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69454c78dfd1036319948b4be36c3f681a3ee8994eefa3795488d6b9ac9017a1`  
		Last Modified: Wed, 18 Jan 2017 04:35:06 GMT  
		Size: 3.1 KB (3071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fba36478cc6ef66d4f29df592c5108b4805d4b8c36f63c5ff30ed212045336`  
		Last Modified: Wed, 18 Jan 2017 04:35:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f8db18496d0138d0f2bcb6cf1fb16ce9b017d2c0c494464524051915b21b8`  
		Last Modified: Wed, 18 Jan 2017 04:35:34 GMT  
		Size: 70.8 MB (70823924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a0ed9f848b28d94031040a1c244ce7b4b6386cf95c6e53b1586e0262d95da2`  
		Last Modified: Wed, 18 Jan 2017 04:35:07 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e19543cb40755f16e3025921c6b5b903afc8a88ef7d7bd3860377dbc3752b7a`  
		Last Modified: Wed, 18 Jan 2017 04:35:07 GMT  
		Size: 350.0 B  
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
$ docker pull mongo@sha256:aff0c497cff4f116583b99b21775a8844a17bcf5c69f7f3f6028013bf0d6c00c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150405887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dffc7177b06346bcffa76fe056b7a1bab91c4c8c6005dda4e55815482ce08bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:20:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jan 2017 17:20:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_VERSION=3.4.1
# Tue, 17 Jan 2017 17:20:34 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:20:35 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:20:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:20:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:20:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:20:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:20:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:53 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:20:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efff42d23e56240211ded6a6409387dc94d2179772646ea3e9c6377686e9e09`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dec5aa0089e9942fd4ca7b48e34d96235093e486c8ce2bd603203866069777`  
		Last Modified: Wed, 18 Jan 2017 04:36:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76feb0ad65615fd13a095b9d499b506889b5a4e4c4f0aea7247273a9e550ff6`  
		Last Modified: Wed, 18 Jan 2017 04:36:40 GMT  
		Size: 97.7 MB (97688680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1dcc6263a9f441dab07036a1d6f5143fecc9c0aaea81e3a3c40e938f5f97f5`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2855a823db092f9bc5ec1eb0405c434514f502ddcdaee66fac8deadc32d837ab`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:aff0c497cff4f116583b99b21775a8844a17bcf5c69f7f3f6028013bf0d6c00c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150405887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dffc7177b06346bcffa76fe056b7a1bab91c4c8c6005dda4e55815482ce08bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:20:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jan 2017 17:20:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_VERSION=3.4.1
# Tue, 17 Jan 2017 17:20:34 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:20:35 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:20:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:20:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:20:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:20:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:20:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:53 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:20:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efff42d23e56240211ded6a6409387dc94d2179772646ea3e9c6377686e9e09`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dec5aa0089e9942fd4ca7b48e34d96235093e486c8ce2bd603203866069777`  
		Last Modified: Wed, 18 Jan 2017 04:36:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76feb0ad65615fd13a095b9d499b506889b5a4e4c4f0aea7247273a9e550ff6`  
		Last Modified: Wed, 18 Jan 2017 04:36:40 GMT  
		Size: 97.7 MB (97688680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1dcc6263a9f441dab07036a1d6f5143fecc9c0aaea81e3a3c40e938f5f97f5`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2855a823db092f9bc5ec1eb0405c434514f502ddcdaee66fac8deadc32d837ab`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:aff0c497cff4f116583b99b21775a8844a17bcf5c69f7f3f6028013bf0d6c00c
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150405887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dffc7177b06346bcffa76fe056b7a1bab91c4c8c6005dda4e55815482ce08bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:20:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jan 2017 17:20:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_VERSION=3.4.1
# Tue, 17 Jan 2017 17:20:34 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:20:35 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:20:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:20:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:20:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:20:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:20:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:53 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:20:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efff42d23e56240211ded6a6409387dc94d2179772646ea3e9c6377686e9e09`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dec5aa0089e9942fd4ca7b48e34d96235093e486c8ce2bd603203866069777`  
		Last Modified: Wed, 18 Jan 2017 04:36:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76feb0ad65615fd13a095b9d499b506889b5a4e4c4f0aea7247273a9e550ff6`  
		Last Modified: Wed, 18 Jan 2017 04:36:40 GMT  
		Size: 97.7 MB (97688680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1dcc6263a9f441dab07036a1d6f5143fecc9c0aaea81e3a3c40e938f5f97f5`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2855a823db092f9bc5ec1eb0405c434514f502ddcdaee66fac8deadc32d837ab`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:aff0c497cff4f116583b99b21775a8844a17bcf5c69f7f3f6028013bf0d6c00c
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150405887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dffc7177b06346bcffa76fe056b7a1bab91c4c8c6005dda4e55815482ce08bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:20:09 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jan 2017 17:20:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:20:15 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:20:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:20:31 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jan 2017 17:20:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jan 2017 17:20:33 GMT
ENV MONGO_VERSION=3.4.1
# Tue, 17 Jan 2017 17:20:34 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 17 Jan 2017 17:20:35 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 17 Jan 2017 17:20:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jan 2017 17:20:51 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jan 2017 17:20:52 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jan 2017 17:20:52 GMT
COPY file:7f1f8bb27f73563768bb938208148a281b70ba028a8d544671abcb276c8f741c in /entrypoint.sh 
# Tue, 17 Jan 2017 17:20:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jan 2017 17:20:53 GMT
EXPOSE 27017/tcp
# Tue, 17 Jan 2017 17:20:53 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef697e8d464ed2ff23031d40459cb953f5307a56be72272f01ff697016906892`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d7bf010c406d7c7cc8da3f41de8343b5bac1247cae7e49ec5a54768601f18d`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 134.3 KB (134269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0b4f23ca2d9a83defb4c2155e82fa003fa3107c316884c45a09e0631076298`  
		Last Modified: Wed, 18 Jan 2017 04:35:10 GMT  
		Size: 1.2 MB (1217552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efff42d23e56240211ded6a6409387dc94d2179772646ea3e9c6377686e9e09`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dec5aa0089e9942fd4ca7b48e34d96235093e486c8ce2bd603203866069777`  
		Last Modified: Wed, 18 Jan 2017 04:36:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76feb0ad65615fd13a095b9d499b506889b5a4e4c4f0aea7247273a9e550ff6`  
		Last Modified: Wed, 18 Jan 2017 04:36:40 GMT  
		Size: 97.7 MB (97688680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1dcc6263a9f441dab07036a1d6f5143fecc9c0aaea81e3a3c40e938f5f97f5`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2855a823db092f9bc5ec1eb0405c434514f502ddcdaee66fac8deadc32d837ab`  
		Last Modified: Wed, 18 Jan 2017 04:36:09 GMT  
		Size: 349.0 B  
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
