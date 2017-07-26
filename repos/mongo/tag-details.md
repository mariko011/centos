<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.15`](#mongo3215)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.15-windowsservercore`](#mongo3215-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.6`](#mongo346)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.6-windowsservercore`](#mongo346-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.10`](#mongo3510)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.10-windowsservercore`](#mongo3510-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:eea25a5d4dcfa263c670f309c4e11fc826d6c69f4c0a34d809e0a5c0a5747131
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84440925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e256cef0c955cde9771bc95b8971e457020cb1da7f6ca3092224b562d79c915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:54 GMT
ADD file:3253a6c4cfa6c8c9ec6f055b1b62d2b417dd859469d3118b6ad79d4ddcbe4338 in / 
# Mon, 24 Jul 2017 16:53:54 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:27:01 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:27:01 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 06:27:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:27:13 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:29:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:29:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:29:25 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 26 Jul 2017 06:29:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:29:26 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:29:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:29:27 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:29:27 GMT
ENV MONGO_MAJOR=3.0
# Wed, 26 Jul 2017 06:29:27 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 26 Jul 2017 06:29:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:31:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:31:38 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:31:38 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:31:38 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:31:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:31:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:31:39 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:31:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2c365a611503fa5f298fe9b6998ee6d04e7d57c47037bcb11ba91f5a059df1f8`  
		Last Modified: Mon, 24 Jul 2017 17:01:40 GMT  
		Size: 19.2 MB (19159132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669d93a4def09b514d207d35562641f9da0c58ddf6e7957e6e4770a59effd414`  
		Last Modified: Wed, 26 Jul 2017 06:42:07 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec94c6e06b65d70e405991f3cf0973d9980544615d128e7d17d9dd5b6600184`  
		Last Modified: Wed, 26 Jul 2017 06:42:07 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043d15f29e10bfdd91d07ead736460883d99313d2214e7280b5dfb86dea164db`  
		Last Modified: Wed, 26 Jul 2017 06:42:06 GMT  
		Size: 2.7 MB (2660665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c73f09b6378568e238f52281d6999a066498c10cc549dfa0fdafc31042731b`  
		Last Modified: Wed, 26 Jul 2017 06:42:07 GMT  
		Size: 914.7 KB (914722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1168edb472b6963dbe375c77df45c97e7b332f22ca828fb2298216207925e2`  
		Last Modified: Wed, 26 Jul 2017 06:42:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb4445a6e8ff0bfbd2aeec6e3e6295003a1b0b2680586636b4afcd7880b2fba`  
		Last Modified: Wed, 26 Jul 2017 06:42:05 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d94e1de7f072ab4ae55227c298b93defff39fced06a70158c5cd434fc97acbc`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6654a540525c887f364888b8843c12a9aa003a897b03f0c6ada8f18fe6b0cca1`  
		Last Modified: Wed, 26 Jul 2017 06:42:16 GMT  
		Size: 61.7 MB (61698781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a0ae7fbcabc9d599ac56988bb052635351af11b6481bfe0ce51a4d13fe71bb`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1185a58fb5f0e7a669c245c3ce2cd82df357a74d24d2ea1f08026c3af6ff6`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e8476f8fbce7261073568e9a52af02c8bcfc4a5fba53018b91390d40f109b`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:eea25a5d4dcfa263c670f309c4e11fc826d6c69f4c0a34d809e0a5c0a5747131
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84440925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e256cef0c955cde9771bc95b8971e457020cb1da7f6ca3092224b562d79c915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:54 GMT
ADD file:3253a6c4cfa6c8c9ec6f055b1b62d2b417dd859469d3118b6ad79d4ddcbe4338 in / 
# Mon, 24 Jul 2017 16:53:54 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:27:01 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:27:01 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 26 Jul 2017 06:27:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:27:13 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:29:24 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:29:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:29:25 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 26 Jul 2017 06:29:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:29:26 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:29:27 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:29:27 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:29:27 GMT
ENV MONGO_MAJOR=3.0
# Wed, 26 Jul 2017 06:29:27 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 26 Jul 2017 06:29:28 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:31:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:31:38 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:31:38 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:31:38 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:31:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:31:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:31:39 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:31:40 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2c365a611503fa5f298fe9b6998ee6d04e7d57c47037bcb11ba91f5a059df1f8`  
		Last Modified: Mon, 24 Jul 2017 17:01:40 GMT  
		Size: 19.2 MB (19159132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669d93a4def09b514d207d35562641f9da0c58ddf6e7957e6e4770a59effd414`  
		Last Modified: Wed, 26 Jul 2017 06:42:07 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec94c6e06b65d70e405991f3cf0973d9980544615d128e7d17d9dd5b6600184`  
		Last Modified: Wed, 26 Jul 2017 06:42:07 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043d15f29e10bfdd91d07ead736460883d99313d2214e7280b5dfb86dea164db`  
		Last Modified: Wed, 26 Jul 2017 06:42:06 GMT  
		Size: 2.7 MB (2660665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c73f09b6378568e238f52281d6999a066498c10cc549dfa0fdafc31042731b`  
		Last Modified: Wed, 26 Jul 2017 06:42:07 GMT  
		Size: 914.7 KB (914722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1168edb472b6963dbe375c77df45c97e7b332f22ca828fb2298216207925e2`  
		Last Modified: Wed, 26 Jul 2017 06:42:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb4445a6e8ff0bfbd2aeec6e3e6295003a1b0b2680586636b4afcd7880b2fba`  
		Last Modified: Wed, 26 Jul 2017 06:42:05 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d94e1de7f072ab4ae55227c298b93defff39fced06a70158c5cd434fc97acbc`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6654a540525c887f364888b8843c12a9aa003a897b03f0c6ada8f18fe6b0cca1`  
		Last Modified: Wed, 26 Jul 2017 06:42:16 GMT  
		Size: 61.7 MB (61698781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a0ae7fbcabc9d599ac56988bb052635351af11b6481bfe0ce51a4d13fe71bb`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1185a58fb5f0e7a669c245c3ce2cd82df357a74d24d2ea1f08026c3af6ff6`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139e8476f8fbce7261073568e9a52af02c8bcfc4a5fba53018b91390d40f109b`  
		Last Modified: Wed, 26 Jul 2017 06:42:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore`

```console
$ docker pull mongo@sha256:7a59e60a662838db8e32a324e3c19230904e70c97e2bf9fcb865e7944088ce12
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5278975697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9e19b59b4eda8892da2442405afd7659a91ee31a3c5d131057326127bacfc0`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:39:10 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 23 May 2017 22:39:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Tue, 23 May 2017 22:39:15 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Tue, 23 May 2017 22:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:40:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:40:04 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:40:07 GMT
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
	-	`sha256:4be41011569f799924864ad0229d7e5468768bc89a4138fa7e761f6d431a1fd6`  
		Last Modified: Tue, 23 May 2017 22:41:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a726453c0b90b3f382490c227b2b61d9543d5745dd8792f37dc68f37bc48dcc`  
		Last Modified: Tue, 23 May 2017 22:41:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0556eda5a5c1a6a2db1ad79019405b6b32ee4399e7682577efb76e9a2e15d85`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cdcaa5fb0b4620a5deab20dc12840d0dbf58d06c2b9237aa12aed11e4fbac1`  
		Last Modified: Tue, 23 May 2017 22:41:47 GMT  
		Size: 47.1 MB (47079237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835af2fd84ca0c0c00f6b43d340a6fe0c37b73d9ea0f03b907f5022daf85425b`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e544e76d4f6d90f537dae7944611963b9c69a6b35076a058b3f1c9fa5899a`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f64d66b50da900848bfad55d015a7f6f42baf142a13cf688071c00e74a8fa48`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:7a59e60a662838db8e32a324e3c19230904e70c97e2bf9fcb865e7944088ce12
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5278975697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9e19b59b4eda8892da2442405afd7659a91ee31a3c5d131057326127bacfc0`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:39:10 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 23 May 2017 22:39:13 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Tue, 23 May 2017 22:39:15 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Tue, 23 May 2017 22:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:40:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:40:04 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:40:07 GMT
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
	-	`sha256:4be41011569f799924864ad0229d7e5468768bc89a4138fa7e761f6d431a1fd6`  
		Last Modified: Tue, 23 May 2017 22:41:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a726453c0b90b3f382490c227b2b61d9543d5745dd8792f37dc68f37bc48dcc`  
		Last Modified: Tue, 23 May 2017 22:41:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0556eda5a5c1a6a2db1ad79019405b6b32ee4399e7682577efb76e9a2e15d85`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cdcaa5fb0b4620a5deab20dc12840d0dbf58d06c2b9237aa12aed11e4fbac1`  
		Last Modified: Tue, 23 May 2017 22:41:47 GMT  
		Size: 47.1 MB (47079237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835af2fd84ca0c0c00f6b43d340a6fe0c37b73d9ea0f03b907f5022daf85425b`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665e544e76d4f6d90f537dae7944611963b9c69a6b35076a058b3f1c9fa5899a`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f64d66b50da900848bfad55d015a7f6f42baf142a13cf688071c00e74a8fa48`  
		Last Modified: Tue, 23 May 2017 22:41:37 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.15`

```console
$ docker pull mongo@sha256:ef3277c7221e8512a1657ad90dfa2ad13ae2e35aacce6cd7defabbbdcf67ca76
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.15` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103945042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52781d69f85e1cb038ab4a4072ab1ac54924e9c1bd907f1739f0686f870dfe30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:32:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:32:21 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:34:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:34:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:34:45 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 26 Jul 2017 06:34:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:34:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:34:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:34:50 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:34:50 GMT
ENV MONGO_MAJOR=3.2
# Wed, 26 Jul 2017 06:34:50 GMT
ENV MONGO_VERSION=3.2.15
# Wed, 26 Jul 2017 06:34:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:35:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:35:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:35:13 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:35:14 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:35:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:35:15 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:35:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e4cc4b60576b2e4a618411fec75ac568b396f2609c13071d634992c487af20`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.4 MB (2397792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319d631fd37124108389c1325ec1cc38ca4ca45ea1b4530d87506dfea34c6da`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 881.8 KB (881831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797ca64b920a87031a4d96e79b101dd0274de1b8099583104d00673a76aed584`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a996ba492b55ffa619e2e4443da6e96222da379c6f1ceada952487816dd1`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 3.1 KB (3066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4d7558ce800cf200d14e77b1806247ad66690599638b70664da2a6da702413`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99ed5a4579d3cdc2d702b9ae0e9cd047c4c1b37c9317dbb49d773e75941d47`  
		Last Modified: Wed, 26 Jul 2017 06:42:48 GMT  
		Size: 70.5 MB (70534869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091793a2ff9b50c376f127a753b8b06d146288d45aebee59be5f337243a679db`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84449a9b6dc7df52507ce2c4857ed0a20c62c1dc763bd72279040dc6f8739e7d`  
		Last Modified: Wed, 26 Jul 2017 06:42:34 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d972409c715dee4baee6612d48c24829f91fc5567e44f538d063d35edc3745a`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:ef3277c7221e8512a1657ad90dfa2ad13ae2e35aacce6cd7defabbbdcf67ca76
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103945042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52781d69f85e1cb038ab4a4072ab1ac54924e9c1bd907f1739f0686f870dfe30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:32:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:32:21 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:34:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:34:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:34:45 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 26 Jul 2017 06:34:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:34:50 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:34:50 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:34:50 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:34:50 GMT
ENV MONGO_MAJOR=3.2
# Wed, 26 Jul 2017 06:34:50 GMT
ENV MONGO_VERSION=3.2.15
# Wed, 26 Jul 2017 06:34:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:35:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:35:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:35:13 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:35:14 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:35:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:35:15 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:35:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e4cc4b60576b2e4a618411fec75ac568b396f2609c13071d634992c487af20`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.4 MB (2397792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319d631fd37124108389c1325ec1cc38ca4ca45ea1b4530d87506dfea34c6da`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 881.8 KB (881831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797ca64b920a87031a4d96e79b101dd0274de1b8099583104d00673a76aed584`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a996ba492b55ffa619e2e4443da6e96222da379c6f1ceada952487816dd1`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 3.1 KB (3066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4d7558ce800cf200d14e77b1806247ad66690599638b70664da2a6da702413`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99ed5a4579d3cdc2d702b9ae0e9cd047c4c1b37c9317dbb49d773e75941d47`  
		Last Modified: Wed, 26 Jul 2017 06:42:48 GMT  
		Size: 70.5 MB (70534869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091793a2ff9b50c376f127a753b8b06d146288d45aebee59be5f337243a679db`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84449a9b6dc7df52507ce2c4857ed0a20c62c1dc763bd72279040dc6f8739e7d`  
		Last Modified: Wed, 26 Jul 2017 06:42:34 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d972409c715dee4baee6612d48c24829f91fc5567e44f538d063d35edc3745a`  
		Last Modified: Wed, 26 Jul 2017 06:42:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.15-windowsservercore`

```console
$ docker pull mongo@sha256:fe56a401238349a669735ae199e423a4bd8c85ee5e46c6f38eee289f8c13583d
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284935584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f186224c8ec97581ba60bac40e3e4771b2b0c0c7c27f76c4bc4f74c500ba9e`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jul 2017 18:25:54 GMT
ENV MONGO_VERSION=3.2.15
# Wed, 12 Jul 2017 18:25:57 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.15-signed.msi
# Wed, 12 Jul 2017 18:25:59 GMT
ENV MONGO_DOWNLOAD_SHA256=e70c38121de2718993702a50b657f3f5bc850d3267e816caf1e5fcc5d6842da0
# Wed, 12 Jul 2017 18:26:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jul 2017 18:26:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jul 2017 18:26:47 GMT
EXPOSE 27017/tcp
# Wed, 12 Jul 2017 18:26:49 GMT
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
	-	`sha256:328c04ab9a63da82aaa177e3235179b2e28d6b0189f042f813c476f7da0e92cf`  
		Last Modified: Wed, 12 Jul 2017 19:01:55 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab0ae4976afa93deecd56ad9199c2f6a7d38a421c463e0ecdb0a26e02500cd5`  
		Last Modified: Wed, 12 Jul 2017 19:01:53 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02811ae378ef2194397fd3da356d704276092f93cab722fa6c25c3b5ad1861b1`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb9162c78c3d253458c338a06ed38dd61535f6ca02e97b1b52399e24ab021b1`  
		Last Modified: Wed, 12 Jul 2017 19:01:57 GMT  
		Size: 53.0 MB (53039088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdd5c1b38b5aa8c1d7b4409a7a29e391637fef12d1d92bee047972718389cae`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf02413a9a739e1b573b62e60c7028948001150b8d58ebbef0e7c2d11b969a25`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473f4f0df946814ee7c9e7c006506d6b6b4cb2137a7c3094a1e1efc6617176d2`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:fe56a401238349a669735ae199e423a4bd8c85ee5e46c6f38eee289f8c13583d
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284935584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f186224c8ec97581ba60bac40e3e4771b2b0c0c7c27f76c4bc4f74c500ba9e`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jul 2017 18:25:54 GMT
ENV MONGO_VERSION=3.2.15
# Wed, 12 Jul 2017 18:25:57 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.15-signed.msi
# Wed, 12 Jul 2017 18:25:59 GMT
ENV MONGO_DOWNLOAD_SHA256=e70c38121de2718993702a50b657f3f5bc850d3267e816caf1e5fcc5d6842da0
# Wed, 12 Jul 2017 18:26:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jul 2017 18:26:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jul 2017 18:26:47 GMT
EXPOSE 27017/tcp
# Wed, 12 Jul 2017 18:26:49 GMT
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
	-	`sha256:328c04ab9a63da82aaa177e3235179b2e28d6b0189f042f813c476f7da0e92cf`  
		Last Modified: Wed, 12 Jul 2017 19:01:55 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab0ae4976afa93deecd56ad9199c2f6a7d38a421c463e0ecdb0a26e02500cd5`  
		Last Modified: Wed, 12 Jul 2017 19:01:53 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02811ae378ef2194397fd3da356d704276092f93cab722fa6c25c3b5ad1861b1`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb9162c78c3d253458c338a06ed38dd61535f6ca02e97b1b52399e24ab021b1`  
		Last Modified: Wed, 12 Jul 2017 19:01:57 GMT  
		Size: 53.0 MB (53039088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdd5c1b38b5aa8c1d7b4409a7a29e391637fef12d1d92bee047972718389cae`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf02413a9a739e1b573b62e60c7028948001150b8d58ebbef0e7c2d11b969a25`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473f4f0df946814ee7c9e7c006506d6b6b4cb2137a7c3094a1e1efc6617176d2`  
		Last Modified: Wed, 12 Jul 2017 19:01:46 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.6`

```console
$ docker pull mongo@sha256:90b78c44a58d6d927f96baabea3212d8c756017846715b630044aefcabcab2eb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131627934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6833171fe0ad8f221a1f9c099ffcc40fbab6dfb1e70589975cac3355cf08c118`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:39:55 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 26 Jul 2017 06:40:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:48 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_MAJOR=3.4
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_VERSION=3.4.6
# Wed, 26 Jul 2017 06:40:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:15 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:15 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:17 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e12bf92c3c1011779c832094ee78467d3ab1c7dc92f71c0f024cd1cd207e49`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3679b936e61cf9c1aaecbc7b28dfb36e28cd2ab402bb2632934e82e2939769`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb080b90ae5876b93df1949113c22a4721e61b80e33eef4c774bac80f71af1a`  
		Last Modified: Wed, 26 Jul 2017 06:43:19 GMT  
		Size: 98.2 MB (98219028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cf38664c7516b13843a38dc626028bf6486bcb746e1325ff9338aff931e826`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59693a4ecb904694c2c8edfec4959370959f6438aa7b25f513f49f683ad95c4c`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff9fc3b430de43d1305450d0444a31dc0e7aff2fc6c8bc50e44bd78c28ef62f`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:90b78c44a58d6d927f96baabea3212d8c756017846715b630044aefcabcab2eb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131627934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6833171fe0ad8f221a1f9c099ffcc40fbab6dfb1e70589975cac3355cf08c118`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:39:55 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 26 Jul 2017 06:40:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:48 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_MAJOR=3.4
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_VERSION=3.4.6
# Wed, 26 Jul 2017 06:40:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:15 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:15 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:17 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e12bf92c3c1011779c832094ee78467d3ab1c7dc92f71c0f024cd1cd207e49`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3679b936e61cf9c1aaecbc7b28dfb36e28cd2ab402bb2632934e82e2939769`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb080b90ae5876b93df1949113c22a4721e61b80e33eef4c774bac80f71af1a`  
		Last Modified: Wed, 26 Jul 2017 06:43:19 GMT  
		Size: 98.2 MB (98219028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cf38664c7516b13843a38dc626028bf6486bcb746e1325ff9338aff931e826`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59693a4ecb904694c2c8edfec4959370959f6438aa7b25f513f49f683ad95c4c`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff9fc3b430de43d1305450d0444a31dc0e7aff2fc6c8bc50e44bd78c28ef62f`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:90b78c44a58d6d927f96baabea3212d8c756017846715b630044aefcabcab2eb
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131627934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6833171fe0ad8f221a1f9c099ffcc40fbab6dfb1e70589975cac3355cf08c118`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:39:55 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 26 Jul 2017 06:40:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:48 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_MAJOR=3.4
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_VERSION=3.4.6
# Wed, 26 Jul 2017 06:40:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:15 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:15 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:17 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e12bf92c3c1011779c832094ee78467d3ab1c7dc92f71c0f024cd1cd207e49`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3679b936e61cf9c1aaecbc7b28dfb36e28cd2ab402bb2632934e82e2939769`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb080b90ae5876b93df1949113c22a4721e61b80e33eef4c774bac80f71af1a`  
		Last Modified: Wed, 26 Jul 2017 06:43:19 GMT  
		Size: 98.2 MB (98219028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cf38664c7516b13843a38dc626028bf6486bcb746e1325ff9338aff931e826`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59693a4ecb904694c2c8edfec4959370959f6438aa7b25f513f49f683ad95c4c`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff9fc3b430de43d1305450d0444a31dc0e7aff2fc6c8bc50e44bd78c28ef62f`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:90b78c44a58d6d927f96baabea3212d8c756017846715b630044aefcabcab2eb
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131627934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6833171fe0ad8f221a1f9c099ffcc40fbab6dfb1e70589975cac3355cf08c118`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:39:55 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 26 Jul 2017 06:40:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 26 Jul 2017 06:40:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:48 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_MAJOR=3.4
# Wed, 26 Jul 2017 06:40:49 GMT
ENV MONGO_VERSION=3.4.6
# Wed, 26 Jul 2017 06:40:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:15 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:15 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 26 Jul 2017 06:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:17 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e12bf92c3c1011779c832094ee78467d3ab1c7dc92f71c0f024cd1cd207e49`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3679b936e61cf9c1aaecbc7b28dfb36e28cd2ab402bb2632934e82e2939769`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb080b90ae5876b93df1949113c22a4721e61b80e33eef4c774bac80f71af1a`  
		Last Modified: Wed, 26 Jul 2017 06:43:19 GMT  
		Size: 98.2 MB (98219028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cf38664c7516b13843a38dc626028bf6486bcb746e1325ff9338aff931e826`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59693a4ecb904694c2c8edfec4959370959f6438aa7b25f513f49f683ad95c4c`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff9fc3b430de43d1305450d0444a31dc0e7aff2fc6c8bc50e44bd78c28ef62f`  
		Last Modified: Wed, 26 Jul 2017 06:43:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.6-windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
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
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
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
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
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
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:88c61669fc3ce78e9ffd85b6fb73689bece1bc763362be9fb75580945c7237ff
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295110311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201f999d1d3b2f383e7dcd79870afbbcfefd4e38fb46c0e9dc7cfe7ca2e5f9a1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 06 Jul 2017 21:28:28 GMT
ENV MONGO_VERSION=3.4.6
# Thu, 06 Jul 2017 21:28:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Thu, 06 Jul 2017 21:28:32 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Thu, 06 Jul 2017 21:29:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 06 Jul 2017 21:29:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 06 Jul 2017 21:29:43 GMT
EXPOSE 27017/tcp
# Thu, 06 Jul 2017 21:29:48 GMT
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
	-	`sha256:d0e6caf6fe4fa11de28c95e118ac04fcf7e7515358e0c5bb6875a3e867b8002e`  
		Last Modified: Thu, 06 Jul 2017 21:30:18 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5689863418539dd972ed5a2fe14455cb308828d4ada7814d257e82d64ebc0815`  
		Last Modified: Thu, 06 Jul 2017 21:30:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee78d4f89ebca82d28bd53ab156f99b0cc7a1281f01cdf359c88479df04c5a8e`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855eade9a2bdc45a873550e0cbd11e8511aa06352934ea1837a3601a4323f604`  
		Last Modified: Thu, 06 Jul 2017 21:30:21 GMT  
		Size: 63.2 MB (63213840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d5907429ed4b12c9c8feb90f5119da7fae90b8de79cccefb4708fde9db7834`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ee4bc56e0638bfeb4913bcfcc932dba6420aaacea6484a886f8a5351f9ebf`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ceb13c71f454610e64520e9c87cbdf0da48b6fe4c24a829dace8968ff25120`  
		Last Modified: Thu, 06 Jul 2017 21:30:07 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.10`

```console
$ docker pull mongo@sha256:f38776c1fb84192f19f45ce484b2988123311e70ead283a441b0c2d3e3be13bb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129807515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d003a8fc27658312cc382a4e6c450dece9c2d17b15285e20b5be5000b9f172`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:41:21 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 26 Jul 2017 06:41:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:41:26 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 26 Jul 2017 06:41:26 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:41:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:41:29 GMT
ENV MONGO_MAJOR=3.5
# Wed, 26 Jul 2017 06:41:29 GMT
ENV MONGO_VERSION=3.5.10
# Wed, 26 Jul 2017 06:41:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:56 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:56 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:57 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5e4daf4c25631468e7d7768865164c117fefa2bff6c1c0d598057973502055`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ae95af793ea8ede11ba76581b1e3ae60b2408e7547432000502a170bff9d31`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23bcc73dbb297687537ed01b053f4914a3058f2d3589cc509d3351c486768d`  
		Last Modified: Wed, 26 Jul 2017 06:44:03 GMT  
		Size: 96.4 MB (96398665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e29d17b861b2da52f32d697832907feaa7ce04f099095fcba8b04c2c96a508`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641d591d00a5914f8e365a75210143528d00d2dabd33951191f3ec1ce4f6393f`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:f38776c1fb84192f19f45ce484b2988123311e70ead283a441b0c2d3e3be13bb
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129807515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d003a8fc27658312cc382a4e6c450dece9c2d17b15285e20b5be5000b9f172`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:41:21 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 26 Jul 2017 06:41:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:41:26 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 26 Jul 2017 06:41:26 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:41:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:41:29 GMT
ENV MONGO_MAJOR=3.5
# Wed, 26 Jul 2017 06:41:29 GMT
ENV MONGO_VERSION=3.5.10
# Wed, 26 Jul 2017 06:41:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:56 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:56 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:57 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5e4daf4c25631468e7d7768865164c117fefa2bff6c1c0d598057973502055`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ae95af793ea8ede11ba76581b1e3ae60b2408e7547432000502a170bff9d31`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23bcc73dbb297687537ed01b053f4914a3058f2d3589cc509d3351c486768d`  
		Last Modified: Wed, 26 Jul 2017 06:44:03 GMT  
		Size: 96.4 MB (96398665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e29d17b861b2da52f32d697832907feaa7ce04f099095fcba8b04c2c96a508`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641d591d00a5914f8e365a75210143528d00d2dabd33951191f3ec1ce4f6393f`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:f38776c1fb84192f19f45ce484b2988123311e70ead283a441b0c2d3e3be13bb
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129807515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d003a8fc27658312cc382a4e6c450dece9c2d17b15285e20b5be5000b9f172`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:31:44 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 26 Jul 2017 06:39:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:39:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 06:39:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 06:39:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 06:41:21 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 26 Jul 2017 06:41:26 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 06:41:26 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 26 Jul 2017 06:41:26 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:41:27 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 26 Jul 2017 06:41:29 GMT
ENV MONGO_MAJOR=3.5
# Wed, 26 Jul 2017 06:41:29 GMT
ENV MONGO_VERSION=3.5.10
# Wed, 26 Jul 2017 06:41:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 26 Jul 2017 06:41:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 26 Jul 2017 06:41:55 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 26 Jul 2017 06:41:56 GMT
VOLUME [/data/db /data/configdb]
# Wed, 26 Jul 2017 06:41:56 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 26 Jul 2017 06:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Jul 2017 06:41:56 GMT
EXPOSE 27017/tcp
# Wed, 26 Jul 2017 06:41:57 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbfc055e8fb54fef0fb6a5ea99e694c78a7e004d8fa458dcb657963c25f4ba4`  
		Last Modified: Wed, 26 Jul 2017 06:42:36 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf85a329dc44f494cd36f4cabb7131be9ff1f697076e96469a2ca71c1d24889`  
		Last Modified: Wed, 26 Jul 2017 06:43:08 GMT  
		Size: 2.4 MB (2398155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1360aef7d2660254e0fd84aff206048dec5bba2eb60f7423562413ccdb265b90`  
		Last Modified: Wed, 26 Jul 2017 06:43:06 GMT  
		Size: 881.8 KB (881833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb9d47c5d8021510bd3806ba254837ae4bdc022d6e56ae5b26b6efb482345f0`  
		Last Modified: Wed, 26 Jul 2017 06:43:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5e4daf4c25631468e7d7768865164c117fefa2bff6c1c0d598057973502055`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ae95af793ea8ede11ba76581b1e3ae60b2408e7547432000502a170bff9d31`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b23bcc73dbb297687537ed01b053f4914a3058f2d3589cc509d3351c486768d`  
		Last Modified: Wed, 26 Jul 2017 06:44:03 GMT  
		Size: 96.4 MB (96398665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e29d17b861b2da52f32d697832907feaa7ce04f099095fcba8b04c2c96a508`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641d591d00a5914f8e365a75210143528d00d2dabd33951191f3ec1ce4f6393f`  
		Last Modified: Wed, 26 Jul 2017 06:43:46 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.10-windowsservercore`

```console
$ docker pull mongo@sha256:b66d2e7a931a249beeb09439fd554a23f7169af7b66a21932d9a35478cb1df95
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.10-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5300504125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8485775c1b9f736e0e61d7ac9ed5538da35ba1a3d8daa22b489db7bdaef248c1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 13 Jul 2017 17:37:46 GMT
ENV MONGO_VERSION=3.5.10
# Thu, 13 Jul 2017 17:37:49 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.10-signed.msi
# Thu, 13 Jul 2017 17:37:51 GMT
ENV MONGO_DOWNLOAD_SHA256=c40ae817a47c2ca07c5f6aca2139a485af7d253e47a5a802eb085057ae6c86d5
# Thu, 13 Jul 2017 17:40:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 13 Jul 2017 17:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 13 Jul 2017 17:40:08 GMT
EXPOSE 27017/tcp
# Thu, 13 Jul 2017 17:40:13 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:be5e0d91ab2c7e2b94e154dc6e01ae406d6eee53c143bfee41761e3d9a19b049`  
		Last Modified: Thu, 13 Jul 2017 17:40:53 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1837c75d4de8d99abd099ae9fdcab833cea0f1121bd378d36fe5a0f3e29408ba`  
		Last Modified: Thu, 13 Jul 2017 17:40:51 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de627065e0823590c4ccad762a991abfa452862dd74fba7455eb0672ca23a1`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d84113d04222f851c929c6831a3b4721d7026b1c2045caaec55b90786b4b7d`  
		Last Modified: Thu, 13 Jul 2017 17:40:57 GMT  
		Size: 68.6 MB (68607656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c225975a9033796be1719b72a5032619404be34f44724b02e859821bc8184a`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0594821d10cd1214c9b4e317ad8931707d3a86ee2645f4df201944829066f`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9158f59419379605ad03f178d8eaa829caf8e36aff8a44403b8f4961090cafdf`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:b66d2e7a931a249beeb09439fd554a23f7169af7b66a21932d9a35478cb1df95
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5300504125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8485775c1b9f736e0e61d7ac9ed5538da35ba1a3d8daa22b489db7bdaef248c1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 13 Jul 2017 17:37:46 GMT
ENV MONGO_VERSION=3.5.10
# Thu, 13 Jul 2017 17:37:49 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.10-signed.msi
# Thu, 13 Jul 2017 17:37:51 GMT
ENV MONGO_DOWNLOAD_SHA256=c40ae817a47c2ca07c5f6aca2139a485af7d253e47a5a802eb085057ae6c86d5
# Thu, 13 Jul 2017 17:40:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 13 Jul 2017 17:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 13 Jul 2017 17:40:08 GMT
EXPOSE 27017/tcp
# Thu, 13 Jul 2017 17:40:13 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:be5e0d91ab2c7e2b94e154dc6e01ae406d6eee53c143bfee41761e3d9a19b049`  
		Last Modified: Thu, 13 Jul 2017 17:40:53 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1837c75d4de8d99abd099ae9fdcab833cea0f1121bd378d36fe5a0f3e29408ba`  
		Last Modified: Thu, 13 Jul 2017 17:40:51 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de627065e0823590c4ccad762a991abfa452862dd74fba7455eb0672ca23a1`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d84113d04222f851c929c6831a3b4721d7026b1c2045caaec55b90786b4b7d`  
		Last Modified: Thu, 13 Jul 2017 17:40:57 GMT  
		Size: 68.6 MB (68607656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c225975a9033796be1719b72a5032619404be34f44724b02e859821bc8184a`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0594821d10cd1214c9b4e317ad8931707d3a86ee2645f4df201944829066f`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9158f59419379605ad03f178d8eaa829caf8e36aff8a44403b8f4961090cafdf`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:b66d2e7a931a249beeb09439fd554a23f7169af7b66a21932d9a35478cb1df95
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5300504125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8485775c1b9f736e0e61d7ac9ed5538da35ba1a3d8daa22b489db7bdaef248c1`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 13 Jul 2017 17:37:46 GMT
ENV MONGO_VERSION=3.5.10
# Thu, 13 Jul 2017 17:37:49 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.10-signed.msi
# Thu, 13 Jul 2017 17:37:51 GMT
ENV MONGO_DOWNLOAD_SHA256=c40ae817a47c2ca07c5f6aca2139a485af7d253e47a5a802eb085057ae6c86d5
# Thu, 13 Jul 2017 17:40:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 13 Jul 2017 17:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 13 Jul 2017 17:40:08 GMT
EXPOSE 27017/tcp
# Thu, 13 Jul 2017 17:40:13 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:be5e0d91ab2c7e2b94e154dc6e01ae406d6eee53c143bfee41761e3d9a19b049`  
		Last Modified: Thu, 13 Jul 2017 17:40:53 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1837c75d4de8d99abd099ae9fdcab833cea0f1121bd378d36fe5a0f3e29408ba`  
		Last Modified: Thu, 13 Jul 2017 17:40:51 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de627065e0823590c4ccad762a991abfa452862dd74fba7455eb0672ca23a1`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d84113d04222f851c929c6831a3b4721d7026b1c2045caaec55b90786b4b7d`  
		Last Modified: Thu, 13 Jul 2017 17:40:57 GMT  
		Size: 68.6 MB (68607656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c225975a9033796be1719b72a5032619404be34f44724b02e859821bc8184a`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0594821d10cd1214c9b4e317ad8931707d3a86ee2645f4df201944829066f`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9158f59419379605ad03f178d8eaa829caf8e36aff8a44403b8f4961090cafdf`  
		Last Modified: Thu, 13 Jul 2017 17:40:44 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
