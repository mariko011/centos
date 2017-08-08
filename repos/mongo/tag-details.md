<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.16`](#mongo3216)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.16-windowsservercore`](#mongo3216-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.7`](#mongo347)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.7-windowsservercore`](#mongo347-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.11`](#mongo3511)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.11-windowsservercore`](#mongo3511-windowsservercore)
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
$ docker pull mongo@sha256:8431af35a26b1bd6f05c99ace560e450c052ee17e19995e2d7bce69084b45fed
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.15-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5342211659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2d0dcf15ba31ea249f7ef6c471656f063e2d64b22c1a3dd9d7a5f92e7bbb58`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:56:00 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 28 Jul 2017 18:56:02 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 28 Jul 2017 18:56:05 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 28 Jul 2017 18:56:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:56:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:57:00 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:57:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109ac3a2985d755dd9c382b0132dad1663732792ff738385e672107e0c36871c`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa51ba9137e8b4afacee1659453877afefaa68920d07afa3f7a87d7bc1c0e4f`  
		Last Modified: Fri, 28 Jul 2017 19:01:14 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090e1c6d3110e6c69d2d06548ccbffb9f574e9d954a031d42c7491fe79d382b8`  
		Last Modified: Fri, 28 Jul 2017 19:01:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac892933f6c313ee8a94f32d64c162e498865ff88aa0c3803d337007799cf22`  
		Last Modified: Fri, 28 Jul 2017 19:01:21 GMT  
		Size: 46.9 MB (46873582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b2213f698790cd4722031c92b4f771b872133d8e0007c366620e87ffc8609b`  
		Last Modified: Fri, 28 Jul 2017 19:01:09 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8b9ffb39566b11cdd4dcb713c7386d81a1c74ca72f1943a12bce786d784a43`  
		Last Modified: Fri, 28 Jul 2017 19:01:08 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fe792a3731f85d914cb1b8906ba6df7f5482541ac1000ce893096a0f047545`  
		Last Modified: Fri, 28 Jul 2017 19:01:10 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:8431af35a26b1bd6f05c99ace560e450c052ee17e19995e2d7bce69084b45fed
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5342211659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2d0dcf15ba31ea249f7ef6c471656f063e2d64b22c1a3dd9d7a5f92e7bbb58`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:56:00 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 28 Jul 2017 18:56:02 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 28 Jul 2017 18:56:05 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 28 Jul 2017 18:56:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:56:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:57:00 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:57:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109ac3a2985d755dd9c382b0132dad1663732792ff738385e672107e0c36871c`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa51ba9137e8b4afacee1659453877afefaa68920d07afa3f7a87d7bc1c0e4f`  
		Last Modified: Fri, 28 Jul 2017 19:01:14 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090e1c6d3110e6c69d2d06548ccbffb9f574e9d954a031d42c7491fe79d382b8`  
		Last Modified: Fri, 28 Jul 2017 19:01:09 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac892933f6c313ee8a94f32d64c162e498865ff88aa0c3803d337007799cf22`  
		Last Modified: Fri, 28 Jul 2017 19:01:21 GMT  
		Size: 46.9 MB (46873582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b2213f698790cd4722031c92b4f771b872133d8e0007c366620e87ffc8609b`  
		Last Modified: Fri, 28 Jul 2017 19:01:09 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8b9ffb39566b11cdd4dcb713c7386d81a1c74ca72f1943a12bce786d784a43`  
		Last Modified: Fri, 28 Jul 2017 19:01:08 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fe792a3731f85d914cb1b8906ba6df7f5482541ac1000ce893096a0f047545`  
		Last Modified: Fri, 28 Jul 2017 19:01:10 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16`

```console
$ docker pull mongo@sha256:b2c7025b69223fca43a2c7d60c30b2bffac4df20314f11d2b46f4d8d4eaf29e9
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.16` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104007149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece454cd041e7f7045fc9e897a094da5e33aaadbbb96b6a9be1bfd154208bca6`
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
# Mon, 31 Jul 2017 18:58:26 GMT
ENV MONGO_VERSION=3.2.16
# Mon, 31 Jul 2017 18:58:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 31 Jul 2017 18:58:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 31 Jul 2017 18:58:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 31 Jul 2017 18:58:52 GMT
VOLUME [/data/db /data/configdb]
# Mon, 31 Jul 2017 18:58:52 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:58:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Jul 2017 18:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:58:53 GMT
EXPOSE 27017/tcp
# Mon, 31 Jul 2017 18:58:54 GMT
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
	-	`sha256:5778b19a11038659fdc99cc503ff47e711db1814dd5e057ce061577cb73b6851`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a763733f623a3c35c065184a54555603f21323c17a89efcf27ad44ebd1c105cb`  
		Last Modified: Mon, 31 Jul 2017 18:59:26 GMT  
		Size: 70.6 MB (70596972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0101d9086c98be02470c3defe3faa586653636827b69e89c161dd6ac780fd16d`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0a7b12275b128045f0aee2479bde8ee26187cd1208b58f95c2d7d3c563cb4e`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe8dd06ccf236fc3c0812afb362b774ec2790ca5d0f38999e4aff3b895151ca`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:b2c7025b69223fca43a2c7d60c30b2bffac4df20314f11d2b46f4d8d4eaf29e9
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104007149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece454cd041e7f7045fc9e897a094da5e33aaadbbb96b6a9be1bfd154208bca6`
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
# Mon, 31 Jul 2017 18:58:26 GMT
ENV MONGO_VERSION=3.2.16
# Mon, 31 Jul 2017 18:58:27 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 31 Jul 2017 18:58:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 31 Jul 2017 18:58:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 31 Jul 2017 18:58:52 GMT
VOLUME [/data/db /data/configdb]
# Mon, 31 Jul 2017 18:58:52 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Mon, 31 Jul 2017 18:58:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 31 Jul 2017 18:58:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 18:58:53 GMT
EXPOSE 27017/tcp
# Mon, 31 Jul 2017 18:58:54 GMT
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
	-	`sha256:5778b19a11038659fdc99cc503ff47e711db1814dd5e057ce061577cb73b6851`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a763733f623a3c35c065184a54555603f21323c17a89efcf27ad44ebd1c105cb`  
		Last Modified: Mon, 31 Jul 2017 18:59:26 GMT  
		Size: 70.6 MB (70596972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0101d9086c98be02470c3defe3faa586653636827b69e89c161dd6ac780fd16d`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0a7b12275b128045f0aee2479bde8ee26187cd1208b58f95c2d7d3c563cb4e`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe8dd06ccf236fc3c0812afb362b774ec2790ca5d0f38999e4aff3b895151ca`  
		Last Modified: Mon, 31 Jul 2017 18:59:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16-windowsservercore`

```console
$ docker pull mongo@sha256:3b55ed12af9d8131586ce20c6421c109a36db679ac7c3740dbf4de7fdf6a9476
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.16-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5348207147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9d7c6a336e1b5adf6be6e4a0006e3b53f93fcf30869554a0f9958a5f6655f7`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 31 Jul 2017 17:57:26 GMT
ENV MONGO_VERSION=3.2.16
# Mon, 31 Jul 2017 17:57:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Mon, 31 Jul 2017 17:57:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Mon, 31 Jul 2017 17:58:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 31 Jul 2017 17:58:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 31 Jul 2017 17:58:30 GMT
EXPOSE 27017/tcp
# Mon, 31 Jul 2017 17:58:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1b844c43247d139d799c4768bd835bf02070ce19c7f588360da4d3ca3e58e`  
		Last Modified: Mon, 31 Jul 2017 17:58:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d4e483b4f5acaa4bd62e7d4e33ba2d91e0f4d645e699be33d447f874c1400`  
		Last Modified: Mon, 31 Jul 2017 17:58:54 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce0031b8090ab03c86168496565113930ba139770cc864a6cdfcddc176d499b`  
		Last Modified: Mon, 31 Jul 2017 17:58:45 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fa92b39ab35943cd32c7fcabe5447026946678f5a6aaeb479e7b71a2548137`  
		Last Modified: Mon, 31 Jul 2017 17:58:57 GMT  
		Size: 52.9 MB (52869066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbd989a3cb851c4cfdb55f4801cfd30b7701b0389791339d69b9485c61646cb`  
		Last Modified: Mon, 31 Jul 2017 17:58:48 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a78e769241d746aca9ee754f820eabc711f25e84a9bf1d7c0a747b83a842a`  
		Last Modified: Mon, 31 Jul 2017 17:58:45 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285a3c5845fc9e8c09478cb21a22fb9f79c0fae5fdfc921687056d645b2e580d`  
		Last Modified: Mon, 31 Jul 2017 17:58:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:3b55ed12af9d8131586ce20c6421c109a36db679ac7c3740dbf4de7fdf6a9476
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5348207147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9d7c6a336e1b5adf6be6e4a0006e3b53f93fcf30869554a0f9958a5f6655f7`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 31 Jul 2017 17:57:26 GMT
ENV MONGO_VERSION=3.2.16
# Mon, 31 Jul 2017 17:57:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Mon, 31 Jul 2017 17:57:35 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Mon, 31 Jul 2017 17:58:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 31 Jul 2017 17:58:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 31 Jul 2017 17:58:30 GMT
EXPOSE 27017/tcp
# Mon, 31 Jul 2017 17:58:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1b844c43247d139d799c4768bd835bf02070ce19c7f588360da4d3ca3e58e`  
		Last Modified: Mon, 31 Jul 2017 17:58:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d4e483b4f5acaa4bd62e7d4e33ba2d91e0f4d645e699be33d447f874c1400`  
		Last Modified: Mon, 31 Jul 2017 17:58:54 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce0031b8090ab03c86168496565113930ba139770cc864a6cdfcddc176d499b`  
		Last Modified: Mon, 31 Jul 2017 17:58:45 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fa92b39ab35943cd32c7fcabe5447026946678f5a6aaeb479e7b71a2548137`  
		Last Modified: Mon, 31 Jul 2017 17:58:57 GMT  
		Size: 52.9 MB (52869066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbd989a3cb851c4cfdb55f4801cfd30b7701b0389791339d69b9485c61646cb`  
		Last Modified: Mon, 31 Jul 2017 17:58:48 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5a78e769241d746aca9ee754f820eabc711f25e84a9bf1d7c0a747b83a842a`  
		Last Modified: Mon, 31 Jul 2017 17:58:45 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285a3c5845fc9e8c09478cb21a22fb9f79c0fae5fdfc921687056d645b2e580d`  
		Last Modified: Mon, 31 Jul 2017 17:58:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.7`

**does not exist** (yet?)

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

## `mongo:3.4.7-windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.7-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:0d13a70f34c00e8603a134814e18ece718f625e09927d75bc5926ec53fa45a3a
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358350943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb915cddd00568a782ad6abedc4684e4b22a22affc9b0d40e059c844151896`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 08 Aug 2017 17:59:43 GMT
ENV MONGO_VERSION=3.4.7
# Tue, 08 Aug 2017 17:59:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.7-signed.msi
# Tue, 08 Aug 2017 17:59:48 GMT
ENV MONGO_DOWNLOAD_SHA256=baf43fcf28ff8c486d6af9036c0f15e96c0663a222626aed97d1e48c143ab865
# Tue, 08 Aug 2017 18:00:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 08 Aug 2017 18:00:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 08 Aug 2017 18:00:57 GMT
EXPOSE 27017/tcp
# Tue, 08 Aug 2017 18:01:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaabfc0a85fd64385ab0664b34279ce72e6bff4a6b8c58dedd53ad4f66c9fb2`  
		Last Modified: Tue, 08 Aug 2017 18:01:28 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508dd55adcea973a45acc8f9981b23f137b3a844120e591716a09ddb94504ce9`  
		Last Modified: Tue, 08 Aug 2017 18:01:26 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161c225da1cbf013946d3d586072a48bf356124d19c893e8fee6bd8e10e0b702`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048633be839a58e73ee0e1fe673e1f3ca264f3d05ce16daf62e126cfb6755671`  
		Last Modified: Tue, 08 Aug 2017 18:01:32 GMT  
		Size: 63.0 MB (63012874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e86db3b2a06546f19358f223be6d63879a86dbc96958d34df29b9199469a74e`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20595e6fd7b3a5b7b9d29f58ca5a453b670fe771d12bae4831c84a19224bf1d`  
		Last Modified: Tue, 08 Aug 2017 18:01:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762fc90c18a94331366cc3d336c5721199149789dbb0ca684c0ad9f5bea44b8d`  
		Last Modified: Tue, 08 Aug 2017 18:01:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.11`

```console
$ docker pull mongo@sha256:cc50df78ae42418cde58045f6d17863215ecc9cce927b012c7ad99c218ae9179
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130856067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9573187657807bf4c28d470bc573d640ac24f4102836209329d9e044f9bfcb54`
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
# Fri, 04 Aug 2017 21:31:40 GMT
ENV MONGO_VERSION=3.5.11
# Fri, 04 Aug 2017 21:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 Aug 2017 21:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 Aug 2017 21:32:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 Aug 2017 21:32:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 Aug 2017 21:32:10 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 04 Aug 2017 21:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Aug 2017 21:32:10 GMT
EXPOSE 27017/tcp
# Fri, 04 Aug 2017 21:32:11 GMT
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
	-	`sha256:8a50da5f726159650d36a340aac8f8a7f10840c889435fb20e5172ac7697cbd8`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d47111c282f7537f59573fc30e682c7a1098078556974a7705782665f7ac7df`  
		Last Modified: Fri, 04 Aug 2017 21:33:23 GMT  
		Size: 97.4 MB (97447217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dd215ef44863bd472f5e304ff85cc71ab3e60eb90034b0738d36a5a95c9ce6`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7920dfac0676814c4535fc4ec6804f131d6b81278428d00667328c3aa607c283`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:cc50df78ae42418cde58045f6d17863215ecc9cce927b012c7ad99c218ae9179
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130856067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9573187657807bf4c28d470bc573d640ac24f4102836209329d9e044f9bfcb54`
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
# Fri, 04 Aug 2017 21:31:40 GMT
ENV MONGO_VERSION=3.5.11
# Fri, 04 Aug 2017 21:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 Aug 2017 21:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 Aug 2017 21:32:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 Aug 2017 21:32:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 Aug 2017 21:32:10 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 04 Aug 2017 21:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Aug 2017 21:32:10 GMT
EXPOSE 27017/tcp
# Fri, 04 Aug 2017 21:32:11 GMT
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
	-	`sha256:8a50da5f726159650d36a340aac8f8a7f10840c889435fb20e5172ac7697cbd8`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d47111c282f7537f59573fc30e682c7a1098078556974a7705782665f7ac7df`  
		Last Modified: Fri, 04 Aug 2017 21:33:23 GMT  
		Size: 97.4 MB (97447217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dd215ef44863bd472f5e304ff85cc71ab3e60eb90034b0738d36a5a95c9ce6`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7920dfac0676814c4535fc4ec6804f131d6b81278428d00667328c3aa607c283`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:cc50df78ae42418cde58045f6d17863215ecc9cce927b012c7ad99c218ae9179
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130856067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9573187657807bf4c28d470bc573d640ac24f4102836209329d9e044f9bfcb54`
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
# Fri, 04 Aug 2017 21:31:40 GMT
ENV MONGO_VERSION=3.5.11
# Fri, 04 Aug 2017 21:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 Aug 2017 21:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 Aug 2017 21:32:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 Aug 2017 21:32:10 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 Aug 2017 21:32:10 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 04 Aug 2017 21:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Aug 2017 21:32:10 GMT
EXPOSE 27017/tcp
# Fri, 04 Aug 2017 21:32:11 GMT
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
	-	`sha256:8a50da5f726159650d36a340aac8f8a7f10840c889435fb20e5172ac7697cbd8`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d47111c282f7537f59573fc30e682c7a1098078556974a7705782665f7ac7df`  
		Last Modified: Fri, 04 Aug 2017 21:33:23 GMT  
		Size: 97.4 MB (97447217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dd215ef44863bd472f5e304ff85cc71ab3e60eb90034b0738d36a5a95c9ce6`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7920dfac0676814c4535fc4ec6804f131d6b81278428d00667328c3aa607c283`  
		Last Modified: Fri, 04 Aug 2017 21:33:05 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.11-windowsservercore`

```console
$ docker pull mongo@sha256:00e29a404e41bf421121279705bd66cb3ef7d730b5839db765ec9106e78d6cdd
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.11-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358873091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250e67eb98587ac0d5e3a407c75bd3582579010ce3b083598633f6ee800c1507`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 04 Aug 2017 22:12:00 GMT
ENV MONGO_VERSION=3.5.11
# Fri, 04 Aug 2017 22:12:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.11-signed.msi
# Fri, 04 Aug 2017 22:12:08 GMT
ENV MONGO_DOWNLOAD_SHA256=d8522130ee7374258220d3f793073616861c87677305a201f092efcd79fc927a
# Fri, 04 Aug 2017 22:13:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 04 Aug 2017 22:13:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 04 Aug 2017 22:13:19 GMT
EXPOSE 27017/tcp
# Fri, 04 Aug 2017 22:13:22 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e63aafce84566e6c24677f0513661a6f0ecacd7c1e5337a285aed22b60a2ab1`  
		Last Modified: Fri, 04 Aug 2017 22:13:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edb1779af65215ae145b47a97e8f2478f6f00e898dbc0044b50ec994c8b11d1`  
		Last Modified: Fri, 04 Aug 2017 22:13:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a179daddedd7c0420df2b87e4093f6a73cd5b547d2b2c1893499af125ad1d`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0145e7edb5e9be3e1abfe24132713edef5d2837d1a62511a0d950bf9f87e51`  
		Last Modified: Fri, 04 Aug 2017 22:14:00 GMT  
		Size: 63.5 MB (63535031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dfef33b3d2c733a961503cabbe96b96d11187e62201ceeb429513cfaf45656`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c759134a5e9507ed118410323701e402719940331d93f5ffe0f66e239e8d2d0`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa4d226c877fc026907de1b6f18822cf9bd53150636db1bcae5b1f98fabe012`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:00e29a404e41bf421121279705bd66cb3ef7d730b5839db765ec9106e78d6cdd
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358873091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250e67eb98587ac0d5e3a407c75bd3582579010ce3b083598633f6ee800c1507`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 04 Aug 2017 22:12:00 GMT
ENV MONGO_VERSION=3.5.11
# Fri, 04 Aug 2017 22:12:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.11-signed.msi
# Fri, 04 Aug 2017 22:12:08 GMT
ENV MONGO_DOWNLOAD_SHA256=d8522130ee7374258220d3f793073616861c87677305a201f092efcd79fc927a
# Fri, 04 Aug 2017 22:13:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 04 Aug 2017 22:13:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 04 Aug 2017 22:13:19 GMT
EXPOSE 27017/tcp
# Fri, 04 Aug 2017 22:13:22 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e63aafce84566e6c24677f0513661a6f0ecacd7c1e5337a285aed22b60a2ab1`  
		Last Modified: Fri, 04 Aug 2017 22:13:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edb1779af65215ae145b47a97e8f2478f6f00e898dbc0044b50ec994c8b11d1`  
		Last Modified: Fri, 04 Aug 2017 22:13:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a179daddedd7c0420df2b87e4093f6a73cd5b547d2b2c1893499af125ad1d`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0145e7edb5e9be3e1abfe24132713edef5d2837d1a62511a0d950bf9f87e51`  
		Last Modified: Fri, 04 Aug 2017 22:14:00 GMT  
		Size: 63.5 MB (63535031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dfef33b3d2c733a961503cabbe96b96d11187e62201ceeb429513cfaf45656`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c759134a5e9507ed118410323701e402719940331d93f5ffe0f66e239e8d2d0`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa4d226c877fc026907de1b6f18822cf9bd53150636db1bcae5b1f98fabe012`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:00e29a404e41bf421121279705bd66cb3ef7d730b5839db765ec9106e78d6cdd
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358873091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250e67eb98587ac0d5e3a407c75bd3582579010ce3b083598633f6ee800c1507`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 04 Aug 2017 22:12:00 GMT
ENV MONGO_VERSION=3.5.11
# Fri, 04 Aug 2017 22:12:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.11-signed.msi
# Fri, 04 Aug 2017 22:12:08 GMT
ENV MONGO_DOWNLOAD_SHA256=d8522130ee7374258220d3f793073616861c87677305a201f092efcd79fc927a
# Fri, 04 Aug 2017 22:13:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 04 Aug 2017 22:13:16 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 04 Aug 2017 22:13:19 GMT
EXPOSE 27017/tcp
# Fri, 04 Aug 2017 22:13:22 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e29afd68a947fc566b71a432a6df352eea9e59eb221c3cb9f6bf5a4df206571e`  
		Size: 1.2 GB (1225343627 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c2e2fab7692964a46adf839b6fe66a115f2c7617697a351e412c382936629b9f`  
		Last Modified: Fri, 28 Jul 2017 19:01:16 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e63aafce84566e6c24677f0513661a6f0ecacd7c1e5337a285aed22b60a2ab1`  
		Last Modified: Fri, 04 Aug 2017 22:13:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edb1779af65215ae145b47a97e8f2478f6f00e898dbc0044b50ec994c8b11d1`  
		Last Modified: Fri, 04 Aug 2017 22:13:54 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a179daddedd7c0420df2b87e4093f6a73cd5b547d2b2c1893499af125ad1d`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0145e7edb5e9be3e1abfe24132713edef5d2837d1a62511a0d950bf9f87e51`  
		Last Modified: Fri, 04 Aug 2017 22:14:00 GMT  
		Size: 63.5 MB (63535031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dfef33b3d2c733a961503cabbe96b96d11187e62201ceeb429513cfaf45656`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c759134a5e9507ed118410323701e402719940331d93f5ffe0f66e239e8d2d0`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa4d226c877fc026907de1b6f18822cf9bd53150636db1bcae5b1f98fabe012`  
		Last Modified: Fri, 04 Aug 2017 22:13:46 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
