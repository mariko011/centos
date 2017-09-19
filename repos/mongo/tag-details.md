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
-	[`mongo:3.2.16`](#mongo3216)
-	[`mongo:3.2.16-jessie`](#mongo3216-jessie)
-	[`mongo:3.2.16-windowsservercore`](#mongo3216-windowsservercore)
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
$ docker pull mongo@sha256:bb962ca3964c70069e652e814f7a495db19643ecb5bb62d799f621a68f4da90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:a54cee7f1a1a0d10e7cf0a40eba5cdd86090e898f66cd164ab37578c27567db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:9c3936c36ce21fc5e7fe30f11c27a42a64bdd6f86470463c3f4ede1c69f4560e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23bc2c0eb5c1a01f28090825da13f081d06e932f08146dbd5402d323f7c06ba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:21 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Wed, 13 Sep 2017 08:42:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:15:23 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:15:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 21:15:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:15:36 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:15:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:15:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:15:48 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 13 Sep 2017 21:15:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_MAJOR=3.0
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Sep 2017 21:15:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:16:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:16:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:16:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:16:02 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:03 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:16:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95629a9af962ddb9c6b8533ec97a7257924b27315d45a75876c66ab05373754f`  
		Last Modified: Wed, 13 Sep 2017 21:19:50 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9344b5f35f1b87838475600efb482bd906aa59e9d0803c44b1b6ba9469bac9a5`  
		Last Modified: Wed, 13 Sep 2017 21:19:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3358141a975ed47dfdaa395646b29f04033afa36684aabc3009dc5fa2e139087`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 2.7 MB (2660799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b48dda540b451dd4ebaf0e79d86b1d92ae7e1387acbd1a2b3152715e0f7d92`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 1.1 MB (1103222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8446875dc015b7687e559aa9439aa9d1d92526819c03b858d952be4e815a0886`  
		Last Modified: Wed, 13 Sep 2017 21:19:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c44aed8d466ef452d65bb61aba6f44ef56bfc6b9069102b5a7c96914b3cd8`  
		Last Modified: Wed, 13 Sep 2017 21:19:41 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad375044a74f39e254825d57d9e74641439cc6e8acc9f435acca053e93d82b9`  
		Last Modified: Wed, 13 Sep 2017 21:19:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49502d6abdae2cd4cf2ed2680358f008f04a859c73d828cc57ca051eabf7fb38`  
		Last Modified: Wed, 13 Sep 2017 21:19:55 GMT  
		Size: 61.9 MB (61886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960bccdc96cc7b66b760d8449979d2a81c2544669b013d0b2d38d5ed441eb39e`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77602a8f49542a431c56f8514bf0aa5f08a4c7b071bf9fa1454f4ced9da1491f`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12640adf9c4186e8c51a0e6b4b08bd5b296852d06843a14f6d5003d60c382dcd`  
		Last Modified: Wed, 13 Sep 2017 21:19:38 GMT  
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
$ docker pull mongo@sha256:a54cee7f1a1a0d10e7cf0a40eba5cdd86090e898f66cd164ab37578c27567db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:9c3936c36ce21fc5e7fe30f11c27a42a64bdd6f86470463c3f4ede1c69f4560e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23bc2c0eb5c1a01f28090825da13f081d06e932f08146dbd5402d323f7c06ba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:21 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Wed, 13 Sep 2017 08:42:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:15:23 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:15:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 21:15:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:15:36 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:15:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:15:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:15:48 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 13 Sep 2017 21:15:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_MAJOR=3.0
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Sep 2017 21:15:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:16:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:16:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:16:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:16:02 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:03 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:16:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95629a9af962ddb9c6b8533ec97a7257924b27315d45a75876c66ab05373754f`  
		Last Modified: Wed, 13 Sep 2017 21:19:50 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9344b5f35f1b87838475600efb482bd906aa59e9d0803c44b1b6ba9469bac9a5`  
		Last Modified: Wed, 13 Sep 2017 21:19:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3358141a975ed47dfdaa395646b29f04033afa36684aabc3009dc5fa2e139087`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 2.7 MB (2660799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b48dda540b451dd4ebaf0e79d86b1d92ae7e1387acbd1a2b3152715e0f7d92`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 1.1 MB (1103222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8446875dc015b7687e559aa9439aa9d1d92526819c03b858d952be4e815a0886`  
		Last Modified: Wed, 13 Sep 2017 21:19:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c44aed8d466ef452d65bb61aba6f44ef56bfc6b9069102b5a7c96914b3cd8`  
		Last Modified: Wed, 13 Sep 2017 21:19:41 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad375044a74f39e254825d57d9e74641439cc6e8acc9f435acca053e93d82b9`  
		Last Modified: Wed, 13 Sep 2017 21:19:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49502d6abdae2cd4cf2ed2680358f008f04a859c73d828cc57ca051eabf7fb38`  
		Last Modified: Wed, 13 Sep 2017 21:19:55 GMT  
		Size: 61.9 MB (61886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960bccdc96cc7b66b760d8449979d2a81c2544669b013d0b2d38d5ed441eb39e`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77602a8f49542a431c56f8514bf0aa5f08a4c7b071bf9fa1454f4ced9da1491f`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12640adf9c4186e8c51a0e6b4b08bd5b296852d06843a14f6d5003d60c382dcd`  
		Last Modified: Wed, 13 Sep 2017 21:19:38 GMT  
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
$ docker pull mongo@sha256:caee88655df28cb7b9118fa848a46fd1aab7681de175ad3ff7c0f6fab1ea8a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:9c3936c36ce21fc5e7fe30f11c27a42a64bdd6f86470463c3f4ede1c69f4560e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23bc2c0eb5c1a01f28090825da13f081d06e932f08146dbd5402d323f7c06ba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:21 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Wed, 13 Sep 2017 08:42:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:15:23 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:15:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 21:15:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:15:36 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:15:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:15:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:15:48 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 13 Sep 2017 21:15:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_MAJOR=3.0
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Sep 2017 21:15:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:16:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:16:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:16:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:16:02 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:03 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:16:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95629a9af962ddb9c6b8533ec97a7257924b27315d45a75876c66ab05373754f`  
		Last Modified: Wed, 13 Sep 2017 21:19:50 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9344b5f35f1b87838475600efb482bd906aa59e9d0803c44b1b6ba9469bac9a5`  
		Last Modified: Wed, 13 Sep 2017 21:19:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3358141a975ed47dfdaa395646b29f04033afa36684aabc3009dc5fa2e139087`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 2.7 MB (2660799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b48dda540b451dd4ebaf0e79d86b1d92ae7e1387acbd1a2b3152715e0f7d92`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 1.1 MB (1103222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8446875dc015b7687e559aa9439aa9d1d92526819c03b858d952be4e815a0886`  
		Last Modified: Wed, 13 Sep 2017 21:19:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c44aed8d466ef452d65bb61aba6f44ef56bfc6b9069102b5a7c96914b3cd8`  
		Last Modified: Wed, 13 Sep 2017 21:19:41 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad375044a74f39e254825d57d9e74641439cc6e8acc9f435acca053e93d82b9`  
		Last Modified: Wed, 13 Sep 2017 21:19:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49502d6abdae2cd4cf2ed2680358f008f04a859c73d828cc57ca051eabf7fb38`  
		Last Modified: Wed, 13 Sep 2017 21:19:55 GMT  
		Size: 61.9 MB (61886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960bccdc96cc7b66b760d8449979d2a81c2544669b013d0b2d38d5ed441eb39e`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77602a8f49542a431c56f8514bf0aa5f08a4c7b071bf9fa1454f4ced9da1491f`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12640adf9c4186e8c51a0e6b4b08bd5b296852d06843a14f6d5003d60c382dcd`  
		Last Modified: Wed, 13 Sep 2017 21:19:38 GMT  
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
$ docker pull mongo@sha256:caee88655df28cb7b9118fa848a46fd1aab7681de175ad3ff7c0f6fab1ea8a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:9c3936c36ce21fc5e7fe30f11c27a42a64bdd6f86470463c3f4ede1c69f4560e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23bc2c0eb5c1a01f28090825da13f081d06e932f08146dbd5402d323f7c06ba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:21 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Wed, 13 Sep 2017 08:42:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:15:23 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:15:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 13 Sep 2017 21:15:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:15:36 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:15:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:15:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:15:48 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 13 Sep 2017 21:15:49 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:15:49 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_MAJOR=3.0
# Wed, 13 Sep 2017 21:15:50 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 13 Sep 2017 21:15:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:16:00 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:16:01 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:16:01 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:16:02 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:16:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:16:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:16:03 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:16:03 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95629a9af962ddb9c6b8533ec97a7257924b27315d45a75876c66ab05373754f`  
		Last Modified: Wed, 13 Sep 2017 21:19:50 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9344b5f35f1b87838475600efb482bd906aa59e9d0803c44b1b6ba9469bac9a5`  
		Last Modified: Wed, 13 Sep 2017 21:19:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3358141a975ed47dfdaa395646b29f04033afa36684aabc3009dc5fa2e139087`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 2.7 MB (2660799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b48dda540b451dd4ebaf0e79d86b1d92ae7e1387acbd1a2b3152715e0f7d92`  
		Last Modified: Wed, 13 Sep 2017 21:19:46 GMT  
		Size: 1.1 MB (1103222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8446875dc015b7687e559aa9439aa9d1d92526819c03b858d952be4e815a0886`  
		Last Modified: Wed, 13 Sep 2017 21:19:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c44aed8d466ef452d65bb61aba6f44ef56bfc6b9069102b5a7c96914b3cd8`  
		Last Modified: Wed, 13 Sep 2017 21:19:41 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad375044a74f39e254825d57d9e74641439cc6e8acc9f435acca053e93d82b9`  
		Last Modified: Wed, 13 Sep 2017 21:19:40 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49502d6abdae2cd4cf2ed2680358f008f04a859c73d828cc57ca051eabf7fb38`  
		Last Modified: Wed, 13 Sep 2017 21:19:55 GMT  
		Size: 61.9 MB (61886355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960bccdc96cc7b66b760d8449979d2a81c2544669b013d0b2d38d5ed441eb39e`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77602a8f49542a431c56f8514bf0aa5f08a4c7b071bf9fa1454f4ced9da1491f`  
		Last Modified: Wed, 13 Sep 2017 21:19:37 GMT  
		Size: 3.1 KB (3111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12640adf9c4186e8c51a0e6b4b08bd5b296852d06843a14f6d5003d60c382dcd`  
		Last Modified: Wed, 13 Sep 2017 21:19:38 GMT  
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
$ docker pull mongo@sha256:6a0061a32c34bc8004ed69c9d9331a0695bda9430e24bea7fb4b331864394d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:eb0580b320a21463fb5ddfc8b7a719ef56885f9011093788557a65c39dded1aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16149f61df5797019239eb4497034276573961559280f68c5ce66e43a0ce4d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:16:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:16:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:16:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:16:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:16:54 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 13 Sep 2017 21:17:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_MAJOR=3.2
# Wed, 13 Sep 2017 21:17:01 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 13 Sep 2017 21:17:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:17:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:17:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:17:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:17:26 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:27 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:17:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2017979d193f1a628fb4cf72fc1e3249b3276377ba970ecba6458815a4c9202d`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.4 MB (2397898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21d92a41771207e33e7b7b64e4b2393c60ed7687d7b4bf7d5a2dffa4d3409c`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 1.1 MB (1108732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63237591b1880bf0618026bc927b2292778a5f6f5188e64acdc15d4bae3e97c`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c034b34661ee5208f49c7eb0c0c6e598a6e5526d05b5163057585beb53b97c11`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 3.1 KB (3072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9199b5efbcce9e2d92b5c8684876dcf7ad6fcf6163fcbf997b6a8bf7991e6df`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2318c947cfb64ddb484cc7a9bc8cab823766bbbdacd1a6b6a287adbdf2636`  
		Last Modified: Wed, 13 Sep 2017 21:20:24 GMT  
		Size: 70.8 MB (70823588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155ef795942434d8417738d31a9b76f0d2e9648fe1cd81a07e3648ae921d8b5`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7ad9295b911f259c9136d9109eb94daa5e2f07a91992ebfc59fb7bf097acdf`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c06af7df467d6ae7dbf9349393bdc9b0d88685e6efcf2e073cd3a7fe337826`  
		Last Modified: Wed, 13 Sep 2017 21:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:117b8a1d262724de4e1b54aeebcc05af52d4830e5c02b7f6b599c404355f27b2
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388782972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba94162e19d67da484d66e58d38020c772ba8e32d25902bf0ae96c1b09a119`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:40:21 GMT
ENV MONGO_VERSION=3.2.16
# Fri, 15 Sep 2017 16:40:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Fri, 15 Sep 2017 16:40:29 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Fri, 15 Sep 2017 16:41:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:41:35 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:41:38 GMT
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
	-	`sha256:c6259b2dee2583a38140a4a985ae7f32ab4a97d585f3ec85ae6c66be82dc6cbe`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926676d443660bade6f05b851821b3bf0f26710a0a2b7fde27fabefd6db22b4`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45615bb4a4cc20c13dc72181c18ffcf62812e1f4e75cb6518010a771b3416e12`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d02846b0c63207289181524b861a8ca50ef98472d56cd928a637784309f39`  
		Last Modified: Fri, 15 Sep 2017 16:46:13 GMT  
		Size: 53.0 MB (52965999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07312e9a0086b03372b14b033adc9871ad759358452a607748835cd5e8eb6714`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bddbeab99ad6cc55e9cc855825f4bbb205a02fea6077a8d4475e0ab41e14aff`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d29076ec36e7aef6fcfe1e9519a9be0405aba0b03efebeef58552d1a6945528`  
		Last Modified: Fri, 15 Sep 2017 16:45:57 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16`

```console
$ docker pull mongo@sha256:6a0061a32c34bc8004ed69c9d9331a0695bda9430e24bea7fb4b331864394d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.2.16` - linux; amd64

```console
$ docker pull mongo@sha256:eb0580b320a21463fb5ddfc8b7a719ef56885f9011093788557a65c39dded1aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16149f61df5797019239eb4497034276573961559280f68c5ce66e43a0ce4d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:16:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:16:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:16:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:16:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:16:54 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 13 Sep 2017 21:17:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_MAJOR=3.2
# Wed, 13 Sep 2017 21:17:01 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 13 Sep 2017 21:17:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:17:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:17:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:17:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:17:26 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:27 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:17:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2017979d193f1a628fb4cf72fc1e3249b3276377ba970ecba6458815a4c9202d`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.4 MB (2397898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21d92a41771207e33e7b7b64e4b2393c60ed7687d7b4bf7d5a2dffa4d3409c`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 1.1 MB (1108732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63237591b1880bf0618026bc927b2292778a5f6f5188e64acdc15d4bae3e97c`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c034b34661ee5208f49c7eb0c0c6e598a6e5526d05b5163057585beb53b97c11`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 3.1 KB (3072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9199b5efbcce9e2d92b5c8684876dcf7ad6fcf6163fcbf997b6a8bf7991e6df`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2318c947cfb64ddb484cc7a9bc8cab823766bbbdacd1a6b6a287adbdf2636`  
		Last Modified: Wed, 13 Sep 2017 21:20:24 GMT  
		Size: 70.8 MB (70823588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155ef795942434d8417738d31a9b76f0d2e9648fe1cd81a07e3648ae921d8b5`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7ad9295b911f259c9136d9109eb94daa5e2f07a91992ebfc59fb7bf097acdf`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c06af7df467d6ae7dbf9349393bdc9b0d88685e6efcf2e073cd3a7fe337826`  
		Last Modified: Wed, 13 Sep 2017 21:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.2.16` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:117b8a1d262724de4e1b54aeebcc05af52d4830e5c02b7f6b599c404355f27b2
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388782972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba94162e19d67da484d66e58d38020c772ba8e32d25902bf0ae96c1b09a119`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:40:21 GMT
ENV MONGO_VERSION=3.2.16
# Fri, 15 Sep 2017 16:40:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Fri, 15 Sep 2017 16:40:29 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Fri, 15 Sep 2017 16:41:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:41:35 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:41:38 GMT
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
	-	`sha256:c6259b2dee2583a38140a4a985ae7f32ab4a97d585f3ec85ae6c66be82dc6cbe`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926676d443660bade6f05b851821b3bf0f26710a0a2b7fde27fabefd6db22b4`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45615bb4a4cc20c13dc72181c18ffcf62812e1f4e75cb6518010a771b3416e12`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d02846b0c63207289181524b861a8ca50ef98472d56cd928a637784309f39`  
		Last Modified: Fri, 15 Sep 2017 16:46:13 GMT  
		Size: 53.0 MB (52965999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07312e9a0086b03372b14b033adc9871ad759358452a607748835cd5e8eb6714`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bddbeab99ad6cc55e9cc855825f4bbb205a02fea6077a8d4475e0ab41e14aff`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d29076ec36e7aef6fcfe1e9519a9be0405aba0b03efebeef58552d1a6945528`  
		Last Modified: Fri, 15 Sep 2017 16:45:57 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16-jessie`

```console
$ docker pull mongo@sha256:fcd2388d73ff3d93d0c8cc7536c4759e345dc051308147a2523cc7693cd010cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.16-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:eb0580b320a21463fb5ddfc8b7a719ef56885f9011093788557a65c39dded1aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16149f61df5797019239eb4497034276573961559280f68c5ce66e43a0ce4d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:16:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:16:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:16:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:16:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:16:54 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 13 Sep 2017 21:17:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_MAJOR=3.2
# Wed, 13 Sep 2017 21:17:01 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 13 Sep 2017 21:17:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:17:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:17:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:17:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:17:26 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:27 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:17:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2017979d193f1a628fb4cf72fc1e3249b3276377ba970ecba6458815a4c9202d`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.4 MB (2397898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21d92a41771207e33e7b7b64e4b2393c60ed7687d7b4bf7d5a2dffa4d3409c`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 1.1 MB (1108732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63237591b1880bf0618026bc927b2292778a5f6f5188e64acdc15d4bae3e97c`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c034b34661ee5208f49c7eb0c0c6e598a6e5526d05b5163057585beb53b97c11`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 3.1 KB (3072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9199b5efbcce9e2d92b5c8684876dcf7ad6fcf6163fcbf997b6a8bf7991e6df`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2318c947cfb64ddb484cc7a9bc8cab823766bbbdacd1a6b6a287adbdf2636`  
		Last Modified: Wed, 13 Sep 2017 21:20:24 GMT  
		Size: 70.8 MB (70823588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155ef795942434d8417738d31a9b76f0d2e9648fe1cd81a07e3648ae921d8b5`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7ad9295b911f259c9136d9109eb94daa5e2f07a91992ebfc59fb7bf097acdf`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c06af7df467d6ae7dbf9349393bdc9b0d88685e6efcf2e073cd3a7fe337826`  
		Last Modified: Wed, 13 Sep 2017 21:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16-windowsservercore`

```console
$ docker pull mongo@sha256:d1879cdd05aa25efb2b9b3299b3964eb990c684b1d11d9001fcc8e6b78d21cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.2.16-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:117b8a1d262724de4e1b54aeebcc05af52d4830e5c02b7f6b599c404355f27b2
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388782972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba94162e19d67da484d66e58d38020c772ba8e32d25902bf0ae96c1b09a119`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:40:21 GMT
ENV MONGO_VERSION=3.2.16
# Fri, 15 Sep 2017 16:40:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Fri, 15 Sep 2017 16:40:29 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Fri, 15 Sep 2017 16:41:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:41:35 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:41:38 GMT
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
	-	`sha256:c6259b2dee2583a38140a4a985ae7f32ab4a97d585f3ec85ae6c66be82dc6cbe`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926676d443660bade6f05b851821b3bf0f26710a0a2b7fde27fabefd6db22b4`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45615bb4a4cc20c13dc72181c18ffcf62812e1f4e75cb6518010a771b3416e12`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d02846b0c63207289181524b861a8ca50ef98472d56cd928a637784309f39`  
		Last Modified: Fri, 15 Sep 2017 16:46:13 GMT  
		Size: 53.0 MB (52965999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07312e9a0086b03372b14b033adc9871ad759358452a607748835cd5e8eb6714`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bddbeab99ad6cc55e9cc855825f4bbb205a02fea6077a8d4475e0ab41e14aff`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d29076ec36e7aef6fcfe1e9519a9be0405aba0b03efebeef58552d1a6945528`  
		Last Modified: Fri, 15 Sep 2017 16:45:57 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:fcd2388d73ff3d93d0c8cc7536c4759e345dc051308147a2523cc7693cd010cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:eb0580b320a21463fb5ddfc8b7a719ef56885f9011093788557a65c39dded1aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104452230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16149f61df5797019239eb4497034276573961559280f68c5ce66e43a0ce4d66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:16:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:16:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:16:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:16:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:16:54 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 13 Sep 2017 21:17:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:17:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:17:00 GMT
ENV MONGO_MAJOR=3.2
# Wed, 13 Sep 2017 21:17:01 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 13 Sep 2017 21:17:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:17:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:17:26 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:17:26 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:17:26 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:17:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:17:27 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:17:28 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2017979d193f1a628fb4cf72fc1e3249b3276377ba970ecba6458815a4c9202d`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.4 MB (2397898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21d92a41771207e33e7b7b64e4b2393c60ed7687d7b4bf7d5a2dffa4d3409c`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 1.1 MB (1108732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63237591b1880bf0618026bc927b2292778a5f6f5188e64acdc15d4bae3e97c`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c034b34661ee5208f49c7eb0c0c6e598a6e5526d05b5163057585beb53b97c11`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 3.1 KB (3072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9199b5efbcce9e2d92b5c8684876dcf7ad6fcf6163fcbf997b6a8bf7991e6df`  
		Last Modified: Wed, 13 Sep 2017 21:20:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2318c947cfb64ddb484cc7a9bc8cab823766bbbdacd1a6b6a287adbdf2636`  
		Last Modified: Wed, 13 Sep 2017 21:20:24 GMT  
		Size: 70.8 MB (70823588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3155ef795942434d8417738d31a9b76f0d2e9648fe1cd81a07e3648ae921d8b5`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7ad9295b911f259c9136d9109eb94daa5e2f07a91992ebfc59fb7bf097acdf`  
		Last Modified: Wed, 13 Sep 2017 21:20:09 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c06af7df467d6ae7dbf9349393bdc9b0d88685e6efcf2e073cd3a7fe337826`  
		Last Modified: Wed, 13 Sep 2017 21:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:d1879cdd05aa25efb2b9b3299b3964eb990c684b1d11d9001fcc8e6b78d21cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1715; amd64

```console
$ docker pull mongo@sha256:117b8a1d262724de4e1b54aeebcc05af52d4830e5c02b7f6b599c404355f27b2
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5388782972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ba94162e19d67da484d66e58d38020c772ba8e32d25902bf0ae96c1b09a119`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 12 Sep 2017 22:02:46 GMT
RUN Install update 10.0.14393.1715
# Thu, 14 Sep 2017 16:25:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 15 Sep 2017 16:40:21 GMT
ENV MONGO_VERSION=3.2.16
# Fri, 15 Sep 2017 16:40:26 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Fri, 15 Sep 2017 16:40:29 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Fri, 15 Sep 2017 16:41:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 15 Sep 2017 16:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 15 Sep 2017 16:41:35 GMT
EXPOSE 27017/tcp
# Fri, 15 Sep 2017 16:41:38 GMT
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
	-	`sha256:c6259b2dee2583a38140a4a985ae7f32ab4a97d585f3ec85ae6c66be82dc6cbe`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926676d443660bade6f05b851821b3bf0f26710a0a2b7fde27fabefd6db22b4`  
		Last Modified: Fri, 15 Sep 2017 16:45:59 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45615bb4a4cc20c13dc72181c18ffcf62812e1f4e75cb6518010a771b3416e12`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d02846b0c63207289181524b861a8ca50ef98472d56cd928a637784309f39`  
		Last Modified: Fri, 15 Sep 2017 16:46:13 GMT  
		Size: 53.0 MB (52965999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07312e9a0086b03372b14b033adc9871ad759358452a607748835cd5e8eb6714`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bddbeab99ad6cc55e9cc855825f4bbb205a02fea6077a8d4475e0ab41e14aff`  
		Last Modified: Fri, 15 Sep 2017 16:45:56 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d29076ec36e7aef6fcfe1e9519a9be0405aba0b03efebeef58552d1a6945528`  
		Last Modified: Fri, 15 Sep 2017 16:45:57 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:bb962ca3964c70069e652e814f7a495db19643ecb5bb62d799f621a68f4da90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:bb962ca3964c70069e652e814f7a495db19643ecb5bb62d799f621a68f4da90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.4.9` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:0fb08869b40c4b010f38110de7c052aa27f72b96af30a80066f49cdf84573d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.9-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:0fb08869b40c4b010f38110de7c052aa27f72b96af30a80066f49cdf84573d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:42d0309d7d77ee0bc57491153780a6b1f2a006fec9b587aff90f5abbe9537982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.5` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
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
$ docker pull mongo@sha256:42d0309d7d77ee0bc57491153780a6b1f2a006fec9b587aff90f5abbe9537982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:3.5.13` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
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
$ docker pull mongo@sha256:6b97da14c7db7bc5b1e5a38493ced16f0b433e9f494cee4f90bc422e09119ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5.13-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
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
$ docker pull mongo@sha256:6b97da14c7db7bc5b1e5a38493ced16f0b433e9f494cee4f90bc422e09119ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
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
$ docker pull mongo@sha256:0fb08869b40c4b010f38110de7c052aa27f72b96af30a80066f49cdf84573d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:0fb08869b40c4b010f38110de7c052aa27f72b96af30a80066f49cdf84573d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:bb962ca3964c70069e652e814f7a495db19643ecb5bb62d799f621a68f4da90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:2a3c09d75989fce007085be380ae9edfe9dc25668f90ea5737f6953336bc0d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132104964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5c173b5d403baaf377eb0af4ad8b3db1952a18308b55d51fe56a7e67808e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:17 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 13 Sep 2017 21:18:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 13 Sep 2017 21:18:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_MAJOR=3.4
# Wed, 13 Sep 2017 21:18:22 GMT
ENV MONGO_VERSION=3.4.9
# Wed, 13 Sep 2017 21:18:23 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:18:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:18:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:18:48 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:18:48 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:18:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 21:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:18:49 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:18:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8839dddd1bf8aff82a2809b4534787d721a7f89825d50041975a67d9927e6c`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bbe4efe84371f3d4664bdc7939529223786b08fbd6968bbc2049d9195f583a`  
		Last Modified: Wed, 13 Sep 2017 21:20:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09839ba72070f40726620eba8730b93ad3c88b1860aa1e22077ccb29e446c405`  
		Last Modified: Wed, 13 Sep 2017 21:21:13 GMT  
		Size: 98.5 MB (98477908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c28e47fbec441c937fbdbd3d6f87eb35d2ae3913eb256399d25d34b71c648a2`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02774c69fefaa7a7eebcdbfa26d4b2cd3a2f8fafc467166ac52c8f0d8e751c93`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e17a1e0f668c78e1304d0f24ca13a924ab2da4e4cd003b278c78659c0190376`  
		Last Modified: Wed, 13 Sep 2017 21:20:42 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:42d0309d7d77ee0bc57491153780a6b1f2a006fec9b587aff90f5abbe9537982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
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
$ docker pull mongo@sha256:6b97da14c7db7bc5b1e5a38493ced16f0b433e9f494cee4f90bc422e09119ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0cad107d1bf9534e23f7367c2325d17cfff48b90d3baf94e8194ad70d7567621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d767208390d025057c8cd246bec4f733b22c4ab74106c3559a3d63fcf54d4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 21:16:06 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 13 Sep 2017 21:17:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:17:50 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 21:18:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Wed, 13 Sep 2017 21:18:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 21:18:52 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 13 Sep 2017 21:18:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 21:18:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 13 Sep 2017 21:18:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 13 Sep 2017 21:18:58 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 13 Sep 2017 21:18:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 13 Sep 2017 21:19:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 13 Sep 2017 21:19:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 13 Sep 2017 21:19:27 GMT
VOLUME [/data/db /data/configdb]
# Wed, 13 Sep 2017 21:19:28 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 13 Sep 2017 21:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 21:19:28 GMT
EXPOSE 27017/tcp
# Wed, 13 Sep 2017 21:19:29 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0804fbd93397b69eb5743a54bff7523238dc68dda7a2c9b73a226eca5bc25cc2`  
		Last Modified: Wed, 13 Sep 2017 21:20:15 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73aea8781e40b5e67b16bc15553de2191010be5871a58d429868f48f38978335`  
		Last Modified: Wed, 13 Sep 2017 21:20:49 GMT  
		Size: 2.4 MB (2397922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb0fb15879d49913e59eda1824d86f724eb18d1e1384ede573ec3642d0ea7e`  
		Last Modified: Wed, 13 Sep 2017 21:20:48 GMT  
		Size: 1.1 MB (1108758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf794b7d8d7e68799bb699d3df7ce379dcb3cbc282c4016f80d6f012e4544f`  
		Last Modified: Wed, 13 Sep 2017 21:20:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7793924ac6bfcc021dee9c2474c4eef4ac81ccff443e994d5fe8182b384827d`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617c3159d28f586728d4b1e6d1379c0a9215ff5afeefb2fd7409cf33f3f5678`  
		Last Modified: Wed, 13 Sep 2017 21:21:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d90f438196687c40b075a5c41d6dbfc3b21df0233e0c01e7e6250f91276b4`  
		Last Modified: Wed, 13 Sep 2017 21:21:52 GMT  
		Size: 99.2 MB (99185509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9d70f0f906f6f0bf5c18ca667881f9e8899f9cfa4fb957df352504643c6744`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530164457e317b27ba198fe8e14368c6e4a88b0d8ba6f520e425ca5f2ce60b6`  
		Last Modified: Wed, 13 Sep 2017 21:21:35 GMT  
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
