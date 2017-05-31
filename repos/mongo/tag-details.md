<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15-windowsservercore`](#mongo3015-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.13`](#mongo3213)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.13-windowsservercore`](#mongo3213-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.4`](#mongo344)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.4-windowsservercore`](#mongo344-windowsservercore)
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

## `mongo:3.2.13`

```console
$ docker pull mongo@sha256:126c2b58919d6a3b13230f820a60335b99da54abc8b74d00df9f933e66f56411
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.13` - linux; amd64

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

## `mongo:3.2.13-windowsservercore`

```console
$ docker pull mongo@sha256:51288c47268b36f933cda80f968070118d69c5c57cfb790299afa218fccc7748
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.13-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284922537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a484c4074669a21c763ec0f04206c7fdbcc1797281a17933c4f5a3326c22a90e`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:55:32 GMT
ENV MONGO_VERSION=3.2.13
# Mon, 01 May 2017 22:55:35 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.13-signed.msi
# Mon, 01 May 2017 22:55:39 GMT
ENV MONGO_DOWNLOAD_SHA256=d6dd767bc9584e3457ebbb6993db14464a5eba5c625f8314a65efdb191d6095a
# Mon, 01 May 2017 22:56:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:56:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:56:53 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:56:56 GMT
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
	-	`sha256:5b339fb8040dfb2bd9e36674790bbe6bd3cd9e282709791e1e39f4745556ff96`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb6d4be5586aa6a3e9d5bfa96c810ec23e250d1416a250a34a6e93e3d4b528c`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce3bbebed1e0d477754c79e0450b5a254d54552fe98e6016d459c59d5ae4d66`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f872fa0bbdc91ee3f5e3d9e457a3fdd967466c15851240753635c4cb9c1837ec`  
		Last Modified: Mon, 01 May 2017 22:59:01 GMT  
		Size: 53.0 MB (53026069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb5918d7c3b3becc7245106fc78259830c7763df51b755133a296becc2ce41a`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e585f2b2bed1066fcebbbe146beaf13e1a9523b7bfbaa6a6531133a8b8382c8`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186a58be3a4fbf42219a59930adb1f1c1c0b7e601b61ee0dc03c30f308faf0fc`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:51288c47268b36f933cda80f968070118d69c5c57cfb790299afa218fccc7748
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5284922537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a484c4074669a21c763ec0f04206c7fdbcc1797281a17933c4f5a3326c22a90e`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:55:32 GMT
ENV MONGO_VERSION=3.2.13
# Mon, 01 May 2017 22:55:35 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.13-signed.msi
# Mon, 01 May 2017 22:55:39 GMT
ENV MONGO_DOWNLOAD_SHA256=d6dd767bc9584e3457ebbb6993db14464a5eba5c625f8314a65efdb191d6095a
# Mon, 01 May 2017 22:56:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:56:48 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:56:53 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:56:56 GMT
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
	-	`sha256:5b339fb8040dfb2bd9e36674790bbe6bd3cd9e282709791e1e39f4745556ff96`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb6d4be5586aa6a3e9d5bfa96c810ec23e250d1416a250a34a6e93e3d4b528c`  
		Last Modified: Mon, 01 May 2017 22:58:58 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce3bbebed1e0d477754c79e0450b5a254d54552fe98e6016d459c59d5ae4d66`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f872fa0bbdc91ee3f5e3d9e457a3fdd967466c15851240753635c4cb9c1837ec`  
		Last Modified: Mon, 01 May 2017 22:59:01 GMT  
		Size: 53.0 MB (53026069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb5918d7c3b3becc7245106fc78259830c7763df51b755133a296becc2ce41a`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e585f2b2bed1066fcebbbe146beaf13e1a9523b7bfbaa6a6531133a8b8382c8`  
		Last Modified: Mon, 01 May 2017 22:58:49 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186a58be3a4fbf42219a59930adb1f1c1c0b7e601b61ee0dc03c30f308faf0fc`  
		Last Modified: Mon, 01 May 2017 22:58:50 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.4`

```console
$ docker pull mongo@sha256:c4bc4644b967a4b58022a79cf5c9afcd25ed08180c958a74df57b7753cfc8649
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.4` - linux; amd64

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

## `mongo:3.4.4-windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:6840e8e7cd705d885ed656b861276528db648d0f7e19bf1e40c222375917818b
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5294943213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c541a6de9b95a72e1f45ae2dd36f5681b65f54f774bb6741b7da312125ae959`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 01 May 2017 22:57:00 GMT
ENV MONGO_VERSION=3.4.4
# Mon, 01 May 2017 22:57:04 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.4-signed.msi
# Mon, 01 May 2017 22:57:08 GMT
ENV MONGO_DOWNLOAD_SHA256=73d1121a1fe58fe29c4fb7b6f4b79a4d33afa666f357960419ef83635396f977
# Mon, 01 May 2017 22:58:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 01 May 2017 22:58:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 01 May 2017 22:58:27 GMT
EXPOSE 27017/tcp
# Mon, 01 May 2017 22:58:31 GMT
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
	-	`sha256:6737f2d4d0095f3f726b53644fcbe4e321278cb38017d1b2680e83c033e36566`  
		Last Modified: Mon, 01 May 2017 22:59:24 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05964937332d767770187560f9a9a92fabf044d08ce4929b2b73a706bf4f1d0a`  
		Last Modified: Mon, 01 May 2017 22:59:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d499998f0230a0efc3fcf05ffce28fd1b1ae644a8fb8573070d9df38c25a4`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e1fb15d4397eeeba8b8563471e53e481b6b0f06f88fd6c2744afd6a304c58f`  
		Last Modified: Mon, 01 May 2017 22:59:27 GMT  
		Size: 63.0 MB (63046760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef86eab5c0d6bae2d78e3dd5fa47cf80285f5a8495b56227f13c1a4467592`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05a386e9a24ae5f0fc107d023c57378343c74cdb1d568f3b07a801d8c42ad8e`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f22a2c0ce08be71654d48281bcf9f8f209531d677dcb779035efed2a2bf728d`  
		Last Modified: Mon, 01 May 2017 22:59:14 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.8`

**does not exist** (yet?)

## `mongo:3.5`

```console
$ docker pull mongo@sha256:1a70f9cfc76786b442f6567c7b982eeca7eb0813c7634abd6f7a3da42556c952
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133546603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb3e6bd4bc4c8c4ff804fa24a56315230c080504ed6b22b46b0d750809d5c54`
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
# Tue, 23 May 2017 22:40:04 GMT
ENV MONGO_VERSION=3.5.7
# Tue, 23 May 2017 22:40:04 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 23 May 2017 22:40:06 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 23 May 2017 22:40:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 23 May 2017 22:40:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 23 May 2017 22:40:28 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:40:29 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 23 May 2017 22:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:40:31 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:40:32 GMT
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
	-	`sha256:a3b787a8900e4faaa5cf18c918132803e689d1d3e37f75e8482fbf119a69bac1`  
		Last Modified: Tue, 23 May 2017 22:44:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9e8a66628e0154592468634d8f69d8ca1b6537b7e93170b143ac357b51fbb4`  
		Last Modified: Tue, 23 May 2017 22:44:27 GMT  
		Size: 99.6 MB (99609902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f8ed9c0a46b5ef08d656fc332bb01d1074f5e240a3e0e0bbfcfd5cd65f573`  
		Last Modified: Tue, 23 May 2017 22:44:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3ed1926436a1c68184e9a33d52737cebef46a0360e5cbc07566dbec5d5d196`  
		Last Modified: Tue, 23 May 2017 22:44:11 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:1a70f9cfc76786b442f6567c7b982eeca7eb0813c7634abd6f7a3da42556c952
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133546603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb3e6bd4bc4c8c4ff804fa24a56315230c080504ed6b22b46b0d750809d5c54`
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
# Tue, 23 May 2017 22:40:04 GMT
ENV MONGO_VERSION=3.5.7
# Tue, 23 May 2017 22:40:04 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 23 May 2017 22:40:06 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 23 May 2017 22:40:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 23 May 2017 22:40:27 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 23 May 2017 22:40:28 GMT
VOLUME [/data/db /data/configdb]
# Tue, 23 May 2017 22:40:29 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Tue, 23 May 2017 22:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 22:40:31 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:40:32 GMT
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
	-	`sha256:a3b787a8900e4faaa5cf18c918132803e689d1d3e37f75e8482fbf119a69bac1`  
		Last Modified: Tue, 23 May 2017 22:44:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9e8a66628e0154592468634d8f69d8ca1b6537b7e93170b143ac357b51fbb4`  
		Last Modified: Tue, 23 May 2017 22:44:27 GMT  
		Size: 99.6 MB (99609902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2f8ed9c0a46b5ef08d656fc332bb01d1074f5e240a3e0e0bbfcfd5cd65f573`  
		Last Modified: Tue, 23 May 2017 22:44:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3ed1926436a1c68184e9a33d52737cebef46a0360e5cbc07566dbec5d5d196`  
		Last Modified: Tue, 23 May 2017 22:44:11 GMT  
		Size: 3.2 KB (3169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.8-windowsservercore`

```console
$ docker pull mongo@sha256:4e698120fe7fd1a1b1024c33dd69d95ba4d87c824567e76c67003d0c1e933dee
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295358253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0e0a460e6b77853bf9942e2e9b970f9d0282fa344b1952ca2c6a937983cc8c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:40:10 GMT
ENV MONGO_VERSION=3.5.7
# Tue, 23 May 2017 22:40:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.7-signed.msi
# Tue, 23 May 2017 22:40:17 GMT
ENV MONGO_DOWNLOAD_SHA256=667106ca906321e72fc62b0cdb8283c4d9c59812c5cba1e990b21803e63f13ac
# Tue, 23 May 2017 22:41:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:41:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:41:30 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:41:33 GMT
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
	-	`sha256:e10aed785eaa7ab2dca27913a82844bb1ba12c9ea3afb2cedf07eee8afe7b516`  
		Last Modified: Tue, 23 May 2017 22:42:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ad82ec603c9bf4126eb7c95a90658eb32d07bf9f4766b179699e20699ebff3`  
		Last Modified: Tue, 23 May 2017 22:42:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee03d736e00d3f418f76c5c303d54133e3ce9a34190061ab66d391814eadfde`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a9ab8ac6e4839ef509bdf7ab65630dc7e6713b4cc5165240f43ce48550b1a3`  
		Last Modified: Tue, 23 May 2017 22:42:28 GMT  
		Size: 63.5 MB (63461799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6c9d9c3428094c94acae48fa4817f4d6afb0d8bb677cf0d3255c29b95112fd`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce8a4871048e1974dadae2f3f1d68104e1432743570cc5de5d58415ef90d343`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d5aecc7f190a7ee3733c53b5b1b8276d407e11e9778ed17ca56030a7b0b485`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:4e698120fe7fd1a1b1024c33dd69d95ba4d87c824567e76c67003d0c1e933dee
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295358253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0e0a460e6b77853bf9942e2e9b970f9d0282fa344b1952ca2c6a937983cc8c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:40:10 GMT
ENV MONGO_VERSION=3.5.7
# Tue, 23 May 2017 22:40:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.7-signed.msi
# Tue, 23 May 2017 22:40:17 GMT
ENV MONGO_DOWNLOAD_SHA256=667106ca906321e72fc62b0cdb8283c4d9c59812c5cba1e990b21803e63f13ac
# Tue, 23 May 2017 22:41:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:41:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:41:30 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:41:33 GMT
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
	-	`sha256:e10aed785eaa7ab2dca27913a82844bb1ba12c9ea3afb2cedf07eee8afe7b516`  
		Last Modified: Tue, 23 May 2017 22:42:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ad82ec603c9bf4126eb7c95a90658eb32d07bf9f4766b179699e20699ebff3`  
		Last Modified: Tue, 23 May 2017 22:42:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee03d736e00d3f418f76c5c303d54133e3ce9a34190061ab66d391814eadfde`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a9ab8ac6e4839ef509bdf7ab65630dc7e6713b4cc5165240f43ce48550b1a3`  
		Last Modified: Tue, 23 May 2017 22:42:28 GMT  
		Size: 63.5 MB (63461799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6c9d9c3428094c94acae48fa4817f4d6afb0d8bb677cf0d3255c29b95112fd`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce8a4871048e1974dadae2f3f1d68104e1432743570cc5de5d58415ef90d343`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d5aecc7f190a7ee3733c53b5b1b8276d407e11e9778ed17ca56030a7b0b485`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:4e698120fe7fd1a1b1024c33dd69d95ba4d87c824567e76c67003d0c1e933dee
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5295358253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0e0a460e6b77853bf9942e2e9b970f9d0282fa344b1952ca2c6a937983cc8c`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Tue, 18 Apr 2017 17:08:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 23 May 2017 22:40:10 GMT
ENV MONGO_VERSION=3.5.7
# Tue, 23 May 2017 22:40:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.7-signed.msi
# Tue, 23 May 2017 22:40:17 GMT
ENV MONGO_DOWNLOAD_SHA256=667106ca906321e72fc62b0cdb8283c4d9c59812c5cba1e990b21803e63f13ac
# Tue, 23 May 2017 22:41:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 23 May 2017 22:41:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 23 May 2017 22:41:30 GMT
EXPOSE 27017/tcp
# Tue, 23 May 2017 22:41:33 GMT
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
	-	`sha256:e10aed785eaa7ab2dca27913a82844bb1ba12c9ea3afb2cedf07eee8afe7b516`  
		Last Modified: Tue, 23 May 2017 22:42:26 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ad82ec603c9bf4126eb7c95a90658eb32d07bf9f4766b179699e20699ebff3`  
		Last Modified: Tue, 23 May 2017 22:42:23 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee03d736e00d3f418f76c5c303d54133e3ce9a34190061ab66d391814eadfde`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a9ab8ac6e4839ef509bdf7ab65630dc7e6713b4cc5165240f43ce48550b1a3`  
		Last Modified: Tue, 23 May 2017 22:42:28 GMT  
		Size: 63.5 MB (63461799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6c9d9c3428094c94acae48fa4817f4d6afb0d8bb677cf0d3255c29b95112fd`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce8a4871048e1974dadae2f3f1d68104e1432743570cc5de5d58415ef90d343`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d5aecc7f190a7ee3733c53b5b1b8276d407e11e9778ed17ca56030a7b0b485`  
		Last Modified: Tue, 23 May 2017 22:42:16 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
