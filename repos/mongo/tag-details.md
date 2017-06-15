<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.14`](#mongo3214)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.14-windowsservercore`](#mongo3214-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.5`](#mongo345)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.5-windowsservercore`](#mongo345-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)
-	[`mongo:3.5.8`](#mongo358)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.8-windowsservercore`](#mongo358-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:a91fe075e2b35c9420af565f0a665dd318309c4f50161cda39ccad7b9434289c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84933670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2840dd5a950212f540d2fcdd226d702d26860a8f845444786feb7b25621a15e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 08 May 2017 23:41:58 GMT
ADD file:ec0c9107c69a3f85f7d43fdc297a5f989f6ba8dfb67ad8fb8fdd6e8bd5f51e08 in / 
# Mon, 08 May 2017 23:41:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:33:31 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:33:32 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 09 May 2017 17:33:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:33:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:33:59 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 09 May 2017 17:34:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:34:01 GMT
ENV MONGO_MAJOR=3.0
# Mon, 15 May 2017 20:38:16 GMT
ENV MONGO_VERSION=3.0.15
# Mon, 15 May 2017 20:38:17 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 15 May 2017 20:38:19 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 15 May 2017 20:38:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 May 2017 20:38:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 May 2017 20:38:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:38:44 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 23 May 2017 22:38:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 May 2017 22:38:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:38:48 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:38:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8db8e759140b7c108d2930a3ea221452a154daec5da41243e1c7beb3da19d39f`  
		Last Modified: Tue, 09 May 2017 00:00:51 GMT  
		Size: 19.6 MB (19627892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59468cad5ee55134b865d96ad321e390a8c1e3384493a48279cb2c21cebfd641`  
		Last Modified: Sat, 13 May 2017 07:08:55 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425577c6da679c6d99b0dfb40152b4bb454d512c24360ccdaecb5b296548d21c`  
		Last Modified: Sat, 13 May 2017 07:08:55 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b699ae4fd75ce9a4b211ec14696a47b89118c47ed687be0d3e92f934acd5248`  
		Last Modified: Sat, 13 May 2017 07:08:56 GMT  
		Size: 2.7 MB (2668791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126093717b1c535aa47bbae6f99f38bdf0713e4f83f07cc419747c47c36d55b4`  
		Last Modified: Sat, 13 May 2017 07:08:56 GMT  
		Size: 922.8 KB (922750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12a60db149411dd24131d358112cd96d6b1f10c5391eb67895dc403f0ff4a98`  
		Last Modified: Sat, 13 May 2017 07:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd8958f604504819721219f27b2c5c3f221a02b7a0748c71b1336b9764fea`  
		Last Modified: Sat, 13 May 2017 07:08:53 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56026e3594e325258efda30b2efcb5f73364f3bf6624e789e997386f1a0cb32`  
		Last Modified: Mon, 15 May 2017 20:39:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d432e8ded7a90112d2e9866f7f5c6049d1ac34d9bd773f2f3d3e17d917d4d`  
		Last Modified: Mon, 15 May 2017 20:39:34 GMT  
		Size: 61.7 MB (61706618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da1cd4cfe849db14201302830d5e35129262505cbe9e7c18dd0aa0e4af3db88`  
		Last Modified: Mon, 15 May 2017 20:39:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ecfea3862e157953e6d793fb4084232611a3c93f7baf63552b6e5bfdcc67bcf`  
		Last Modified: Tue, 23 May 2017 22:40:57 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7061e6e798f00dab8bf17af204dfef202ebd9ecea27e95c92ff8ac56acd3c34f`  
		Last Modified: Tue, 23 May 2017 22:40:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:a91fe075e2b35c9420af565f0a665dd318309c4f50161cda39ccad7b9434289c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84933670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2840dd5a950212f540d2fcdd226d702d26860a8f845444786feb7b25621a15e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 08 May 2017 23:41:58 GMT
ADD file:ec0c9107c69a3f85f7d43fdc297a5f989f6ba8dfb67ad8fb8fdd6e8bd5f51e08 in / 
# Mon, 08 May 2017 23:41:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:33:31 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:33:32 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 09 May 2017 17:33:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:33:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:33:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:33:59 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 09 May 2017 17:34:01 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:34:01 GMT
ENV MONGO_MAJOR=3.0
# Mon, 15 May 2017 20:38:16 GMT
ENV MONGO_VERSION=3.0.15
# Mon, 15 May 2017 20:38:17 GMT
ENV MONGO_PACKAGE=mongodb-org
# Mon, 15 May 2017 20:38:19 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 15 May 2017 20:38:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 15 May 2017 20:38:49 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 15 May 2017 20:38:51 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:38:44 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 23 May 2017 22:38:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 May 2017 22:38:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:38:48 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:38:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8db8e759140b7c108d2930a3ea221452a154daec5da41243e1c7beb3da19d39f`  
		Last Modified: Tue, 09 May 2017 00:00:51 GMT  
		Size: 19.6 MB (19627892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59468cad5ee55134b865d96ad321e390a8c1e3384493a48279cb2c21cebfd641`  
		Last Modified: Sat, 13 May 2017 07:08:55 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425577c6da679c6d99b0dfb40152b4bb454d512c24360ccdaecb5b296548d21c`  
		Last Modified: Sat, 13 May 2017 07:08:55 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b699ae4fd75ce9a4b211ec14696a47b89118c47ed687be0d3e92f934acd5248`  
		Last Modified: Sat, 13 May 2017 07:08:56 GMT  
		Size: 2.7 MB (2668791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126093717b1c535aa47bbae6f99f38bdf0713e4f83f07cc419747c47c36d55b4`  
		Last Modified: Sat, 13 May 2017 07:08:56 GMT  
		Size: 922.8 KB (922750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12a60db149411dd24131d358112cd96d6b1f10c5391eb67895dc403f0ff4a98`  
		Last Modified: Sat, 13 May 2017 07:08:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd8958f604504819721219f27b2c5c3f221a02b7a0748c71b1336b9764fea`  
		Last Modified: Sat, 13 May 2017 07:08:53 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56026e3594e325258efda30b2efcb5f73364f3bf6624e789e997386f1a0cb32`  
		Last Modified: Mon, 15 May 2017 20:39:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9d432e8ded7a90112d2e9866f7f5c6049d1ac34d9bd773f2f3d3e17d917d4d`  
		Last Modified: Mon, 15 May 2017 20:39:34 GMT  
		Size: 61.7 MB (61706618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da1cd4cfe849db14201302830d5e35129262505cbe9e7c18dd0aa0e4af3db88`  
		Last Modified: Mon, 15 May 2017 20:39:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ecfea3862e157953e6d793fb4084232611a3c93f7baf63552b6e5bfdcc67bcf`  
		Last Modified: Tue, 23 May 2017 22:40:57 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7061e6e798f00dab8bf17af204dfef202ebd9ecea27e95c92ff8ac56acd3c34f`  
		Last Modified: Tue, 23 May 2017 22:40:56 GMT  
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

## `mongo:3.2.14`

**does not exist** (yet?)

## `mongo:3.2`

```console
$ docker pull mongo@sha256:126c2b58919d6a3b13230f820a60335b99da54abc8b74d00df9f933e66f56411
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104441097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dd3a2c2a2472cc3f21ecebca2b1df618ba7d8050d4f60015dab8fe5569be0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:34:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:34:50 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:35:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:35:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:35:06 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 09 May 2017 17:35:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:10 GMT
ENV MONGO_MAJOR=3.2
# Tue, 09 May 2017 17:35:11 GMT
ENV MONGO_VERSION=3.2.13
# Tue, 09 May 2017 17:35:11 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 09 May 2017 17:35:13 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:35:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:35:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:35:30 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:39:11 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 23 May 2017 22:39:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 May 2017 22:39:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:39:14 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:39:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c243d2b8e5fd31cf7bbf26a9d322cebffed420d03ca187c9c3d4243fd9d5e2`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.4 MB (2404189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a58b6a7bcbe57a7e2f09956471c2ee8bef3f82569068672f228845a64d2447`  
		Last Modified: Sat, 13 May 2017 07:09:58 GMT  
		Size: 888.6 KB (888647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d61ffb46087cba7d0c45af8f98608d0e6d9432d8ab6849bbc43f469aa365149`  
		Last Modified: Sat, 13 May 2017 07:10:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30575dc34c1f884ff4cf59b4e83c66f32fdbc7df90081bb8aa30fc0e72f388`  
		Last Modified: Sat, 13 May 2017 07:09:56 GMT  
		Size: 3.1 KB (3069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12530a3e445544aa0329f7652081071a10ace27433f83d278b4743d2a6a5716`  
		Last Modified: Sat, 13 May 2017 07:09:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef25d9b6d85f13d048849c149ba92262b6ecd8aa709f4fcdae9b1a707b7228`  
		Last Modified: Sat, 13 May 2017 07:10:11 GMT  
		Size: 70.5 MB (70502777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67152c76660b07cd8bfd18b3b1d88c53b78874c671563fa2f5ccf17d64b72552`  
		Last Modified: Sat, 13 May 2017 07:09:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac4b00574a518b94206b62f8517e49b8fb3075c7493f72b617e64c672584edc`  
		Last Modified: Tue, 23 May 2017 22:41:47 GMT  
		Size: 3.1 KB (3103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b29499d466ed4dc35090bd87c12def34cce6a1e611a5c8ba02085b92c6a5a95`  
		Last Modified: Tue, 23 May 2017 22:41:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.14-windowsservercore`

```console
$ docker pull mongo@sha256:442729995ef9eb79f238adb34ab194213e1f98feb294a1244f7eece341a8bf5f
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284929528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9857cbdba494997cbeb230a026453c30d514722b4ba2472cb6c1aec2b58ebc7`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:39:14 GMT
ENV MONGO_VERSION=3.2.14
# Thu, 15 Jun 2017 17:39:17 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.14-signed.msi
# Thu, 15 Jun 2017 17:39:19 GMT
ENV MONGO_DOWNLOAD_SHA256=3dc885163e6d3ed82164456149353e3c93b146a66ac7f0d9caca03773a050c91
# Thu, 15 Jun 2017 17:40:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:40:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:40:22 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:40:25 GMT
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
	-	`sha256:42f8d8c0f77aa9b1bfee0b9a6e3bf58bc7226ae234f1c8a049412f2b50e1aca4`  
		Last Modified: Thu, 15 Jun 2017 17:43:29 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d57defd68a954636aaa5c47134a536eb26a65238e9f1aa8c522088410052f4`  
		Last Modified: Thu, 15 Jun 2017 17:43:28 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281f2b45b83e3098f6d4d8ad8034140d02b4a49f708ea688474b9aa19f26bb3`  
		Last Modified: Thu, 15 Jun 2017 17:43:19 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0f8c4bbcec3623d9c1b3d51369b5c6252e998c87c982d9827f8a95bcbb117e`  
		Last Modified: Thu, 15 Jun 2017 17:43:32 GMT  
		Size: 53.0 MB (53033057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f77d253b327447e89bfdd03ced7d7ee62e9e185c1977f8db44c254b45292ed6`  
		Last Modified: Thu, 15 Jun 2017 17:43:21 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2b8364137711f2f9dd355839e8b7099cf18c63d4fb77110139a7e380ff66bf`  
		Last Modified: Thu, 15 Jun 2017 17:43:20 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722943b3c701c2921f828b09f018247e41c9aa19c4ea2d48c83cb76db2db5feb`  
		Last Modified: Thu, 15 Jun 2017 17:43:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:442729995ef9eb79f238adb34ab194213e1f98feb294a1244f7eece341a8bf5f
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284929528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9857cbdba494997cbeb230a026453c30d514722b4ba2472cb6c1aec2b58ebc7`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:39:14 GMT
ENV MONGO_VERSION=3.2.14
# Thu, 15 Jun 2017 17:39:17 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.14-signed.msi
# Thu, 15 Jun 2017 17:39:19 GMT
ENV MONGO_DOWNLOAD_SHA256=3dc885163e6d3ed82164456149353e3c93b146a66ac7f0d9caca03773a050c91
# Thu, 15 Jun 2017 17:40:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:40:18 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:40:22 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:40:25 GMT
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
	-	`sha256:42f8d8c0f77aa9b1bfee0b9a6e3bf58bc7226ae234f1c8a049412f2b50e1aca4`  
		Last Modified: Thu, 15 Jun 2017 17:43:29 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d57defd68a954636aaa5c47134a536eb26a65238e9f1aa8c522088410052f4`  
		Last Modified: Thu, 15 Jun 2017 17:43:28 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1281f2b45b83e3098f6d4d8ad8034140d02b4a49f708ea688474b9aa19f26bb3`  
		Last Modified: Thu, 15 Jun 2017 17:43:19 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0f8c4bbcec3623d9c1b3d51369b5c6252e998c87c982d9827f8a95bcbb117e`  
		Last Modified: Thu, 15 Jun 2017 17:43:32 GMT  
		Size: 53.0 MB (53033057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f77d253b327447e89bfdd03ced7d7ee62e9e185c1977f8db44c254b45292ed6`  
		Last Modified: Thu, 15 Jun 2017 17:43:21 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2b8364137711f2f9dd355839e8b7099cf18c63d4fb77110139a7e380ff66bf`  
		Last Modified: Thu, 15 Jun 2017 17:43:20 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722943b3c701c2921f828b09f018247e41c9aa19c4ea2d48c83cb76db2db5feb`  
		Last Modified: Thu, 15 Jun 2017 17:43:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.5`

**does not exist** (yet?)

## `mongo:3.4`

```console
$ docker pull mongo@sha256:c4bc4644b967a4b58022a79cf5c9afcd25ed08180c958a74df57b7753cfc8649
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ba9aead2724ad9eb51c629bd66e66d9394f5a071855abe1d25226bf07487f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:32:39 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 09 May 2017 17:32:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:32:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 09 May 2017 17:32:43 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 09 May 2017 17:32:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 09 May 2017 17:32:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:33:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:33:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:39:38 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 23 May 2017 22:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 May 2017 22:39:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:39:41 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:39:42 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0300dc073745cbbb411a99ed6855de8fcf855dbc2ca648badeaec3b4eb5fe4f`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93b8ba2b93b970864e68917ce3369bbdd02717bed3e3c3b6b1d4cbd87948904`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661362338965ff4fd49b58a49dd1fd24bb25d4bc65d8e3fd702ab296ac9d7852`  
		Last Modified: Sat, 13 May 2017 07:11:22 GMT  
		Size: 98.0 MB (98002670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa170e22de2e3c20397635daf87fd2c8ad319f6756004822ff28004cb16f4522`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86992ab453313d10d1bf9af4ebdf25603b2bf86f0bfdd1b62dbde9c5184d739f`  
		Last Modified: Tue, 23 May 2017 22:42:38 GMT  
		Size: 3.1 KB (3103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233325a655e579342222f40000c14d8d953e2148fdd9a38dd1f44f5a0af1d15`  
		Last Modified: Tue, 23 May 2017 22:42:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:c4bc4644b967a4b58022a79cf5c9afcd25ed08180c958a74df57b7753cfc8649
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ba9aead2724ad9eb51c629bd66e66d9394f5a071855abe1d25226bf07487f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:32:39 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 09 May 2017 17:32:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:32:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 09 May 2017 17:32:43 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 09 May 2017 17:32:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 09 May 2017 17:32:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:33:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:33:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:39:38 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 23 May 2017 22:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 May 2017 22:39:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:39:41 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:39:42 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0300dc073745cbbb411a99ed6855de8fcf855dbc2ca648badeaec3b4eb5fe4f`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93b8ba2b93b970864e68917ce3369bbdd02717bed3e3c3b6b1d4cbd87948904`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661362338965ff4fd49b58a49dd1fd24bb25d4bc65d8e3fd702ab296ac9d7852`  
		Last Modified: Sat, 13 May 2017 07:11:22 GMT  
		Size: 98.0 MB (98002670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa170e22de2e3c20397635daf87fd2c8ad319f6756004822ff28004cb16f4522`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86992ab453313d10d1bf9af4ebdf25603b2bf86f0bfdd1b62dbde9c5184d739f`  
		Last Modified: Tue, 23 May 2017 22:42:38 GMT  
		Size: 3.1 KB (3103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233325a655e579342222f40000c14d8d953e2148fdd9a38dd1f44f5a0af1d15`  
		Last Modified: Tue, 23 May 2017 22:42:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:c4bc4644b967a4b58022a79cf5c9afcd25ed08180c958a74df57b7753cfc8649
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ba9aead2724ad9eb51c629bd66e66d9394f5a071855abe1d25226bf07487f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:32:39 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 09 May 2017 17:32:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:32:42 GMT
ENV MONGO_MAJOR=3.4
# Tue, 09 May 2017 17:32:43 GMT
ENV MONGO_VERSION=3.4.4
# Tue, 09 May 2017 17:32:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 09 May 2017 17:32:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:33:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:33:05 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:39:38 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Tue, 23 May 2017 22:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 23 May 2017 22:39:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:39:41 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:39:42 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0300dc073745cbbb411a99ed6855de8fcf855dbc2ca648badeaec3b4eb5fe4f`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93b8ba2b93b970864e68917ce3369bbdd02717bed3e3c3b6b1d4cbd87948904`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661362338965ff4fd49b58a49dd1fd24bb25d4bc65d8e3fd702ab296ac9d7852`  
		Last Modified: Sat, 13 May 2017 07:11:22 GMT  
		Size: 98.0 MB (98002670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa170e22de2e3c20397635daf87fd2c8ad319f6756004822ff28004cb16f4522`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86992ab453313d10d1bf9af4ebdf25603b2bf86f0bfdd1b62dbde9c5184d739f`  
		Last Modified: Tue, 23 May 2017 22:42:38 GMT  
		Size: 3.1 KB (3103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233325a655e579342222f40000c14d8d953e2148fdd9a38dd1f44f5a0af1d15`  
		Last Modified: Tue, 23 May 2017 22:42:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.5-windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:fd09cb2c96c9d746194d59f23fa9440b7b2aa7b41e69302a372869e929b11706
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294932962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd790f026fc18c09251f2a34de45c8845d6b329a10769ac6eed3e828e93c8433`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:40:29 GMT
ENV MONGO_VERSION=3.4.5
# Thu, 15 Jun 2017 17:40:32 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed.msi
# Thu, 15 Jun 2017 17:40:35 GMT
ENV MONGO_DOWNLOAD_SHA256=245ec3657d6f70095c5a2939cf112312fdb721fee01c8f559cef0b7bc05ff077
# Thu, 15 Jun 2017 17:41:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:41:30 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:41:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:41:38 GMT
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
	-	`sha256:6c4ce600f780e676efcc546ab429bc1149f076e77345b8122052e19be16cddc5`  
		Last Modified: Thu, 15 Jun 2017 17:43:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a71aaafcc51ca912c9cd15e3944a9b8ffae14065f3548ec664b27f6295dba30`  
		Last Modified: Thu, 15 Jun 2017 17:43:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646d0e3ddbbeeb8c4e91dcc61c1ff2fc96733d5bbdcb1324ec92ec396ed7e6c7`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25a555b7f94bb55627c6d285873ba81a255ec9a70a38d6197f08081d0baf814`  
		Last Modified: Thu, 15 Jun 2017 17:43:57 GMT  
		Size: 63.0 MB (63036508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2e543bdcdda82349f940c54fba9434effd3dc0b54597741461f69a47cc3074`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6846c46f564f38b08302dd0163d3be84175fcfb7ffd35ac1fd14d0554f8d4922`  
		Last Modified: Thu, 15 Jun 2017 17:43:44 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48edbe4b245462c8a9e125975cd187b3d0d22ddfa906f037c47b9cf503b893bc`  
		Last Modified: Thu, 15 Jun 2017 17:43:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.8`

```console
$ docker pull mongo@sha256:177bb208a21af06a62bc3db6ca19624538cb04fb47e15adab2578a4c604227d9
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128956286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2635ac982bd2bc349e302d586e626af351f0e35c30587e0d39d237a260499566`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 31 May 2017 21:36:25 GMT
ENV MONGO_VERSION=3.5.8
# Wed, 31 May 2017 21:36:26 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Wed, 31 May 2017 21:36:28 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 May 2017 21:36:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 May 2017 21:36:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 May 2017 21:36:51 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 May 2017 21:36:52 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 31 May 2017 21:36:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 21:36:54 GMT
EXPOSE 27017/tcp
# Wed, 31 May 2017 21:36:54 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4956db9472bcaba8c1dd255e08ec338d1a51ec95add2fb723cc43f834e547e4`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7172bf85ce73a7532dd175187dbcacf4e92cd84c82724e67f514ef0f4bb3bc51`  
		Last Modified: Wed, 31 May 2017 21:40:39 GMT  
		Size: 95.0 MB (95019583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa001677984be68f95db08e3962c53b520f0653a7aa5278c2201be2e69c60aa`  
		Last Modified: Wed, 31 May 2017 21:40:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af12436c2b9c14d25f01b64ee038d1c2f8dd664dc83be4f04ad5b8582096ab35`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:177bb208a21af06a62bc3db6ca19624538cb04fb47e15adab2578a4c604227d9
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128956286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2635ac982bd2bc349e302d586e626af351f0e35c30587e0d39d237a260499566`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 31 May 2017 21:36:25 GMT
ENV MONGO_VERSION=3.5.8
# Wed, 31 May 2017 21:36:26 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Wed, 31 May 2017 21:36:28 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 May 2017 21:36:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 May 2017 21:36:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 May 2017 21:36:51 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 May 2017 21:36:52 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 31 May 2017 21:36:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 21:36:54 GMT
EXPOSE 27017/tcp
# Wed, 31 May 2017 21:36:54 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4956db9472bcaba8c1dd255e08ec338d1a51ec95add2fb723cc43f834e547e4`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7172bf85ce73a7532dd175187dbcacf4e92cd84c82724e67f514ef0f4bb3bc51`  
		Last Modified: Wed, 31 May 2017 21:40:39 GMT  
		Size: 95.0 MB (95019583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa001677984be68f95db08e3962c53b520f0653a7aa5278c2201be2e69c60aa`  
		Last Modified: Wed, 31 May 2017 21:40:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af12436c2b9c14d25f01b64ee038d1c2f8dd664dc83be4f04ad5b8582096ab35`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:177bb208a21af06a62bc3db6ca19624538cb04fb47e15adab2578a4c604227d9
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128956286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2635ac982bd2bc349e302d586e626af351f0e35c30587e0d39d237a260499566`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Mon, 08 May 2017 23:28:58 GMT
ADD file:7dc8fe041ca97fe00af650b41599e0b8d68188f7586ec0009b2cbe7d66896ba8 in / 
# Mon, 08 May 2017 23:28:59 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:32:07 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 09 May 2017 17:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:32:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:32:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Tue, 09 May 2017 17:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Wed, 31 May 2017 21:36:25 GMT
ENV MONGO_VERSION=3.5.8
# Wed, 31 May 2017 21:36:26 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Wed, 31 May 2017 21:36:28 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Wed, 31 May 2017 21:36:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 31 May 2017 21:36:50 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 31 May 2017 21:36:51 GMT
VOLUME [/data/db /data/configdb]
# Wed, 31 May 2017 21:36:52 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Wed, 31 May 2017 21:36:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 21:36:54 GMT
EXPOSE 27017/tcp
# Wed, 31 May 2017 21:36:54 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:56c7afbcb0f1f3976c78e9c511ded74db33dfc196fe4b4b56914d7b1917c5aa2`  
		Last Modified: Mon, 08 May 2017 23:45:51 GMT  
		Size: 30.6 MB (30636650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4863389b54fa744b9eb1c6836ddb0a70ccb814eccb8e75ae45785668d65c27`  
		Last Modified: Sat, 13 May 2017 07:09:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccbd1684456166859eed5a3a3f6e1edc4732fb88cbe51aaad69617e1075187d`  
		Last Modified: Sat, 13 May 2017 07:11:05 GMT  
		Size: 2.4 MB (2404284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5565b5f177e7fbb9611b5212b67311421f12988629093757be24c6c2b69084c2`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 888.6 KB (888621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00971241c470ff0e96d281740cba4662deaf5c5284df2e3dc45652f9297d685`  
		Last Modified: Sat, 13 May 2017 07:11:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4956db9472bcaba8c1dd255e08ec338d1a51ec95add2fb723cc43f834e547e4`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7172bf85ce73a7532dd175187dbcacf4e92cd84c82724e67f514ef0f4bb3bc51`  
		Last Modified: Wed, 31 May 2017 21:40:39 GMT  
		Size: 95.0 MB (95019583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa001677984be68f95db08e3962c53b520f0653a7aa5278c2201be2e69c60aa`  
		Last Modified: Wed, 31 May 2017 21:40:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af12436c2b9c14d25f01b64ee038d1c2f8dd664dc83be4f04ad5b8582096ab35`  
		Last Modified: Wed, 31 May 2017 21:40:23 GMT  
		Size: 3.2 KB (3170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.8-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
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
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
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
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:fe00dd395c2bd960b89011dcc35d22542c89dbfe5febd0f71295e1b22cd1ee0d
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295391720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e3bd59611035e4495f86896ec120ac4df8e5018488b4a228d21842313620ea`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 15 Jun 2017 17:41:42 GMT
ENV MONGO_VERSION=3.5.8
# Thu, 15 Jun 2017 17:41:45 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.8-signed.msi
# Thu, 15 Jun 2017 17:41:49 GMT
ENV MONGO_DOWNLOAD_SHA256=40f65f1162387863b2e97b13f2aaa9a6a086aefe5d3680691255ebbcfad30e9b
# Thu, 15 Jun 2017 17:42:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 15 Jun 2017 17:43:00 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 15 Jun 2017 17:43:05 GMT
EXPOSE 27017/tcp
# Thu, 15 Jun 2017 17:43:08 GMT
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
	-	`sha256:fa348f282e5f43dab718929e545a280c67ba4d06bdfcafb6faa6315422441e6a`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d084b57ddd0b63328666bd109444a9d1990aa06102a429b645697a2ca9d5bdc8`  
		Last Modified: Thu, 15 Jun 2017 17:44:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24a90c6affde45ae88bc35aff216946381696aa4cde5dd5cd48e825d55462c8`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44d8cb16e096baebc43dab5b6ce17ea19e01421b7fce4c3e1d459a5331658de`  
		Last Modified: Thu, 15 Jun 2017 17:44:29 GMT  
		Size: 63.5 MB (63495242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d766aa15a090304d73abdfdd6bf18e3d57db09b48bc9a09702346f92f0812972`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fb6d7d70016c8227036b54147788a2e52b28966d0eceea03cb28bde0218205`  
		Last Modified: Thu, 15 Jun 2017 17:44:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4be17d28365b19eff065bd2f7e2dde0c7bc55eb11302b6bd67013d3eb7570`  
		Last Modified: Thu, 15 Jun 2017 17:44:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
