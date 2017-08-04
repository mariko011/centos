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
-	[`mongo:3.4.6`](#mongo346)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.6-windowsservercore`](#mongo346-windowsservercore)
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
$ docker pull mongo@sha256:f4be1dfeaaa05a6f0daec23981eb98e337c1f531441e9a5e52f047738c3263ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.6-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358346321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c89b640ae825bc79fdb4c8cdfc324556c7c721e6f64e72513f08d90d70ee75b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:58:22 GMT
ENV MONGO_VERSION=3.4.6
# Fri, 28 Jul 2017 18:58:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Fri, 28 Jul 2017 18:58:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Fri, 28 Jul 2017 18:59:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:59:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:59:36 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:59:41 GMT
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
	-	`sha256:b1a326f5acbdf7eaf2ef9aa74b41cda6c4657109935cd96ac5f4b1cd34b13289`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d47cb97736a59df08a2844ab01e9f0bbda950f680910b1f0ca296701558c6`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20bcdfe4e85dba51705399515b8b8e9b6ffa11d234b0aa5154ebb98b521fcd4`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044e57c275281014af873f7d076cbefe831648fd9f6fccb5d5bfb66c22efe312`  
		Last Modified: Fri, 28 Jul 2017 19:02:09 GMT  
		Size: 63.0 MB (63008252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa08124becba7f5a9a11c979f4512fc2f3c49feb363aa69a4a21777df0d624c`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c5271e9a29c7fef7c71979d08f45edf0b2cc38291dd27cb82f2c7b9b5ecbab`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134dab99ff1a8729d60fcaf20d175bea8c1a3acc47f19283156c903a48065c42`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:f4be1dfeaaa05a6f0daec23981eb98e337c1f531441e9a5e52f047738c3263ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358346321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c89b640ae825bc79fdb4c8cdfc324556c7c721e6f64e72513f08d90d70ee75b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:58:22 GMT
ENV MONGO_VERSION=3.4.6
# Fri, 28 Jul 2017 18:58:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Fri, 28 Jul 2017 18:58:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Fri, 28 Jul 2017 18:59:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:59:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:59:36 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:59:41 GMT
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
	-	`sha256:b1a326f5acbdf7eaf2ef9aa74b41cda6c4657109935cd96ac5f4b1cd34b13289`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d47cb97736a59df08a2844ab01e9f0bbda950f680910b1f0ca296701558c6`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20bcdfe4e85dba51705399515b8b8e9b6ffa11d234b0aa5154ebb98b521fcd4`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044e57c275281014af873f7d076cbefe831648fd9f6fccb5d5bfb66c22efe312`  
		Last Modified: Fri, 28 Jul 2017 19:02:09 GMT  
		Size: 63.0 MB (63008252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa08124becba7f5a9a11c979f4512fc2f3c49feb363aa69a4a21777df0d624c`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c5271e9a29c7fef7c71979d08f45edf0b2cc38291dd27cb82f2c7b9b5ecbab`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134dab99ff1a8729d60fcaf20d175bea8c1a3acc47f19283156c903a48065c42`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:f4be1dfeaaa05a6f0daec23981eb98e337c1f531441e9a5e52f047738c3263ff
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358346321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c89b640ae825bc79fdb4c8cdfc324556c7c721e6f64e72513f08d90d70ee75b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:58:22 GMT
ENV MONGO_VERSION=3.4.6
# Fri, 28 Jul 2017 18:58:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Fri, 28 Jul 2017 18:58:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Fri, 28 Jul 2017 18:59:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:59:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:59:36 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:59:41 GMT
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
	-	`sha256:b1a326f5acbdf7eaf2ef9aa74b41cda6c4657109935cd96ac5f4b1cd34b13289`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d47cb97736a59df08a2844ab01e9f0bbda950f680910b1f0ca296701558c6`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20bcdfe4e85dba51705399515b8b8e9b6ffa11d234b0aa5154ebb98b521fcd4`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044e57c275281014af873f7d076cbefe831648fd9f6fccb5d5bfb66c22efe312`  
		Last Modified: Fri, 28 Jul 2017 19:02:09 GMT  
		Size: 63.0 MB (63008252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa08124becba7f5a9a11c979f4512fc2f3c49feb363aa69a4a21777df0d624c`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c5271e9a29c7fef7c71979d08f45edf0b2cc38291dd27cb82f2c7b9b5ecbab`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134dab99ff1a8729d60fcaf20d175bea8c1a3acc47f19283156c903a48065c42`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:f4be1dfeaaa05a6f0daec23981eb98e337c1f531441e9a5e52f047738c3263ff
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358346321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c89b640ae825bc79fdb4c8cdfc324556c7c721e6f64e72513f08d90d70ee75b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:58:22 GMT
ENV MONGO_VERSION=3.4.6
# Fri, 28 Jul 2017 18:58:25 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi
# Fri, 28 Jul 2017 18:58:29 GMT
ENV MONGO_DOWNLOAD_SHA256=c02704728c40d50c66e3d3c3b1e4c27dc70cbe67722e28c7f537cba05f98309c
# Fri, 28 Jul 2017 18:59:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 18:59:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 18:59:36 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 18:59:41 GMT
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
	-	`sha256:b1a326f5acbdf7eaf2ef9aa74b41cda6c4657109935cd96ac5f4b1cd34b13289`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2d47cb97736a59df08a2844ab01e9f0bbda950f680910b1f0ca296701558c6`  
		Last Modified: Fri, 28 Jul 2017 19:02:03 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20bcdfe4e85dba51705399515b8b8e9b6ffa11d234b0aa5154ebb98b521fcd4`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044e57c275281014af873f7d076cbefe831648fd9f6fccb5d5bfb66c22efe312`  
		Last Modified: Fri, 28 Jul 2017 19:02:09 GMT  
		Size: 63.0 MB (63008252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa08124becba7f5a9a11c979f4512fc2f3c49feb363aa69a4a21777df0d624c`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c5271e9a29c7fef7c71979d08f45edf0b2cc38291dd27cb82f2c7b9b5ecbab`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134dab99ff1a8729d60fcaf20d175bea8c1a3acc47f19283156c903a48065c42`  
		Last Modified: Fri, 28 Jul 2017 19:01:54 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.11`

**does not exist** (yet?)

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

## `mongo:3.5.11-windowsservercore`

**does not exist** (yet?)

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:af54abd8d118c7125d10bbf10601d6005811ca07accbe7037dcca2e43517d3b9
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358420161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c2a8bdf71d1fbf6159a1636d2542dc8fd7b653ffb31557bdcb99d972fd64ee`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:59:45 GMT
ENV MONGO_VERSION=3.5.10
# Fri, 28 Jul 2017 18:59:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.10-signed.msi
# Fri, 28 Jul 2017 18:59:52 GMT
ENV MONGO_DOWNLOAD_SHA256=c40ae817a47c2ca07c5f6aca2139a485af7d253e47a5a802eb085057ae6c86d5
# Fri, 28 Jul 2017 19:00:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 19:00:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 19:01:00 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 19:01:04 GMT
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
	-	`sha256:b9394a009ea9c15c45309bf5dd02ae97ddfa9bbd05bdcd3a5e36ae79e1483164`  
		Last Modified: Fri, 28 Jul 2017 19:02:35 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7eaffa925983f2584c3d0d7b4d50ee7838660733ac3ea2d7b8578dff1cecad`  
		Last Modified: Fri, 28 Jul 2017 19:02:34 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9d287fdfccc22ca8c33080710c1482a30f9ee397cf3971af5203115019be6f`  
		Last Modified: Fri, 28 Jul 2017 19:02:25 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffe7f35bafa137b6e92137c5f00205f0c3f488f5af411fa723f69da516c0f4f`  
		Last Modified: Fri, 28 Jul 2017 19:02:40 GMT  
		Size: 63.1 MB (63082082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b220c24836ebc373376e77e861517190d4e8a6fb233bfe32bdd4300485a46af8`  
		Last Modified: Fri, 28 Jul 2017 19:02:24 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023e5e0742c7c25d26cbca435a277e598d9fe8507e73f13c091760fa474f4c83`  
		Last Modified: Fri, 28 Jul 2017 19:02:25 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b0b9048b11093727be91d11c6d439d56092cb9dde22e9c550625ec6b283fe`  
		Last Modified: Fri, 28 Jul 2017 19:02:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:af54abd8d118c7125d10bbf10601d6005811ca07accbe7037dcca2e43517d3b9
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5358420161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c2a8bdf71d1fbf6159a1636d2542dc8fd7b653ffb31557bdcb99d972fd64ee`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Jul 2017 22:35:45 GMT
RUN Install update 10.0.14393.1480
# Fri, 28 Jul 2017 18:55:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 28 Jul 2017 18:59:45 GMT
ENV MONGO_VERSION=3.5.10
# Fri, 28 Jul 2017 18:59:48 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.10-signed.msi
# Fri, 28 Jul 2017 18:59:52 GMT
ENV MONGO_DOWNLOAD_SHA256=c40ae817a47c2ca07c5f6aca2139a485af7d253e47a5a802eb085057ae6c86d5
# Fri, 28 Jul 2017 19:00:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 28 Jul 2017 19:00:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 28 Jul 2017 19:01:00 GMT
EXPOSE 27017/tcp
# Fri, 28 Jul 2017 19:01:04 GMT
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
	-	`sha256:b9394a009ea9c15c45309bf5dd02ae97ddfa9bbd05bdcd3a5e36ae79e1483164`  
		Last Modified: Fri, 28 Jul 2017 19:02:35 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7eaffa925983f2584c3d0d7b4d50ee7838660733ac3ea2d7b8578dff1cecad`  
		Last Modified: Fri, 28 Jul 2017 19:02:34 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9d287fdfccc22ca8c33080710c1482a30f9ee397cf3971af5203115019be6f`  
		Last Modified: Fri, 28 Jul 2017 19:02:25 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffe7f35bafa137b6e92137c5f00205f0c3f488f5af411fa723f69da516c0f4f`  
		Last Modified: Fri, 28 Jul 2017 19:02:40 GMT  
		Size: 63.1 MB (63082082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b220c24836ebc373376e77e861517190d4e8a6fb233bfe32bdd4300485a46af8`  
		Last Modified: Fri, 28 Jul 2017 19:02:24 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023e5e0742c7c25d26cbca435a277e598d9fe8507e73f13c091760fa474f4c83`  
		Last Modified: Fri, 28 Jul 2017 19:02:25 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b0b9048b11093727be91d11c6d439d56092cb9dde22e9c550625ec6b283fe`  
		Last Modified: Fri, 28 Jul 2017 19:02:25 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
