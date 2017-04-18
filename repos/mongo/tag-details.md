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
-	[`mongo:3.4.3`](#mongo343)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.3-windowsservercore`](#mongo343-windowsservercore)
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
$ docker pull mongo@sha256:7895d7f5b0246646c610143e58dd2fbe8025bd3097cc1dca82513836208e1355
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82784820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2913d92e3d53c9e499f168a5c640af4bb2fe9b597af1b48cb62714ddcbd484`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:41 GMT
ADD file:6717f42bcda448be463d99de27eca930fa0cb829d374517d6c2c29e570ae584b in / 
# Tue, 21 Mar 2017 18:36:56 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 24 Mar 2017 00:01:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 24 Mar 2017 00:01:22 GMT
ENV GOSU_VERSION=1.7
# Fri, 24 Mar 2017 00:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 24 Mar 2017 00:01:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 24 Mar 2017 00:01:39 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 24 Mar 2017 00:01:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 24 Mar 2017 00:01:41 GMT
ENV MONGO_MAJOR=3.0
# Fri, 24 Mar 2017 00:01:59 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 24 Mar 2017 00:02:00 GMT
ENV MONGO_PACKAGE=mongodb-org
# Fri, 24 Mar 2017 00:02:01 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 24 Mar 2017 00:02:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 24 Mar 2017 00:02:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 24 Mar 2017 00:02:22 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:00 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:03 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2c72335a9389415560dbbecd037cf8f6ed6faf43b91f2ac0b7be5bc30c57e285`  
		Last Modified: Tue, 21 Mar 2017 18:54:09 GMT  
		Size: 18.9 MB (18875874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab5399de1bd7911f5518c143c3c2d91c361d2c19499f722d2d4d78056f7fcf1`  
		Last Modified: Thu, 23 Mar 2017 22:05:20 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a17e524f5f2f7be37ba62c52de7ac14e9a41761be93f97c46cf0f4b74f4160`  
		Last Modified: Thu, 23 Mar 2017 22:05:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a2a6aa0c634a2d139b3a3bad65cf371e03a0c169f8b60637de368f4093d487`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 556.4 KB (556432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434113df23bbf676af72521541cdbe94516c1233be59c8fb886680c3ded61380`  
		Last Modified: Fri, 24 Mar 2017 00:04:08 GMT  
		Size: 1.2 MB (1249227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e3749d3c4e8f045f8fe673ac4460925bd5beb920c2b79075531c5cc965e2b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7c32a4e464edb55b25fc113744a0f80db36365cfc2ae52791b863fb0efe1b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5191a9f084c557065575c15645b205382c6fc6157dcef96b06ac9561ab35d8`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687a879410ee74dd2088f527fce5446fec357f434f63ba22452a1acaa95cb4f4`  
		Last Modified: Fri, 24 Mar 2017 00:04:30 GMT  
		Size: 62.1 MB (62095878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bf7fa1c15ff07895ad59318cadd4f8d5d9b1ecf5c5cbd8d758f18a724fbd78`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d924e4ca68151caa1f63cf27b5df62a58652f5518e29026c35fa20fd01c8e6fa`  
		Last Modified: Thu, 13 Apr 2017 19:55:31 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b635090f8a9a522b6b65676ef6cadec6832b2165d977c3f869d6e2fb6df16b`  
		Last Modified: Thu, 13 Apr 2017 19:55:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:7895d7f5b0246646c610143e58dd2fbe8025bd3097cc1dca82513836208e1355
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82784820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2913d92e3d53c9e499f168a5c640af4bb2fe9b597af1b48cb62714ddcbd484`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:41 GMT
ADD file:6717f42bcda448be463d99de27eca930fa0cb829d374517d6c2c29e570ae584b in / 
# Tue, 21 Mar 2017 18:36:56 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 24 Mar 2017 00:01:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 24 Mar 2017 00:01:22 GMT
ENV GOSU_VERSION=1.7
# Fri, 24 Mar 2017 00:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 24 Mar 2017 00:01:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 24 Mar 2017 00:01:39 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 24 Mar 2017 00:01:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 24 Mar 2017 00:01:41 GMT
ENV MONGO_MAJOR=3.0
# Fri, 24 Mar 2017 00:01:59 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 24 Mar 2017 00:02:00 GMT
ENV MONGO_PACKAGE=mongodb-org
# Fri, 24 Mar 2017 00:02:01 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 24 Mar 2017 00:02:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 24 Mar 2017 00:02:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 24 Mar 2017 00:02:22 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:00 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:03 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2c72335a9389415560dbbecd037cf8f6ed6faf43b91f2ac0b7be5bc30c57e285`  
		Last Modified: Tue, 21 Mar 2017 18:54:09 GMT  
		Size: 18.9 MB (18875874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab5399de1bd7911f5518c143c3c2d91c361d2c19499f722d2d4d78056f7fcf1`  
		Last Modified: Thu, 23 Mar 2017 22:05:20 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a17e524f5f2f7be37ba62c52de7ac14e9a41761be93f97c46cf0f4b74f4160`  
		Last Modified: Thu, 23 Mar 2017 22:05:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a2a6aa0c634a2d139b3a3bad65cf371e03a0c169f8b60637de368f4093d487`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 556.4 KB (556432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434113df23bbf676af72521541cdbe94516c1233be59c8fb886680c3ded61380`  
		Last Modified: Fri, 24 Mar 2017 00:04:08 GMT  
		Size: 1.2 MB (1249227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e3749d3c4e8f045f8fe673ac4460925bd5beb920c2b79075531c5cc965e2b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7c32a4e464edb55b25fc113744a0f80db36365cfc2ae52791b863fb0efe1b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5191a9f084c557065575c15645b205382c6fc6157dcef96b06ac9561ab35d8`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687a879410ee74dd2088f527fce5446fec357f434f63ba22452a1acaa95cb4f4`  
		Last Modified: Fri, 24 Mar 2017 00:04:30 GMT  
		Size: 62.1 MB (62095878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bf7fa1c15ff07895ad59318cadd4f8d5d9b1ecf5c5cbd8d758f18a724fbd78`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d924e4ca68151caa1f63cf27b5df62a58652f5518e29026c35fa20fd01c8e6fa`  
		Last Modified: Thu, 13 Apr 2017 19:55:31 GMT  
		Size: 2.9 KB (2910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b635090f8a9a522b6b65676ef6cadec6832b2165d977c3f869d6e2fb6df16b`  
		Last Modified: Thu, 13 Apr 2017 19:55:30 GMT  
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
$ docker pull mongo@sha256:65d93618895dcb3f337069bdf7883e57e339d4e498b5f932666484716f7027c5
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.12` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101733092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a276a532805edf237f998c1571a16205f75efdab31d83246dc00d2c2e9a4fce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:02:41 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 21 Mar 2017 21:02:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_MAJOR=3.2
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 21 Mar 2017 21:02:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:02:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:02:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:02:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:02:59 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:22 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:26 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2dbf8c088e014440ec07cfd82136053eebf545040ba57be2b64aea5edd31f`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 3.1 KB (3068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d3c3d5d65a9e25d60fd7db268ed7c39877ffcf463546a686a97472d2c207ac`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac29807ce935bb91a0b43dc73c9c0ee9ed52ea782959a1bc075b3466502d3b`  
		Last Modified: Thu, 23 Mar 2017 22:06:47 GMT  
		Size: 70.6 MB (70626367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b043a6d579aec70370e8b958a9a2b370a17107eea0eeca2f1f94d357e3857d`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736612163226b8322ecf5287389a972a31669482395391c9a7316dbf2c7c86d6`  
		Last Modified: Thu, 13 Apr 2017 19:56:12 GMT  
		Size: 2.9 KB (2908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9b2668e4ff80736d6547d2c903f2d36d00fb994f968f2eaa8c2e8c088e9d56`  
		Last Modified: Thu, 13 Apr 2017 19:56:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:65d93618895dcb3f337069bdf7883e57e339d4e498b5f932666484716f7027c5
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101733092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a276a532805edf237f998c1571a16205f75efdab31d83246dc00d2c2e9a4fce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:02:41 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 21 Mar 2017 21:02:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_MAJOR=3.2
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 21 Mar 2017 21:02:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:02:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:02:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:02:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:02:59 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:22 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:26 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2dbf8c088e014440ec07cfd82136053eebf545040ba57be2b64aea5edd31f`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 3.1 KB (3068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d3c3d5d65a9e25d60fd7db268ed7c39877ffcf463546a686a97472d2c207ac`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac29807ce935bb91a0b43dc73c9c0ee9ed52ea782959a1bc075b3466502d3b`  
		Last Modified: Thu, 23 Mar 2017 22:06:47 GMT  
		Size: 70.6 MB (70626367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b043a6d579aec70370e8b958a9a2b370a17107eea0eeca2f1f94d357e3857d`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736612163226b8322ecf5287389a972a31669482395391c9a7316dbf2c7c86d6`  
		Last Modified: Thu, 13 Apr 2017 19:56:12 GMT  
		Size: 2.9 KB (2908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9b2668e4ff80736d6547d2c903f2d36d00fb994f968f2eaa8c2e8c088e9d56`  
		Last Modified: Thu, 13 Apr 2017 19:56:11 GMT  
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

## `mongo:3.4.3`

```console
$ docker pull mongo@sha256:2b1c1183829ad5c509b07a617cc53ef24ca77fd60276882608c3635fcd407257
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128557052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2eaf28bb84a85bbeaf415967a1d07a55e92b9e15045d6d47947a53430bbea0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:44 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:48 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2369c7a1c288b73995d030ff1444e6e2f244b4355811ef131ae3ae9202de425e`  
		Last Modified: Thu, 13 Apr 2017 19:56:51 GMT  
		Size: 2.9 KB (2907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0dcc8bccd78883f6ca47a96fd631be714cb80f10d040667226eb84c38cbeb6`  
		Last Modified: Thu, 13 Apr 2017 19:56:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:2b1c1183829ad5c509b07a617cc53ef24ca77fd60276882608c3635fcd407257
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128557052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2eaf28bb84a85bbeaf415967a1d07a55e92b9e15045d6d47947a53430bbea0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:44 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:48 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2369c7a1c288b73995d030ff1444e6e2f244b4355811ef131ae3ae9202de425e`  
		Last Modified: Thu, 13 Apr 2017 19:56:51 GMT  
		Size: 2.9 KB (2907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0dcc8bccd78883f6ca47a96fd631be714cb80f10d040667226eb84c38cbeb6`  
		Last Modified: Thu, 13 Apr 2017 19:56:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:2b1c1183829ad5c509b07a617cc53ef24ca77fd60276882608c3635fcd407257
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128557052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2eaf28bb84a85bbeaf415967a1d07a55e92b9e15045d6d47947a53430bbea0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:44 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:48 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2369c7a1c288b73995d030ff1444e6e2f244b4355811ef131ae3ae9202de425e`  
		Last Modified: Thu, 13 Apr 2017 19:56:51 GMT  
		Size: 2.9 KB (2907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0dcc8bccd78883f6ca47a96fd631be714cb80f10d040667226eb84c38cbeb6`  
		Last Modified: Thu, 13 Apr 2017 19:56:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:2b1c1183829ad5c509b07a617cc53ef24ca77fd60276882608c3635fcd407257
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128557052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2eaf28bb84a85bbeaf415967a1d07a55e92b9e15045d6d47947a53430bbea0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Thu, 13 Apr 2017 19:54:44 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:54:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 13 Apr 2017 19:54:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:54:48 GMT
EXPOSE 27017/tcp
# Thu, 13 Apr 2017 19:54:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2369c7a1c288b73995d030ff1444e6e2f244b4355811ef131ae3ae9202de425e`  
		Last Modified: Thu, 13 Apr 2017 19:56:51 GMT  
		Size: 2.9 KB (2907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0dcc8bccd78883f6ca47a96fd631be714cb80f10d040667226eb84c38cbeb6`  
		Last Modified: Thu, 13 Apr 2017 19:56:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.3-windowsservercore`

```console
$ docker pull mongo@sha256:e9730ece1e91761196771f9cb8d9b6abd675ac070b9fb9cb838910b4ec0398ca
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.3-windowsservercore` - windows; amd64

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
$ docker pull mongo@sha256:ae498085ee51b48c8ff045c3aeb767a8c19f1cb1506b62888889dbe9c84f798c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131958513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c78c702f2d2f47b1095a90356a1deb6f2ca0b4add10a5c2680c124ec150ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 18 Apr 2017 17:08:42 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 18 Apr 2017 17:09:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Apr 2017 17:09:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Apr 2017 17:09:04 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Apr 2017 17:09:05 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 18 Apr 2017 17:09:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Apr 2017 17:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Apr 2017 17:09:07 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:09:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d66361a32aa95f84a20d28c49bf7c256f2cae6236e915a6896849eb53a1db5f`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa3a05a055efc00e0d6c43f835da1fe161f9679b81013f4303c91978ba3f16`  
		Last Modified: Tue, 18 Apr 2017 17:12:04 GMT  
		Size: 100.9 MB (100853432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71809df1ec25a519b832150c99cd6307c9a34bf5e798147f5451554eb40e2ee`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c64adc05e9ecb03aedb0202e4916f1ef78b364d73621f766201235e2aa0cee8`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895688560e9c4e1d9c855f0697edd5c37e9bc1b44fe44123873a179a09bb2aa`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:ae498085ee51b48c8ff045c3aeb767a8c19f1cb1506b62888889dbe9c84f798c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131958513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c78c702f2d2f47b1095a90356a1deb6f2ca0b4add10a5c2680c124ec150ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 18 Apr 2017 17:08:42 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 18 Apr 2017 17:09:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Apr 2017 17:09:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Apr 2017 17:09:04 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Apr 2017 17:09:05 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 18 Apr 2017 17:09:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Apr 2017 17:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Apr 2017 17:09:07 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:09:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d66361a32aa95f84a20d28c49bf7c256f2cae6236e915a6896849eb53a1db5f`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa3a05a055efc00e0d6c43f835da1fe161f9679b81013f4303c91978ba3f16`  
		Last Modified: Tue, 18 Apr 2017 17:12:04 GMT  
		Size: 100.9 MB (100853432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71809df1ec25a519b832150c99cd6307c9a34bf5e798147f5451554eb40e2ee`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c64adc05e9ecb03aedb0202e4916f1ef78b364d73621f766201235e2aa0cee8`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895688560e9c4e1d9c855f0697edd5c37e9bc1b44fe44123873a179a09bb2aa`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:ae498085ee51b48c8ff045c3aeb767a8c19f1cb1506b62888889dbe9c84f798c
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131958513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c78c702f2d2f47b1095a90356a1deb6f2ca0b4add10a5c2680c124ec150ff4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 18 Apr 2017 17:08:40 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 18 Apr 2017 17:08:42 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 18 Apr 2017 17:09:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 18 Apr 2017 17:09:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 18 Apr 2017 17:09:04 GMT
VOLUME [/data/db /data/configdb]
# Tue, 18 Apr 2017 17:09:05 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 18 Apr 2017 17:09:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Apr 2017 17:09:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Apr 2017 17:09:07 GMT
EXPOSE 27017/tcp
# Tue, 18 Apr 2017 17:09:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d66361a32aa95f84a20d28c49bf7c256f2cae6236e915a6896849eb53a1db5f`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa3a05a055efc00e0d6c43f835da1fe161f9679b81013f4303c91978ba3f16`  
		Last Modified: Tue, 18 Apr 2017 17:12:04 GMT  
		Size: 100.9 MB (100853432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71809df1ec25a519b832150c99cd6307c9a34bf5e798147f5451554eb40e2ee`  
		Last Modified: Tue, 18 Apr 2017 17:11:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c64adc05e9ecb03aedb0202e4916f1ef78b364d73621f766201235e2aa0cee8`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 2.9 KB (2909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5895688560e9c4e1d9c855f0697edd5c37e9bc1b44fe44123873a179a09bb2aa`  
		Last Modified: Tue, 18 Apr 2017 17:11:48 GMT  
		Size: 121.0 B  
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
