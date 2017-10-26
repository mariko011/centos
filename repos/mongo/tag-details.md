<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0.15-wheezy`](#mongo3015-wheezy)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-wheezy`](#mongo30-wheezy)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.17`](#mongo3217)
-	[`mongo:3.2.17-jessie`](#mongo3217-jessie)
-	[`mongo:3.2.17-windowsservercore`](#mongo3217-windowsservercore)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.10`](#mongo3410)
-	[`mongo:3.4.10-jessie`](#mongo3410-jessie)
-	[`mongo:3.4.10-windowsservercore`](#mongo3410-windowsservercore)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:3.5.13`](#mongo3513)
-	[`mongo:3.5.13-jessie`](#mongo3513-jessie)
-	[`mongo:3.5.13-windowsservercore`](#mongo3513-windowsservercore)
-	[`mongo:3.5-jessie`](#mongo35-jessie)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)

## `mongo:3`

```console
$ docker pull mongo@sha256:97c51a36d08871557c02e64d20a9a6b645b16ce387b39ae4414609c39dfc439c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:05edf5b34bf74674469de4e5fe5b70eb78a9a0a4ed8d7c419234e82282d8b710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132105335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e262dc084514f5c847509a36a2006f86cef1a3c13c1a9810adf7c28734f0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:04:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 10 Oct 2017 00:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_MAJOR=3.4
# Tue, 10 Oct 2017 00:04:30 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 10 Oct 2017 00:04:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:04:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:04:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:04:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:04:58 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:04:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:04:59 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:04:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193466d9d72852582271d7f0ac7e3490d3a299f086157c5d9d208d706193abc9`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e75e2cec52fae26efb4455a30370c5378bfb4c9a76228577d57d58842a69cf`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111da4b346b0e0b11469a96a32e0b26b38b9690e9d162dbb85673ee0de737125`  
		Last Modified: Tue, 10 Oct 2017 00:08:07 GMT  
		Size: 98.5 MB (98477940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5b8f25164334e023230e5c5394b00158c7af7409fe148efbd4c6ce35ac2e0`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5a96927e4175dd34c5db89852288ce5243da1c0e3c4de2541e9f2852d9dc8c`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b138ac1b57786247146c9c70e1e71b74f18f7e4d87c1f608e72b90151888d878`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:43cc6a51bbcf88d85734082a93d25d42790ff6624a615420d400e707c4bf8f9a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413628453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb35c1d8bb5f1e90b844d023f2efc423d6dbd15031c6a7dcfc1bc10a894d374`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:40:27 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 11 Oct 2017 01:40:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Wed, 11 Oct 2017 01:40:33 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Wed, 11 Oct 2017 01:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:41:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:41:46 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337316175d43fb774500873af1a5af250210da650adb72ca3b46ec90470aba1b`  
		Last Modified: Wed, 11 Oct 2017 01:44:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8577496c933902bdf89e8159b9b61b8c5106f098c3f18fce7eb3c64100548051`  
		Last Modified: Wed, 11 Oct 2017 01:44:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f350b8e0567f3d61ce8dfc290c2c361be89e2ef1faf7123542c49d1a8257cd`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec21414b3605a123a92668caab41a717487e145ef190eae91f970be17c8fb1d`  
		Last Modified: Wed, 11 Oct 2017 01:44:48 GMT  
		Size: 63.1 MB (63112788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d66ad002cbdedf6ed25912d4def0ad10b2c433cdf00c35fd3422537176aee63`  
		Last Modified: Wed, 11 Oct 2017 01:44:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46715773679d9c781cfc8c4556dc66ab854a30034e4f11d14c96bcb38e43079`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2b484f66b16aa9d7577a9766022320a81c9c8ba63bd95b92ff7c94ed123fe`  
		Last Modified: Wed, 11 Oct 2017 01:44:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:beb70f6daf58d5e27e00bf7ffaeed002791eb39c916da72764e680b42683dc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:82020e31a199c78ae0c5629d3c85acff706252a49f94cf6ff6c04a8ab114c4b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8785ab2cd70ab6b30ee20c08888369c6fd90cb0a29ce58b1b10d03568bb4be5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 09 Oct 2017 23:59:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:00:22 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:00:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:00:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:00:44 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 10 Oct 2017 00:00:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_MAJOR=3.0
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 10 Oct 2017 00:00:47 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:00:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:01:00 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:01:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:01:00 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:01:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:01:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:01:02 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:01:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374dbe97d8b0b56767efc8c77f54bcf79461caec3780451f40ea1189c48885c8`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75549a07547aaf9ce46a0c55a78bd1492425eeacd2d3121cdc0a63dc146c412c`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa976b81558ea4c384847bd71f2ebb7663b0ef93645273ce81e2d755d2f30e2b`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 2.7 MB (2660944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e903cf22f100647d257ec43774e0390b2f81310fc896e85a7c660244abc2edd3`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 1.1 MB (1103186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74523aaba6e8c5ac58f49d5e0d51dba8d5be29feef1f03041675d6249ecda65`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe6e5f001cc2a276caa158cd6db2345513eb3c5b818953e335ba3954ab80167`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc76dfa9fade94ee6c138a7cc451f2960467c8d38dc4c42563e110a76bd025c`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57d8323d7073235cd0f05f42a4b7e5db9aec8109a6c72d8784be54ed0d4876c`  
		Last Modified: Tue, 10 Oct 2017 00:06:34 GMT  
		Size: 61.9 MB (61886298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58bff45d53bc7a128f14b281558c0a66a67eb83efba91882cea1be9a408bee5`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dba9507d22a320827e9d6638f0e9d00e5afc2529b93db85ec6f194ee2d737c7`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45852d444dc8bb80ee30f9944a6a89a76b7bf57ce662481349a54f9e387ec4`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:1491770a1aa44dff8467b600326e0cdf569053f76b7008f5a00fd3a1b0dc6c68
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397477922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0396b279a75a4c10ada0a6afa422117b8b42ceed2bccb7ea88c28600d9b0c73`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:37:36 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 11 Oct 2017 01:37:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 11 Oct 2017 01:37:43 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 11 Oct 2017 01:38:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:38:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:39:02 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:39:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06031e3a1dba796bb2eb76da706eb52acb9e683f4d18368eba6e6270ad30154a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ab3ade132c3054f566127af2cc1f2a984ede70b9d61c42264cd477a7b1b9a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168c6c218fe31beb7d0373ae4f915bbb697ba224b3c7c0a7a2d19f878d4da7bc`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca7bc47d3b9803e74b68c3131634c01e789524b36f37b9eb241ee3093e21e40`  
		Last Modified: Wed, 11 Oct 2017 01:44:01 GMT  
		Size: 47.0 MB (46962256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122adb129d98af50ccb36411616c45f657a688d92b8189628c0c12b97407a0d7`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a6fe564810dfe9bd50aee468f303ca9f8e1575a45b2fbe4d4e1a27ef219ece`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28f06537bda59733893ce91a510cde87cef7e93f46e00e49c0418b18355490`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:beb70f6daf58d5e27e00bf7ffaeed002791eb39c916da72764e680b42683dc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:82020e31a199c78ae0c5629d3c85acff706252a49f94cf6ff6c04a8ab114c4b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8785ab2cd70ab6b30ee20c08888369c6fd90cb0a29ce58b1b10d03568bb4be5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 09 Oct 2017 23:59:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:00:22 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:00:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:00:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:00:44 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 10 Oct 2017 00:00:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_MAJOR=3.0
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 10 Oct 2017 00:00:47 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:00:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:01:00 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:01:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:01:00 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:01:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:01:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:01:02 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:01:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374dbe97d8b0b56767efc8c77f54bcf79461caec3780451f40ea1189c48885c8`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75549a07547aaf9ce46a0c55a78bd1492425eeacd2d3121cdc0a63dc146c412c`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa976b81558ea4c384847bd71f2ebb7663b0ef93645273ce81e2d755d2f30e2b`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 2.7 MB (2660944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e903cf22f100647d257ec43774e0390b2f81310fc896e85a7c660244abc2edd3`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 1.1 MB (1103186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74523aaba6e8c5ac58f49d5e0d51dba8d5be29feef1f03041675d6249ecda65`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe6e5f001cc2a276caa158cd6db2345513eb3c5b818953e335ba3954ab80167`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc76dfa9fade94ee6c138a7cc451f2960467c8d38dc4c42563e110a76bd025c`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57d8323d7073235cd0f05f42a4b7e5db9aec8109a6c72d8784be54ed0d4876c`  
		Last Modified: Tue, 10 Oct 2017 00:06:34 GMT  
		Size: 61.9 MB (61886298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58bff45d53bc7a128f14b281558c0a66a67eb83efba91882cea1be9a408bee5`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dba9507d22a320827e9d6638f0e9d00e5afc2529b93db85ec6f194ee2d737c7`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45852d444dc8bb80ee30f9944a6a89a76b7bf57ce662481349a54f9e387ec4`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.0.15` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:1491770a1aa44dff8467b600326e0cdf569053f76b7008f5a00fd3a1b0dc6c68
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397477922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0396b279a75a4c10ada0a6afa422117b8b42ceed2bccb7ea88c28600d9b0c73`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:37:36 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 11 Oct 2017 01:37:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 11 Oct 2017 01:37:43 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 11 Oct 2017 01:38:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:38:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:39:02 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:39:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06031e3a1dba796bb2eb76da706eb52acb9e683f4d18368eba6e6270ad30154a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ab3ade132c3054f566127af2cc1f2a984ede70b9d61c42264cd477a7b1b9a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168c6c218fe31beb7d0373ae4f915bbb697ba224b3c7c0a7a2d19f878d4da7bc`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca7bc47d3b9803e74b68c3131634c01e789524b36f37b9eb241ee3093e21e40`  
		Last Modified: Wed, 11 Oct 2017 01:44:01 GMT  
		Size: 47.0 MB (46962256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122adb129d98af50ccb36411616c45f657a688d92b8189628c0c12b97407a0d7`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a6fe564810dfe9bd50aee468f303ca9f8e1575a45b2fbe4d4e1a27ef219ece`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28f06537bda59733893ce91a510cde87cef7e93f46e00e49c0418b18355490`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-wheezy`

```console
$ docker pull mongo@sha256:7b447ccca989528af1f3e164869917321a43bf511d11ff535b808e50f6dc5ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:82020e31a199c78ae0c5629d3c85acff706252a49f94cf6ff6c04a8ab114c4b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8785ab2cd70ab6b30ee20c08888369c6fd90cb0a29ce58b1b10d03568bb4be5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 09 Oct 2017 23:59:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:00:22 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:00:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:00:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:00:44 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 10 Oct 2017 00:00:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_MAJOR=3.0
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 10 Oct 2017 00:00:47 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:00:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:01:00 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:01:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:01:00 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:01:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:01:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:01:02 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:01:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374dbe97d8b0b56767efc8c77f54bcf79461caec3780451f40ea1189c48885c8`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75549a07547aaf9ce46a0c55a78bd1492425eeacd2d3121cdc0a63dc146c412c`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa976b81558ea4c384847bd71f2ebb7663b0ef93645273ce81e2d755d2f30e2b`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 2.7 MB (2660944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e903cf22f100647d257ec43774e0390b2f81310fc896e85a7c660244abc2edd3`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 1.1 MB (1103186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74523aaba6e8c5ac58f49d5e0d51dba8d5be29feef1f03041675d6249ecda65`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe6e5f001cc2a276caa158cd6db2345513eb3c5b818953e335ba3954ab80167`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc76dfa9fade94ee6c138a7cc451f2960467c8d38dc4c42563e110a76bd025c`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57d8323d7073235cd0f05f42a4b7e5db9aec8109a6c72d8784be54ed0d4876c`  
		Last Modified: Tue, 10 Oct 2017 00:06:34 GMT  
		Size: 61.9 MB (61886298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58bff45d53bc7a128f14b281558c0a66a67eb83efba91882cea1be9a408bee5`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dba9507d22a320827e9d6638f0e9d00e5afc2529b93db85ec6f194ee2d737c7`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45852d444dc8bb80ee30f9944a6a89a76b7bf57ce662481349a54f9e387ec4`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore`

```console
$ docker pull mongo@sha256:707e115bb85ba18aa0d4771b14578faa7159e99b3a2f0553a9e5cb458a0117e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0.15-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:1491770a1aa44dff8467b600326e0cdf569053f76b7008f5a00fd3a1b0dc6c68
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397477922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0396b279a75a4c10ada0a6afa422117b8b42ceed2bccb7ea88c28600d9b0c73`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:37:36 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 11 Oct 2017 01:37:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 11 Oct 2017 01:37:43 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 11 Oct 2017 01:38:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:38:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:39:02 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:39:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06031e3a1dba796bb2eb76da706eb52acb9e683f4d18368eba6e6270ad30154a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ab3ade132c3054f566127af2cc1f2a984ede70b9d61c42264cd477a7b1b9a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168c6c218fe31beb7d0373ae4f915bbb697ba224b3c7c0a7a2d19f878d4da7bc`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca7bc47d3b9803e74b68c3131634c01e789524b36f37b9eb241ee3093e21e40`  
		Last Modified: Wed, 11 Oct 2017 01:44:01 GMT  
		Size: 47.0 MB (46962256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122adb129d98af50ccb36411616c45f657a688d92b8189628c0c12b97407a0d7`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a6fe564810dfe9bd50aee468f303ca9f8e1575a45b2fbe4d4e1a27ef219ece`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28f06537bda59733893ce91a510cde87cef7e93f46e00e49c0418b18355490`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-wheezy`

```console
$ docker pull mongo@sha256:7b447ccca989528af1f3e164869917321a43bf511d11ff535b808e50f6dc5ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:82020e31a199c78ae0c5629d3c85acff706252a49f94cf6ff6c04a8ab114c4b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8785ab2cd70ab6b30ee20c08888369c6fd90cb0a29ce58b1b10d03568bb4be5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:35:08 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Mon, 09 Oct 2017 21:35:09 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 09 Oct 2017 23:59:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 10 Oct 2017 00:00:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:00:22 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:00:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:00:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:00:44 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 10 Oct 2017 00:00:45 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:00:45 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_MAJOR=3.0
# Tue, 10 Oct 2017 00:00:46 GMT
ENV MONGO_VERSION=3.0.15
# Tue, 10 Oct 2017 00:00:47 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:00:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:01:00 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:01:00 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:01:00 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:01:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:01:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:01:02 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:01:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374dbe97d8b0b56767efc8c77f54bcf79461caec3780451f40ea1189c48885c8`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75549a07547aaf9ce46a0c55a78bd1492425eeacd2d3121cdc0a63dc146c412c`  
		Last Modified: Tue, 10 Oct 2017 00:06:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa976b81558ea4c384847bd71f2ebb7663b0ef93645273ce81e2d755d2f30e2b`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 2.7 MB (2660944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e903cf22f100647d257ec43774e0390b2f81310fc896e85a7c660244abc2edd3`  
		Last Modified: Tue, 10 Oct 2017 00:06:20 GMT  
		Size: 1.1 MB (1103186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74523aaba6e8c5ac58f49d5e0d51dba8d5be29feef1f03041675d6249ecda65`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe6e5f001cc2a276caa158cd6db2345513eb3c5b818953e335ba3954ab80167`  
		Last Modified: Tue, 10 Oct 2017 00:06:19 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc76dfa9fade94ee6c138a7cc451f2960467c8d38dc4c42563e110a76bd025c`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57d8323d7073235cd0f05f42a4b7e5db9aec8109a6c72d8784be54ed0d4876c`  
		Last Modified: Tue, 10 Oct 2017 00:06:34 GMT  
		Size: 61.9 MB (61886298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58bff45d53bc7a128f14b281558c0a66a67eb83efba91882cea1be9a408bee5`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dba9507d22a320827e9d6638f0e9d00e5afc2529b93db85ec6f194ee2d737c7`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45852d444dc8bb80ee30f9944a6a89a76b7bf57ce662481349a54f9e387ec4`  
		Last Modified: Tue, 10 Oct 2017 00:06:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:707e115bb85ba18aa0d4771b14578faa7159e99b3a2f0553a9e5cb458a0117e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:1491770a1aa44dff8467b600326e0cdf569053f76b7008f5a00fd3a1b0dc6c68
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397477922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0396b279a75a4c10ada0a6afa422117b8b42ceed2bccb7ea88c28600d9b0c73`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:37:36 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 11 Oct 2017 01:37:39 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 11 Oct 2017 01:37:43 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 11 Oct 2017 01:38:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:38:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:39:02 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:39:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06031e3a1dba796bb2eb76da706eb52acb9e683f4d18368eba6e6270ad30154a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ab3ade132c3054f566127af2cc1f2a984ede70b9d61c42264cd477a7b1b9a`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168c6c218fe31beb7d0373ae4f915bbb697ba224b3c7c0a7a2d19f878d4da7bc`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca7bc47d3b9803e74b68c3131634c01e789524b36f37b9eb241ee3093e21e40`  
		Last Modified: Wed, 11 Oct 2017 01:44:01 GMT  
		Size: 47.0 MB (46962256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122adb129d98af50ccb36411616c45f657a688d92b8189628c0c12b97407a0d7`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a6fe564810dfe9bd50aee468f303ca9f8e1575a45b2fbe4d4e1a27ef219ece`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad28f06537bda59733893ce91a510cde87cef7e93f46e00e49c0418b18355490`  
		Last Modified: Wed, 11 Oct 2017 01:43:51 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:30f44f2960b2c5d14b7161e4070404acdee4edda2d0e85bac2f35f33d81f9c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:ca3802ca626e343599bed2dbd45a4c327b91cda95866fdc559dc43e2934fe6a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16dc6ae8085ee1891242caae955e14251caa72415e678063203ead560023d28d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:01:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:02:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:02:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:02:21 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 10 Oct 2017 00:02:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_MAJOR=3.2
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_VERSION=3.2.17
# Tue, 10 Oct 2017 00:02:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:03:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:03:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:03:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:03:03 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:04 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:03:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dabebac9bd059afa3bb2308764bbe36f7c10361c0ea41c381182382b17faff`  
		Last Modified: Tue, 10 Oct 2017 00:07:04 GMT  
		Size: 2.4 MB (2398110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce467fb74eec30b0cd7f83f5e8feab19cf462e0c0450d607a37e6afbe26d0e`  
		Last Modified: Tue, 10 Oct 2017 00:07:03 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3153e225cca01bbbae936ee3516190ce732a6dd9656f1b9a125212494f5aaa3`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f2cb7b167ff5427170ab734e64774669b91c2a88f74efa2fde028260abc87`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ae8348545b7e36ae92e8d96649517b771a59fc00e039aca0ecad21575689ad`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f6f77503e97625e4a5e1c58fd9c43ecfaf14a30faa9f90f660d742555bc8f`  
		Last Modified: Tue, 10 Oct 2017 00:07:19 GMT  
		Size: 70.8 MB (70829987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadf180f24191a4d85b92eece47678994d6534f232cb8892c404152d5786c419`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb2f1f8238eba3e9975eb25c5956ebcd3df63b07cc5e16bc47192e23fd40fe2`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd017420957f1d0608edbf2778187c5a9211997b90d5de402739186919d9144`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:0cc8a1359f1112abb2f0435f323a37eec6eb21eb44a569a38ae3ba4a58844179
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403479400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19193d13ecce0430f0dff3c1f4eaeffefe97b77cf91e77610e27153280b4fcda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:39:15 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 11 Oct 2017 01:39:18 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 11 Oct 2017 01:39:21 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 11 Oct 2017 01:40:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:40:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:40:09 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:40:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5836373826deb8eb45258c927840a078f98aa44325d85e96bcfae1bae06501`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014efcf047a88758e64a0a678af0cbf4e0ebf268cee7e77250fb926f8917992`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a170d1c46c6ebc6ac93f2bb061e8886f9ff5ca7efede117061ac7cd3b02e3c6`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504e329fdaa0d12bca89d770e26ffc90858386ab41f4659da1fee5beae63b973`  
		Last Modified: Wed, 11 Oct 2017 01:44:23 GMT  
		Size: 53.0 MB (52963727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d0075e0ffebb2372fdb46905c67e703f5d5858ab527d0c17926d04afa68843`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb2dc01cbf73b757c46aa3ee388c40430e9d918c22756e4f6164124bd1d1b0f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f8451b133a5db4fbae9345b718ca7f3d0a003fb734dec883d2570a441d2a3f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17`

```console
$ docker pull mongo@sha256:30f44f2960b2c5d14b7161e4070404acdee4edda2d0e85bac2f35f33d81f9c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2.17` - linux; amd64

```console
$ docker pull mongo@sha256:ca3802ca626e343599bed2dbd45a4c327b91cda95866fdc559dc43e2934fe6a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16dc6ae8085ee1891242caae955e14251caa72415e678063203ead560023d28d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:01:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:02:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:02:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:02:21 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 10 Oct 2017 00:02:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_MAJOR=3.2
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_VERSION=3.2.17
# Tue, 10 Oct 2017 00:02:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:03:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:03:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:03:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:03:03 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:04 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:03:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dabebac9bd059afa3bb2308764bbe36f7c10361c0ea41c381182382b17faff`  
		Last Modified: Tue, 10 Oct 2017 00:07:04 GMT  
		Size: 2.4 MB (2398110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce467fb74eec30b0cd7f83f5e8feab19cf462e0c0450d607a37e6afbe26d0e`  
		Last Modified: Tue, 10 Oct 2017 00:07:03 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3153e225cca01bbbae936ee3516190ce732a6dd9656f1b9a125212494f5aaa3`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f2cb7b167ff5427170ab734e64774669b91c2a88f74efa2fde028260abc87`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ae8348545b7e36ae92e8d96649517b771a59fc00e039aca0ecad21575689ad`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f6f77503e97625e4a5e1c58fd9c43ecfaf14a30faa9f90f660d742555bc8f`  
		Last Modified: Tue, 10 Oct 2017 00:07:19 GMT  
		Size: 70.8 MB (70829987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadf180f24191a4d85b92eece47678994d6534f232cb8892c404152d5786c419`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb2f1f8238eba3e9975eb25c5956ebcd3df63b07cc5e16bc47192e23fd40fe2`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd017420957f1d0608edbf2778187c5a9211997b90d5de402739186919d9144`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2.17` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:0cc8a1359f1112abb2f0435f323a37eec6eb21eb44a569a38ae3ba4a58844179
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403479400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19193d13ecce0430f0dff3c1f4eaeffefe97b77cf91e77610e27153280b4fcda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:39:15 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 11 Oct 2017 01:39:18 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 11 Oct 2017 01:39:21 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 11 Oct 2017 01:40:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:40:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:40:09 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:40:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5836373826deb8eb45258c927840a078f98aa44325d85e96bcfae1bae06501`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014efcf047a88758e64a0a678af0cbf4e0ebf268cee7e77250fb926f8917992`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a170d1c46c6ebc6ac93f2bb061e8886f9ff5ca7efede117061ac7cd3b02e3c6`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504e329fdaa0d12bca89d770e26ffc90858386ab41f4659da1fee5beae63b973`  
		Last Modified: Wed, 11 Oct 2017 01:44:23 GMT  
		Size: 53.0 MB (52963727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d0075e0ffebb2372fdb46905c67e703f5d5858ab527d0c17926d04afa68843`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb2dc01cbf73b757c46aa3ee388c40430e9d918c22756e4f6164124bd1d1b0f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f8451b133a5db4fbae9345b718ca7f3d0a003fb734dec883d2570a441d2a3f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17-jessie`

```console
$ docker pull mongo@sha256:c60d2223555a7ae3f0278cb211021bf377b9e4dede402104e3d86ab03a2f5ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.17-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:ca3802ca626e343599bed2dbd45a4c327b91cda95866fdc559dc43e2934fe6a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16dc6ae8085ee1891242caae955e14251caa72415e678063203ead560023d28d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:01:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:02:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:02:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:02:21 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 10 Oct 2017 00:02:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_MAJOR=3.2
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_VERSION=3.2.17
# Tue, 10 Oct 2017 00:02:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:03:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:03:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:03:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:03:03 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:04 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:03:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dabebac9bd059afa3bb2308764bbe36f7c10361c0ea41c381182382b17faff`  
		Last Modified: Tue, 10 Oct 2017 00:07:04 GMT  
		Size: 2.4 MB (2398110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce467fb74eec30b0cd7f83f5e8feab19cf462e0c0450d607a37e6afbe26d0e`  
		Last Modified: Tue, 10 Oct 2017 00:07:03 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3153e225cca01bbbae936ee3516190ce732a6dd9656f1b9a125212494f5aaa3`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f2cb7b167ff5427170ab734e64774669b91c2a88f74efa2fde028260abc87`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ae8348545b7e36ae92e8d96649517b771a59fc00e039aca0ecad21575689ad`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f6f77503e97625e4a5e1c58fd9c43ecfaf14a30faa9f90f660d742555bc8f`  
		Last Modified: Tue, 10 Oct 2017 00:07:19 GMT  
		Size: 70.8 MB (70829987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadf180f24191a4d85b92eece47678994d6534f232cb8892c404152d5786c419`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb2f1f8238eba3e9975eb25c5956ebcd3df63b07cc5e16bc47192e23fd40fe2`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd017420957f1d0608edbf2778187c5a9211997b90d5de402739186919d9144`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17-windowsservercore`

```console
$ docker pull mongo@sha256:ab56c19f61809694c8a6b0462668fad227c74cb91bc6c48c8cee47b7b2f0f813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2.17-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:0cc8a1359f1112abb2f0435f323a37eec6eb21eb44a569a38ae3ba4a58844179
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403479400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19193d13ecce0430f0dff3c1f4eaeffefe97b77cf91e77610e27153280b4fcda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:39:15 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 11 Oct 2017 01:39:18 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 11 Oct 2017 01:39:21 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 11 Oct 2017 01:40:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:40:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:40:09 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:40:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5836373826deb8eb45258c927840a078f98aa44325d85e96bcfae1bae06501`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014efcf047a88758e64a0a678af0cbf4e0ebf268cee7e77250fb926f8917992`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a170d1c46c6ebc6ac93f2bb061e8886f9ff5ca7efede117061ac7cd3b02e3c6`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504e329fdaa0d12bca89d770e26ffc90858386ab41f4659da1fee5beae63b973`  
		Last Modified: Wed, 11 Oct 2017 01:44:23 GMT  
		Size: 53.0 MB (52963727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d0075e0ffebb2372fdb46905c67e703f5d5858ab527d0c17926d04afa68843`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb2dc01cbf73b757c46aa3ee388c40430e9d918c22756e4f6164124bd1d1b0f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f8451b133a5db4fbae9345b718ca7f3d0a003fb734dec883d2570a441d2a3f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:c60d2223555a7ae3f0278cb211021bf377b9e4dede402104e3d86ab03a2f5ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:ca3802ca626e343599bed2dbd45a4c327b91cda95866fdc559dc43e2934fe6a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16dc6ae8085ee1891242caae955e14251caa72415e678063203ead560023d28d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:01:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:02:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:02:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:02:21 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 10 Oct 2017 00:02:28 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:02:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_MAJOR=3.2
# Tue, 10 Oct 2017 00:02:29 GMT
ENV MONGO_VERSION=3.2.17
# Tue, 10 Oct 2017 00:02:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:03:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:03:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:03:02 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:03:03 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:03:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:03:04 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:03:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dabebac9bd059afa3bb2308764bbe36f7c10361c0ea41c381182382b17faff`  
		Last Modified: Tue, 10 Oct 2017 00:07:04 GMT  
		Size: 2.4 MB (2398110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce467fb74eec30b0cd7f83f5e8feab19cf462e0c0450d607a37e6afbe26d0e`  
		Last Modified: Tue, 10 Oct 2017 00:07:03 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3153e225cca01bbbae936ee3516190ce732a6dd9656f1b9a125212494f5aaa3`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f2cb7b167ff5427170ab734e64774669b91c2a88f74efa2fde028260abc87`  
		Last Modified: Tue, 10 Oct 2017 00:07:02 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ae8348545b7e36ae92e8d96649517b771a59fc00e039aca0ecad21575689ad`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f6f77503e97625e4a5e1c58fd9c43ecfaf14a30faa9f90f660d742555bc8f`  
		Last Modified: Tue, 10 Oct 2017 00:07:19 GMT  
		Size: 70.8 MB (70829987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadf180f24191a4d85b92eece47678994d6534f232cb8892c404152d5786c419`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb2f1f8238eba3e9975eb25c5956ebcd3df63b07cc5e16bc47192e23fd40fe2`  
		Last Modified: Tue, 10 Oct 2017 00:07:01 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd017420957f1d0608edbf2778187c5a9211997b90d5de402739186919d9144`  
		Last Modified: Tue, 10 Oct 2017 00:07:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:ab56c19f61809694c8a6b0462668fad227c74cb91bc6c48c8cee47b7b2f0f813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:0cc8a1359f1112abb2f0435f323a37eec6eb21eb44a569a38ae3ba4a58844179
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403479400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19193d13ecce0430f0dff3c1f4eaeffefe97b77cf91e77610e27153280b4fcda`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:39:15 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 11 Oct 2017 01:39:18 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 11 Oct 2017 01:39:21 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 11 Oct 2017 01:40:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:40:06 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:40:09 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:40:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5836373826deb8eb45258c927840a078f98aa44325d85e96bcfae1bae06501`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014efcf047a88758e64a0a678af0cbf4e0ebf268cee7e77250fb926f8917992`  
		Last Modified: Wed, 11 Oct 2017 01:44:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a170d1c46c6ebc6ac93f2bb061e8886f9ff5ca7efede117061ac7cd3b02e3c6`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504e329fdaa0d12bca89d770e26ffc90858386ab41f4659da1fee5beae63b973`  
		Last Modified: Wed, 11 Oct 2017 01:44:23 GMT  
		Size: 53.0 MB (52963727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d0075e0ffebb2372fdb46905c67e703f5d5858ab527d0c17926d04afa68843`  
		Last Modified: Wed, 11 Oct 2017 01:44:12 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb2dc01cbf73b757c46aa3ee388c40430e9d918c22756e4f6164124bd1d1b0f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f8451b133a5db4fbae9345b718ca7f3d0a003fb734dec883d2570a441d2a3f`  
		Last Modified: Wed, 11 Oct 2017 01:44:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:97c51a36d08871557c02e64d20a9a6b645b16ce387b39ae4414609c39dfc439c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:05edf5b34bf74674469de4e5fe5b70eb78a9a0a4ed8d7c419234e82282d8b710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132105335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e262dc084514f5c847509a36a2006f86cef1a3c13c1a9810adf7c28734f0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:04:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 10 Oct 2017 00:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_MAJOR=3.4
# Tue, 10 Oct 2017 00:04:30 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 10 Oct 2017 00:04:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:04:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:04:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:04:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:04:58 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:04:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:04:59 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:04:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193466d9d72852582271d7f0ac7e3490d3a299f086157c5d9d208d706193abc9`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e75e2cec52fae26efb4455a30370c5378bfb4c9a76228577d57d58842a69cf`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111da4b346b0e0b11469a96a32e0b26b38b9690e9d162dbb85673ee0de737125`  
		Last Modified: Tue, 10 Oct 2017 00:08:07 GMT  
		Size: 98.5 MB (98477940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5b8f25164334e023230e5c5394b00158c7af7409fe148efbd4c6ce35ac2e0`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5a96927e4175dd34c5db89852288ce5243da1c0e3c4de2541e9f2852d9dc8c`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b138ac1b57786247146c9c70e1e71b74f18f7e4d87c1f608e72b90151888d878`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:43cc6a51bbcf88d85734082a93d25d42790ff6624a615420d400e707c4bf8f9a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413628453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb35c1d8bb5f1e90b844d023f2efc423d6dbd15031c6a7dcfc1bc10a894d374`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:40:27 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 11 Oct 2017 01:40:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Wed, 11 Oct 2017 01:40:33 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Wed, 11 Oct 2017 01:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:41:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:41:46 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337316175d43fb774500873af1a5af250210da650adb72ca3b46ec90470aba1b`  
		Last Modified: Wed, 11 Oct 2017 01:44:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8577496c933902bdf89e8159b9b61b8c5106f098c3f18fce7eb3c64100548051`  
		Last Modified: Wed, 11 Oct 2017 01:44:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f350b8e0567f3d61ce8dfc290c2c361be89e2ef1faf7123542c49d1a8257cd`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec21414b3605a123a92668caab41a717487e145ef190eae91f970be17c8fb1d`  
		Last Modified: Wed, 11 Oct 2017 01:44:48 GMT  
		Size: 63.1 MB (63112788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d66ad002cbdedf6ed25912d4def0ad10b2c433cdf00c35fd3422537176aee63`  
		Last Modified: Wed, 11 Oct 2017 01:44:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46715773679d9c781cfc8c4556dc66ab854a30034e4f11d14c96bcb38e43079`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2b484f66b16aa9d7577a9766022320a81c9c8ba63bd95b92ff7c94ed123fe`  
		Last Modified: Wed, 11 Oct 2017 01:44:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10`

**does not exist** (yet?)

## `mongo:3.4.10-jessie`

**does not exist** (yet?)

## `mongo:3.4.10-windowsservercore`

**does not exist** (yet?)

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:a6a9abbec0cd9a94aa809c19fac9138ee92e77a4753207e3bc10dd0723be6529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:05edf5b34bf74674469de4e5fe5b70eb78a9a0a4ed8d7c419234e82282d8b710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132105335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e262dc084514f5c847509a36a2006f86cef1a3c13c1a9810adf7c28734f0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:04:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 10 Oct 2017 00:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_MAJOR=3.4
# Tue, 10 Oct 2017 00:04:30 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 10 Oct 2017 00:04:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:04:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:04:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:04:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:04:58 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:04:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:04:59 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:04:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193466d9d72852582271d7f0ac7e3490d3a299f086157c5d9d208d706193abc9`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e75e2cec52fae26efb4455a30370c5378bfb4c9a76228577d57d58842a69cf`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111da4b346b0e0b11469a96a32e0b26b38b9690e9d162dbb85673ee0de737125`  
		Last Modified: Tue, 10 Oct 2017 00:08:07 GMT  
		Size: 98.5 MB (98477940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5b8f25164334e023230e5c5394b00158c7af7409fe148efbd4c6ce35ac2e0`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5a96927e4175dd34c5db89852288ce5243da1c0e3c4de2541e9f2852d9dc8c`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b138ac1b57786247146c9c70e1e71b74f18f7e4d87c1f608e72b90151888d878`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:44e7290845fda27cfcdf542f2920cb1c9558c0efae06d7e742ceadd35bffe7b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:43cc6a51bbcf88d85734082a93d25d42790ff6624a615420d400e707c4bf8f9a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413628453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb35c1d8bb5f1e90b844d023f2efc423d6dbd15031c6a7dcfc1bc10a894d374`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:40:27 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 11 Oct 2017 01:40:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Wed, 11 Oct 2017 01:40:33 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Wed, 11 Oct 2017 01:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:41:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:41:46 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337316175d43fb774500873af1a5af250210da650adb72ca3b46ec90470aba1b`  
		Last Modified: Wed, 11 Oct 2017 01:44:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8577496c933902bdf89e8159b9b61b8c5106f098c3f18fce7eb3c64100548051`  
		Last Modified: Wed, 11 Oct 2017 01:44:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f350b8e0567f3d61ce8dfc290c2c361be89e2ef1faf7123542c49d1a8257cd`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec21414b3605a123a92668caab41a717487e145ef190eae91f970be17c8fb1d`  
		Last Modified: Wed, 11 Oct 2017 01:44:48 GMT  
		Size: 63.1 MB (63112788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d66ad002cbdedf6ed25912d4def0ad10b2c433cdf00c35fd3422537176aee63`  
		Last Modified: Wed, 11 Oct 2017 01:44:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46715773679d9c781cfc8c4556dc66ab854a30034e4f11d14c96bcb38e43079`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2b484f66b16aa9d7577a9766022320a81c9c8ba63bd95b92ff7c94ed123fe`  
		Last Modified: Wed, 11 Oct 2017 01:44:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:b896baa314f6c80132a397cd6f4ce312cb4a2e609db431ba9bbdaf9b88238c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5` - linux; amd64

```console
$ docker pull mongo@sha256:6f4aff33e73219ffa02a508b6cbceb3497d40cc0a22db83b767274974c8b95b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9878e650e7d05b94065ea85c41a0d1350649fd71fc89cd9e804cbde3dcafdb74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:05:12 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_MAJOR=3.5
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_VERSION=3.5.13
# Tue, 10 Oct 2017 00:05:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:05:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:05:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:05:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:05:51 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:05:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:05:51 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:05:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edb1357ee9a2e8f35dce7ae480c9a85949a7e487a324b7329af70d42cc2df3`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26300b6c08510962e6ea6216f7cbf6fa5654bc81eb02f4353af9c48516a5141`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598c1621a5afac7511826947695cf8b8360398ca1b6e4caacfe9c8ad733a4df5`  
		Last Modified: Tue, 10 Oct 2017 00:09:17 GMT  
		Size: 99.2 MB (99185525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365fc3543c4dae5c186ffb5a03d8eb0b4d92228eb18eb99b6c7ff2ca32e5058`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80c9ed8b6abce2e2fd0e695647479255e4ee124a96597a755d7ca134a5d3d6`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.5` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13`

```console
$ docker pull mongo@sha256:b896baa314f6c80132a397cd6f4ce312cb4a2e609db431ba9bbdaf9b88238c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5.13` - linux; amd64

```console
$ docker pull mongo@sha256:6f4aff33e73219ffa02a508b6cbceb3497d40cc0a22db83b767274974c8b95b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9878e650e7d05b94065ea85c41a0d1350649fd71fc89cd9e804cbde3dcafdb74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:05:12 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_MAJOR=3.5
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_VERSION=3.5.13
# Tue, 10 Oct 2017 00:05:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:05:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:05:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:05:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:05:51 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:05:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:05:51 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:05:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edb1357ee9a2e8f35dce7ae480c9a85949a7e487a324b7329af70d42cc2df3`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26300b6c08510962e6ea6216f7cbf6fa5654bc81eb02f4353af9c48516a5141`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598c1621a5afac7511826947695cf8b8360398ca1b6e4caacfe9c8ad733a4df5`  
		Last Modified: Tue, 10 Oct 2017 00:09:17 GMT  
		Size: 99.2 MB (99185525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365fc3543c4dae5c186ffb5a03d8eb0b4d92228eb18eb99b6c7ff2ca32e5058`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80c9ed8b6abce2e2fd0e695647479255e4ee124a96597a755d7ca134a5d3d6`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.5.13` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13-jessie`

```console
$ docker pull mongo@sha256:c9b254de8e806d22466069b0b60d76a4baaa540bff655c608249dcf6d4806897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5.13-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:6f4aff33e73219ffa02a508b6cbceb3497d40cc0a22db83b767274974c8b95b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9878e650e7d05b94065ea85c41a0d1350649fd71fc89cd9e804cbde3dcafdb74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:05:12 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_MAJOR=3.5
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_VERSION=3.5.13
# Tue, 10 Oct 2017 00:05:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:05:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:05:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:05:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:05:51 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:05:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:05:51 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:05:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edb1357ee9a2e8f35dce7ae480c9a85949a7e487a324b7329af70d42cc2df3`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26300b6c08510962e6ea6216f7cbf6fa5654bc81eb02f4353af9c48516a5141`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598c1621a5afac7511826947695cf8b8360398ca1b6e4caacfe9c8ad733a4df5`  
		Last Modified: Tue, 10 Oct 2017 00:09:17 GMT  
		Size: 99.2 MB (99185525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365fc3543c4dae5c186ffb5a03d8eb0b4d92228eb18eb99b6c7ff2ca32e5058`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80c9ed8b6abce2e2fd0e695647479255e4ee124a96597a755d7ca134a5d3d6`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13-windowsservercore`

```console
$ docker pull mongo@sha256:a1399c6373168fda568969a3d82872c2d4aa0e382a4a4113ce2dd5d2b4d9ffe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5.13-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-jessie`

```console
$ docker pull mongo@sha256:c9b254de8e806d22466069b0b60d76a4baaa540bff655c608249dcf6d4806897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:6f4aff33e73219ffa02a508b6cbceb3497d40cc0a22db83b767274974c8b95b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9878e650e7d05b94065ea85c41a0d1350649fd71fc89cd9e804cbde3dcafdb74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:05:12 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_MAJOR=3.5
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_VERSION=3.5.13
# Tue, 10 Oct 2017 00:05:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:05:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:05:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:05:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:05:51 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:05:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:05:51 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:05:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edb1357ee9a2e8f35dce7ae480c9a85949a7e487a324b7329af70d42cc2df3`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26300b6c08510962e6ea6216f7cbf6fa5654bc81eb02f4353af9c48516a5141`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598c1621a5afac7511826947695cf8b8360398ca1b6e4caacfe9c8ad733a4df5`  
		Last Modified: Tue, 10 Oct 2017 00:09:17 GMT  
		Size: 99.2 MB (99185525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365fc3543c4dae5c186ffb5a03d8eb0b4d92228eb18eb99b6c7ff2ca32e5058`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80c9ed8b6abce2e2fd0e695647479255e4ee124a96597a755d7ca134a5d3d6`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:a1399c6373168fda568969a3d82872c2d4aa0e382a4a4113ce2dd5d2b4d9ffe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:a6a9abbec0cd9a94aa809c19fac9138ee92e77a4753207e3bc10dd0723be6529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:05edf5b34bf74674469de4e5fe5b70eb78a9a0a4ed8d7c419234e82282d8b710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132105335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e262dc084514f5c847509a36a2006f86cef1a3c13c1a9810adf7c28734f0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:04:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 10 Oct 2017 00:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_MAJOR=3.4
# Tue, 10 Oct 2017 00:04:30 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 10 Oct 2017 00:04:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:04:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:04:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:04:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:04:58 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:04:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:04:59 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:04:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193466d9d72852582271d7f0ac7e3490d3a299f086157c5d9d208d706193abc9`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e75e2cec52fae26efb4455a30370c5378bfb4c9a76228577d57d58842a69cf`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111da4b346b0e0b11469a96a32e0b26b38b9690e9d162dbb85673ee0de737125`  
		Last Modified: Tue, 10 Oct 2017 00:08:07 GMT  
		Size: 98.5 MB (98477940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5b8f25164334e023230e5c5394b00158c7af7409fe148efbd4c6ce35ac2e0`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5a96927e4175dd34c5db89852288ce5243da1c0e3c4de2541e9f2852d9dc8c`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b138ac1b57786247146c9c70e1e71b74f18f7e4d87c1f608e72b90151888d878`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:44e7290845fda27cfcdf542f2920cb1c9558c0efae06d7e742ceadd35bffe7b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:43cc6a51bbcf88d85734082a93d25d42790ff6624a615420d400e707c4bf8f9a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413628453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb35c1d8bb5f1e90b844d023f2efc423d6dbd15031c6a7dcfc1bc10a894d374`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:40:27 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 11 Oct 2017 01:40:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Wed, 11 Oct 2017 01:40:33 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Wed, 11 Oct 2017 01:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:41:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:41:46 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337316175d43fb774500873af1a5af250210da650adb72ca3b46ec90470aba1b`  
		Last Modified: Wed, 11 Oct 2017 01:44:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8577496c933902bdf89e8159b9b61b8c5106f098c3f18fce7eb3c64100548051`  
		Last Modified: Wed, 11 Oct 2017 01:44:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f350b8e0567f3d61ce8dfc290c2c361be89e2ef1faf7123542c49d1a8257cd`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec21414b3605a123a92668caab41a717487e145ef190eae91f970be17c8fb1d`  
		Last Modified: Wed, 11 Oct 2017 01:44:48 GMT  
		Size: 63.1 MB (63112788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d66ad002cbdedf6ed25912d4def0ad10b2c433cdf00c35fd3422537176aee63`  
		Last Modified: Wed, 11 Oct 2017 01:44:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46715773679d9c781cfc8c4556dc66ab854a30034e4f11d14c96bcb38e43079`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2b484f66b16aa9d7577a9766022320a81c9c8ba63bd95b92ff7c94ed123fe`  
		Last Modified: Wed, 11 Oct 2017 01:44:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:a6a9abbec0cd9a94aa809c19fac9138ee92e77a4753207e3bc10dd0723be6529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:05edf5b34bf74674469de4e5fe5b70eb78a9a0a4ed8d7c419234e82282d8b710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132105335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e262dc084514f5c847509a36a2006f86cef1a3c13c1a9810adf7c28734f0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:04:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 10 Oct 2017 00:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_MAJOR=3.4
# Tue, 10 Oct 2017 00:04:30 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 10 Oct 2017 00:04:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:04:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:04:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:04:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:04:58 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:04:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:04:59 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:04:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193466d9d72852582271d7f0ac7e3490d3a299f086157c5d9d208d706193abc9`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e75e2cec52fae26efb4455a30370c5378bfb4c9a76228577d57d58842a69cf`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111da4b346b0e0b11469a96a32e0b26b38b9690e9d162dbb85673ee0de737125`  
		Last Modified: Tue, 10 Oct 2017 00:08:07 GMT  
		Size: 98.5 MB (98477940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5b8f25164334e023230e5c5394b00158c7af7409fe148efbd4c6ce35ac2e0`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5a96927e4175dd34c5db89852288ce5243da1c0e3c4de2541e9f2852d9dc8c`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b138ac1b57786247146c9c70e1e71b74f18f7e4d87c1f608e72b90151888d878`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:97c51a36d08871557c02e64d20a9a6b645b16ce387b39ae4414609c39dfc439c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:05edf5b34bf74674469de4e5fe5b70eb78a9a0a4ed8d7c419234e82282d8b710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132105335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e262dc084514f5c847509a36a2006f86cef1a3c13c1a9810adf7c28734f0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:04:23 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 10 Oct 2017 00:04:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 10 Oct 2017 00:04:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:04:29 GMT
ENV MONGO_MAJOR=3.4
# Tue, 10 Oct 2017 00:04:30 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 10 Oct 2017 00:04:30 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:04:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:04:57 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:04:57 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:04:58 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:04:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Oct 2017 00:04:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:04:59 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:04:59 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193466d9d72852582271d7f0ac7e3490d3a299f086157c5d9d208d706193abc9`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e75e2cec52fae26efb4455a30370c5378bfb4c9a76228577d57d58842a69cf`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111da4b346b0e0b11469a96a32e0b26b38b9690e9d162dbb85673ee0de737125`  
		Last Modified: Tue, 10 Oct 2017 00:08:07 GMT  
		Size: 98.5 MB (98477940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5b8f25164334e023230e5c5394b00158c7af7409fe148efbd4c6ce35ac2e0`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5a96927e4175dd34c5db89852288ce5243da1c0e3c4de2541e9f2852d9dc8c`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b138ac1b57786247146c9c70e1e71b74f18f7e4d87c1f608e72b90151888d878`  
		Last Modified: Tue, 10 Oct 2017 00:07:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:43cc6a51bbcf88d85734082a93d25d42790ff6624a615420d400e707c4bf8f9a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413628453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb35c1d8bb5f1e90b844d023f2efc423d6dbd15031c6a7dcfc1bc10a894d374`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:40:27 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 11 Oct 2017 01:40:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Wed, 11 Oct 2017 01:40:33 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Wed, 11 Oct 2017 01:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:41:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:41:46 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337316175d43fb774500873af1a5af250210da650adb72ca3b46ec90470aba1b`  
		Last Modified: Wed, 11 Oct 2017 01:44:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8577496c933902bdf89e8159b9b61b8c5106f098c3f18fce7eb3c64100548051`  
		Last Modified: Wed, 11 Oct 2017 01:44:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f350b8e0567f3d61ce8dfc290c2c361be89e2ef1faf7123542c49d1a8257cd`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec21414b3605a123a92668caab41a717487e145ef190eae91f970be17c8fb1d`  
		Last Modified: Wed, 11 Oct 2017 01:44:48 GMT  
		Size: 63.1 MB (63112788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d66ad002cbdedf6ed25912d4def0ad10b2c433cdf00c35fd3422537176aee63`  
		Last Modified: Wed, 11 Oct 2017 01:44:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46715773679d9c781cfc8c4556dc66ab854a30034e4f11d14c96bcb38e43079`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2b484f66b16aa9d7577a9766022320a81c9c8ba63bd95b92ff7c94ed123fe`  
		Last Modified: Wed, 11 Oct 2017 01:44:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:b896baa314f6c80132a397cd6f4ce312cb4a2e609db431ba9bbdaf9b88238c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:6f4aff33e73219ffa02a508b6cbceb3497d40cc0a22db83b767274974c8b95b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9878e650e7d05b94065ea85c41a0d1350649fd71fc89cd9e804cbde3dcafdb74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:05:12 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_MAJOR=3.5
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_VERSION=3.5.13
# Tue, 10 Oct 2017 00:05:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:05:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:05:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:05:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:05:51 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:05:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:05:51 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:05:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edb1357ee9a2e8f35dce7ae480c9a85949a7e487a324b7329af70d42cc2df3`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26300b6c08510962e6ea6216f7cbf6fa5654bc81eb02f4353af9c48516a5141`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598c1621a5afac7511826947695cf8b8360398ca1b6e4caacfe9c8ad733a4df5`  
		Last Modified: Tue, 10 Oct 2017 00:09:17 GMT  
		Size: 99.2 MB (99185525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365fc3543c4dae5c186ffb5a03d8eb0b4d92228eb18eb99b6c7ff2ca32e5058`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80c9ed8b6abce2e2fd0e695647479255e4ee124a96597a755d7ca134a5d3d6`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:c9b254de8e806d22466069b0b60d76a4baaa540bff655c608249dcf6d4806897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:6f4aff33e73219ffa02a508b6cbceb3497d40cc0a22db83b767274974c8b95b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9878e650e7d05b94065ea85c41a0d1350649fd71fc89cd9e804cbde3dcafdb74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:01:14 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 10 Oct 2017 00:03:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:03:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 10 Oct 2017 00:04:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 10 Oct 2017 00:04:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 10 Oct 2017 00:05:12 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 10 Oct 2017 00:05:17 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 10 Oct 2017 00:05:17 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:17 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_MAJOR=3.5
# Tue, 10 Oct 2017 00:05:18 GMT
ENV MONGO_VERSION=3.5.13
# Tue, 10 Oct 2017 00:05:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 10 Oct 2017 00:05:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 10 Oct 2017 00:05:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 10 Oct 2017 00:05:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 10 Oct 2017 00:05:51 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:05:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:05:51 GMT
EXPOSE 27017/tcp
# Tue, 10 Oct 2017 00:05:52 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289396365571cdc9b38bb5d430fd9dc0e66cab5574c68bcc9a8fc20eef460e2d`  
		Last Modified: Tue, 10 Oct 2017 00:07:05 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa261f04fa6765ebc18e0563f71735fc2a40e4da70e19e28417140fbb33eb33d`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 2.4 MB (2398079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a367a82d0b76d703af0b06ebd3cb6532e20fa2c6f2d6dbbc4629d4c91c41d11`  
		Last Modified: Tue, 10 Oct 2017 00:07:47 GMT  
		Size: 1.1 MB (1108754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aa953ba1a9ca7037126c4acbcd32b62668aa1c253b39605722e7be12b97349`  
		Last Modified: Tue, 10 Oct 2017 00:07:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62edb1357ee9a2e8f35dce7ae480c9a85949a7e487a324b7329af70d42cc2df3`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26300b6c08510962e6ea6216f7cbf6fa5654bc81eb02f4353af9c48516a5141`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598c1621a5afac7511826947695cf8b8360398ca1b6e4caacfe9c8ad733a4df5`  
		Last Modified: Tue, 10 Oct 2017 00:09:17 GMT  
		Size: 99.2 MB (99185525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365fc3543c4dae5c186ffb5a03d8eb0b4d92228eb18eb99b6c7ff2ca32e5058`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a80c9ed8b6abce2e2fd0e695647479255e4ee124a96597a755d7ca134a5d3d6`  
		Last Modified: Tue, 10 Oct 2017 00:08:49 GMT  
		Size: 3.2 KB (3175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:a1399c6373168fda568969a3d82872c2d4aa0e382a4a4113ce2dd5d2b4d9ffe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:44e7290845fda27cfcdf542f2920cb1c9558c0efae06d7e742ceadd35bffe7b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:43cc6a51bbcf88d85734082a93d25d42790ff6624a615420d400e707c4bf8f9a
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5413628453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb35c1d8bb5f1e90b844d023f2efc423d6dbd15031c6a7dcfc1bc10a894d374`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:40:27 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 11 Oct 2017 01:40:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Wed, 11 Oct 2017 01:40:33 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Wed, 11 Oct 2017 01:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:41:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:41:46 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:41:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337316175d43fb774500873af1a5af250210da650adb72ca3b46ec90470aba1b`  
		Last Modified: Wed, 11 Oct 2017 01:44:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8577496c933902bdf89e8159b9b61b8c5106f098c3f18fce7eb3c64100548051`  
		Last Modified: Wed, 11 Oct 2017 01:44:42 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f350b8e0567f3d61ce8dfc290c2c361be89e2ef1faf7123542c49d1a8257cd`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec21414b3605a123a92668caab41a717487e145ef190eae91f970be17c8fb1d`  
		Last Modified: Wed, 11 Oct 2017 01:44:48 GMT  
		Size: 63.1 MB (63112788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d66ad002cbdedf6ed25912d4def0ad10b2c433cdf00c35fd3422537176aee63`  
		Last Modified: Wed, 11 Oct 2017 01:44:36 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46715773679d9c781cfc8c4556dc66ab854a30034e4f11d14c96bcb38e43079`  
		Last Modified: Wed, 11 Oct 2017 01:44:35 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf2b484f66b16aa9d7577a9766022320a81c9c8ba63bd95b92ff7c94ed123fe`  
		Last Modified: Wed, 11 Oct 2017 01:44:38 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
