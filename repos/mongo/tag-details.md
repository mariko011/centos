<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
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
-	[`mongo:3.5.6`](#mongo356)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.6-windowsservercore`](#mongo356-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:0f245c03e7bbca6dc8dbb15be87614f19403496cf993f757a8ef170480a62393
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84935937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630fcb9ccc508b744025672539842031dda3cf0cabfd5517b9cef6f6e30a2fc4`
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
# Tue, 09 May 2017 17:34:02 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 09 May 2017 17:34:02 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 09 May 2017 17:34:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:34:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:34:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:34:15 GMT
VOLUME [/data/db /data/configdb]
# Tue, 09 May 2017 17:34:16 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:34:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:34:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:34:19 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:34:20 GMT
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
	-	`sha256:3eadc37f66586bf0a79e3de0e955399da51305ff8240e31c5e770610d8174492`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c42bc1213b6077df53485c0a0691ac0e2fad36e34e1bf869f1d6f4684065c7`  
		Last Modified: Sat, 13 May 2017 07:09:06 GMT  
		Size: 61.7 MB (61709078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691701109759121174c3b9fe74b7d9802207d4f3181f94d1bff2e60ff9ba5493`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2fdc2c24822d812476893f51d217d1645c35920de562bd8e20ec2b391c232a`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a34f8026213a1388d01afe4487edcbdbba7a43395f898a742de1b7735e3174`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:0f245c03e7bbca6dc8dbb15be87614f19403496cf993f757a8ef170480a62393
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84935937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630fcb9ccc508b744025672539842031dda3cf0cabfd5517b9cef6f6e30a2fc4`
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
# Tue, 09 May 2017 17:34:02 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 09 May 2017 17:34:02 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 09 May 2017 17:34:04 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:34:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:34:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:34:15 GMT
VOLUME [/data/db /data/configdb]
# Tue, 09 May 2017 17:34:16 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:34:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:34:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:34:19 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:34:20 GMT
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
	-	`sha256:3eadc37f66586bf0a79e3de0e955399da51305ff8240e31c5e770610d8174492`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c42bc1213b6077df53485c0a0691ac0e2fad36e34e1bf869f1d6f4684065c7`  
		Last Modified: Sat, 13 May 2017 07:09:06 GMT  
		Size: 61.7 MB (61709078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691701109759121174c3b9fe74b7d9802207d4f3181f94d1bff2e60ff9ba5493`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2fdc2c24822d812476893f51d217d1645c35920de562bd8e20ec2b391c232a`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a34f8026213a1388d01afe4487edcbdbba7a43395f898a742de1b7735e3174`  
		Last Modified: Sat, 13 May 2017 07:08:52 GMT  
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

## `mongo:3.2.13`

```console
$ docker pull mongo@sha256:fcc481f30706c5531dface3d3cba5e26878fdb0644b4298251ddd7439930bf24
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.13` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104440906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0dfbd5ae51f223be33e5dd9ced51ccb4d174ed16a805ac476f0b76013e69bb`
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
# Tue, 09 May 2017 17:35:31 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:35:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:35:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:35:34 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:35:34 GMT
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
	-	`sha256:dc30044cbeb5b30b47a7f821dd53bb3d196ded8ae43490d1b66ea97680fb8d41`  
		Last Modified: Sat, 13 May 2017 07:09:56 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2262f1b994291e5f973bdcee6d1a647ecf498a3cb4bd417e99636fa53c0913`  
		Last Modified: Sat, 13 May 2017 07:09:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:fcc481f30706c5531dface3d3cba5e26878fdb0644b4298251ddd7439930bf24
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104440906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0dfbd5ae51f223be33e5dd9ced51ccb4d174ed16a805ac476f0b76013e69bb`
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
# Tue, 09 May 2017 17:35:31 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:35:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:35:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:35:34 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:35:34 GMT
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
	-	`sha256:dc30044cbeb5b30b47a7f821dd53bb3d196ded8ae43490d1b66ea97680fb8d41`  
		Last Modified: Sat, 13 May 2017 07:09:56 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2262f1b994291e5f973bdcee6d1a647ecf498a3cb4bd417e99636fa53c0913`  
		Last Modified: Sat, 13 May 2017 07:09:56 GMT  
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
$ docker pull mongo@sha256:2dd49be30907c901a3312f0452ba57128ca6449378cfe9d19ad01732a873d3bd
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd4809a04a1ffbebf1e703657cc21f549fc9a43de12ae3182e369b6bd5c1804`
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
# Tue, 09 May 2017 17:33:06 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:33:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:33:09 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:33:10 GMT
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
	-	`sha256:22670c2d1be4c9a6a02782ab32bb334c4751e74899807009c6ebcf9f4883a95d`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efb0cd1fb79dd818ec211043ee866c6def0756fb2be68f27c32d1a624557ac2`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:2dd49be30907c901a3312f0452ba57128ca6449378cfe9d19ad01732a873d3bd
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd4809a04a1ffbebf1e703657cc21f549fc9a43de12ae3182e369b6bd5c1804`
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
# Tue, 09 May 2017 17:33:06 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:33:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:33:09 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:33:10 GMT
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
	-	`sha256:22670c2d1be4c9a6a02782ab32bb334c4751e74899807009c6ebcf9f4883a95d`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efb0cd1fb79dd818ec211043ee866c6def0756fb2be68f27c32d1a624557ac2`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:2dd49be30907c901a3312f0452ba57128ca6449378cfe9d19ad01732a873d3bd
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd4809a04a1ffbebf1e703657cc21f549fc9a43de12ae3182e369b6bd5c1804`
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
# Tue, 09 May 2017 17:33:06 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:33:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:33:09 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:33:10 GMT
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
	-	`sha256:22670c2d1be4c9a6a02782ab32bb334c4751e74899807009c6ebcf9f4883a95d`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efb0cd1fb79dd818ec211043ee866c6def0756fb2be68f27c32d1a624557ac2`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:2dd49be30907c901a3312f0452ba57128ca6449378cfe9d19ad01732a873d3bd
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131939233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd4809a04a1ffbebf1e703657cc21f549fc9a43de12ae3182e369b6bd5c1804`
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
# Tue, 09 May 2017 17:33:06 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:33:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:33:09 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:33:10 GMT
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
	-	`sha256:22670c2d1be4c9a6a02782ab32bb334c4751e74899807009c6ebcf9f4883a95d`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efb0cd1fb79dd818ec211043ee866c6def0756fb2be68f27c32d1a624557ac2`  
		Last Modified: Sat, 13 May 2017 07:11:01 GMT  
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

## `mongo:3.5.6`

```console
$ docker pull mongo@sha256:5fc56dcd4bb58ef8fa521a4842ef8642f77c63633b8ad9178d6da2f76b5e148a
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133223184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cdfbb927b1acf4c2c27b6effe1cab8a525e0b1399318f302f13b1198867e82`
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
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 09 May 2017 17:35:59 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 09 May 2017 17:36:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:36:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:36:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:36:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 09 May 2017 17:36:22 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:36:25 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:36:26 GMT
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
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f68d6e98a03cf32941fc73401eafadef605a82a1f28dfd557b20d1ce018bf3`  
		Last Modified: Sat, 13 May 2017 07:12:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca665340b32fa8d4fb26fd4c30df977e81bf1737f0ce4754c8dea062631f9124`  
		Last Modified: Sat, 13 May 2017 07:13:18 GMT  
		Size: 99.3 MB (99286618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604ee57783d239c9c529ddbd2c59e1b868c6e66ded1ef23e0f585d5fc74f5115`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf725bba9efaf723ef0082bc2583bf9e0e23d3e249bb6da7a5bb164fc315ecc`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d88cb8980e6c5b377cd7eb29af5e64a0c3a69da611e20518daa01b10d58f6a`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:5fc56dcd4bb58ef8fa521a4842ef8642f77c63633b8ad9178d6da2f76b5e148a
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133223184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cdfbb927b1acf4c2c27b6effe1cab8a525e0b1399318f302f13b1198867e82`
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
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 09 May 2017 17:35:59 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 09 May 2017 17:36:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:36:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:36:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:36:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 09 May 2017 17:36:22 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:36:25 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:36:26 GMT
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
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f68d6e98a03cf32941fc73401eafadef605a82a1f28dfd557b20d1ce018bf3`  
		Last Modified: Sat, 13 May 2017 07:12:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca665340b32fa8d4fb26fd4c30df977e81bf1737f0ce4754c8dea062631f9124`  
		Last Modified: Sat, 13 May 2017 07:13:18 GMT  
		Size: 99.3 MB (99286618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604ee57783d239c9c529ddbd2c59e1b868c6e66ded1ef23e0f585d5fc74f5115`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf725bba9efaf723ef0082bc2583bf9e0e23d3e249bb6da7a5bb164fc315ecc`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d88cb8980e6c5b377cd7eb29af5e64a0c3a69da611e20518daa01b10d58f6a`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:5fc56dcd4bb58ef8fa521a4842ef8642f77c63633b8ad9178d6da2f76b5e148a
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133223184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cdfbb927b1acf4c2c27b6effe1cab8a525e0b1399318f302f13b1198867e82`
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
# Tue, 09 May 2017 17:35:54 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 09 May 2017 17:35:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_MAJOR=3.5
# Tue, 09 May 2017 17:35:58 GMT
ENV MONGO_VERSION=3.5.6
# Tue, 09 May 2017 17:35:59 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Tue, 09 May 2017 17:36:00 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 09 May 2017 17:36:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 09 May 2017 17:36:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 09 May 2017 17:36:21 GMT
VOLUME [/data/db /data/configdb]
# Tue, 09 May 2017 17:36:22 GMT
COPY file:7c445c3da5fdc0495368be2c40f1d2a4cd7590cf458336174c54b078324bb71f in /usr/local/bin/ 
# Tue, 09 May 2017 17:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 09 May 2017 17:36:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:36:25 GMT
EXPOSE 27017/tcp
# Tue, 09 May 2017 17:36:26 GMT
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
	-	`sha256:c610d906130be974c9b890b5b8f88fe603a8cd6f43e154eae1d3ed3b6c27cbf4`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f68d6e98a03cf32941fc73401eafadef605a82a1f28dfd557b20d1ce018bf3`  
		Last Modified: Sat, 13 May 2017 07:12:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca665340b32fa8d4fb26fd4c30df977e81bf1737f0ce4754c8dea062631f9124`  
		Last Modified: Sat, 13 May 2017 07:13:18 GMT  
		Size: 99.3 MB (99286618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604ee57783d239c9c529ddbd2c59e1b868c6e66ded1ef23e0f585d5fc74f5115`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf725bba9efaf723ef0082bc2583bf9e0e23d3e249bb6da7a5bb164fc315ecc`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d88cb8980e6c5b377cd7eb29af5e64a0c3a69da611e20518daa01b10d58f6a`  
		Last Modified: Sat, 13 May 2017 07:12:55 GMT  
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
