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
$ docker pull mongo@sha256:41b6029c4e16b1bfebb4014acad504018ce4f04714d2040021418a5f06f2646a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:a5a2e5ac011f171bf206186caf60c7023be1bcabacdd7352afcc8b9409375286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.0` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:4b4cdf9d23dd03fb0de392555aca000ee07a04d2cd7524f23b1bc79600e2134b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5408818021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6731b906bb2bf8eb5d59f8f80e25cb6f1abb3457572f7730c9eae1945cd570e8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:43:55 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:53:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:53:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:53:31 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:53:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2fef99bf2799b9541f9c402c94b34d6956ad6af6bb8a3e27a8a01db14bb220`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31065debc73bc484363430f1d51f52e688c30017485223a31166a0a0303b8915`  
		Last Modified: Tue, 19 Dec 2017 04:07:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd9f30823161ca0b37849fc3be9a0335985bb921f3c0cb803ca7b6032bdc5e`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb160f9367fa1c9e5e7f19405387c9a223f12e7b58e30933ef46c3d59358405a`  
		Last Modified: Tue, 19 Dec 2017 04:07:27 GMT  
		Size: 47.0 MB (46994564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3786e86de14542bc7e6b0e40fd8437b9f9b6faab47fb1b3a498072f5cb79d`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12929d9801c71c998eb532a0cccfe18b3ec08feaa0f8b703442b72ab3c41185`  
		Last Modified: Tue, 19 Dec 2017 04:07:09 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4787ad0ff4679d9818664e5258f86c202196a98c0a8c962163d03e78b685f`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:a5a2e5ac011f171bf206186caf60c7023be1bcabacdd7352afcc8b9409375286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.0.15` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:4b4cdf9d23dd03fb0de392555aca000ee07a04d2cd7524f23b1bc79600e2134b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5408818021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6731b906bb2bf8eb5d59f8f80e25cb6f1abb3457572f7730c9eae1945cd570e8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:43:55 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:53:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:53:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:53:31 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:53:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2fef99bf2799b9541f9c402c94b34d6956ad6af6bb8a3e27a8a01db14bb220`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31065debc73bc484363430f1d51f52e688c30017485223a31166a0a0303b8915`  
		Last Modified: Tue, 19 Dec 2017 04:07:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd9f30823161ca0b37849fc3be9a0335985bb921f3c0cb803ca7b6032bdc5e`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb160f9367fa1c9e5e7f19405387c9a223f12e7b58e30933ef46c3d59358405a`  
		Last Modified: Tue, 19 Dec 2017 04:07:27 GMT  
		Size: 47.0 MB (46994564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3786e86de14542bc7e6b0e40fd8437b9f9b6faab47fb1b3a498072f5cb79d`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12929d9801c71c998eb532a0cccfe18b3ec08feaa0f8b703442b72ab3c41185`  
		Last Modified: Tue, 19 Dec 2017 04:07:09 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4787ad0ff4679d9818664e5258f86c202196a98c0a8c962163d03e78b685f`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
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
$ docker pull mongo@sha256:e642279115a9cf54418580ea40439f0798498301e4f0f36efc7236a25dde7587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.0.15-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:8cd3f28d7652fabf62d3dd176e4c191e44420d75538ad097fe3c937251b17bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `mongo:3.0.15-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:4b4cdf9d23dd03fb0de392555aca000ee07a04d2cd7524f23b1bc79600e2134b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5408818021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6731b906bb2bf8eb5d59f8f80e25cb6f1abb3457572f7730c9eae1945cd570e8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:43:55 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:53:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:53:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:53:31 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:53:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2fef99bf2799b9541f9c402c94b34d6956ad6af6bb8a3e27a8a01db14bb220`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31065debc73bc484363430f1d51f52e688c30017485223a31166a0a0303b8915`  
		Last Modified: Tue, 19 Dec 2017 04:07:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd9f30823161ca0b37849fc3be9a0335985bb921f3c0cb803ca7b6032bdc5e`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb160f9367fa1c9e5e7f19405387c9a223f12e7b58e30933ef46c3d59358405a`  
		Last Modified: Tue, 19 Dec 2017 04:07:27 GMT  
		Size: 47.0 MB (46994564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3786e86de14542bc7e6b0e40fd8437b9f9b6faab47fb1b3a498072f5cb79d`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12929d9801c71c998eb532a0cccfe18b3ec08feaa0f8b703442b72ab3c41185`  
		Last Modified: Tue, 19 Dec 2017 04:07:09 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4787ad0ff4679d9818664e5258f86c202196a98c0a8c962163d03e78b685f`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1195 bytes)  
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
$ docker pull mongo@sha256:e642279115a9cf54418580ea40439f0798498301e4f0f36efc7236a25dde7587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.0-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:8cd3f28d7652fabf62d3dd176e4c191e44420d75538ad097fe3c937251b17bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `mongo:3.0-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:4b4cdf9d23dd03fb0de392555aca000ee07a04d2cd7524f23b1bc79600e2134b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5408818021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6731b906bb2bf8eb5d59f8f80e25cb6f1abb3457572f7730c9eae1945cd570e8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:43:55 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:53:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:53:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:53:31 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:53:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2fef99bf2799b9541f9c402c94b34d6956ad6af6bb8a3e27a8a01db14bb220`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31065debc73bc484363430f1d51f52e688c30017485223a31166a0a0303b8915`  
		Last Modified: Tue, 19 Dec 2017 04:07:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd9f30823161ca0b37849fc3be9a0335985bb921f3c0cb803ca7b6032bdc5e`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb160f9367fa1c9e5e7f19405387c9a223f12e7b58e30933ef46c3d59358405a`  
		Last Modified: Tue, 19 Dec 2017 04:07:27 GMT  
		Size: 47.0 MB (46994564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3786e86de14542bc7e6b0e40fd8437b9f9b6faab47fb1b3a498072f5cb79d`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12929d9801c71c998eb532a0cccfe18b3ec08feaa0f8b703442b72ab3c41185`  
		Last Modified: Tue, 19 Dec 2017 04:07:09 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4787ad0ff4679d9818664e5258f86c202196a98c0a8c962163d03e78b685f`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:531516c67f25588e97db1b8135a93bd2d70d812bc581b9a303de146ec711676b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.2` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:dbde78a735d50a29bb6d859fff596f91b014daefd8a1793312f02c4b42919a6a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5419342240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efd99f479fcc84f7597a41100a841e4e432d15597925b7193ac22584e1f93ad`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:56:13 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:56:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:56:15 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 02:58:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:58:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:58:29 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:58:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697dfa7cde4d0e474d11846a2d0df84865c8e551c8eb659f8a203eb48049e9a5`  
		Last Modified: Tue, 19 Dec 2017 04:08:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d076bca83fcb3d2ef0424de829e9b65f3c40e36f76b82e671c53d2a5db32b1bc`  
		Last Modified: Tue, 19 Dec 2017 04:08:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d9e889e4438f14bdb0eeae3d2cc95843e5668cee2fde6e88e93ddc2c056333`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d6edaefa23958f3b70b79a0e0647d6c04e90fda82864a14d7f71e995c7c59`  
		Last Modified: Tue, 19 Dec 2017 04:08:25 GMT  
		Size: 57.5 MB (57518791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f134b93bb28baa9146c35fd7450857a75c5d660287edc050ddebccbd2995a7f`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dcb2e49dd76ac7497e78243c85a3c6ba418532e6dd41c917aa21c6721032ea`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ef1bf01c653e6f7236f652ad644f3040f5ac1b5fbb5d21778d657a16e67045`  
		Last Modified: Tue, 19 Dec 2017 04:08:10 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:221495d2b9b7a642fa59fb6640c5bbc1efdfc0ec8fddd8b84e2b93b35bc9ab6b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2916434524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a0f0b7b41be06d7d22d922fbdb8183c10277249b84615c7adbdfabfd70345a`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:58:40 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:58:41 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:58:42 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 03:00:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:00:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:00:22 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b144e842ac867249c947aa0cf6cf59e6fcfbcc49e6efb2e7f0742dbc20ad51`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a66e6991fc46847e0d0c8add3693bab61b5b83da78d5c40608e55a28c2c58d`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8fb4692c41b99c2be66bd7f2a704c2e6d0ec417f74897ec824a4bcc63e6062`  
		Last Modified: Tue, 19 Dec 2017 04:08:38 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3901e8f2cbaccbbf2ed1272e07ccc92366ffd5ff3f102f07c431b332b52bbd`  
		Last Modified: Tue, 19 Dec 2017 04:08:52 GMT  
		Size: 52.6 MB (52601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257eb31b051e51e455018425175f8873db12de2b0d695cf1801362366a6f19d6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3a97356c88a1060f27de644028c806b2ae706532c438abf9ab257d1eb0e6b`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cc34ffd5375d43282d15f2441bea0f89e1bba25a1d6315cc2f20b84cac17b6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.18`

```console
$ docker pull mongo@sha256:531516c67f25588e97db1b8135a93bd2d70d812bc581b9a303de146ec711676b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.2.18` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:dbde78a735d50a29bb6d859fff596f91b014daefd8a1793312f02c4b42919a6a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5419342240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efd99f479fcc84f7597a41100a841e4e432d15597925b7193ac22584e1f93ad`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:56:13 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:56:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:56:15 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 02:58:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:58:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:58:29 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:58:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697dfa7cde4d0e474d11846a2d0df84865c8e551c8eb659f8a203eb48049e9a5`  
		Last Modified: Tue, 19 Dec 2017 04:08:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d076bca83fcb3d2ef0424de829e9b65f3c40e36f76b82e671c53d2a5db32b1bc`  
		Last Modified: Tue, 19 Dec 2017 04:08:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d9e889e4438f14bdb0eeae3d2cc95843e5668cee2fde6e88e93ddc2c056333`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d6edaefa23958f3b70b79a0e0647d6c04e90fda82864a14d7f71e995c7c59`  
		Last Modified: Tue, 19 Dec 2017 04:08:25 GMT  
		Size: 57.5 MB (57518791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f134b93bb28baa9146c35fd7450857a75c5d660287edc050ddebccbd2995a7f`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dcb2e49dd76ac7497e78243c85a3c6ba418532e6dd41c917aa21c6721032ea`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ef1bf01c653e6f7236f652ad644f3040f5ac1b5fbb5d21778d657a16e67045`  
		Last Modified: Tue, 19 Dec 2017 04:08:10 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2.18` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:221495d2b9b7a642fa59fb6640c5bbc1efdfc0ec8fddd8b84e2b93b35bc9ab6b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2916434524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a0f0b7b41be06d7d22d922fbdb8183c10277249b84615c7adbdfabfd70345a`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:58:40 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:58:41 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:58:42 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 03:00:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:00:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:00:22 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b144e842ac867249c947aa0cf6cf59e6fcfbcc49e6efb2e7f0742dbc20ad51`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a66e6991fc46847e0d0c8add3693bab61b5b83da78d5c40608e55a28c2c58d`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8fb4692c41b99c2be66bd7f2a704c2e6d0ec417f74897ec824a4bcc63e6062`  
		Last Modified: Tue, 19 Dec 2017 04:08:38 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3901e8f2cbaccbbf2ed1272e07ccc92366ffd5ff3f102f07c431b332b52bbd`  
		Last Modified: Tue, 19 Dec 2017 04:08:52 GMT  
		Size: 52.6 MB (52601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257eb31b051e51e455018425175f8873db12de2b0d695cf1801362366a6f19d6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3a97356c88a1060f27de644028c806b2ae706532c438abf9ab257d1eb0e6b`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cc34ffd5375d43282d15f2441bea0f89e1bba25a1d6315cc2f20b84cac17b6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1198 bytes)  
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
$ docker pull mongo@sha256:65c8e9ed61dadd86792ef01107942c9af9e051466e82e1ea67bc32ac24719b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.2.18-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:221495d2b9b7a642fa59fb6640c5bbc1efdfc0ec8fddd8b84e2b93b35bc9ab6b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2916434524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a0f0b7b41be06d7d22d922fbdb8183c10277249b84615c7adbdfabfd70345a`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:58:40 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:58:41 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:58:42 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 03:00:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:00:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:00:22 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b144e842ac867249c947aa0cf6cf59e6fcfbcc49e6efb2e7f0742dbc20ad51`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a66e6991fc46847e0d0c8add3693bab61b5b83da78d5c40608e55a28c2c58d`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8fb4692c41b99c2be66bd7f2a704c2e6d0ec417f74897ec824a4bcc63e6062`  
		Last Modified: Tue, 19 Dec 2017 04:08:38 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3901e8f2cbaccbbf2ed1272e07ccc92366ffd5ff3f102f07c431b332b52bbd`  
		Last Modified: Tue, 19 Dec 2017 04:08:52 GMT  
		Size: 52.6 MB (52601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257eb31b051e51e455018425175f8873db12de2b0d695cf1801362366a6f19d6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3a97356c88a1060f27de644028c806b2ae706532c438abf9ab257d1eb0e6b`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cc34ffd5375d43282d15f2441bea0f89e1bba25a1d6315cc2f20b84cac17b6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.18-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:4ca988afc2c9acfa3be94244d24bc011688d20749ac8db617e42acf0f943d38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `mongo:3.2.18-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:dbde78a735d50a29bb6d859fff596f91b014daefd8a1793312f02c4b42919a6a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5419342240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efd99f479fcc84f7597a41100a841e4e432d15597925b7193ac22584e1f93ad`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:56:13 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:56:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:56:15 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 02:58:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:58:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:58:29 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:58:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697dfa7cde4d0e474d11846a2d0df84865c8e551c8eb659f8a203eb48049e9a5`  
		Last Modified: Tue, 19 Dec 2017 04:08:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d076bca83fcb3d2ef0424de829e9b65f3c40e36f76b82e671c53d2a5db32b1bc`  
		Last Modified: Tue, 19 Dec 2017 04:08:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d9e889e4438f14bdb0eeae3d2cc95843e5668cee2fde6e88e93ddc2c056333`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d6edaefa23958f3b70b79a0e0647d6c04e90fda82864a14d7f71e995c7c59`  
		Last Modified: Tue, 19 Dec 2017 04:08:25 GMT  
		Size: 57.5 MB (57518791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f134b93bb28baa9146c35fd7450857a75c5d660287edc050ddebccbd2995a7f`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dcb2e49dd76ac7497e78243c85a3c6ba418532e6dd41c917aa21c6721032ea`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ef1bf01c653e6f7236f652ad644f3040f5ac1b5fbb5d21778d657a16e67045`  
		Last Modified: Tue, 19 Dec 2017 04:08:10 GMT  
		Size: 1.2 KB (1184 bytes)  
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
$ docker pull mongo@sha256:65c8e9ed61dadd86792ef01107942c9af9e051466e82e1ea67bc32ac24719b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.2-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:221495d2b9b7a642fa59fb6640c5bbc1efdfc0ec8fddd8b84e2b93b35bc9ab6b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2916434524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a0f0b7b41be06d7d22d922fbdb8183c10277249b84615c7adbdfabfd70345a`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:58:40 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:58:41 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:58:42 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 03:00:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:00:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:00:22 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b144e842ac867249c947aa0cf6cf59e6fcfbcc49e6efb2e7f0742dbc20ad51`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a66e6991fc46847e0d0c8add3693bab61b5b83da78d5c40608e55a28c2c58d`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8fb4692c41b99c2be66bd7f2a704c2e6d0ec417f74897ec824a4bcc63e6062`  
		Last Modified: Tue, 19 Dec 2017 04:08:38 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3901e8f2cbaccbbf2ed1272e07ccc92366ffd5ff3f102f07c431b332b52bbd`  
		Last Modified: Tue, 19 Dec 2017 04:08:52 GMT  
		Size: 52.6 MB (52601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257eb31b051e51e455018425175f8873db12de2b0d695cf1801362366a6f19d6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3a97356c88a1060f27de644028c806b2ae706532c438abf9ab257d1eb0e6b`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cc34ffd5375d43282d15f2441bea0f89e1bba25a1d6315cc2f20b84cac17b6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:4ca988afc2c9acfa3be94244d24bc011688d20749ac8db617e42acf0f943d38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `mongo:3.2-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:dbde78a735d50a29bb6d859fff596f91b014daefd8a1793312f02c4b42919a6a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5419342240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efd99f479fcc84f7597a41100a841e4e432d15597925b7193ac22584e1f93ad`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:56:13 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:56:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:56:15 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 02:58:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:58:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:58:29 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:58:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697dfa7cde4d0e474d11846a2d0df84865c8e551c8eb659f8a203eb48049e9a5`  
		Last Modified: Tue, 19 Dec 2017 04:08:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d076bca83fcb3d2ef0424de829e9b65f3c40e36f76b82e671c53d2a5db32b1bc`  
		Last Modified: Tue, 19 Dec 2017 04:08:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d9e889e4438f14bdb0eeae3d2cc95843e5668cee2fde6e88e93ddc2c056333`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d6edaefa23958f3b70b79a0e0647d6c04e90fda82864a14d7f71e995c7c59`  
		Last Modified: Tue, 19 Dec 2017 04:08:25 GMT  
		Size: 57.5 MB (57518791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f134b93bb28baa9146c35fd7450857a75c5d660287edc050ddebccbd2995a7f`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dcb2e49dd76ac7497e78243c85a3c6ba418532e6dd41c917aa21c6721032ea`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ef1bf01c653e6f7236f652ad644f3040f5ac1b5fbb5d21778d657a16e67045`  
		Last Modified: Tue, 19 Dec 2017 04:08:10 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:7552f8c2c5f53522180a15c400953b7ab106bab6250a9c11cef352592c51c877
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.4` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:e66a905109292a8d27c89f50c4d08c31a5bb8074cf66d5413eaebd67b15e5162
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5429497767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec78caa0215927ffe98d1d2a4cd2a40de7d244b69b7408cd88093180bf8fda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:00:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:00:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:00:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:02:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:02:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:02:46 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:02:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baabcbaac6b1ea90ee37f64c65b56fbd5820d2830440bd97f25b389de1ac7ffa`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2879821df58c2a8ee8a0c67d6dcc088e61115241cbcb844587a4b7ab39add`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6754af4adde273c46d7cf0fe3567e8abc00d305b4234221f04a2c0c391192`  
		Last Modified: Tue, 19 Dec 2017 04:09:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b967eaee48d3ada8b70cd927f3d58f3aa388bcdc3c3e867a734133a4edf73d6e`  
		Last Modified: Tue, 19 Dec 2017 04:09:22 GMT  
		Size: 67.7 MB (67674311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dabd9cd2b6f531b7deb401ce402d18398f65a00bd85ab748d639b3a93e5936`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbea43d3b1a6a636e0d617e4bdf7a2006004a69f1a86dc2d858eda24c9ec165`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cd6814fa168c62d43235366fa45ad34f22ea265954c30075a6845d7c4540f5`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:29302f0f0eee02cb1df6ecedb46c0ba3f2e51c2a47379f4ad7de5795e0e8c332
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2926599685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba42d72049e85b3e5b42280dfd62ed78e80bb8e7101d91b64e16840ad5fa6959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:03:04 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:04:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:04:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:04:55 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:04:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897e104207f2d5fcfbeb59db966ec737475f376aaf98b3b77e20bd0d28a99`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f909469ec493bd10b7bad5b5fb130796da35ceffdd10017495d139676f7cd`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2306bda02ae76915dce1b47898ce5b4599e9cd01ef0dbe5abfa25fdeb461a1`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b8495b3df676b97f4c3e13a85c40754d9e20c470e12801f3333501163338ed`  
		Last Modified: Tue, 19 Dec 2017 04:09:52 GMT  
		Size: 62.8 MB (62766246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad9a53e77635aaccd959073dcf5e3923c5240a7e5bfb8899bc5a63a91e91b7e`  
		Last Modified: Tue, 19 Dec 2017 04:09:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebecba35c2e569980a8b7b04578cf30e0d719bbb9a7dbbf5f6e103cae3d7fd2a`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9286875f590bc8985af9b15c002756168e9695752fa557785aea4a360c886318`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10`

```console
$ docker pull mongo@sha256:7552f8c2c5f53522180a15c400953b7ab106bab6250a9c11cef352592c51c877
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.4.10` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:e66a905109292a8d27c89f50c4d08c31a5bb8074cf66d5413eaebd67b15e5162
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5429497767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec78caa0215927ffe98d1d2a4cd2a40de7d244b69b7408cd88093180bf8fda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:00:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:00:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:00:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:02:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:02:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:02:46 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:02:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baabcbaac6b1ea90ee37f64c65b56fbd5820d2830440bd97f25b389de1ac7ffa`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2879821df58c2a8ee8a0c67d6dcc088e61115241cbcb844587a4b7ab39add`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6754af4adde273c46d7cf0fe3567e8abc00d305b4234221f04a2c0c391192`  
		Last Modified: Tue, 19 Dec 2017 04:09:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b967eaee48d3ada8b70cd927f3d58f3aa388bcdc3c3e867a734133a4edf73d6e`  
		Last Modified: Tue, 19 Dec 2017 04:09:22 GMT  
		Size: 67.7 MB (67674311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dabd9cd2b6f531b7deb401ce402d18398f65a00bd85ab748d639b3a93e5936`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbea43d3b1a6a636e0d617e4bdf7a2006004a69f1a86dc2d858eda24c9ec165`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cd6814fa168c62d43235366fa45ad34f22ea265954c30075a6845d7c4540f5`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.10` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:29302f0f0eee02cb1df6ecedb46c0ba3f2e51c2a47379f4ad7de5795e0e8c332
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2926599685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba42d72049e85b3e5b42280dfd62ed78e80bb8e7101d91b64e16840ad5fa6959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:03:04 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:04:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:04:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:04:55 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:04:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897e104207f2d5fcfbeb59db966ec737475f376aaf98b3b77e20bd0d28a99`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f909469ec493bd10b7bad5b5fb130796da35ceffdd10017495d139676f7cd`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2306bda02ae76915dce1b47898ce5b4599e9cd01ef0dbe5abfa25fdeb461a1`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b8495b3df676b97f4c3e13a85c40754d9e20c470e12801f3333501163338ed`  
		Last Modified: Tue, 19 Dec 2017 04:09:52 GMT  
		Size: 62.8 MB (62766246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad9a53e77635aaccd959073dcf5e3923c5240a7e5bfb8899bc5a63a91e91b7e`  
		Last Modified: Tue, 19 Dec 2017 04:09:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebecba35c2e569980a8b7b04578cf30e0d719bbb9a7dbbf5f6e103cae3d7fd2a`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9286875f590bc8985af9b15c002756168e9695752fa557785aea4a360c886318`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1193 bytes)  
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
$ docker pull mongo@sha256:b54357b02c9de5b60a13d54d6db47a46d4f6b7f47a80c0b963a9e031629866bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.4.10-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:29302f0f0eee02cb1df6ecedb46c0ba3f2e51c2a47379f4ad7de5795e0e8c332
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2926599685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba42d72049e85b3e5b42280dfd62ed78e80bb8e7101d91b64e16840ad5fa6959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:03:04 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:04:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:04:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:04:55 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:04:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897e104207f2d5fcfbeb59db966ec737475f376aaf98b3b77e20bd0d28a99`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f909469ec493bd10b7bad5b5fb130796da35ceffdd10017495d139676f7cd`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2306bda02ae76915dce1b47898ce5b4599e9cd01ef0dbe5abfa25fdeb461a1`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b8495b3df676b97f4c3e13a85c40754d9e20c470e12801f3333501163338ed`  
		Last Modified: Tue, 19 Dec 2017 04:09:52 GMT  
		Size: 62.8 MB (62766246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad9a53e77635aaccd959073dcf5e3923c5240a7e5bfb8899bc5a63a91e91b7e`  
		Last Modified: Tue, 19 Dec 2017 04:09:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebecba35c2e569980a8b7b04578cf30e0d719bbb9a7dbbf5f6e103cae3d7fd2a`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9286875f590bc8985af9b15c002756168e9695752fa557785aea4a360c886318`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:1e30ccadf1ae1a8781f2782c8160a1ec9c326b295bdafda4cd94e1c1bffc6e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `mongo:3.4.10-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:e66a905109292a8d27c89f50c4d08c31a5bb8074cf66d5413eaebd67b15e5162
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5429497767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec78caa0215927ffe98d1d2a4cd2a40de7d244b69b7408cd88093180bf8fda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:00:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:00:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:00:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:02:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:02:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:02:46 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:02:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baabcbaac6b1ea90ee37f64c65b56fbd5820d2830440bd97f25b389de1ac7ffa`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2879821df58c2a8ee8a0c67d6dcc088e61115241cbcb844587a4b7ab39add`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6754af4adde273c46d7cf0fe3567e8abc00d305b4234221f04a2c0c391192`  
		Last Modified: Tue, 19 Dec 2017 04:09:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b967eaee48d3ada8b70cd927f3d58f3aa388bcdc3c3e867a734133a4edf73d6e`  
		Last Modified: Tue, 19 Dec 2017 04:09:22 GMT  
		Size: 67.7 MB (67674311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dabd9cd2b6f531b7deb401ce402d18398f65a00bd85ab748d639b3a93e5936`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbea43d3b1a6a636e0d617e4bdf7a2006004a69f1a86dc2d858eda24c9ec165`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cd6814fa168c62d43235366fa45ad34f22ea265954c30075a6845d7c4540f5`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1193 bytes)  
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
$ docker pull mongo@sha256:b54357b02c9de5b60a13d54d6db47a46d4f6b7f47a80c0b963a9e031629866bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.4-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:29302f0f0eee02cb1df6ecedb46c0ba3f2e51c2a47379f4ad7de5795e0e8c332
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2926599685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba42d72049e85b3e5b42280dfd62ed78e80bb8e7101d91b64e16840ad5fa6959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:03:04 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:04:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:04:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:04:55 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:04:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897e104207f2d5fcfbeb59db966ec737475f376aaf98b3b77e20bd0d28a99`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f909469ec493bd10b7bad5b5fb130796da35ceffdd10017495d139676f7cd`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2306bda02ae76915dce1b47898ce5b4599e9cd01ef0dbe5abfa25fdeb461a1`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b8495b3df676b97f4c3e13a85c40754d9e20c470e12801f3333501163338ed`  
		Last Modified: Tue, 19 Dec 2017 04:09:52 GMT  
		Size: 62.8 MB (62766246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad9a53e77635aaccd959073dcf5e3923c5240a7e5bfb8899bc5a63a91e91b7e`  
		Last Modified: Tue, 19 Dec 2017 04:09:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebecba35c2e569980a8b7b04578cf30e0d719bbb9a7dbbf5f6e103cae3d7fd2a`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9286875f590bc8985af9b15c002756168e9695752fa557785aea4a360c886318`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:1e30ccadf1ae1a8781f2782c8160a1ec9c326b295bdafda4cd94e1c1bffc6e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `mongo:3.4-windowsservercore-ltsc2016` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:e66a905109292a8d27c89f50c4d08c31a5bb8074cf66d5413eaebd67b15e5162
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5429497767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec78caa0215927ffe98d1d2a4cd2a40de7d244b69b7408cd88093180bf8fda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:00:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:00:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:00:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:02:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:02:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:02:46 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:02:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baabcbaac6b1ea90ee37f64c65b56fbd5820d2830440bd97f25b389de1ac7ffa`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2879821df58c2a8ee8a0c67d6dcc088e61115241cbcb844587a4b7ab39add`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6754af4adde273c46d7cf0fe3567e8abc00d305b4234221f04a2c0c391192`  
		Last Modified: Tue, 19 Dec 2017 04:09:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b967eaee48d3ada8b70cd927f3d58f3aa388bcdc3c3e867a734133a4edf73d6e`  
		Last Modified: Tue, 19 Dec 2017 04:09:22 GMT  
		Size: 67.7 MB (67674311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dabd9cd2b6f531b7deb401ce402d18398f65a00bd85ab748d639b3a93e5936`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbea43d3b1a6a636e0d617e4bdf7a2006004a69f1a86dc2d858eda24c9ec165`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cd6814fa168c62d43235366fa45ad34f22ea265954c30075a6845d7c4540f5`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:41b6029c4e16b1bfebb4014acad504018ce4f04714d2040021418a5f06f2646a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.6` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.0`

```console
$ docker pull mongo@sha256:41b6029c4e16b1bfebb4014acad504018ce4f04714d2040021418a5f06f2646a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:3.6.0` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
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
$ docker pull mongo@sha256:11d9ed6978354c6946ba8b35a8583e70bfcef88e372e438c6ea20fb072e11c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.6.0-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
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
$ docker pull mongo@sha256:11d9ed6978354c6946ba8b35a8583e70bfcef88e372e438c6ea20fb072e11c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3.6-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
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
$ docker pull mongo@sha256:11d9ed6978354c6946ba8b35a8583e70bfcef88e372e438c6ea20fb072e11c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:3-windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
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
$ docker pull mongo@sha256:41b6029c4e16b1bfebb4014acad504018ce4f04714d2040021418a5f06f2646a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.125; amd64

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

### `mongo:latest` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:d69d169128659047b9b30781c28f62759f80dc8c23a6eeffad9c244bd44ac872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64
	-	windows version 10.0.14393.1944; amd64
	-	windows version 10.0.16299.125; amd64
	-	windows version 10.0.14393.1884; amd64
	-	windows version 10.0.16299.125; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:4b4cdf9d23dd03fb0de392555aca000ee07a04d2cd7524f23b1bc79600e2134b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5408818021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6731b906bb2bf8eb5d59f8f80e25cb6f1abb3457572f7730c9eae1945cd570e8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:43:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:43:55 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:53:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:53:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:53:31 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:53:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2fef99bf2799b9541f9c402c94b34d6956ad6af6bb8a3e27a8a01db14bb220`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31065debc73bc484363430f1d51f52e688c30017485223a31166a0a0303b8915`  
		Last Modified: Tue, 19 Dec 2017 04:07:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd9f30823161ca0b37849fc3be9a0335985bb921f3c0cb803ca7b6032bdc5e`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb160f9367fa1c9e5e7f19405387c9a223f12e7b58e30933ef46c3d59358405a`  
		Last Modified: Tue, 19 Dec 2017 04:07:27 GMT  
		Size: 47.0 MB (46994564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3786e86de14542bc7e6b0e40fd8437b9f9b6faab47fb1b3a498072f5cb79d`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12929d9801c71c998eb532a0cccfe18b3ec08feaa0f8b703442b72ab3c41185`  
		Last Modified: Tue, 19 Dec 2017 04:07:09 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4787ad0ff4679d9818664e5258f86c202196a98c0a8c962163d03e78b685f`  
		Last Modified: Tue, 19 Dec 2017 04:07:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:00389d2bd6ffd221dfd368ac17ecfc5e260eceb2047ee6863a71fbdc5bd75191
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2910420228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdbab21328ecf02ab2f68ac4290edca6369ec007e8168c943cb98ceebd36437`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:53:47 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Dec 2017 02:53:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 13 Dec 2017 02:53:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 13 Dec 2017 02:55:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:55:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:56:01 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:56:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a4f70e8a55dd9ea85316b97f10c7d87d64d891d4a3893db509966ddf56ca77`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3ea3f4e8d1ec0b6a063c611c64ffb2378d0ea00164896c00a217f03d1d5d8`  
		Last Modified: Tue, 19 Dec 2017 04:07:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b39b3d13ed5c75186b92c5228062beafa6c75dc85824bf6ce76b7fdfefdeb0`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d712635eedd07152360df86c29be50fe9b990b6e6542bc774957a913a31c050`  
		Last Modified: Tue, 19 Dec 2017 04:07:52 GMT  
		Size: 46.6 MB (46586800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603d2b16e18ce034f792da7086da5c088f939d755a4cdb266e8daae630494f63`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15104271b3f326fbb100b4c990b242c7c5e2da4f1dc143fb1d7a517df9edd65`  
		Last Modified: Tue, 19 Dec 2017 04:07:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdce9f53f93a4baac40828dea63b2616bab3b23f5d5c007506f00400fa4c2510`  
		Last Modified: Tue, 19 Dec 2017 04:07:39 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:dbde78a735d50a29bb6d859fff596f91b014daefd8a1793312f02c4b42919a6a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5419342240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efd99f479fcc84f7597a41100a841e4e432d15597925b7193ac22584e1f93ad`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:56:13 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:56:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:56:15 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 02:58:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 02:58:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 02:58:29 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 02:58:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697dfa7cde4d0e474d11846a2d0df84865c8e551c8eb659f8a203eb48049e9a5`  
		Last Modified: Tue, 19 Dec 2017 04:08:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d076bca83fcb3d2ef0424de829e9b65f3c40e36f76b82e671c53d2a5db32b1bc`  
		Last Modified: Tue, 19 Dec 2017 04:08:14 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d9e889e4438f14bdb0eeae3d2cc95843e5668cee2fde6e88e93ddc2c056333`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d6edaefa23958f3b70b79a0e0647d6c04e90fda82864a14d7f71e995c7c59`  
		Last Modified: Tue, 19 Dec 2017 04:08:25 GMT  
		Size: 57.5 MB (57518791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f134b93bb28baa9146c35fd7450857a75c5d660287edc050ddebccbd2995a7f`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dcb2e49dd76ac7497e78243c85a3c6ba418532e6dd41c917aa21c6721032ea`  
		Last Modified: Tue, 19 Dec 2017 04:08:09 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ef1bf01c653e6f7236f652ad644f3040f5ac1b5fbb5d21778d657a16e67045`  
		Last Modified: Tue, 19 Dec 2017 04:08:10 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:221495d2b9b7a642fa59fb6640c5bbc1efdfc0ec8fddd8b84e2b93b35bc9ab6b
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2916434524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a0f0b7b41be06d7d22d922fbdb8183c10277249b84615c7adbdfabfd70345a`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 02:58:40 GMT
ENV MONGO_VERSION=3.2.18
# Wed, 13 Dec 2017 02:58:41 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.18-signed.msi
# Wed, 13 Dec 2017 02:58:42 GMT
ENV MONGO_DOWNLOAD_SHA256=f86aba3b01fc3b50ffecfe1ae11cd9d3e0456b3e84cc25e9cc2eb40bcfa40452
# Wed, 13 Dec 2017 03:00:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:00:19 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:00:22 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:00:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b144e842ac867249c947aa0cf6cf59e6fcfbcc49e6efb2e7f0742dbc20ad51`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a66e6991fc46847e0d0c8add3693bab61b5b83da78d5c40608e55a28c2c58d`  
		Last Modified: Tue, 19 Dec 2017 04:08:40 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8fb4692c41b99c2be66bd7f2a704c2e6d0ec417f74897ec824a4bcc63e6062`  
		Last Modified: Tue, 19 Dec 2017 04:08:38 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3901e8f2cbaccbbf2ed1272e07ccc92366ffd5ff3f102f07c431b332b52bbd`  
		Last Modified: Tue, 19 Dec 2017 04:08:52 GMT  
		Size: 52.6 MB (52601081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257eb31b051e51e455018425175f8873db12de2b0d695cf1801362366a6f19d6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad3a97356c88a1060f27de644028c806b2ae706532c438abf9ab257d1eb0e6b`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cc34ffd5375d43282d15f2441bea0f89e1bba25a1d6315cc2f20b84cac17b6`  
		Last Modified: Tue, 19 Dec 2017 04:08:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.14393.1944; amd64

```console
$ docker pull mongo@sha256:e66a905109292a8d27c89f50c4d08c31a5bb8074cf66d5413eaebd67b15e5162
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5429497767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec78caa0215927ffe98d1d2a4cd2a40de7d244b69b7408cd88093180bf8fda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:43:15 GMT
RUN Install update 10.0.14393.1944
# Wed, 13 Dec 2017 02:43:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:00:37 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:00:38 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:00:39 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:02:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:02:45 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:02:46 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:02:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3725c17d990aca553df2f531b536a72c07f2781fcbb60b01a557e3666808dda2`  
		Last Modified: Mon, 11 Dec 2017 21:43:15 GMT  
		Size: 1.3 GB (1291829199 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c29de164cfa4c6f227e7f0a8df3325f748ead8e6293c8f40db2bdc289e3a94d9`  
		Last Modified: Tue, 19 Dec 2017 04:07:11 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baabcbaac6b1ea90ee37f64c65b56fbd5820d2830440bd97f25b389de1ac7ffa`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2879821df58c2a8ee8a0c67d6dcc088e61115241cbcb844587a4b7ab39add`  
		Last Modified: Tue, 19 Dec 2017 04:09:07 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b6754af4adde273c46d7cf0fe3567e8abc00d305b4234221f04a2c0c391192`  
		Last Modified: Tue, 19 Dec 2017 04:09:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b967eaee48d3ada8b70cd927f3d58f3aa388bcdc3c3e867a734133a4edf73d6e`  
		Last Modified: Tue, 19 Dec 2017 04:09:22 GMT  
		Size: 67.7 MB (67674311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dabd9cd2b6f531b7deb401ce402d18398f65a00bd85ab748d639b3a93e5936`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbea43d3b1a6a636e0d617e4bdf7a2006004a69f1a86dc2d858eda24c9ec165`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cd6814fa168c62d43235366fa45ad34f22ea265954c30075a6845d7c4540f5`  
		Last Modified: Tue, 19 Dec 2017 04:09:04 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:29302f0f0eee02cb1df6ecedb46c0ba3f2e51c2a47379f4ad7de5795e0e8c332
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 GB (2926599685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba42d72049e85b3e5b42280dfd62ed78e80bb8e7101d91b64e16840ad5fa6959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 13 Dec 2017 03:03:04 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 13 Dec 2017 03:03:05 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 13 Dec 2017 03:04:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 13 Dec 2017 03:04:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 13 Dec 2017 03:04:55 GMT
EXPOSE 27017/tcp
# Wed, 13 Dec 2017 03:04:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3897e104207f2d5fcfbeb59db966ec737475f376aaf98b3b77e20bd0d28a99`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f909469ec493bd10b7bad5b5fb130796da35ceffdd10017495d139676f7cd`  
		Last Modified: Tue, 19 Dec 2017 04:09:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2306bda02ae76915dce1b47898ce5b4599e9cd01ef0dbe5abfa25fdeb461a1`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b8495b3df676b97f4c3e13a85c40754d9e20c470e12801f3333501163338ed`  
		Last Modified: Tue, 19 Dec 2017 04:09:52 GMT  
		Size: 62.8 MB (62766246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad9a53e77635aaccd959073dcf5e3923c5240a7e5bfb8899bc5a63a91e91b7e`  
		Last Modified: Tue, 19 Dec 2017 04:09:35 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebecba35c2e569980a8b7b04578cf30e0d719bbb9a7dbbf5f6e103cae3d7fd2a`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9286875f590bc8985af9b15c002756168e9695752fa557785aea4a360c886318`  
		Last Modified: Tue, 19 Dec 2017 04:09:36 GMT  
		Size: 1.2 KB (1193 bytes)  
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

### `mongo:windowsservercore` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore-1709`

```console
$ docker pull mongo@sha256:11d9ed6978354c6946ba8b35a8583e70bfcef88e372e438c6ea20fb072e11c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.125; amd64

### `mongo:windowsservercore-1709` - windows version 10.0.16299.125; amd64

```console
$ docker pull mongo@sha256:8e8447ec3fb0722973d8005a4cb7dfe8bb4686a8bbe1d432b3dcf41bf129c3f3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3338453570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d22162d03fffaa68878cb19f9598e460a682458a00182d59b112425d31da5ff`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Dec 2017 18:00:03 GMT
RUN Install update 10.0.16299.125
# Wed, 13 Dec 2017 02:53:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Dec 2017 17:58:52 GMT
ENV MONGO_VERSION=3.6.0
# Fri, 15 Dec 2017 17:58:53 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.0-signed.msi
# Fri, 15 Dec 2017 17:58:54 GMT
ENV MONGO_DOWNLOAD_SHA256=51ba9160f887c7f5cf0786fec9a40b8e74c38b7f9fe12923b0efae3bdfd34064
# Fri, 15 Dec 2017 18:13:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Dec 2017 18:13:05 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Dec 2017 18:13:06 GMT
EXPOSE 27017/tcp
# Fri, 15 Dec 2017 18:13:07 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e50cc21fbc56936f06a5d9dfe4559b7108a89064fcb39dfbe14150d5cfeb912b`  
		Last Modified: Mon, 11 Dec 2017 22:06:21 GMT  
		Size: 589.5 MB (589524514 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a768329167a641833bde82301c06d629170e446fe0d207a2fe4a55c0a7aeb6ac`  
		Last Modified: Tue, 19 Dec 2017 04:07:42 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44b080cb6059a711be6e803ecf0dd6f072c16559e94dbb3ec03839fdacc8a7e`  
		Last Modified: Tue, 19 Dec 2017 04:10:09 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26839697b9dbf2d96cae0f632cc43d3be0fdceca9fdeca301276a9149b6bc56f`  
		Last Modified: Tue, 19 Dec 2017 04:10:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ee6981ce10656bfe00437c2be4d35e311f035c1b9a03627da0527b2195ebdd`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88455c564e25ac2aace839d17b0ea2ddd4ee0b0cd6fd768da198aecb236b156`  
		Last Modified: Tue, 19 Dec 2017 04:11:20 GMT  
		Size: 474.6 MB (474620162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2738c5d0431bcd93d968bcccf85e060477d06dca7a920c79218910c5c20f5d`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2e20a66fc7d85c12fdf64e07ec3d96e9fe05ebdae456f3b2281e38f895396`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a0ec57ee4f3313ebda1a8759462fe3d1b43f3429b439c17c2b556421735081`  
		Last Modified: Tue, 19 Dec 2017 04:10:04 GMT  
		Size: 1.2 KB (1190 bytes)  
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
