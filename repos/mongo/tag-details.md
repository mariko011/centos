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
-	[`mongo:3.4.9`](#mongo349)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.9-windowsservercore`](#mongo349-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.12`](#mongo3512)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.12-windowsservercore`](#mongo3512-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:d8cdf97b3b4af28c7448cf60b286e4e85db8c58c07b093d651dfe7284708a870
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84441032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d8a860f4dcb79d43c2b89e2ca85548f357b316cfa0490cdc3016d8d966be2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:09:15 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Thu, 07 Sep 2017 23:09:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:06:11 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 08:06:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:06:23 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:06:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:06:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:06:32 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 08 Sep 2017 08:06:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:06:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:06:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:06:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:06:35 GMT
ENV MONGO_MAJOR=3.0
# Fri, 08 Sep 2017 08:06:35 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 08 Sep 2017 08:06:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:06:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:06:44 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:06:45 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:06:45 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:06:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:06:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:06:47 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:06:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43548d1e18152b05d91df7253abd94e67e8141a3b55b98a2b916107089882c59`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05396c492e8e9408b1ceb58053fdb536161383b8af10597f96e790b941e4825`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616903f63c7ebd62fd163e36a198845c1c74632fe8485d7ffb66366ec84a5a6`  
		Last Modified: Fri, 08 Sep 2017 23:27:14 GMT  
		Size: 2.7 MB (2660755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49930c9352430da0b8eb22047cf3473e77e3ae855a3837999dc6136e7f5d72f8`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 914.7 KB (914726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33912a3f899499af5325a7ad41bebe59afbf5200facd3893db1bdadf16b7b06`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9667ff738add6733921951d0c65101bcccf84c330c513b1fa87ceb1667438c4`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e554c9d743f4cb38f7b8267e26eba5f09ed80d158f9dfaebb9feafc2d4b0be7`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7cdcf391de10e6f0937883245460311ca59dfed66b7dbbc9486c284b52aa60`  
		Last Modified: Fri, 08 Sep 2017 23:27:23 GMT  
		Size: 61.7 MB (61698790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa8ce39277a90cbe0c99b92eebfcee3235b4a6177fad39e117adbb9422f1fcc`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad12c5a10ebbb013a54eaaaca11f72d73249aa18fd62c82816a60df0f3853db`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab6d61a3e0388002d67618b90cf0da4e01948067c8be6a97bbdd724d8bc6f1`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:d8cdf97b3b4af28c7448cf60b286e4e85db8c58c07b093d651dfe7284708a870
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84441032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d8a860f4dcb79d43c2b89e2ca85548f357b316cfa0490cdc3016d8d966be2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:09:15 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Thu, 07 Sep 2017 23:09:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:10 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:06:11 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 08 Sep 2017 08:06:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:06:23 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:06:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:06:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:06:32 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 08 Sep 2017 08:06:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:06:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:06:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:06:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:06:35 GMT
ENV MONGO_MAJOR=3.0
# Fri, 08 Sep 2017 08:06:35 GMT
ENV MONGO_VERSION=3.0.15
# Fri, 08 Sep 2017 08:06:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:06:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:06:44 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:06:45 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:06:45 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:06:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:06:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:06:47 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:06:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43548d1e18152b05d91df7253abd94e67e8141a3b55b98a2b916107089882c59`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05396c492e8e9408b1ceb58053fdb536161383b8af10597f96e790b941e4825`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616903f63c7ebd62fd163e36a198845c1c74632fe8485d7ffb66366ec84a5a6`  
		Last Modified: Fri, 08 Sep 2017 23:27:14 GMT  
		Size: 2.7 MB (2660755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49930c9352430da0b8eb22047cf3473e77e3ae855a3837999dc6136e7f5d72f8`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 914.7 KB (914726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33912a3f899499af5325a7ad41bebe59afbf5200facd3893db1bdadf16b7b06`  
		Last Modified: Fri, 08 Sep 2017 23:27:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9667ff738add6733921951d0c65101bcccf84c330c513b1fa87ceb1667438c4`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e554c9d743f4cb38f7b8267e26eba5f09ed80d158f9dfaebb9feafc2d4b0be7`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7cdcf391de10e6f0937883245460311ca59dfed66b7dbbc9486c284b52aa60`  
		Last Modified: Fri, 08 Sep 2017 23:27:23 GMT  
		Size: 61.7 MB (61698790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa8ce39277a90cbe0c99b92eebfcee3235b4a6177fad39e117adbb9422f1fcc`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad12c5a10ebbb013a54eaaaca11f72d73249aa18fd62c82816a60df0f3853db`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab6d61a3e0388002d67618b90cf0da4e01948067c8be6a97bbdd724d8bc6f1`  
		Last Modified: Fri, 08 Sep 2017 23:27:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-windowsservercore`

```console
$ docker pull mongo@sha256:7c02d8cb44155531dd06f382ee7d8085d61a04667e6e4ff44855c6e722c7ce5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.0.15-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:72ce51c8b42d816644de933a0039ef1bdd2fab6e504b17a324c435e934ce5508
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5374594967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4064544d209b639fefb97b7228035a5e450486ba6d6099604fc644293ee6d1b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:26:27 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 09 Aug 2017 23:26:29 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 09 Aug 2017 23:26:31 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 09 Aug 2017 23:27:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:27:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:27:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f7525f35ef975b00f5befc1ecca513a5a2825d5c35f5a73ef742e27730e4b`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be84f10938eb7737c7539aa14060c02ca640a97b842fd45513d26468543f29f`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e685bfc300c53104b2bd6da75da3496d414be74073e44948ff56debc40ef31`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f845ecff39ee85d05b53864084a3721c016d11a80e92e8cc2405a39f120d20`  
		Last Modified: Wed, 09 Aug 2017 23:31:33 GMT  
		Size: 46.9 MB (46902236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5491943309ee39fa354a7b6f5a1027c5ef8832db1fb6a03a1db75dd51af3c0`  
		Last Modified: Wed, 09 Aug 2017 23:31:24 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6e44a90b089dec68db52f44a59ad83e11d7a17c5ada34b587c8b53cadccf8c`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dcc1b0d176ac33da3bf5522ad880898b38ca55d9397d50ac62b26a5a9fb20`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:7c02d8cb44155531dd06f382ee7d8085d61a04667e6e4ff44855c6e722c7ce5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.0-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:72ce51c8b42d816644de933a0039ef1bdd2fab6e504b17a324c435e934ce5508
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5374594967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4064544d209b639fefb97b7228035a5e450486ba6d6099604fc644293ee6d1b`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:26:27 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 09 Aug 2017 23:26:29 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 09 Aug 2017 23:26:31 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 09 Aug 2017 23:27:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:27:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:27:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:27:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f7525f35ef975b00f5befc1ecca513a5a2825d5c35f5a73ef742e27730e4b`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be84f10938eb7737c7539aa14060c02ca640a97b842fd45513d26468543f29f`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e685bfc300c53104b2bd6da75da3496d414be74073e44948ff56debc40ef31`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f845ecff39ee85d05b53864084a3721c016d11a80e92e8cc2405a39f120d20`  
		Last Modified: Wed, 09 Aug 2017 23:31:33 GMT  
		Size: 46.9 MB (46902236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5491943309ee39fa354a7b6f5a1027c5ef8832db1fb6a03a1db75dd51af3c0`  
		Last Modified: Wed, 09 Aug 2017 23:31:24 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6e44a90b089dec68db52f44a59ad83e11d7a17c5ada34b587c8b53cadccf8c`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dcc1b0d176ac33da3bf5522ad880898b38ca55d9397d50ac62b26a5a9fb20`  
		Last Modified: Wed, 09 Aug 2017 23:31:23 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16`

```console
$ docker pull mongo@sha256:21a3e2e9663ee9d96db0eb4ae4a6ffb0612e3828550e9bd2295714e1517c8ddf
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.16` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103998652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dd328210597fda58cc3012a99f6a24d72912511ae88338df28b0f25c20e587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:07:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:07:14 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:07:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:07:37 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 08 Sep 2017 08:07:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:07:42 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:07:42 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:07:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:07:43 GMT
ENV MONGO_MAJOR=3.2
# Fri, 08 Sep 2017 08:07:43 GMT
ENV MONGO_VERSION=3.2.16
# Fri, 08 Sep 2017 08:07:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:08:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:08:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:08:06 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:08:07 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:08:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:08:08 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:08:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03fc5faf2fd5fbc8d0f5d6b9f3bacb44917dfe648d81567cb9408e208edf1e1`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.4 MB (2397919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845c674220add7eede40860ea711fbe8543e4194d3035a642679f675a4f0e406`  
		Last Modified: Fri, 08 Sep 2017 23:27:46 GMT  
		Size: 881.8 KB (881818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef7cf80e6a1d9e4bdf9e1e032b9c8aad5a0b42fe5a9781e9d18158c3f59399`  
		Last Modified: Fri, 08 Sep 2017 23:27:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1966eb3278236cc8fb86cb3a9cb5ad6b49817ac26d0890db4e0b70f5b427532e`  
		Last Modified: Fri, 08 Sep 2017 23:27:45 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8979026be8b36ad8b04cf5daeba252a658a4d5866de657df7e4dde921288bd0d`  
		Last Modified: Fri, 08 Sep 2017 23:27:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d283bd78cd9009d92d6a22f85accf156a75c630437d7df3f6ece7d8f16541daa`  
		Last Modified: Fri, 08 Sep 2017 23:28:00 GMT  
		Size: 70.6 MB (70596942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec912852784a8e7a6a8b35bd3d32c19fc0c87253e322d5512ab69522f1da42e`  
		Last Modified: Fri, 08 Sep 2017 23:27:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f270516760bdf25094bde8fc1c1f6277a1fc53bdd617a7a611e1d6e65e7750`  
		Last Modified: Fri, 08 Sep 2017 23:27:44 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1322feaa167b474678c9532f5686ac9f964b4a4f4a97ba1dbc460ba403c9f9`  
		Last Modified: Fri, 08 Sep 2017 23:27:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:21a3e2e9663ee9d96db0eb4ae4a6ffb0612e3828550e9bd2295714e1517c8ddf
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103998652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dd328210597fda58cc3012a99f6a24d72912511ae88338df28b0f25c20e587`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:07:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:07:14 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:07:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:07:37 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Fri, 08 Sep 2017 08:07:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:07:42 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:07:42 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:07:43 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:07:43 GMT
ENV MONGO_MAJOR=3.2
# Fri, 08 Sep 2017 08:07:43 GMT
ENV MONGO_VERSION=3.2.16
# Fri, 08 Sep 2017 08:07:44 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:08:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:08:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:08:06 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:08:07 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:08:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Sep 2017 08:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:08:08 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:08:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03fc5faf2fd5fbc8d0f5d6b9f3bacb44917dfe648d81567cb9408e208edf1e1`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.4 MB (2397919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845c674220add7eede40860ea711fbe8543e4194d3035a642679f675a4f0e406`  
		Last Modified: Fri, 08 Sep 2017 23:27:46 GMT  
		Size: 881.8 KB (881818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ef7cf80e6a1d9e4bdf9e1e032b9c8aad5a0b42fe5a9781e9d18158c3f59399`  
		Last Modified: Fri, 08 Sep 2017 23:27:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1966eb3278236cc8fb86cb3a9cb5ad6b49817ac26d0890db4e0b70f5b427532e`  
		Last Modified: Fri, 08 Sep 2017 23:27:45 GMT  
		Size: 3.1 KB (3067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8979026be8b36ad8b04cf5daeba252a658a4d5866de657df7e4dde921288bd0d`  
		Last Modified: Fri, 08 Sep 2017 23:27:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d283bd78cd9009d92d6a22f85accf156a75c630437d7df3f6ece7d8f16541daa`  
		Last Modified: Fri, 08 Sep 2017 23:28:00 GMT  
		Size: 70.6 MB (70596942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec912852784a8e7a6a8b35bd3d32c19fc0c87253e322d5512ab69522f1da42e`  
		Last Modified: Fri, 08 Sep 2017 23:27:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f270516760bdf25094bde8fc1c1f6277a1fc53bdd617a7a611e1d6e65e7750`  
		Last Modified: Fri, 08 Sep 2017 23:27:44 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1322feaa167b474678c9532f5686ac9f964b4a4f4a97ba1dbc460ba403c9f9`  
		Last Modified: Fri, 08 Sep 2017 23:27:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.16-windowsservercore`

```console
$ docker pull mongo@sha256:ce29600bc4f2434ef749bbd26571a57e0e67993f3dacf5ff5fb88d1394ed5324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.2.16-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:54812ed05c0b7aa54cfebcdce99b0e411e586b6807564eede630bc023ff6e3af
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380576554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fda73086b96978d2bb579f273261bf1359bbcb6de576ac1b0a0c1b3d7c5d560`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:27:28 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 09 Aug 2017 23:27:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Wed, 09 Aug 2017 23:27:33 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Wed, 09 Aug 2017 23:28:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:28:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:28:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:28:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81e684e1fae36e71fbb56768612bc521935935dc467dd156c0ce143fcc384b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207f3020275df8c87dc381f53c6b5fe64c8944879c517af8443e20fba58328b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92451224920586ad919138ef57f4f779d94b3c3feb1e0767b05e0397e378a97d`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3076b9cffa8f6b3fb3443a9b81db96924ea48e2da14febafc5a0c88587b2d`  
		Last Modified: Wed, 09 Aug 2017 23:31:55 GMT  
		Size: 52.9 MB (52883816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf16f812ebb17d481cdf791a674d801e06673f930d7f450877375abdeba69a8`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d63dfcbc390afaa99e1db4f24505fbfab3719de9caca6a4ae32d82f234374f`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58158c49402aedd4a1c1877eda2e5eaf76dc19033abc873850875f48f3d75db`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:ce29600bc4f2434ef749bbd26571a57e0e67993f3dacf5ff5fb88d1394ed5324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:54812ed05c0b7aa54cfebcdce99b0e411e586b6807564eede630bc023ff6e3af
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380576554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fda73086b96978d2bb579f273261bf1359bbcb6de576ac1b0a0c1b3d7c5d560`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Aug 2017 23:27:28 GMT
ENV MONGO_VERSION=3.2.16
# Wed, 09 Aug 2017 23:27:30 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.16-signed.msi
# Wed, 09 Aug 2017 23:27:33 GMT
ENV MONGO_DOWNLOAD_SHA256=d27765ea1042f83b8a34cd60758c7ebf037520b9fb0e7c0c972e8256ee717829
# Wed, 09 Aug 2017 23:28:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 09 Aug 2017 23:28:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 09 Aug 2017 23:28:22 GMT
EXPOSE 27017/tcp
# Wed, 09 Aug 2017 23:28:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f81e684e1fae36e71fbb56768612bc521935935dc467dd156c0ce143fcc384b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207f3020275df8c87dc381f53c6b5fe64c8944879c517af8443e20fba58328b`  
		Last Modified: Wed, 09 Aug 2017 23:31:52 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92451224920586ad919138ef57f4f779d94b3c3feb1e0767b05e0397e378a97d`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3076b9cffa8f6b3fb3443a9b81db96924ea48e2da14febafc5a0c88587b2d`  
		Last Modified: Wed, 09 Aug 2017 23:31:55 GMT  
		Size: 52.9 MB (52883816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf16f812ebb17d481cdf791a674d801e06673f930d7f450877375abdeba69a8`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d63dfcbc390afaa99e1db4f24505fbfab3719de9caca6a4ae32d82f234374f`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58158c49402aedd4a1c1877eda2e5eaf76dc19033abc873850875f48f3d75db`  
		Last Modified: Wed, 09 Aug 2017 23:31:43 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.9`

```console
$ docker pull mongo@sha256:20f47ee0831342614b2fe33df128440829fe56e4f8cc7dc6944d2fb8f8c667c1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131650511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1390a921cb55c6cf62dd1841539a2d4f7671270b0cb4ea87eb5a581e10ce29c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:08:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 08 Sep 2017 08:08:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 17:48:23 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 17:48:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 17:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 17:48:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 17:48:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 17:48:50 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 17:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 17:48:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 17:48:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b0c4c873344b1b2573e52bca301e1a0de82e22d7a905fcef92a1180d013a7`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f89e28a451cb14f1ce305998b25e7b6e2a55a725ac64acc5fc830ede198082e`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b32a54f95d61753127d7daae3c78514ccd362e8f94555742bed029f5d1bc02f`  
		Last Modified: Tue, 12 Sep 2017 17:49:19 GMT  
		Size: 98.3 MB (98250482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6705a7fa39157b8c7e94a0af1faa68c4587d0e3b9173bcb3e5613ed6dad23ce`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c1660e0fa189111cddc80c3a96dfbd408c2ea1242bb7ef4c7d8fe98b82ecf`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3eb91e73017bc13d4ee781d86e9e5abeea2dffceab1ab89542b9cc3a1b95b6`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:20f47ee0831342614b2fe33df128440829fe56e4f8cc7dc6944d2fb8f8c667c1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131650511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1390a921cb55c6cf62dd1841539a2d4f7671270b0cb4ea87eb5a581e10ce29c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:08:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 08 Sep 2017 08:08:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 17:48:23 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 17:48:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 17:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 17:48:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 17:48:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 17:48:50 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 17:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 17:48:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 17:48:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b0c4c873344b1b2573e52bca301e1a0de82e22d7a905fcef92a1180d013a7`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f89e28a451cb14f1ce305998b25e7b6e2a55a725ac64acc5fc830ede198082e`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b32a54f95d61753127d7daae3c78514ccd362e8f94555742bed029f5d1bc02f`  
		Last Modified: Tue, 12 Sep 2017 17:49:19 GMT  
		Size: 98.3 MB (98250482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6705a7fa39157b8c7e94a0af1faa68c4587d0e3b9173bcb3e5613ed6dad23ce`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c1660e0fa189111cddc80c3a96dfbd408c2ea1242bb7ef4c7d8fe98b82ecf`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3eb91e73017bc13d4ee781d86e9e5abeea2dffceab1ab89542b9cc3a1b95b6`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:20f47ee0831342614b2fe33df128440829fe56e4f8cc7dc6944d2fb8f8c667c1
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131650511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1390a921cb55c6cf62dd1841539a2d4f7671270b0cb4ea87eb5a581e10ce29c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:08:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 08 Sep 2017 08:08:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 17:48:23 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 17:48:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 17:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 17:48:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 17:48:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 17:48:50 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 17:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 17:48:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 17:48:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b0c4c873344b1b2573e52bca301e1a0de82e22d7a905fcef92a1180d013a7`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f89e28a451cb14f1ce305998b25e7b6e2a55a725ac64acc5fc830ede198082e`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b32a54f95d61753127d7daae3c78514ccd362e8f94555742bed029f5d1bc02f`  
		Last Modified: Tue, 12 Sep 2017 17:49:19 GMT  
		Size: 98.3 MB (98250482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6705a7fa39157b8c7e94a0af1faa68c4587d0e3b9173bcb3e5613ed6dad23ce`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c1660e0fa189111cddc80c3a96dfbd408c2ea1242bb7ef4c7d8fe98b82ecf`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3eb91e73017bc13d4ee781d86e9e5abeea2dffceab1ab89542b9cc3a1b95b6`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:20f47ee0831342614b2fe33df128440829fe56e4f8cc7dc6944d2fb8f8c667c1
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131650511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1390a921cb55c6cf62dd1841539a2d4f7671270b0cb4ea87eb5a581e10ce29c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:08:53 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Fri, 08 Sep 2017 08:08:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 08 Sep 2017 08:08:58 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:08:59 GMT
ENV MONGO_MAJOR=3.4
# Tue, 12 Sep 2017 17:48:23 GMT
ENV MONGO_VERSION=3.4.9
# Tue, 12 Sep 2017 17:48:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 12 Sep 2017 17:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 12 Sep 2017 17:48:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 12 Sep 2017 17:48:50 GMT
VOLUME [/data/db /data/configdb]
# Tue, 12 Sep 2017 17:48:50 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 12 Sep 2017 17:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 12 Sep 2017 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 17:48:52 GMT
EXPOSE 27017/tcp
# Tue, 12 Sep 2017 17:48:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b0c4c873344b1b2573e52bca301e1a0de82e22d7a905fcef92a1180d013a7`  
		Last Modified: Fri, 08 Sep 2017 23:28:21 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f89e28a451cb14f1ce305998b25e7b6e2a55a725ac64acc5fc830ede198082e`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b32a54f95d61753127d7daae3c78514ccd362e8f94555742bed029f5d1bc02f`  
		Last Modified: Tue, 12 Sep 2017 17:49:19 GMT  
		Size: 98.3 MB (98250482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6705a7fa39157b8c7e94a0af1faa68c4587d0e3b9173bcb3e5613ed6dad23ce`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5c1660e0fa189111cddc80c3a96dfbd408c2ea1242bb7ef4c7d8fe98b82ecf`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3eb91e73017bc13d4ee781d86e9e5abeea2dffceab1ab89542b9cc3a1b95b6`  
		Last Modified: Tue, 12 Sep 2017 17:49:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.9-windowsservercore`

**does not exist** (yet?)

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

## `mongo:3.5.12`

```console
$ docker pull mongo@sha256:b32f0167f971dd63f93b2bc9f894c4939439e4b8873f07a38f8706fb33b57798
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.12` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131656982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed1813c0468ed7d1fc6f3416b17523fe7d4067f30d838a821858ffc830d4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:09:31 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 08 Sep 2017 08:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:09:36 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 08 Sep 2017 08:09:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_MAJOR=3.5
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_VERSION=3.5.12
# Fri, 08 Sep 2017 08:09:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:10:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:10:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:10:02 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:10:03 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:10:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:10:03 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:10:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5415b9414455a81c5db55753e5254975f41d65107b8d95b9c433cacb093c6e2`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f4921c17678a51cb5909f82a3a28f3f1794593efc65e41808476eb1284d1ef`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7d406af172e13350218e997efc4e68bc9d276855e509c3587c236d582f140`  
		Last Modified: Fri, 08 Sep 2017 23:29:34 GMT  
		Size: 98.3 MB (98257011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a13d9742a6f5532123232503abdac7ad98efc000e0a4b7c902ee00345c059`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74657325a1c9435f42ad0da865436c5541d0171f71063b3932a418fb1d8af63`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:b32f0167f971dd63f93b2bc9f894c4939439e4b8873f07a38f8706fb33b57798
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131656982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed1813c0468ed7d1fc6f3416b17523fe7d4067f30d838a821858ffc830d4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:09:31 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 08 Sep 2017 08:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:09:36 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 08 Sep 2017 08:09:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_MAJOR=3.5
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_VERSION=3.5.12
# Fri, 08 Sep 2017 08:09:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:10:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:10:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:10:02 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:10:03 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:10:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:10:03 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:10:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5415b9414455a81c5db55753e5254975f41d65107b8d95b9c433cacb093c6e2`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f4921c17678a51cb5909f82a3a28f3f1794593efc65e41808476eb1284d1ef`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7d406af172e13350218e997efc4e68bc9d276855e509c3587c236d582f140`  
		Last Modified: Fri, 08 Sep 2017 23:29:34 GMT  
		Size: 98.3 MB (98257011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a13d9742a6f5532123232503abdac7ad98efc000e0a4b7c902ee00345c059`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74657325a1c9435f42ad0da865436c5541d0171f71063b3932a418fb1d8af63`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:b32f0167f971dd63f93b2bc9f894c4939439e4b8873f07a38f8706fb33b57798
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131656982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed1813c0468ed7d1fc6f3416b17523fe7d4067f30d838a821858ffc830d4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:06:54 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 08 Sep 2017 08:08:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:08:31 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 08:08:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 08:08:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 08:09:31 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Fri, 08 Sep 2017 08:09:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 08:09:36 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 08 Sep 2017 08:09:37 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_MAJOR=3.5
# Fri, 08 Sep 2017 08:09:37 GMT
ENV MONGO_VERSION=3.5.12
# Fri, 08 Sep 2017 08:09:38 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 08 Sep 2017 08:10:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 08 Sep 2017 08:10:02 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 08 Sep 2017 08:10:02 GMT
VOLUME [/data/db /data/configdb]
# Fri, 08 Sep 2017 08:10:03 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Fri, 08 Sep 2017 08:10:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 08:10:03 GMT
EXPOSE 27017/tcp
# Fri, 08 Sep 2017 08:10:04 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b21467dc4da248d1877667dea97c7ff29f100914251e44cde9f3fb05b9ada55`  
		Last Modified: Fri, 08 Sep 2017 23:27:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d664c71bb10b61f7a908656885be6e23e8c79730e7139e314d68d9117f51c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 2.4 MB (2397893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6a6c99696b9dfc627b8459cf153ea9c0951f974b81adb4ca93f5877df0188c`  
		Last Modified: Fri, 08 Sep 2017 23:28:24 GMT  
		Size: 881.8 KB (881797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58576d6bcadcd52189d5e8b13040e21e7ff71580813360064f94d6f14528dd50`  
		Last Modified: Fri, 08 Sep 2017 23:28:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5415b9414455a81c5db55753e5254975f41d65107b8d95b9c433cacb093c6e2`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f4921c17678a51cb5909f82a3a28f3f1794593efc65e41808476eb1284d1ef`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7d406af172e13350218e997efc4e68bc9d276855e509c3587c236d582f140`  
		Last Modified: Fri, 08 Sep 2017 23:29:34 GMT  
		Size: 98.3 MB (98257011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a13d9742a6f5532123232503abdac7ad98efc000e0a4b7c902ee00345c059`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74657325a1c9435f42ad0da865436c5541d0171f71063b3932a418fb1d8af63`  
		Last Modified: Fri, 08 Sep 2017 23:29:16 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.12-windowsservercore`

```console
$ docker pull mongo@sha256:3ef6fae398cb580f74b6e422a7e4d33ab7c12c351b940b9df06af015515938f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.5.12-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:9f5cd919b90498dad0e30842caf73daeb10c3d8b7feb4baa135f7e3f54b75149
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5392612175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc0766c32354cd8f3e8eecaaf9e56cb3358c05860d7ea1ef7b67b77e7aa6034`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 24 Aug 2017 01:36:32 GMT
ENV MONGO_VERSION=3.5.12
# Thu, 24 Aug 2017 01:36:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.12-signed.msi
# Thu, 24 Aug 2017 01:36:37 GMT
ENV MONGO_DOWNLOAD_SHA256=15cedbca560a65dc3362a42a070c4f110e1b8cb20ebcd5e61bd795f673ededdc
# Thu, 24 Aug 2017 01:37:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 01:37:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 24 Aug 2017 01:37:46 GMT
EXPOSE 27017/tcp
# Thu, 24 Aug 2017 01:37:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c898968f529278c0af8db05709183928d28f86024f198eaa7ed10269c3a2e65c`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a7ee713204b5839c54f61f60404498f3257cc80f5d5cebc89481740a2ecdc`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce1c2768ad669f71bfe571800bece463fbc4573b7cd23f9fe9265832c757a6e`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a810382195d4deab495bbd2492395698a029aca8a86e202bda4ba25b6eb51`  
		Last Modified: Thu, 24 Aug 2017 01:38:30 GMT  
		Size: 64.9 MB (64919441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08929e16eef1f65703588e8b59447f4536cbc39f076830e8fa5259fb27bb4d86`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eb5a438b35a85fa9c6e06382b9815beb3ac2fa76179c8b99eee8ff47b9e555`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02f5fe2f1c2e58c1497651ece6f4e01ac3c8ac16595b945217b278a064a727`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:3ef6fae398cb580f74b6e422a7e4d33ab7c12c351b940b9df06af015515938f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:3.5-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:9f5cd919b90498dad0e30842caf73daeb10c3d8b7feb4baa135f7e3f54b75149
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5392612175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc0766c32354cd8f3e8eecaaf9e56cb3358c05860d7ea1ef7b67b77e7aa6034`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 24 Aug 2017 01:36:32 GMT
ENV MONGO_VERSION=3.5.12
# Thu, 24 Aug 2017 01:36:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.12-signed.msi
# Thu, 24 Aug 2017 01:36:37 GMT
ENV MONGO_DOWNLOAD_SHA256=15cedbca560a65dc3362a42a070c4f110e1b8cb20ebcd5e61bd795f673ededdc
# Thu, 24 Aug 2017 01:37:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 01:37:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 24 Aug 2017 01:37:46 GMT
EXPOSE 27017/tcp
# Thu, 24 Aug 2017 01:37:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c898968f529278c0af8db05709183928d28f86024f198eaa7ed10269c3a2e65c`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a7ee713204b5839c54f61f60404498f3257cc80f5d5cebc89481740a2ecdc`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce1c2768ad669f71bfe571800bece463fbc4573b7cd23f9fe9265832c757a6e`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a810382195d4deab495bbd2492395698a029aca8a86e202bda4ba25b6eb51`  
		Last Modified: Thu, 24 Aug 2017 01:38:30 GMT  
		Size: 64.9 MB (64919441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08929e16eef1f65703588e8b59447f4536cbc39f076830e8fa5259fb27bb4d86`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eb5a438b35a85fa9c6e06382b9815beb3ac2fa76179c8b99eee8ff47b9e555`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02f5fe2f1c2e58c1497651ece6f4e01ac3c8ac16595b945217b278a064a727`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:3ef6fae398cb580f74b6e422a7e4d33ab7c12c351b940b9df06af015515938f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1593; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1593; amd64

```console
$ docker pull mongo@sha256:9f5cd919b90498dad0e30842caf73daeb10c3d8b7feb4baa135f7e3f54b75149
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5392612175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc0766c32354cd8f3e8eecaaf9e56cb3358c05860d7ea1ef7b67b77e7aa6034`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 Aug 2017 23:55:17 GMT
RUN Install update 10.0.14393.1593
# Wed, 09 Aug 2017 23:26:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 24 Aug 2017 01:36:32 GMT
ENV MONGO_VERSION=3.5.12
# Thu, 24 Aug 2017 01:36:34 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.12-signed.msi
# Thu, 24 Aug 2017 01:36:37 GMT
ENV MONGO_DOWNLOAD_SHA256=15cedbca560a65dc3362a42a070c4f110e1b8cb20ebcd5e61bd795f673ededdc
# Thu, 24 Aug 2017 01:37:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 24 Aug 2017 01:37:43 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 24 Aug 2017 01:37:46 GMT
EXPOSE 27017/tcp
# Thu, 24 Aug 2017 01:37:50 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f5eeabe6154feaf01ca3bf333d9936a1e0803a4998279a74f27e5012605eff4`  
		Size: 1.3 GB (1257698307 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:26b20bf503d22eb20def58f4afcc85ce2ef80aaa1b1cfb4d9b219b9f303aa503`  
		Last Modified: Wed, 09 Aug 2017 23:31:31 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c898968f529278c0af8db05709183928d28f86024f198eaa7ed10269c3a2e65c`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a7ee713204b5839c54f61f60404498f3257cc80f5d5cebc89481740a2ecdc`  
		Last Modified: Thu, 24 Aug 2017 01:38:27 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce1c2768ad669f71bfe571800bece463fbc4573b7cd23f9fe9265832c757a6e`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31a810382195d4deab495bbd2492395698a029aca8a86e202bda4ba25b6eb51`  
		Last Modified: Thu, 24 Aug 2017 01:38:30 GMT  
		Size: 64.9 MB (64919441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08929e16eef1f65703588e8b59447f4536cbc39f076830e8fa5259fb27bb4d86`  
		Last Modified: Thu, 24 Aug 2017 01:38:17 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eb5a438b35a85fa9c6e06382b9815beb3ac2fa76179c8b99eee8ff47b9e555`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e02f5fe2f1c2e58c1497651ece6f4e01ac3c8ac16595b945217b278a064a727`  
		Last Modified: Thu, 24 Aug 2017 01:38:18 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
