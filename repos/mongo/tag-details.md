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
-	[`mongo:3.4.9`](#mongo349)
-	[`mongo:3.4.9-jessie`](#mongo349-jessie)
-	[`mongo:3.4.9-windowsservercore`](#mongo349-windowsservercore)
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
$ docker pull mongo@sha256:2085c4bbe009724b16e70a708ff1e12f99a0e9a097420757753007f657fc97ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:ce738d07fb882f914126dfde198f8556ea02c7f7d49a1a4f0635e463b8047cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.0` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:6f549b834876caadbbe48f0e8b2cb0bd3b8cb518173edd824ee904165d973715
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5382778514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279cc4dc17f1bdfecd696f9b0134651cfa4566dffe76211e5250908f8a0203fc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:38:40 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 15 Sep 2017 16:38:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 15 Sep 2017 16:38:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 15 Sep 2017 16:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:40:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:40:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d141cf8ec84b4a6483c4c96585d21494fa2a7a2ca1c58eaf029341572a00a748`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8969f18cc5c00a5e7d3cc4fdf8d5326a343755a01bd68686cfb1bc3542d3a7a`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e936273d27f4a9055523fbc8c632d39a34cbde9d91085e334df90e45ebe4ce7`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b21f7d0de7270a0ae0ca3959515f87e4732d6c01d99952922617961b6772e7`  
		Last Modified: Fri, 15 Sep 2017 16:45:43 GMT  
		Size: 47.0 MB (46961518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b228d6f0ba812b02ad2077d7eab49b0b70eba3d836523a00f9ee16080df50`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdcff95942a9c46e453ec3fbad61bd5612cd815516a80b1b83cccbfdd4bd6d4`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80c91c9826d4d89f0e2275e06acfe30e1f6dfcd010d3b24360181a7052ab208`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:ce738d07fb882f914126dfde198f8556ea02c7f7d49a1a4f0635e463b8047cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.0.15` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:6f549b834876caadbbe48f0e8b2cb0bd3b8cb518173edd824ee904165d973715
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5382778514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279cc4dc17f1bdfecd696f9b0134651cfa4566dffe76211e5250908f8a0203fc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:38:40 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 15 Sep 2017 16:38:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 15 Sep 2017 16:38:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 15 Sep 2017 16:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:40:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:40:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d141cf8ec84b4a6483c4c96585d21494fa2a7a2ca1c58eaf029341572a00a748`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8969f18cc5c00a5e7d3cc4fdf8d5326a343755a01bd68686cfb1bc3542d3a7a`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e936273d27f4a9055523fbc8c632d39a34cbde9d91085e334df90e45ebe4ce7`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b21f7d0de7270a0ae0ca3959515f87e4732d6c01d99952922617961b6772e7`  
		Last Modified: Fri, 15 Sep 2017 16:45:43 GMT  
		Size: 47.0 MB (46961518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b228d6f0ba812b02ad2077d7eab49b0b70eba3d836523a00f9ee16080df50`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdcff95942a9c46e453ec3fbad61bd5612cd815516a80b1b83cccbfdd4bd6d4`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80c91c9826d4d89f0e2275e06acfe30e1f6dfcd010d3b24360181a7052ab208`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1231 bytes)  
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
$ docker pull mongo@sha256:662bac9d2881bdd29325670711b4eb9158c80d7d2d2936b2158132c07d735f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.0.15-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:6f549b834876caadbbe48f0e8b2cb0bd3b8cb518173edd824ee904165d973715
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5382778514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279cc4dc17f1bdfecd696f9b0134651cfa4566dffe76211e5250908f8a0203fc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:38:40 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 15 Sep 2017 16:38:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 15 Sep 2017 16:38:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 15 Sep 2017 16:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:40:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:40:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d141cf8ec84b4a6483c4c96585d21494fa2a7a2ca1c58eaf029341572a00a748`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8969f18cc5c00a5e7d3cc4fdf8d5326a343755a01bd68686cfb1bc3542d3a7a`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e936273d27f4a9055523fbc8c632d39a34cbde9d91085e334df90e45ebe4ce7`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b21f7d0de7270a0ae0ca3959515f87e4732d6c01d99952922617961b6772e7`  
		Last Modified: Fri, 15 Sep 2017 16:45:43 GMT  
		Size: 47.0 MB (46961518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b228d6f0ba812b02ad2077d7eab49b0b70eba3d836523a00f9ee16080df50`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdcff95942a9c46e453ec3fbad61bd5612cd815516a80b1b83cccbfdd4bd6d4`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80c91c9826d4d89f0e2275e06acfe30e1f6dfcd010d3b24360181a7052ab208`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1231 bytes)  
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
$ docker pull mongo@sha256:662bac9d2881bdd29325670711b4eb9158c80d7d2d2936b2158132c07d735f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.0-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:6f549b834876caadbbe48f0e8b2cb0bd3b8cb518173edd824ee904165d973715
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5382778514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279cc4dc17f1bdfecd696f9b0134651cfa4566dffe76211e5250908f8a0203fc`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:38:40 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 15 Sep 2017 16:38:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Fri, 15 Sep 2017 16:38:49 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Fri, 15 Sep 2017 16:39:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:40:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:40:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:40:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d141cf8ec84b4a6483c4c96585d21494fa2a7a2ca1c58eaf029341572a00a748`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8969f18cc5c00a5e7d3cc4fdf8d5326a343755a01bd68686cfb1bc3542d3a7a`  
		Last Modified: Fri, 15 Sep 2017 16:45:29 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e936273d27f4a9055523fbc8c632d39a34cbde9d91085e334df90e45ebe4ce7`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b21f7d0de7270a0ae0ca3959515f87e4732d6c01d99952922617961b6772e7`  
		Last Modified: Fri, 15 Sep 2017 16:45:43 GMT  
		Size: 47.0 MB (46961518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b228d6f0ba812b02ad2077d7eab49b0b70eba3d836523a00f9ee16080df50`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdcff95942a9c46e453ec3fbad61bd5612cd815516a80b1b83cccbfdd4bd6d4`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80c91c9826d4d89f0e2275e06acfe30e1f6dfcd010d3b24360181a7052ab208`  
		Last Modified: Fri, 15 Sep 2017 16:45:26 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:59e8222a70cb3e0f144487706446ea5f797b0e108fd1cde4147add8f5a818073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.2` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:ee76fb7db6a6aee3f76f627959e5c57ac4bb8ac1fb76b5a805e2e4b94baa1efe
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388787640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e485f672f9c7fe3f3fb4c2f66842abb3e03bbd9b5baf8b502f042cb294e3dd61`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 28 Sep 2017 23:47:42 GMT
ENV MONGO_VERSION=3.2.17
# Thu, 28 Sep 2017 23:47:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Mon, 02 Oct 2017 23:16:57 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Mon, 02 Oct 2017 23:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 02 Oct 2017 23:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 02 Oct 2017 23:17:58 GMT
EXPOSE 27017/tcp
# Mon, 02 Oct 2017 23:18:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fcfb2c91004b12f3c1492fa7f229e758954eb74147dc4657c6b1e58e3883b`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eecbe4efe58cbb4a1d8becbe014347263a56a5e73069381aa104bc7a381d31`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d49e6936c1ee13f21eddbd5730d6595a3750e36ce2656523616dfa8c935b2`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4969673631c657d42721fa0f91ff5ff8bb5c216c461aa4b9bb2d8f986251fed6`  
		Last Modified: Mon, 02 Oct 2017 23:18:46 GMT  
		Size: 53.0 MB (52970649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0e383aa38e0f11376c585fa3ce33497e31f1f764043e9052f0f42fcee924cd`  
		Last Modified: Mon, 02 Oct 2017 23:18:36 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20be01fd0fc8e7420039b6f8140e34a67b0fd2818b7e15ee82138bd352aee83c`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2780f3201b3f40a7b1d371bb5cb5a234f2521583cff04121dc54e17b610f4be7`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17`

```console
$ docker pull mongo@sha256:59e8222a70cb3e0f144487706446ea5f797b0e108fd1cde4147add8f5a818073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.2.17` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:ee76fb7db6a6aee3f76f627959e5c57ac4bb8ac1fb76b5a805e2e4b94baa1efe
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388787640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e485f672f9c7fe3f3fb4c2f66842abb3e03bbd9b5baf8b502f042cb294e3dd61`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 28 Sep 2017 23:47:42 GMT
ENV MONGO_VERSION=3.2.17
# Thu, 28 Sep 2017 23:47:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Mon, 02 Oct 2017 23:16:57 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Mon, 02 Oct 2017 23:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 02 Oct 2017 23:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 02 Oct 2017 23:17:58 GMT
EXPOSE 27017/tcp
# Mon, 02 Oct 2017 23:18:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fcfb2c91004b12f3c1492fa7f229e758954eb74147dc4657c6b1e58e3883b`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eecbe4efe58cbb4a1d8becbe014347263a56a5e73069381aa104bc7a381d31`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d49e6936c1ee13f21eddbd5730d6595a3750e36ce2656523616dfa8c935b2`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4969673631c657d42721fa0f91ff5ff8bb5c216c461aa4b9bb2d8f986251fed6`  
		Last Modified: Mon, 02 Oct 2017 23:18:46 GMT  
		Size: 53.0 MB (52970649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0e383aa38e0f11376c585fa3ce33497e31f1f764043e9052f0f42fcee924cd`  
		Last Modified: Mon, 02 Oct 2017 23:18:36 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20be01fd0fc8e7420039b6f8140e34a67b0fd2818b7e15ee82138bd352aee83c`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2780f3201b3f40a7b1d371bb5cb5a234f2521583cff04121dc54e17b610f4be7`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:0e449762ae2fa1e4e390af0aa65b3c8989a3208a2831aa171cffa5742f25dbad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.2.17-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:ee76fb7db6a6aee3f76f627959e5c57ac4bb8ac1fb76b5a805e2e4b94baa1efe
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388787640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e485f672f9c7fe3f3fb4c2f66842abb3e03bbd9b5baf8b502f042cb294e3dd61`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 28 Sep 2017 23:47:42 GMT
ENV MONGO_VERSION=3.2.17
# Thu, 28 Sep 2017 23:47:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Mon, 02 Oct 2017 23:16:57 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Mon, 02 Oct 2017 23:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 02 Oct 2017 23:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 02 Oct 2017 23:17:58 GMT
EXPOSE 27017/tcp
# Mon, 02 Oct 2017 23:18:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fcfb2c91004b12f3c1492fa7f229e758954eb74147dc4657c6b1e58e3883b`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eecbe4efe58cbb4a1d8becbe014347263a56a5e73069381aa104bc7a381d31`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d49e6936c1ee13f21eddbd5730d6595a3750e36ce2656523616dfa8c935b2`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4969673631c657d42721fa0f91ff5ff8bb5c216c461aa4b9bb2d8f986251fed6`  
		Last Modified: Mon, 02 Oct 2017 23:18:46 GMT  
		Size: 53.0 MB (52970649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0e383aa38e0f11376c585fa3ce33497e31f1f764043e9052f0f42fcee924cd`  
		Last Modified: Mon, 02 Oct 2017 23:18:36 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20be01fd0fc8e7420039b6f8140e34a67b0fd2818b7e15ee82138bd352aee83c`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2780f3201b3f40a7b1d371bb5cb5a234f2521583cff04121dc54e17b610f4be7`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:0e449762ae2fa1e4e390af0aa65b3c8989a3208a2831aa171cffa5742f25dbad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:ee76fb7db6a6aee3f76f627959e5c57ac4bb8ac1fb76b5a805e2e4b94baa1efe
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388787640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e485f672f9c7fe3f3fb4c2f66842abb3e03bbd9b5baf8b502f042cb294e3dd61`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 28 Sep 2017 23:47:42 GMT
ENV MONGO_VERSION=3.2.17
# Thu, 28 Sep 2017 23:47:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Mon, 02 Oct 2017 23:16:57 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Mon, 02 Oct 2017 23:17:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 02 Oct 2017 23:17:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 02 Oct 2017 23:17:58 GMT
EXPOSE 27017/tcp
# Mon, 02 Oct 2017 23:18:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45fcfb2c91004b12f3c1492fa7f229e758954eb74147dc4657c6b1e58e3883b`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eecbe4efe58cbb4a1d8becbe014347263a56a5e73069381aa104bc7a381d31`  
		Last Modified: Thu, 28 Sep 2017 23:49:40 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d49e6936c1ee13f21eddbd5730d6595a3750e36ce2656523616dfa8c935b2`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4969673631c657d42721fa0f91ff5ff8bb5c216c461aa4b9bb2d8f986251fed6`  
		Last Modified: Mon, 02 Oct 2017 23:18:46 GMT  
		Size: 53.0 MB (52970649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0e383aa38e0f11376c585fa3ce33497e31f1f764043e9052f0f42fcee924cd`  
		Last Modified: Mon, 02 Oct 2017 23:18:36 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20be01fd0fc8e7420039b6f8140e34a67b0fd2818b7e15ee82138bd352aee83c`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2780f3201b3f40a7b1d371bb5cb5a234f2521583cff04121dc54e17b610f4be7`  
		Last Modified: Mon, 02 Oct 2017 23:18:35 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:2085c4bbe009724b16e70a708ff1e12f99a0e9a097420757753007f657fc97ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.4` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.9`

```console
$ docker pull mongo@sha256:2085c4bbe009724b16e70a708ff1e12f99a0e9a097420757753007f657fc97ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.4.9` - linux; amd64

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

### `mongo:3.4.9` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.9-jessie`

```console
$ docker pull mongo@sha256:a6a9abbec0cd9a94aa809c19fac9138ee92e77a4753207e3bc10dd0723be6529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.9-jessie` - linux; amd64

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

## `mongo:3.4.9-windowsservercore`

```console
$ docker pull mongo@sha256:8e911de194abbbdb4018191f5a98c93d051379c63bfda996d42f4b2d9642e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.4.9-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull mongo@sha256:8e911de194abbbdb4018191f5a98c93d051379c63bfda996d42f4b2d9642e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:c856552e70389554689b8503505bb9b00d4cf1429a9130e74b47288f59412393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.5` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13`

```console
$ docker pull mongo@sha256:c856552e70389554689b8503505bb9b00d4cf1429a9130e74b47288f59412393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:3.5.13` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:1033743f8f7c0e02f276f87b4e13e0defae66c0281d77b64717849f6c513d7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.5.13-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:1033743f8f7c0e02f276f87b4e13e0defae66c0281d77b64717849f6c513d7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.5-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:8e911de194abbbdb4018191f5a98c93d051379c63bfda996d42f4b2d9642e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:2085c4bbe009724b16e70a708ff1e12f99a0e9a097420757753007f657fc97ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:latest` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:c856552e70389554689b8503505bb9b00d4cf1429a9130e74b47288f59412393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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

### `mongo:unstable` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
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
$ docker pull mongo@sha256:1033743f8f7c0e02f276f87b4e13e0defae66c0281d77b64717849f6c513d7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:f0357668b9f54b410725bf7e8ad8dc637e129148704cca36516a79a7aeedacf4
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5401200191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41effbcae4b6890bf3c00fe1c75f12a7eed207b953b53308ced3afb2ea054e75`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:43:26 GMT
ENV MONGO_VERSION=3.5.13
# Fri, 15 Sep 2017 16:43:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Fri, 15 Sep 2017 16:43:33 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Fri, 15 Sep 2017 16:44:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:44:55 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:44:59 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:45:02 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfd03c5cfa9bec29ee87107535b3fa06a4e6f2910f6b9a6d1fbbb4ad7d2800d`  
		Last Modified: Fri, 15 Sep 2017 16:47:04 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f660ca8731bc285eedce6e4c1aca917116cc2eeff32f2a697c98fcdc97c92bf3`  
		Last Modified: Fri, 15 Sep 2017 16:47:03 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e87123633634fc8910bb51c7c11e3bac50e0ba9d33f61545b84ec6c69a4cae`  
		Last Modified: Fri, 15 Sep 2017 16:46:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eae1a79ebddd320387c05708266ae1b232badbfb4fc091cd64e654bcc61fa8`  
		Last Modified: Fri, 15 Sep 2017 16:47:09 GMT  
		Size: 65.4 MB (65383199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d2dc5c94a8842c870201f5e9240ab0c88c34d251f62c059d11952e3911ccf1`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66094a714f7c60a9b14ef4184a10f5c44621b60a546377f98b40ff3440e74ac`  
		Last Modified: Fri, 15 Sep 2017 16:46:55 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9876916b50b6d60d1f7bcca11749f2fb78f025d66ece2dc6650a5bfec13b021`  
		Last Modified: Fri, 15 Sep 2017 16:46:58 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:8e911de194abbbdb4018191f5a98c93d051379c63bfda996d42f4b2d9642e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:7e1586a71c951b943ed5884ce0667e92a989d6dad972b876055ffaf50ae0d662
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5398927869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb76407abe1249586456c0d0c4d418a9d6fb7df2ecbc1be449a2785370206f8`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:41:46 GMT
ENV MONGO_VERSION=3.4.9
# Fri, 15 Sep 2017 16:41:51 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.9-signed.msi
# Fri, 15 Sep 2017 16:41:55 GMT
ENV MONGO_DOWNLOAD_SHA256=68e911de302ddd42e6fe4dda71193c8873f469c59c790fffdd645660e8a5b49a
# Fri, 15 Sep 2017 16:42:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:43:04 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:43:08 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:43:11 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:da87b55a9b6358a65462540faeaa97505b0a12e1a2c14f08893589181d32d00d`  
		Size: 1.3 GB (1265822551 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d9a80234ea5aa1b3fdb0960fc47b11cc20b357170851b348ddd413a7be726094`  
		Last Modified: Thu, 14 Sep 2017 16:32:17 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a824cbd98be4cc42237bf2c05aab13e8e892007d94eec05e78df5932d57d9912`  
		Last Modified: Fri, 15 Sep 2017 16:46:34 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7c0598a3ba77754e8899a12b0c191adb92142f8ae9ec8889d51240ad2f422b`  
		Last Modified: Fri, 15 Sep 2017 16:46:33 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c5b9da060cd7455bd724e6e932b19f9ef08ff9ab8689c6a88e442a4b64e924`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2c098a4b73c09ea7c482a14d848719cbe93471993c94dd763e25fd284ea121`  
		Last Modified: Fri, 15 Sep 2017 16:46:38 GMT  
		Size: 63.1 MB (63110883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05b5e8b70fc1d25457bf0ab35d64c774fd480a9c585ceea1e66f64f021a3c93`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867d1a4cb5637e9f24e6798f6f323fbea71af46de71fa3bb3e8027d699be015e`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac10ad65fb797459db34f0fd5f97bcfcd75cffd91d7bcfb956eea1eeb6bad6d4`  
		Last Modified: Fri, 15 Sep 2017 16:46:25 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
