<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0.15-wheezy`](#mongo3015-wheezy)
-	[`mongo:3.0.15-windowsservercore-1709`](#mongo3015-windowsservercore-1709)
-	[`mongo:3.0.15-windowsservercore-ltsc2016`](#mongo3015-windowsservercore-ltsc2016)
-	[`mongo:3.0-wheezy`](#mongo30-wheezy)
-	[`mongo:3.0-windowsservercore-1709`](#mongo30-windowsservercore-1709)
-	[`mongo:3.0-windowsservercore-ltsc2016`](#mongo30-windowsservercore-ltsc2016)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.18`](#mongo3218)
-	[`mongo:3.2.18-jessie`](#mongo3218-jessie)
-	[`mongo:3.2.18-windowsservercore-1709`](#mongo3218-windowsservercore-1709)
-	[`mongo:3.2.18-windowsservercore-ltsc2016`](#mongo3218-windowsservercore-ltsc2016)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.2-windowsservercore-1709`](#mongo32-windowsservercore-1709)
-	[`mongo:3.2-windowsservercore-ltsc2016`](#mongo32-windowsservercore-ltsc2016)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.10`](#mongo3410)
-	[`mongo:3.4.10-jessie`](#mongo3410-jessie)
-	[`mongo:3.4.10-windowsservercore-1709`](#mongo3410-windowsservercore-1709)
-	[`mongo:3.4.10-windowsservercore-ltsc2016`](#mongo3410-windowsservercore-ltsc2016)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.4-windowsservercore-1709`](#mongo34-windowsservercore-1709)
-	[`mongo:3.4-windowsservercore-ltsc2016`](#mongo34-windowsservercore-ltsc2016)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.0`](#mongo360)
-	[`mongo:3.6.0-jessie`](#mongo360-jessie)
-	[`mongo:3.6.0-windowsservercore-1709`](#mongo360-windowsservercore-1709)
-	[`mongo:3.6.0-windowsservercore-ltsc2016`](#mongo360-windowsservercore-ltsc2016)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3.6-windowsservercore-1709`](#mongo36-windowsservercore-1709)
-	[`mongo:3.6-windowsservercore-ltsc2016`](#mongo36-windowsservercore-ltsc2016)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:3-windowsservercore-1709`](#mongo3-windowsservercore-1709)
-	[`mongo:3-windowsservercore-ltsc2016`](#mongo3-windowsservercore-ltsc2016)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:windowsservercore-1709`](#mongowindowsservercore-1709)
-	[`mongo:windowsservercore-ltsc2016`](#mongowindowsservercore-ltsc2016)

## `mongo:3`

```console
$ docker pull mongo@sha256:785f81e5cf14e8c2f6989bdf276cb025b076a8403f96f6ed45c8ec8161913fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:e8d9662a8930bfde40c1e94a1158eb9d7cb60a559c8552674a260882beed011b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:bb0107d7802d719a8f964ca810d2ebcb66615b4c8e28327e80982db4e0721e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84822350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf24bf4eca6fc38353720bb3046dacdfd22f93c9e00f13a52ecc8314167ae12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:35:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:36:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:36:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:36:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 12 Dec 2017 02:36:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_MAJOR=3.0
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 12 Dec 2017 02:36:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:36:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:36:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:36:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:36:20 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:36:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:36:21 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:36:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbd964562f723150dd6519381f0ad8ef9d43f39cac16d1434a732cf4fdf8e8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 1.1 MB (1103052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f23f28c5d2485c65e8434642893814c902f9a6d9ef077abd0248cfa1d4328f3`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2428a261b50143c05bf149c0cb9fcf81c6a292f0b3511f2794362043dd9c32`  
		Last Modified: Tue, 12 Dec 2017 02:41:13 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d7b00ebcc8827403559b6da8876d50e65f3d5ef15c3a3fe7f4f5a2c174fde7`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c0eda9271c7ce04463c58229c4d8d4ff18097177ea47741932c7b443115987`  
		Last Modified: Tue, 12 Dec 2017 02:41:24 GMT  
		Size: 61.9 MB (61886277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c520bda2c87441be5eaa59032f8ce8c090208d43e7577e9d4c40b15cc7060b45`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafcda7180031feec35573db3fea61059a5d8a5b348ecbf424a7f957a755c306`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e67bda82a0af8f614b57604cca1a387b230cf405556ddc707071e7704a2474`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:62da6a2cbbe55cba55ad88f96f3466d5764014d3f1e2f02ae0779a157810cd8f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403980224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6da48d28171ce2ee99f82468a81b777bcb4a20bc69f5d7592de853196304901`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:39:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 15 Nov 2017 02:48:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:48:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:48:17 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:48:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7d3550e4ab769bfab3500dd2c07afc83a794715915dc4db018df2631743c3`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5de24310c02c4ab4fec29cbe608f0d5c91d2265b0d45e10159dd70f15d341`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b357073dbce29742ddc0035347929f12f596fab6766c9e841ec7f19702463598`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebca783a98f7b2da81dcd47ba2f15a86e96f845d385ab1a6028e0cb675a4841b`  
		Last Modified: Wed, 15 Nov 2017 03:02:32 GMT  
		Size: 47.0 MB (46992977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8709a224e09b1836c7d6c5e932ab832f033f60bcab827df92a522418f37e55a`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b650479b68acaf36af1fcc46d17bdede8fb47874e18e5bf48a90ac4747bc3d1c`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed22048959ba01ea48deb384fe60a08469827eb142568afd795d9e043755cf`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a77c4292f3b934ed9d328d53b364e99304f47fbfb86e1f196caf41e9b02f1b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2722665621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410b95bc1eea0a01f40ba89b5b32395804fee1ebd598cfc546247cd0e0c1dc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:49:44 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 23 Nov 2017 02:49:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Thu, 23 Nov 2017 02:49:46 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Thu, 23 Nov 2017 02:51:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:51:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:51:42 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:51:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3c0f3dbd5ef26ff0a7ddad934648a7bd88fc382ec339430843d0c68d6f9e8`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50184b9cb183081272a55d3e30aa24f3e535a93a264d36d2ff6acf9c01645971`  
		Last Modified: Thu, 23 Nov 2017 02:58:58 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee949ae111a7707724153595fa29edf3438e68eeb852afc81430eebd1ccf63f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9f217d8bb1f2bc1f7b59a8ca20c371eb2b0136b191a24bbe4063c8abe7253`  
		Last Modified: Thu, 23 Nov 2017 02:59:06 GMT  
		Size: 46.5 MB (46505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f755e3e5512e6572153f21d632427f986c12085eb8a7f0de4353a8ae3c088`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347a1754d6b90b830c6117bd7f7ab30a5616f5bc0aa902b16ae3387253cf72d8`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bafe8c0a28f78013d249fe31c63fd7eb4f0dc0e1a78b253ad45cf00a5f5427`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:e8d9662a8930bfde40c1e94a1158eb9d7cb60a559c8552674a260882beed011b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:bb0107d7802d719a8f964ca810d2ebcb66615b4c8e28327e80982db4e0721e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84822350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf24bf4eca6fc38353720bb3046dacdfd22f93c9e00f13a52ecc8314167ae12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:35:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:36:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:36:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:36:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 12 Dec 2017 02:36:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_MAJOR=3.0
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 12 Dec 2017 02:36:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:36:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:36:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:36:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:36:20 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:36:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:36:21 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:36:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbd964562f723150dd6519381f0ad8ef9d43f39cac16d1434a732cf4fdf8e8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 1.1 MB (1103052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f23f28c5d2485c65e8434642893814c902f9a6d9ef077abd0248cfa1d4328f3`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2428a261b50143c05bf149c0cb9fcf81c6a292f0b3511f2794362043dd9c32`  
		Last Modified: Tue, 12 Dec 2017 02:41:13 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d7b00ebcc8827403559b6da8876d50e65f3d5ef15c3a3fe7f4f5a2c174fde7`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c0eda9271c7ce04463c58229c4d8d4ff18097177ea47741932c7b443115987`  
		Last Modified: Tue, 12 Dec 2017 02:41:24 GMT  
		Size: 61.9 MB (61886277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c520bda2c87441be5eaa59032f8ce8c090208d43e7577e9d4c40b15cc7060b45`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafcda7180031feec35573db3fea61059a5d8a5b348ecbf424a7f957a755c306`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e67bda82a0af8f614b57604cca1a387b230cf405556ddc707071e7704a2474`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:62da6a2cbbe55cba55ad88f96f3466d5764014d3f1e2f02ae0779a157810cd8f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403980224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6da48d28171ce2ee99f82468a81b777bcb4a20bc69f5d7592de853196304901`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:39:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 15 Nov 2017 02:48:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:48:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:48:17 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:48:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7d3550e4ab769bfab3500dd2c07afc83a794715915dc4db018df2631743c3`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5de24310c02c4ab4fec29cbe608f0d5c91d2265b0d45e10159dd70f15d341`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b357073dbce29742ddc0035347929f12f596fab6766c9e841ec7f19702463598`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebca783a98f7b2da81dcd47ba2f15a86e96f845d385ab1a6028e0cb675a4841b`  
		Last Modified: Wed, 15 Nov 2017 03:02:32 GMT  
		Size: 47.0 MB (46992977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8709a224e09b1836c7d6c5e932ab832f033f60bcab827df92a522418f37e55a`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b650479b68acaf36af1fcc46d17bdede8fb47874e18e5bf48a90ac4747bc3d1c`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed22048959ba01ea48deb384fe60a08469827eb142568afd795d9e043755cf`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a77c4292f3b934ed9d328d53b364e99304f47fbfb86e1f196caf41e9b02f1b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2722665621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410b95bc1eea0a01f40ba89b5b32395804fee1ebd598cfc546247cd0e0c1dc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:49:44 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 23 Nov 2017 02:49:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Thu, 23 Nov 2017 02:49:46 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Thu, 23 Nov 2017 02:51:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:51:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:51:42 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:51:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3c0f3dbd5ef26ff0a7ddad934648a7bd88fc382ec339430843d0c68d6f9e8`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50184b9cb183081272a55d3e30aa24f3e535a93a264d36d2ff6acf9c01645971`  
		Last Modified: Thu, 23 Nov 2017 02:58:58 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee949ae111a7707724153595fa29edf3438e68eeb852afc81430eebd1ccf63f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9f217d8bb1f2bc1f7b59a8ca20c371eb2b0136b191a24bbe4063c8abe7253`  
		Last Modified: Thu, 23 Nov 2017 02:59:06 GMT  
		Size: 46.5 MB (46505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f755e3e5512e6572153f21d632427f986c12085eb8a7f0de4353a8ae3c088`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347a1754d6b90b830c6117bd7f7ab30a5616f5bc0aa902b16ae3387253cf72d8`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bafe8c0a28f78013d249fe31c63fd7eb4f0dc0e1a78b253ad45cf00a5f5427`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-wheezy`

```console
$ docker pull mongo@sha256:aa1e2e0371564fa0f6dc2b7dd8576070bde0bc7f2cf460852dd0653adac281c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:bb0107d7802d719a8f964ca810d2ebcb66615b4c8e28327e80982db4e0721e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84822350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf24bf4eca6fc38353720bb3046dacdfd22f93c9e00f13a52ecc8314167ae12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:35:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:36:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:36:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:36:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 12 Dec 2017 02:36:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_MAJOR=3.0
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 12 Dec 2017 02:36:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:36:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:36:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:36:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:36:20 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:36:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:36:21 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:36:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbd964562f723150dd6519381f0ad8ef9d43f39cac16d1434a732cf4fdf8e8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 1.1 MB (1103052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f23f28c5d2485c65e8434642893814c902f9a6d9ef077abd0248cfa1d4328f3`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2428a261b50143c05bf149c0cb9fcf81c6a292f0b3511f2794362043dd9c32`  
		Last Modified: Tue, 12 Dec 2017 02:41:13 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d7b00ebcc8827403559b6da8876d50e65f3d5ef15c3a3fe7f4f5a2c174fde7`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c0eda9271c7ce04463c58229c4d8d4ff18097177ea47741932c7b443115987`  
		Last Modified: Tue, 12 Dec 2017 02:41:24 GMT  
		Size: 61.9 MB (61886277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c520bda2c87441be5eaa59032f8ce8c090208d43e7577e9d4c40b15cc7060b45`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafcda7180031feec35573db3fea61059a5d8a5b348ecbf424a7f957a755c306`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e67bda82a0af8f614b57604cca1a387b230cf405556ddc707071e7704a2474`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore-1709`

```console
$ docker pull mongo@sha256:4a75fd12c88ad90e54d55be6d549e67369857f9f1ba5eb97a12684973e1e274c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.0.15-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a77c4292f3b934ed9d328d53b364e99304f47fbfb86e1f196caf41e9b02f1b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2722665621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410b95bc1eea0a01f40ba89b5b32395804fee1ebd598cfc546247cd0e0c1dc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:49:44 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 23 Nov 2017 02:49:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Thu, 23 Nov 2017 02:49:46 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Thu, 23 Nov 2017 02:51:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:51:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:51:42 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:51:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3c0f3dbd5ef26ff0a7ddad934648a7bd88fc382ec339430843d0c68d6f9e8`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50184b9cb183081272a55d3e30aa24f3e535a93a264d36d2ff6acf9c01645971`  
		Last Modified: Thu, 23 Nov 2017 02:58:58 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee949ae111a7707724153595fa29edf3438e68eeb852afc81430eebd1ccf63f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9f217d8bb1f2bc1f7b59a8ca20c371eb2b0136b191a24bbe4063c8abe7253`  
		Last Modified: Thu, 23 Nov 2017 02:59:06 GMT  
		Size: 46.5 MB (46505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f755e3e5512e6572153f21d632427f986c12085eb8a7f0de4353a8ae3c088`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347a1754d6b90b830c6117bd7f7ab30a5616f5bc0aa902b16ae3387253cf72d8`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bafe8c0a28f78013d249fe31c63fd7eb4f0dc0e1a78b253ad45cf00a5f5427`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:d8165f8477ce73388186c506f3f408cde90655e41a2b282ee79551a7c6c7b6c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.0.15-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:62da6a2cbbe55cba55ad88f96f3466d5764014d3f1e2f02ae0779a157810cd8f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403980224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6da48d28171ce2ee99f82468a81b777bcb4a20bc69f5d7592de853196304901`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:39:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 15 Nov 2017 02:48:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:48:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:48:17 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:48:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7d3550e4ab769bfab3500dd2c07afc83a794715915dc4db018df2631743c3`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5de24310c02c4ab4fec29cbe608f0d5c91d2265b0d45e10159dd70f15d341`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b357073dbce29742ddc0035347929f12f596fab6766c9e841ec7f19702463598`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebca783a98f7b2da81dcd47ba2f15a86e96f845d385ab1a6028e0cb675a4841b`  
		Last Modified: Wed, 15 Nov 2017 03:02:32 GMT  
		Size: 47.0 MB (46992977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8709a224e09b1836c7d6c5e932ab832f033f60bcab827df92a522418f37e55a`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b650479b68acaf36af1fcc46d17bdede8fb47874e18e5bf48a90ac4747bc3d1c`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed22048959ba01ea48deb384fe60a08469827eb142568afd795d9e043755cf`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-wheezy`

```console
$ docker pull mongo@sha256:aa1e2e0371564fa0f6dc2b7dd8576070bde0bc7f2cf460852dd0653adac281c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:bb0107d7802d719a8f964ca810d2ebcb66615b4c8e28327e80982db4e0721e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84822350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf24bf4eca6fc38353720bb3046dacdfd22f93c9e00f13a52ecc8314167ae12`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:35:30 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:35:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 12 Dec 2017 02:35:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:35:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:36:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:36:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:36:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 12 Dec 2017 02:36:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:36:08 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_MAJOR=3.0
# Tue, 12 Dec 2017 02:36:08 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 12 Dec 2017 02:36:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:36:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:36:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:36:19 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:36:20 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:36:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:36:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:36:21 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:36:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f4b68f5594ff127e3c87e19190ca62d695d260de2c4e1dfbc1a110dab8e2de`  
		Last Modified: Tue, 12 Dec 2017 02:41:17 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24baba5a242ee93e67a0fcfe657c4944872fd9fd2a064328454997b46cdbd62`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af11f2476fef6def7b28fd2c24f84397a099411ed68ad67cf937d5f9b76a82d7`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 2.7 MB (2660614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbd964562f723150dd6519381f0ad8ef9d43f39cac16d1434a732cf4fdf8e8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:16 GMT  
		Size: 1.1 MB (1103052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f23f28c5d2485c65e8434642893814c902f9a6d9ef077abd0248cfa1d4328f3`  
		Last Modified: Tue, 12 Dec 2017 02:41:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2428a261b50143c05bf149c0cb9fcf81c6a292f0b3511f2794362043dd9c32`  
		Last Modified: Tue, 12 Dec 2017 02:41:13 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d7b00ebcc8827403559b6da8876d50e65f3d5ef15c3a3fe7f4f5a2c174fde7`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c0eda9271c7ce04463c58229c4d8d4ff18097177ea47741932c7b443115987`  
		Last Modified: Tue, 12 Dec 2017 02:41:24 GMT  
		Size: 61.9 MB (61886277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c520bda2c87441be5eaa59032f8ce8c090208d43e7577e9d4c40b15cc7060b45`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafcda7180031feec35573db3fea61059a5d8a5b348ecbf424a7f957a755c306`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e67bda82a0af8f614b57604cca1a387b230cf405556ddc707071e7704a2474`  
		Last Modified: Tue, 12 Dec 2017 02:41:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore-1709`

```console
$ docker pull mongo@sha256:4a75fd12c88ad90e54d55be6d549e67369857f9f1ba5eb97a12684973e1e274c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.0-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a77c4292f3b934ed9d328d53b364e99304f47fbfb86e1f196caf41e9b02f1b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2722665621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410b95bc1eea0a01f40ba89b5b32395804fee1ebd598cfc546247cd0e0c1dc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:49:44 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 23 Nov 2017 02:49:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Thu, 23 Nov 2017 02:49:46 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Thu, 23 Nov 2017 02:51:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:51:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:51:42 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:51:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3c0f3dbd5ef26ff0a7ddad934648a7bd88fc382ec339430843d0c68d6f9e8`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50184b9cb183081272a55d3e30aa24f3e535a93a264d36d2ff6acf9c01645971`  
		Last Modified: Thu, 23 Nov 2017 02:58:58 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee949ae111a7707724153595fa29edf3438e68eeb852afc81430eebd1ccf63f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9f217d8bb1f2bc1f7b59a8ca20c371eb2b0136b191a24bbe4063c8abe7253`  
		Last Modified: Thu, 23 Nov 2017 02:59:06 GMT  
		Size: 46.5 MB (46505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f755e3e5512e6572153f21d632427f986c12085eb8a7f0de4353a8ae3c088`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347a1754d6b90b830c6117bd7f7ab30a5616f5bc0aa902b16ae3387253cf72d8`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bafe8c0a28f78013d249fe31c63fd7eb4f0dc0e1a78b253ad45cf00a5f5427`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:d8165f8477ce73388186c506f3f408cde90655e41a2b282ee79551a7c6c7b6c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.0-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:62da6a2cbbe55cba55ad88f96f3466d5764014d3f1e2f02ae0779a157810cd8f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403980224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6da48d28171ce2ee99f82468a81b777bcb4a20bc69f5d7592de853196304901`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:39:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 15 Nov 2017 02:48:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:48:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:48:17 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:48:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7d3550e4ab769bfab3500dd2c07afc83a794715915dc4db018df2631743c3`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5de24310c02c4ab4fec29cbe608f0d5c91d2265b0d45e10159dd70f15d341`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b357073dbce29742ddc0035347929f12f596fab6766c9e841ec7f19702463598`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebca783a98f7b2da81dcd47ba2f15a86e96f845d385ab1a6028e0cb675a4841b`  
		Last Modified: Wed, 15 Nov 2017 03:02:32 GMT  
		Size: 47.0 MB (46992977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8709a224e09b1836c7d6c5e932ab832f033f60bcab827df92a522418f37e55a`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b650479b68acaf36af1fcc46d17bdede8fb47874e18e5bf48a90ac4747bc3d1c`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed22048959ba01ea48deb384fe60a08469827eb142568afd795d9e043755cf`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:c7aafb66542e3db5f63468db5d31dd93251a1391746dbefb48d05d792ce86eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:2124c805e58bb29fdcfcf5acd0bbc232b0158196e142b4af3bbd1a403ddd72fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104476456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e326370ecc9862239d9d1e5fe76ee431dfe4f4b41de73941d5f1cbc9f0144eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:36:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:36:48 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:37:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:37:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:37:47 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 12 Dec 2017 02:37:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_MAJOR=3.2
# Tue, 12 Dec 2017 02:37:51 GMT
ENV MONGO_VERSION=3.2.18
# Tue, 12 Dec 2017 02:37:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:38:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:38:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:38:09 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:38:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:38:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:38:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:38:16 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:38:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761322b9de56137dce301284da4332ae8bc22c9aa2d66a2132e4f285d6d0f77c`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 2.4 MB (2397953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024b9e227467082ff4d75c5122bb98ad1a1e73078e5570f41d4532ff08f9459`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 1.1 MB (1108686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24942d2865e46999b77698103bb78537667d9afa8866ceb6f5655c09e2880f35`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6528bae3816169227387c5f39bbea32183f3359f8b70db6b04dfe8fe422c7f08`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9fefd72afe6523f748885fb8af1a8919e447ed7e4ab08deeb26c701c98b7bd`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759089b57ba3ba67235b7eb582387922473286df69cb6432d20c370f10d5e846`  
		Last Modified: Tue, 12 Dec 2017 02:42:01 GMT  
		Size: 70.8 MB (70845904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ad185bf96352c486ed6a5e9836f6675e2263aa7c25503aa6f4efcfc8b59252`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8354b74ff9b1592615f0cb140cabbb96b41fa0cb6b764c4e57a95d9df2389f12`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee18a5ca0f9eabb9e4a8c44d672953870631129584c64c87575fd53a37f6c8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:d722b7fbffe8efd0fbdb2554bd715c7dd90bef5a2a9c5dcc84586550826d94cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5414501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb50f0e7198a8d536827a546827814c251c7eb915d5e33527f776d3cf8782d6d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:47:25 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:49:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:49:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:49:55 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:49:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e760d413a6a319c79bdffbc3ed0f7c42b7e64fdfdb30df92b6a6f8df125d31`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482ece3b960a201e7ea3b9513472062f825bbd2e5cd4e3da7e6d690397ef7cce`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93562d586e68fcb51c292c9a821002445e0b98ad0d7a7fa380276302e0eb05`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe804520ac88307209aeb40f50a7049c9f0afb75f8050e5375ec310d31880ea`  
		Last Modified: Thu, 30 Nov 2017 20:21:49 GMT  
		Size: 57.5 MB (57514446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a8de4a643e38abbe6209df3cdb856103d604d86310c9934c4d22860e9736d`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750be109c5fee4f796dc9175e0b1b8f0cd1a0d79bdf8b42526339537c6fe96c0`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9006c1f1333e1fdcceec731601b998a91d856d66789a3b0922bbc248f696dc21`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:13a1303300699516797bb12f14100bd6e86ce2af8e7f62996c10d5dbff3be99d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728703241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833b842f1a4333dfc7fd25259d4c71d03cf6c58338dc90491d7f97b2b6e53ae`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:50:06 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:50:07 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:50:08 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:52:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:52:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:52:20 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:52:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31868190574a0dcad1fae25599c2258c9c675af7e1c382333c9c5f6198da1747`  
		Last Modified: Thu, 30 Nov 2017 20:22:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba316268eb6c1c76d30aabea3bcdca055d60891f3ed24bec4976579ae546492b`  
		Last Modified: Thu, 30 Nov 2017 20:22:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b53f991c8d8e867a851d934c1d96d9e3c264d8660c832590d6c2656d2868e2`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9df051a8a7e57ff62e0af7dfb051b58729152b0a4ddd6a8b175ac09c2ef91c`  
		Last Modified: Thu, 30 Nov 2017 20:22:20 GMT  
		Size: 52.5 MB (52543182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a111fcc5de253dfb024196465e480e3593b37e4528690c04e1a9ea0259351332`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85bfc4343eb8bb5669c567c172ccdecd4d1a2c2648d294f91502d3398e4cd70`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e0769e44aebd461ac699858ecf3480ab7da94e957f6cd9a5c9aa72ee6a637`  
		Last Modified: Thu, 30 Nov 2017 20:22:02 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.18`

```console
$ docker pull mongo@sha256:c7aafb66542e3db5f63468db5d31dd93251a1391746dbefb48d05d792ce86eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.2.18` - linux; amd64

```console
$ docker pull mongo@sha256:2124c805e58bb29fdcfcf5acd0bbc232b0158196e142b4af3bbd1a403ddd72fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104476456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e326370ecc9862239d9d1e5fe76ee431dfe4f4b41de73941d5f1cbc9f0144eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:36:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:36:48 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:37:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:37:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:37:47 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 12 Dec 2017 02:37:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_MAJOR=3.2
# Tue, 12 Dec 2017 02:37:51 GMT
ENV MONGO_VERSION=3.2.18
# Tue, 12 Dec 2017 02:37:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:38:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:38:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:38:09 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:38:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:38:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:38:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:38:16 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:38:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761322b9de56137dce301284da4332ae8bc22c9aa2d66a2132e4f285d6d0f77c`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 2.4 MB (2397953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024b9e227467082ff4d75c5122bb98ad1a1e73078e5570f41d4532ff08f9459`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 1.1 MB (1108686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24942d2865e46999b77698103bb78537667d9afa8866ceb6f5655c09e2880f35`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6528bae3816169227387c5f39bbea32183f3359f8b70db6b04dfe8fe422c7f08`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9fefd72afe6523f748885fb8af1a8919e447ed7e4ab08deeb26c701c98b7bd`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759089b57ba3ba67235b7eb582387922473286df69cb6432d20c370f10d5e846`  
		Last Modified: Tue, 12 Dec 2017 02:42:01 GMT  
		Size: 70.8 MB (70845904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ad185bf96352c486ed6a5e9836f6675e2263aa7c25503aa6f4efcfc8b59252`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8354b74ff9b1592615f0cb140cabbb96b41fa0cb6b764c4e57a95d9df2389f12`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee18a5ca0f9eabb9e4a8c44d672953870631129584c64c87575fd53a37f6c8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2.18` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:d722b7fbffe8efd0fbdb2554bd715c7dd90bef5a2a9c5dcc84586550826d94cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5414501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb50f0e7198a8d536827a546827814c251c7eb915d5e33527f776d3cf8782d6d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:47:25 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:49:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:49:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:49:55 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:49:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e760d413a6a319c79bdffbc3ed0f7c42b7e64fdfdb30df92b6a6f8df125d31`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482ece3b960a201e7ea3b9513472062f825bbd2e5cd4e3da7e6d690397ef7cce`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93562d586e68fcb51c292c9a821002445e0b98ad0d7a7fa380276302e0eb05`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe804520ac88307209aeb40f50a7049c9f0afb75f8050e5375ec310d31880ea`  
		Last Modified: Thu, 30 Nov 2017 20:21:49 GMT  
		Size: 57.5 MB (57514446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a8de4a643e38abbe6209df3cdb856103d604d86310c9934c4d22860e9736d`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750be109c5fee4f796dc9175e0b1b8f0cd1a0d79bdf8b42526339537c6fe96c0`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9006c1f1333e1fdcceec731601b998a91d856d66789a3b0922bbc248f696dc21`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2.18` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:13a1303300699516797bb12f14100bd6e86ce2af8e7f62996c10d5dbff3be99d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728703241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833b842f1a4333dfc7fd25259d4c71d03cf6c58338dc90491d7f97b2b6e53ae`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:50:06 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:50:07 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:50:08 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:52:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:52:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:52:20 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:52:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31868190574a0dcad1fae25599c2258c9c675af7e1c382333c9c5f6198da1747`  
		Last Modified: Thu, 30 Nov 2017 20:22:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba316268eb6c1c76d30aabea3bcdca055d60891f3ed24bec4976579ae546492b`  
		Last Modified: Thu, 30 Nov 2017 20:22:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b53f991c8d8e867a851d934c1d96d9e3c264d8660c832590d6c2656d2868e2`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9df051a8a7e57ff62e0af7dfb051b58729152b0a4ddd6a8b175ac09c2ef91c`  
		Last Modified: Thu, 30 Nov 2017 20:22:20 GMT  
		Size: 52.5 MB (52543182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a111fcc5de253dfb024196465e480e3593b37e4528690c04e1a9ea0259351332`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85bfc4343eb8bb5669c567c172ccdecd4d1a2c2648d294f91502d3398e4cd70`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e0769e44aebd461ac699858ecf3480ab7da94e957f6cd9a5c9aa72ee6a637`  
		Last Modified: Thu, 30 Nov 2017 20:22:02 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.18-jessie`

```console
$ docker pull mongo@sha256:c196f1ae20282a48bdeaea0a9d52b934db6b487f12fec621603d777232112622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.18-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2124c805e58bb29fdcfcf5acd0bbc232b0158196e142b4af3bbd1a403ddd72fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104476456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e326370ecc9862239d9d1e5fe76ee431dfe4f4b41de73941d5f1cbc9f0144eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:36:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:36:48 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:37:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:37:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:37:47 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 12 Dec 2017 02:37:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_MAJOR=3.2
# Tue, 12 Dec 2017 02:37:51 GMT
ENV MONGO_VERSION=3.2.18
# Tue, 12 Dec 2017 02:37:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:38:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:38:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:38:09 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:38:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:38:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:38:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:38:16 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:38:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761322b9de56137dce301284da4332ae8bc22c9aa2d66a2132e4f285d6d0f77c`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 2.4 MB (2397953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024b9e227467082ff4d75c5122bb98ad1a1e73078e5570f41d4532ff08f9459`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 1.1 MB (1108686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24942d2865e46999b77698103bb78537667d9afa8866ceb6f5655c09e2880f35`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6528bae3816169227387c5f39bbea32183f3359f8b70db6b04dfe8fe422c7f08`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9fefd72afe6523f748885fb8af1a8919e447ed7e4ab08deeb26c701c98b7bd`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759089b57ba3ba67235b7eb582387922473286df69cb6432d20c370f10d5e846`  
		Last Modified: Tue, 12 Dec 2017 02:42:01 GMT  
		Size: 70.8 MB (70845904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ad185bf96352c486ed6a5e9836f6675e2263aa7c25503aa6f4efcfc8b59252`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8354b74ff9b1592615f0cb140cabbb96b41fa0cb6b764c4e57a95d9df2389f12`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee18a5ca0f9eabb9e4a8c44d672953870631129584c64c87575fd53a37f6c8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.18-windowsservercore-1709`

```console
$ docker pull mongo@sha256:976d3398a5d9903b7ee4d9d8ea987680f5976feddef15cb5343896653a3d501b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.2.18-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:13a1303300699516797bb12f14100bd6e86ce2af8e7f62996c10d5dbff3be99d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728703241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833b842f1a4333dfc7fd25259d4c71d03cf6c58338dc90491d7f97b2b6e53ae`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:50:06 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:50:07 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:50:08 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:52:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:52:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:52:20 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:52:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31868190574a0dcad1fae25599c2258c9c675af7e1c382333c9c5f6198da1747`  
		Last Modified: Thu, 30 Nov 2017 20:22:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba316268eb6c1c76d30aabea3bcdca055d60891f3ed24bec4976579ae546492b`  
		Last Modified: Thu, 30 Nov 2017 20:22:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b53f991c8d8e867a851d934c1d96d9e3c264d8660c832590d6c2656d2868e2`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9df051a8a7e57ff62e0af7dfb051b58729152b0a4ddd6a8b175ac09c2ef91c`  
		Last Modified: Thu, 30 Nov 2017 20:22:20 GMT  
		Size: 52.5 MB (52543182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a111fcc5de253dfb024196465e480e3593b37e4528690c04e1a9ea0259351332`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85bfc4343eb8bb5669c567c172ccdecd4d1a2c2648d294f91502d3398e4cd70`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e0769e44aebd461ac699858ecf3480ab7da94e957f6cd9a5c9aa72ee6a637`  
		Last Modified: Thu, 30 Nov 2017 20:22:02 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.18-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:aff126cf301dff8495d5bdcae94fb9b4e2953bac927dcdfe376e41aab18b4c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.2.18-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:d722b7fbffe8efd0fbdb2554bd715c7dd90bef5a2a9c5dcc84586550826d94cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5414501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb50f0e7198a8d536827a546827814c251c7eb915d5e33527f776d3cf8782d6d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:47:25 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:49:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:49:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:49:55 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:49:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e760d413a6a319c79bdffbc3ed0f7c42b7e64fdfdb30df92b6a6f8df125d31`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482ece3b960a201e7ea3b9513472062f825bbd2e5cd4e3da7e6d690397ef7cce`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93562d586e68fcb51c292c9a821002445e0b98ad0d7a7fa380276302e0eb05`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe804520ac88307209aeb40f50a7049c9f0afb75f8050e5375ec310d31880ea`  
		Last Modified: Thu, 30 Nov 2017 20:21:49 GMT  
		Size: 57.5 MB (57514446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a8de4a643e38abbe6209df3cdb856103d604d86310c9934c4d22860e9736d`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750be109c5fee4f796dc9175e0b1b8f0cd1a0d79bdf8b42526339537c6fe96c0`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9006c1f1333e1fdcceec731601b998a91d856d66789a3b0922bbc248f696dc21`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:c196f1ae20282a48bdeaea0a9d52b934db6b487f12fec621603d777232112622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2124c805e58bb29fdcfcf5acd0bbc232b0158196e142b4af3bbd1a403ddd72fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104476456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e326370ecc9862239d9d1e5fe76ee431dfe4f4b41de73941d5f1cbc9f0144eb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:36:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:36:48 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:37:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:37:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:37:47 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 12 Dec 2017 02:37:50 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:37:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:37:50 GMT
ENV MONGO_MAJOR=3.2
# Tue, 12 Dec 2017 02:37:51 GMT
ENV MONGO_VERSION=3.2.18
# Tue, 12 Dec 2017 02:37:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:38:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:38:08 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:38:09 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:38:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:38:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:38:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:38:16 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:38:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761322b9de56137dce301284da4332ae8bc22c9aa2d66a2132e4f285d6d0f77c`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 2.4 MB (2397953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b024b9e227467082ff4d75c5122bb98ad1a1e73078e5570f41d4532ff08f9459`  
		Last Modified: Tue, 12 Dec 2017 02:41:51 GMT  
		Size: 1.1 MB (1108686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24942d2865e46999b77698103bb78537667d9afa8866ceb6f5655c09e2880f35`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6528bae3816169227387c5f39bbea32183f3359f8b70db6b04dfe8fe422c7f08`  
		Last Modified: Tue, 12 Dec 2017 02:41:49 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9fefd72afe6523f748885fb8af1a8919e447ed7e4ab08deeb26c701c98b7bd`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759089b57ba3ba67235b7eb582387922473286df69cb6432d20c370f10d5e846`  
		Last Modified: Tue, 12 Dec 2017 02:42:01 GMT  
		Size: 70.8 MB (70845904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ad185bf96352c486ed6a5e9836f6675e2263aa7c25503aa6f4efcfc8b59252`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8354b74ff9b1592615f0cb140cabbb96b41fa0cb6b764c4e57a95d9df2389f12`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee18a5ca0f9eabb9e4a8c44d672953870631129584c64c87575fd53a37f6c8d`  
		Last Modified: Tue, 12 Dec 2017 02:41:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore-1709`

```console
$ docker pull mongo@sha256:976d3398a5d9903b7ee4d9d8ea987680f5976feddef15cb5343896653a3d501b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.2-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:13a1303300699516797bb12f14100bd6e86ce2af8e7f62996c10d5dbff3be99d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728703241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833b842f1a4333dfc7fd25259d4c71d03cf6c58338dc90491d7f97b2b6e53ae`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:50:06 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:50:07 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:50:08 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:52:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:52:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:52:20 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:52:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31868190574a0dcad1fae25599c2258c9c675af7e1c382333c9c5f6198da1747`  
		Last Modified: Thu, 30 Nov 2017 20:22:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba316268eb6c1c76d30aabea3bcdca055d60891f3ed24bec4976579ae546492b`  
		Last Modified: Thu, 30 Nov 2017 20:22:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b53f991c8d8e867a851d934c1d96d9e3c264d8660c832590d6c2656d2868e2`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9df051a8a7e57ff62e0af7dfb051b58729152b0a4ddd6a8b175ac09c2ef91c`  
		Last Modified: Thu, 30 Nov 2017 20:22:20 GMT  
		Size: 52.5 MB (52543182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a111fcc5de253dfb024196465e480e3593b37e4528690c04e1a9ea0259351332`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85bfc4343eb8bb5669c567c172ccdecd4d1a2c2648d294f91502d3398e4cd70`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e0769e44aebd461ac699858ecf3480ab7da94e957f6cd9a5c9aa72ee6a637`  
		Last Modified: Thu, 30 Nov 2017 20:22:02 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:aff126cf301dff8495d5bdcae94fb9b4e2953bac927dcdfe376e41aab18b4c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.2-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:d722b7fbffe8efd0fbdb2554bd715c7dd90bef5a2a9c5dcc84586550826d94cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5414501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb50f0e7198a8d536827a546827814c251c7eb915d5e33527f776d3cf8782d6d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:47:25 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:49:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:49:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:49:55 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:49:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e760d413a6a319c79bdffbc3ed0f7c42b7e64fdfdb30df92b6a6f8df125d31`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482ece3b960a201e7ea3b9513472062f825bbd2e5cd4e3da7e6d690397ef7cce`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93562d586e68fcb51c292c9a821002445e0b98ad0d7a7fa380276302e0eb05`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe804520ac88307209aeb40f50a7049c9f0afb75f8050e5375ec310d31880ea`  
		Last Modified: Thu, 30 Nov 2017 20:21:49 GMT  
		Size: 57.5 MB (57514446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a8de4a643e38abbe6209df3cdb856103d604d86310c9934c4d22860e9736d`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750be109c5fee4f796dc9175e0b1b8f0cd1a0d79bdf8b42526339537c6fe96c0`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9006c1f1333e1fdcceec731601b998a91d856d66789a3b0922bbc248f696dc21`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:275b5a09773018813b1c7aa0fc487a60e7164851ec83151fd22c08b273b17d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:cbc2c016c28f518ab82dd9e881e9bd688b07b3280026a282c55ce88ff083cc2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132146185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aa46cfbd7a0d1101311defac39872b447b32295b40f9c99104ede5d02e9677`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:39:02 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Dec 2017 02:39:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_VERSION=3.4.10
# Tue, 12 Dec 2017 02:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:39:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:39:41 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:39:41 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:39:42 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:39:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:39:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:39:43 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:39:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775b86821f3f8edd5fe93f021d31375346afc908919042d36484c1a21853235`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c5f464234c1245823bf5970ac0dce3e8ce60d701dbd175539c8b17f6fb2493`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767371d3f4166f38d385eae72972ec9edfbe36449e00d953cdbb8347774934ed`  
		Last Modified: Tue, 12 Dec 2017 02:42:48 GMT  
		Size: 98.5 MB (98517955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19453edef90e729de0df14217ce47170f8e67c0f49f39f2091b77355560a64a5`  
		Last Modified: Tue, 12 Dec 2017 02:42:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8f8b9ab4ed631ff5f1e8f218aed2498e23c5ecb62241fc88fead434942e8de`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eb61c361525ed6c7597f2e64a9a64382e73aef167e99383daaf4ce9961efb7`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10`

```console
$ docker pull mongo@sha256:275b5a09773018813b1c7aa0fc487a60e7164851ec83151fd22c08b273b17d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.4.10` - linux; amd64

```console
$ docker pull mongo@sha256:cbc2c016c28f518ab82dd9e881e9bd688b07b3280026a282c55ce88ff083cc2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132146185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aa46cfbd7a0d1101311defac39872b447b32295b40f9c99104ede5d02e9677`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:39:02 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Dec 2017 02:39:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_VERSION=3.4.10
# Tue, 12 Dec 2017 02:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:39:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:39:41 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:39:41 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:39:42 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:39:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:39:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:39:43 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:39:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775b86821f3f8edd5fe93f021d31375346afc908919042d36484c1a21853235`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c5f464234c1245823bf5970ac0dce3e8ce60d701dbd175539c8b17f6fb2493`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767371d3f4166f38d385eae72972ec9edfbe36449e00d953cdbb8347774934ed`  
		Last Modified: Tue, 12 Dec 2017 02:42:48 GMT  
		Size: 98.5 MB (98517955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19453edef90e729de0df14217ce47170f8e67c0f49f39f2091b77355560a64a5`  
		Last Modified: Tue, 12 Dec 2017 02:42:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8f8b9ab4ed631ff5f1e8f218aed2498e23c5ecb62241fc88fead434942e8de`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eb61c361525ed6c7597f2e64a9a64382e73aef167e99383daaf4ce9961efb7`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.10` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.10` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-jessie`

```console
$ docker pull mongo@sha256:4bc31086626d1abf8525f5f071d6bc01fface4d5e7be356e2249b1c3d65b4a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.10-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cbc2c016c28f518ab82dd9e881e9bd688b07b3280026a282c55ce88ff083cc2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132146185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aa46cfbd7a0d1101311defac39872b447b32295b40f9c99104ede5d02e9677`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:39:02 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Dec 2017 02:39:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_VERSION=3.4.10
# Tue, 12 Dec 2017 02:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:39:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:39:41 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:39:41 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:39:42 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:39:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:39:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:39:43 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:39:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775b86821f3f8edd5fe93f021d31375346afc908919042d36484c1a21853235`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c5f464234c1245823bf5970ac0dce3e8ce60d701dbd175539c8b17f6fb2493`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767371d3f4166f38d385eae72972ec9edfbe36449e00d953cdbb8347774934ed`  
		Last Modified: Tue, 12 Dec 2017 02:42:48 GMT  
		Size: 98.5 MB (98517955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19453edef90e729de0df14217ce47170f8e67c0f49f39f2091b77355560a64a5`  
		Last Modified: Tue, 12 Dec 2017 02:42:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8f8b9ab4ed631ff5f1e8f218aed2498e23c5ecb62241fc88fead434942e8de`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eb61c361525ed6c7597f2e64a9a64382e73aef167e99383daaf4ce9961efb7`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-windowsservercore-1709`

```console
$ docker pull mongo@sha256:e12d3b76f09b858cc3124b49f03656356a96bccecdf94b3a0e7fe47a4ac53ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.4.10-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:d541f6e57d4b61e373bd8c075cc53051f80a9b665fa0e4803cf1b53697fd45f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.4.10-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:4bc31086626d1abf8525f5f071d6bc01fface4d5e7be356e2249b1c3d65b4a2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cbc2c016c28f518ab82dd9e881e9bd688b07b3280026a282c55ce88ff083cc2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132146185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aa46cfbd7a0d1101311defac39872b447b32295b40f9c99104ede5d02e9677`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:39:02 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 12 Dec 2017 02:39:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:39:06 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:06 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Dec 2017 02:39:07 GMT
ENV MONGO_VERSION=3.4.10
# Tue, 12 Dec 2017 02:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:39:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:39:41 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:39:41 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:39:42 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:39:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Dec 2017 02:39:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:39:43 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:39:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775b86821f3f8edd5fe93f021d31375346afc908919042d36484c1a21853235`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c5f464234c1245823bf5970ac0dce3e8ce60d701dbd175539c8b17f6fb2493`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767371d3f4166f38d385eae72972ec9edfbe36449e00d953cdbb8347774934ed`  
		Last Modified: Tue, 12 Dec 2017 02:42:48 GMT  
		Size: 98.5 MB (98517955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19453edef90e729de0df14217ce47170f8e67c0f49f39f2091b77355560a64a5`  
		Last Modified: Tue, 12 Dec 2017 02:42:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8f8b9ab4ed631ff5f1e8f218aed2498e23c5ecb62241fc88fead434942e8de`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 3.1 KB (3112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eb61c361525ed6c7597f2e64a9a64382e73aef167e99383daaf4ce9961efb7`  
		Last Modified: Tue, 12 Dec 2017 02:42:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore-1709`

```console
$ docker pull mongo@sha256:e12d3b76f09b858cc3124b49f03656356a96bccecdf94b3a0e7fe47a4ac53ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.4-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:d541f6e57d4b61e373bd8c075cc53051f80a9b665fa0e4803cf1b53697fd45f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.4-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:785f81e5cf14e8c2f6989bdf276cb025b076a8403f96f6ed45c8ec8161913fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.0`

```console
$ docker pull mongo@sha256:785f81e5cf14e8c2f6989bdf276cb025b076a8403f96f6ed45c8ec8161913fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:3.6.0` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.0` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.6.0` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.0-jessie`

```console
$ docker pull mongo@sha256:ec78a733e0cc85b454d553eec9fbc5231d0c9e5ea319eef99ae248ec59885764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.0-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.0-windowsservercore-1709`

```console
$ docker pull mongo@sha256:51f05248a36eec1dd9429b11c0fca3b53ce9b06625cdfca8223fbbd9b11e17e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.6.0-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.0-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5fa707f18c93abefe1cd9ecac8e79cb3fc416173662655ca74daddc189e8861e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.6.0-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:ec78a733e0cc85b454d553eec9fbc5231d0c9e5ea319eef99ae248ec59885764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore-1709`

```console
$ docker pull mongo@sha256:51f05248a36eec1dd9429b11c0fca3b53ce9b06625cdfca8223fbbd9b11e17e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3.6-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5fa707f18c93abefe1cd9ecac8e79cb3fc416173662655ca74daddc189e8861e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3.6-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:ec78a733e0cc85b454d553eec9fbc5231d0c9e5ea319eef99ae248ec59885764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore-1709`

```console
$ docker pull mongo@sha256:51f05248a36eec1dd9429b11c0fca3b53ce9b06625cdfca8223fbbd9b11e17e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:3-windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5fa707f18c93abefe1cd9ecac8e79cb3fc416173662655ca74daddc189e8861e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:ec78a733e0cc85b454d553eec9fbc5231d0c9e5ea319eef99ae248ec59885764
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:785f81e5cf14e8c2f6989bdf276cb025b076a8403f96f6ed45c8ec8161913fdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:2724af3de78a110b10f47c48c04cb7d9a5b9be4f7e66c1b25d77adb2da20c110
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130655716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d5e4f5070de646c09b54be170c8f857ebc65b2984e4cc9ad731441eb9133b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:36:34 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 12 Dec 2017 02:38:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:38:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 12 Dec 2017 02:39:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 12 Dec 2017 02:39:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 02:40:01 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 12 Dec 2017 02:40:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 12 Dec 2017 02:40:04 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_MAJOR=3.6
# Tue, 12 Dec 2017 02:40:05 GMT
ENV MONGO_VERSION=3.6.0
# Tue, 12 Dec 2017 02:40:06 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Dec 2017 02:40:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Dec 2017 02:40:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Dec 2017 02:40:49 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Dec 2017 02:40:49 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 12 Dec 2017 02:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:40:49 GMT
EXPOSE 27017/tcp
# Tue, 12 Dec 2017 02:40:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f58e3bb3be4bfc57e890138990e250f521d69af3a0c39c7d0394727c66dc676`  
		Last Modified: Tue, 12 Dec 2017 02:41:52 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a229fb575a6e558f699a74bc9037d818b6d74c607e68ef6cf1c548daf10ebc52`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 2.4 MB (2397783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633f2d5861aaea9ddc741fee1f3a23d40b8ac9fee8909b2843c4d676e705d564`  
		Last Modified: Tue, 12 Dec 2017 02:42:30 GMT  
		Size: 1.1 MB (1108690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f55dbb7ff1d78e8d4869f04f15564ecb0dd0c0ff6c03c25a68e1a3c685a24a7`  
		Last Modified: Tue, 12 Dec 2017 02:42:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e5d44e179146dbe9410b2861dbd1e0c26c7d7c4d1c7d87a319d5a173081a7`  
		Last Modified: Tue, 12 Dec 2017 02:43:16 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01ea54dd25020fe585bf9bb2baa7a0d83c440d570a53dcbe51031634d73d937`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa5388fe6cc72730cf6f040f6f60a14ac673d6cdd55dc2d7f3fae6b61118e04`  
		Last Modified: Tue, 12 Dec 2017 02:43:31 GMT  
		Size: 97.0 MB (97027550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aec6d191a60d0a5723f3c1812fff8c0d7aa65f5e2a01abc0f2e5f2ba37e1a64`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8a88e00d0c7c27633fdffccee6909952410c29bf490dde56b420f6785bd8e8`  
		Last Modified: Tue, 12 Dec 2017 02:43:14 GMT  
		Size: 3.2 KB (3171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:c7d5795fb0c9ad21ed98eb949c2966f2c8deac449eacf554bccec7f81287e66a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.64; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:62da6a2cbbe55cba55ad88f96f3466d5764014d3f1e2f02ae0779a157810cd8f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403980224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6da48d28171ce2ee99f82468a81b777bcb4a20bc69f5d7592de853196304901`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:39:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 15 Nov 2017 02:39:51 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 15 Nov 2017 02:48:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:48:14 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:48:17 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:48:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7d3550e4ab769bfab3500dd2c07afc83a794715915dc4db018df2631743c3`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc5de24310c02c4ab4fec29cbe608f0d5c91d2265b0d45e10159dd70f15d341`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b357073dbce29742ddc0035347929f12f596fab6766c9e841ec7f19702463598`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebca783a98f7b2da81dcd47ba2f15a86e96f845d385ab1a6028e0cb675a4841b`  
		Last Modified: Wed, 15 Nov 2017 03:02:32 GMT  
		Size: 47.0 MB (46992977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8709a224e09b1836c7d6c5e932ab832f033f60bcab827df92a522418f37e55a`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b650479b68acaf36af1fcc46d17bdede8fb47874e18e5bf48a90ac4747bc3d1c`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ed22048959ba01ea48deb384fe60a08469827eb142568afd795d9e043755cf`  
		Last Modified: Wed, 15 Nov 2017 03:02:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:1a77c4292f3b934ed9d328d53b364e99304f47fbfb86e1f196caf41e9b02f1b3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2722665621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff410b95bc1eea0a01f40ba89b5b32395804fee1ebd598cfc546247cd0e0c1dc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:49:44 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 23 Nov 2017 02:49:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Thu, 23 Nov 2017 02:49:46 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Thu, 23 Nov 2017 02:51:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:51:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:51:42 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:51:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c3c0f3dbd5ef26ff0a7ddad934648a7bd88fc382ec339430843d0c68d6f9e8`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50184b9cb183081272a55d3e30aa24f3e535a93a264d36d2ff6acf9c01645971`  
		Last Modified: Thu, 23 Nov 2017 02:58:58 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee949ae111a7707724153595fa29edf3438e68eeb852afc81430eebd1ccf63f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e9f217d8bb1f2bc1f7b59a8ca20c371eb2b0136b191a24bbe4063c8abe7253`  
		Last Modified: Thu, 23 Nov 2017 02:59:06 GMT  
		Size: 46.5 MB (46505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f755e3e5512e6572153f21d632427f986c12085eb8a7f0de4353a8ae3c088`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347a1754d6b90b830c6117bd7f7ab30a5616f5bc0aa902b16ae3387253cf72d8`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bafe8c0a28f78013d249fe31c63fd7eb4f0dc0e1a78b253ad45cf00a5f5427`  
		Last Modified: Thu, 23 Nov 2017 02:58:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:d722b7fbffe8efd0fbdb2554bd715c7dd90bef5a2a9c5dcc84586550826d94cb
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5414501704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb50f0e7198a8d536827a546827814c251c7eb915d5e33527f776d3cf8782d6d`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:47:25 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:47:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:47:27 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:49:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:49:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:49:55 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:49:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e760d413a6a319c79bdffbc3ed0f7c42b7e64fdfdb30df92b6a6f8df125d31`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482ece3b960a201e7ea3b9513472062f825bbd2e5cd4e3da7e6d690397ef7cce`  
		Last Modified: Thu, 30 Nov 2017 20:21:26 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93562d586e68fcb51c292c9a821002445e0b98ad0d7a7fa380276302e0eb05`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe804520ac88307209aeb40f50a7049c9f0afb75f8050e5375ec310d31880ea`  
		Last Modified: Thu, 30 Nov 2017 20:21:49 GMT  
		Size: 57.5 MB (57514446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a8de4a643e38abbe6209df3cdb856103d604d86310c9934c4d22860e9736d`  
		Last Modified: Thu, 30 Nov 2017 20:21:24 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750be109c5fee4f796dc9175e0b1b8f0cd1a0d79bdf8b42526339537c6fe96c0`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9006c1f1333e1fdcceec731601b998a91d856d66789a3b0922bbc248f696dc21`  
		Last Modified: Thu, 30 Nov 2017 20:21:23 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:13a1303300699516797bb12f14100bd6e86ce2af8e7f62996c10d5dbff3be99d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2728703241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833b842f1a4333dfc7fd25259d4c71d03cf6c58338dc90491d7f97b2b6e53ae`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 29 Nov 2017 17:50:06 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 29 Nov 2017 17:50:07 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 29 Nov 2017 17:50:08 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 29 Nov 2017 17:52:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 29 Nov 2017 17:52:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 29 Nov 2017 17:52:20 GMT
EXPOSE 27017/tcp
# Wed, 29 Nov 2017 17:52:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31868190574a0dcad1fae25599c2258c9c675af7e1c382333c9c5f6198da1747`  
		Last Modified: Thu, 30 Nov 2017 20:22:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba316268eb6c1c76d30aabea3bcdca055d60891f3ed24bec4976579ae546492b`  
		Last Modified: Thu, 30 Nov 2017 20:22:03 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b53f991c8d8e867a851d934c1d96d9e3c264d8660c832590d6c2656d2868e2`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9df051a8a7e57ff62e0af7dfb051b58729152b0a4ddd6a8b175ac09c2ef91c`  
		Last Modified: Thu, 30 Nov 2017 20:22:20 GMT  
		Size: 52.5 MB (52543182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a111fcc5de253dfb024196465e480e3593b37e4528690c04e1a9ea0259351332`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85bfc4343eb8bb5669c567c172ccdecd4d1a2c2648d294f91502d3398e4cd70`  
		Last Modified: Thu, 30 Nov 2017 20:22:01 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26e0769e44aebd461ac699858ecf3480ab7da94e957f6cd9a5c9aa72ee6a637`  
		Last Modified: Thu, 30 Nov 2017 20:22:02 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:e3e04867e49082d886de8d80cd720269d18d255d300b130dacf496a086bad460
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420158004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a46ad64dfe086054d548efa9fdb4b7f64e784fef669cbd1cd8f8505f24c2133`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Nov 2017 02:50:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 15 Nov 2017 02:50:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 15 Nov 2017 02:50:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 15 Nov 2017 02:59:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 15 Nov 2017 02:59:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 15 Nov 2017 02:59:24 GMT
EXPOSE 27017/tcp
# Wed, 15 Nov 2017 02:59:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5b8fb4ccc4797cb8251fb992cdf52c68069e00220e3dea756e1646bfe8b129`  
		Last Modified: Wed, 15 Nov 2017 03:03:16 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab6ae1adec590a6b58454e46b57f2c74f3ba56af46f8cbc6b6dda80269a573e`  
		Last Modified: Wed, 15 Nov 2017 03:03:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06350f97d3f86b8ff94bce9c71c9fd7714c93e7d8380500d9571dfc2434a291c`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197ffb7b254a8e7fd80e3da6b13c2d9eff9ac1617e67d16e085f3a0b75dd9dae`  
		Last Modified: Wed, 15 Nov 2017 03:03:27 GMT  
		Size: 63.2 MB (63170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f2fab9ee2f27b24631dc6b794c8b7f73f8c773bdfc422bbd723425242d40a0`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e4ef7f10df9df3533330f265c83ddeee30744a787837ce69fe1f833f0fabae`  
		Last Modified: Wed, 15 Nov 2017 03:03:13 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e401a3eb64dfa0989a94160821b5379cda74a9221b8d658a113e5f4b7cad05fe`  
		Last Modified: Wed, 15 Nov 2017 03:03:14 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:17bfb9f25b2623da4d8dd779c471768195bed3068f634a6e632cd45ab77468d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2738856321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c424ddd6a0a1ef5d65f8fe382c94d2e35fa14048cf1d64692ddcad4c72e98f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 23 Nov 2017 02:53:55 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 23 Nov 2017 02:53:56 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Thu, 23 Nov 2017 02:53:57 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Thu, 23 Nov 2017 02:55:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Nov 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 23 Nov 2017 02:56:00 GMT
EXPOSE 27017/tcp
# Thu, 23 Nov 2017 02:56:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0157483ff8aa5c4b0b01d6612f31a30fd6be0a1dac1a4eb930da512902354`  
		Last Modified: Thu, 23 Nov 2017 03:00:01 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a34e37e080f8fef322903befa65cd7f8b5e2c211da3da7ef90597faaedea213`  
		Last Modified: Thu, 23 Nov 2017 03:00:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473602cf63f0e30e831a96e695e39d72c6049cecfe53bc55b9e22b5afc349b8d`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee910e0187099e2bc6a1495717324ceaa6d17c5d8cf94c1a620855b5b7866777`  
		Last Modified: Thu, 23 Nov 2017 03:00:17 GMT  
		Size: 62.7 MB (62696241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb448e4a417ea38b944807864e26381ef102a4be7c2bd58cb6599391f003d74`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ac86dc9b2b016fae673d2d732dde1f2b6bcd3e5e9dd9bb73a206d595f32f2`  
		Last Modified: Thu, 23 Nov 2017 02:59:59 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a53c25e23583f7e1db8961dde92ebe080dcc68de9d2ddfd81133a52b346516`  
		Last Modified: Thu, 23 Nov 2017 02:59:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:51f05248a36eec1dd9429b11c0fca3b53ce9b06625cdfca8223fbbd9b11e17e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.64; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.64; amd64

```console
$ docker pull mongo@sha256:8df6e62881c66feea66df3e55d44c4db58be77205c534270b3c0870d38aa8401
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3150713179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d021ca851428b63353268997f45e15e11629c2139664ea5f02ab94957e649a81`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 02 Nov 2017 14:03:00 GMT
RUN Install update 10.0.16299.64
# Thu, 23 Nov 2017 02:49:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:50:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:50:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:50:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 03:17:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 03:18:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 03:18:04 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 03:18:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e0a3062a7ac7e07eda6c54e1ddfafc80550c98dd5e1933799f934bc4bdcf0ab`  
		Last Modified: Tue, 14 Nov 2017 18:59:18 GMT  
		Size: 401.9 MB (401851142 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c18a4bf1d8437116b78c74d8f3fe02e52f672dfc5b9143279880561df54f6f9`  
		Last Modified: Thu, 23 Nov 2017 02:58:59 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9324365967ae8d1e916ee811a1afc71f02e210f175a45ffa7c9914e2065df9f5`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11c7c2a978123e2bc58cf783903ad9d60b818a6a6c57dec86a22f7ad859ee49`  
		Last Modified: Thu, 07 Dec 2017 03:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f732c900bacf5d76857f761e7618923ba9a4b0365d856fb33ce030a49d3bf7f8`  
		Last Modified: Thu, 07 Dec 2017 03:19:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a4b66eee5d5e96e0701c7215c29b585ec93cf98ebe906c60d7d0c5cbfa60f`  
		Last Modified: Thu, 07 Dec 2017 03:20:39 GMT  
		Size: 474.6 MB (474553079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b025f8c9f069b396318e1e41948ce44e5148b745c547a0ec0b9be754bf106f25`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afefe707cd0224b358f1e796e44326e784997afe539f0c6afe1679c65d5882f`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860994f1d47bfb6a92c8ebb998b8a22cb1ab7031d3b7b20e0415ad5be8dfdf5d`  
		Last Modified: Thu, 07 Dec 2017 03:19:42 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:5fa707f18c93abefe1cd9ecac8e79cb3fc416173662655ca74daddc189e8861e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1884; amd64

### `mongo:windowsservercore-ltsc2016` - windows version 10.0.14393.1884; amd64

```console
$ docker pull mongo@sha256:17ed54e0fdbb9316b284dd61bd07a409c4a1bc2c73e9f62acbf0b0ec85686707
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5832103351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16136ef6835fd92d9df2ea090428061920bb8932c3ccf4cf20cc6ca3f07d50a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Nov 2017 21:42:13 GMT
RUN Install update 10.0.14393.1884
# Wed, 15 Nov 2017 02:39:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 07 Dec 2017 02:38:03 GMT
ENV MONGO_VERSION=3.6.0
# Thu, 07 Dec 2017 02:38:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Thu, 07 Dec 2017 02:38:05 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Thu, 07 Dec 2017 02:49:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 07 Dec 2017 02:49:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 07 Dec 2017 02:49:50 GMT
EXPOSE 27017/tcp
# Thu, 07 Dec 2017 02:49:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ead9f4ead3c5a712cb213a5318f4a8bf3604bc16e16ce4f7cf0b66f7d2073282`  
		Last Modified: Mon, 13 Nov 2017 21:42:13 GMT  
		Size: 1.3 GB (1286993027 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:548545e3bfa5574188201e946d80c077338e1cf3292a3cc901720d63138c4c22`  
		Last Modified: Wed, 15 Nov 2017 03:02:23 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bf692cefb5f4e89ae9ea4611cec377adf641cd88f37db1abb391bd8b81d6f`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf7b539c9a2bc4994eb22a4e035e2e9668b5f0fc3f433bf988fd308b4652e8`  
		Last Modified: Thu, 07 Dec 2017 03:18:36 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5cc8d666e7d6e11e5807f3ad0c1bfcfe6c48dadecda4f5675b2b80857e0275`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08e2fa84c1bda742e42dbb887911b5eb1b386ebaea2d868e2fad9d5dea8efcb`  
		Last Modified: Thu, 07 Dec 2017 03:19:24 GMT  
		Size: 475.1 MB (475116044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373e88c74fc9f3de0587d374bf9d4ab64c13d621d4117928b5604d01c0e7b79`  
		Last Modified: Thu, 07 Dec 2017 03:18:34 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c304fd53113a4547c31555acfef6e29c9c37b4e2e90ed09ddb03f3e0833ed90`  
		Last Modified: Thu, 07 Dec 2017 03:18:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0dc538ee953a2f76b6866468545e1cf997828699e27d2d89969468da7a45b8`  
		Last Modified: Thu, 07 Dec 2017 03:18:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
