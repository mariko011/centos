<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3.0.14`](#mongo3014)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.14-windowsservercore`](#mongo3014-windowsservercore)
-	[`mongo:3.0-windowsservercore`](#mongo30-windowsservercore)
-	[`mongo:3.2.12`](#mongo3212)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.12-windowsservercore`](#mongo3212-windowsservercore)
-	[`mongo:3.2-windowsservercore`](#mongo32-windowsservercore)
-	[`mongo:3.4.3`](#mongo343)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.3-windowsservercore`](#mongo343-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:ead68da762925436db9723f084ee6c4a786fe21c728fbd81bc3a0876770f4736
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82784085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8fe220a6f5280c30a32102ae809439e5694a6ab9c0731052e2c150bc1b8702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:41 GMT
ADD file:6717f42bcda448be463d99de27eca930fa0cb829d374517d6c2c29e570ae584b in / 
# Tue, 21 Mar 2017 18:36:56 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 24 Mar 2017 00:01:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 24 Mar 2017 00:01:22 GMT
ENV GOSU_VERSION=1.7
# Fri, 24 Mar 2017 00:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 24 Mar 2017 00:01:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 24 Mar 2017 00:01:39 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 24 Mar 2017 00:01:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 24 Mar 2017 00:01:41 GMT
ENV MONGO_MAJOR=3.0
# Fri, 24 Mar 2017 00:01:59 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 24 Mar 2017 00:02:00 GMT
ENV MONGO_PACKAGE=mongodb-org
# Fri, 24 Mar 2017 00:02:01 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 24 Mar 2017 00:02:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 24 Mar 2017 00:02:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 24 Mar 2017 00:02:22 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:02:23 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:02:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:02:42 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:02:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2c72335a9389415560dbbecd037cf8f6ed6faf43b91f2ac0b7be5bc30c57e285`  
		Last Modified: Tue, 21 Mar 2017 18:54:09 GMT  
		Size: 18.9 MB (18875874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab5399de1bd7911f5518c143c3c2d91c361d2c19499f722d2d4d78056f7fcf1`  
		Last Modified: Thu, 23 Mar 2017 22:05:20 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a17e524f5f2f7be37ba62c52de7ac14e9a41761be93f97c46cf0f4b74f4160`  
		Last Modified: Thu, 23 Mar 2017 22:05:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a2a6aa0c634a2d139b3a3bad65cf371e03a0c169f8b60637de368f4093d487`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 556.4 KB (556432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434113df23bbf676af72521541cdbe94516c1233be59c8fb886680c3ded61380`  
		Last Modified: Fri, 24 Mar 2017 00:04:08 GMT  
		Size: 1.2 MB (1249227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e3749d3c4e8f045f8fe673ac4460925bd5beb920c2b79075531c5cc965e2b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7c32a4e464edb55b25fc113744a0f80db36365cfc2ae52791b863fb0efe1b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5191a9f084c557065575c15645b205382c6fc6157dcef96b06ac9561ab35d8`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687a879410ee74dd2088f527fce5446fec357f434f63ba22452a1acaa95cb4f4`  
		Last Modified: Fri, 24 Mar 2017 00:04:30 GMT  
		Size: 62.1 MB (62095878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bf7fa1c15ff07895ad59318cadd4f8d5d9b1ecf5c5cbd8d758f18a724fbd78`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c413e3c8627768db8e634a215ce366c38c5d84a77851ca04bfa5c96be86f2`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897fd9a26865e734f624e1dee4e742a111b5eb3c0b052caa223d9ebb56ec3bf`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:ead68da762925436db9723f084ee6c4a786fe21c728fbd81bc3a0876770f4736
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82784085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8fe220a6f5280c30a32102ae809439e5694a6ab9c0731052e2c150bc1b8702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:41 GMT
ADD file:6717f42bcda448be463d99de27eca930fa0cb829d374517d6c2c29e570ae584b in / 
# Tue, 21 Mar 2017 18:36:56 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:58 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:59 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Fri, 24 Mar 2017 00:01:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 24 Mar 2017 00:01:22 GMT
ENV GOSU_VERSION=1.7
# Fri, 24 Mar 2017 00:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 24 Mar 2017 00:01:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 24 Mar 2017 00:01:39 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Fri, 24 Mar 2017 00:01:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 24 Mar 2017 00:01:41 GMT
ENV MONGO_MAJOR=3.0
# Fri, 24 Mar 2017 00:01:59 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 24 Mar 2017 00:02:00 GMT
ENV MONGO_PACKAGE=mongodb-org
# Fri, 24 Mar 2017 00:02:01 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Fri, 24 Mar 2017 00:02:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 24 Mar 2017 00:02:21 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 24 Mar 2017 00:02:22 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:02:23 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:02:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:02:42 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:02:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2c72335a9389415560dbbecd037cf8f6ed6faf43b91f2ac0b7be5bc30c57e285`  
		Last Modified: Tue, 21 Mar 2017 18:54:09 GMT  
		Size: 18.9 MB (18875874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab5399de1bd7911f5518c143c3c2d91c361d2c19499f722d2d4d78056f7fcf1`  
		Last Modified: Thu, 23 Mar 2017 22:05:20 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a17e524f5f2f7be37ba62c52de7ac14e9a41761be93f97c46cf0f4b74f4160`  
		Last Modified: Thu, 23 Mar 2017 22:05:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a2a6aa0c634a2d139b3a3bad65cf371e03a0c169f8b60637de368f4093d487`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 556.4 KB (556432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434113df23bbf676af72521541cdbe94516c1233be59c8fb886680c3ded61380`  
		Last Modified: Fri, 24 Mar 2017 00:04:08 GMT  
		Size: 1.2 MB (1249227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e3749d3c4e8f045f8fe673ac4460925bd5beb920c2b79075531c5cc965e2b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7c32a4e464edb55b25fc113744a0f80db36365cfc2ae52791b863fb0efe1b`  
		Last Modified: Fri, 24 Mar 2017 00:04:07 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5191a9f084c557065575c15645b205382c6fc6157dcef96b06ac9561ab35d8`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687a879410ee74dd2088f527fce5446fec357f434f63ba22452a1acaa95cb4f4`  
		Last Modified: Fri, 24 Mar 2017 00:04:30 GMT  
		Size: 62.1 MB (62095878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bf7fa1c15ff07895ad59318cadd4f8d5d9b1ecf5c5cbd8d758f18a724fbd78`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c413e3c8627768db8e634a215ce366c38c5d84a77851ca04bfa5c96be86f2`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897fd9a26865e734f624e1dee4e742a111b5eb3c0b052caa223d9ebb56ec3bf`  
		Last Modified: Fri, 24 Mar 2017 00:04:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.14-windowsservercore`

```console
$ docker pull mongo@sha256:df73e9d0c559923a2030d6abd7c594533eca66e0bc0719e39e5a9a70a4a51725
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5029884495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4606a0a76ea86f59076239b287c8b2985dd04fbee6741da586097cb39c45baba`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:34:52 GMT
ENV MONGO_VERSION=3.0.14
# Wed, 01 Feb 2017 19:34:55 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Wed, 01 Feb 2017 19:34:59 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Wed, 01 Feb 2017 19:36:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:36:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:36:37 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:36:42 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21493703e68eb511ab660b4dfe2431032a7781b1a9a8162b84b74b7ab6515d2b`  
		Last Modified: Wed, 01 Feb 2017 19:39:52 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31d33b3157ecfbb8c5970dbe37cfb648d0863bba82ba558521b79f65196734`  
		Last Modified: Wed, 01 Feb 2017 19:39:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a09d687b6001ff1fe64e8e142aec05215de44db454385bf18653182e5e985b4`  
		Last Modified: Wed, 01 Feb 2017 19:39:45 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6220cc336a9f51640133f7b3c89811a6b19ab1016ff7861cde5b00d6c5682ed1`  
		Last Modified: Wed, 01 Feb 2017 19:39:53 GMT  
		Size: 46.7 MB (46745005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b9027e210807d0156126a62098495c3e2a1accd08a1332bc997764a477250c`  
		Last Modified: Wed, 01 Feb 2017 19:39:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41996cdc4228fb8610c89abb3e40b10e873833e3dfc975b5203f21cf5ddd2b41`  
		Last Modified: Wed, 01 Feb 2017 19:39:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f1ad10ba5ea30a8e6657101b96984e3db3dc8a4896bb040d0f0703236944aa`  
		Last Modified: Wed, 01 Feb 2017 19:39:43 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:df73e9d0c559923a2030d6abd7c594533eca66e0bc0719e39e5a9a70a4a51725
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5029884495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4606a0a76ea86f59076239b287c8b2985dd04fbee6741da586097cb39c45baba`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:34:52 GMT
ENV MONGO_VERSION=3.0.14
# Wed, 01 Feb 2017 19:34:55 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Wed, 01 Feb 2017 19:34:59 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Wed, 01 Feb 2017 19:36:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:36:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:36:37 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:36:42 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21493703e68eb511ab660b4dfe2431032a7781b1a9a8162b84b74b7ab6515d2b`  
		Last Modified: Wed, 01 Feb 2017 19:39:52 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31d33b3157ecfbb8c5970dbe37cfb648d0863bba82ba558521b79f65196734`  
		Last Modified: Wed, 01 Feb 2017 19:39:52 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a09d687b6001ff1fe64e8e142aec05215de44db454385bf18653182e5e985b4`  
		Last Modified: Wed, 01 Feb 2017 19:39:45 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6220cc336a9f51640133f7b3c89811a6b19ab1016ff7861cde5b00d6c5682ed1`  
		Last Modified: Wed, 01 Feb 2017 19:39:53 GMT  
		Size: 46.7 MB (46745005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b9027e210807d0156126a62098495c3e2a1accd08a1332bc997764a477250c`  
		Last Modified: Wed, 01 Feb 2017 19:39:43 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41996cdc4228fb8610c89abb3e40b10e873833e3dfc975b5203f21cf5ddd2b41`  
		Last Modified: Wed, 01 Feb 2017 19:39:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f1ad10ba5ea30a8e6657101b96984e3db3dc8a4896bb040d0f0703236944aa`  
		Last Modified: Wed, 01 Feb 2017 19:39:43 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.12`

```console
$ docker pull mongo@sha256:d9ee4276a6b854a80fbd193ff80ae42ca39a48b445cf233333bf9596d545f467
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.12` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101732359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3c6d0ee8f25fefac93b68c0babfe6e03c40ae967066dce8359b3f120501c69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:02:41 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 21 Mar 2017 21:02:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_MAJOR=3.2
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 21 Mar 2017 21:02:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:02:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:02:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:02:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:02:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:02:44 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:03:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:03:04 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:03:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2dbf8c088e014440ec07cfd82136053eebf545040ba57be2b64aea5edd31f`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 3.1 KB (3068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d3c3d5d65a9e25d60fd7db268ed7c39877ffcf463546a686a97472d2c207ac`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac29807ce935bb91a0b43dc73c9c0ee9ed52ea782959a1bc075b3466502d3b`  
		Last Modified: Thu, 23 Mar 2017 22:06:47 GMT  
		Size: 70.6 MB (70626367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b043a6d579aec70370e8b958a9a2b370a17107eea0eeca2f1f94d357e3857d`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88da01af79c5981771519e493f6f617c2f2e3107a9b97d1cc5c1019a1a6ac`  
		Last Modified: Fri, 24 Mar 2017 00:05:37 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5d42d15c4f356f735ae8d16b3775770a45ed77c2ecfffb604df309ef3c37c`  
		Last Modified: Fri, 24 Mar 2017 00:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:d9ee4276a6b854a80fbd193ff80ae42ca39a48b445cf233333bf9596d545f467
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101732359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3c6d0ee8f25fefac93b68c0babfe6e03c40ae967066dce8359b3f120501c69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:02:41 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 21 Mar 2017 21:02:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_MAJOR=3.2
# Tue, 21 Mar 2017 21:02:43 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 21 Mar 2017 21:02:44 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:02:45 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:02:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:02:58 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:02:59 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:02:44 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:03:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:03:04 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:03:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2dbf8c088e014440ec07cfd82136053eebf545040ba57be2b64aea5edd31f`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 3.1 KB (3068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d3c3d5d65a9e25d60fd7db268ed7c39877ffcf463546a686a97472d2c207ac`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac29807ce935bb91a0b43dc73c9c0ee9ed52ea782959a1bc075b3466502d3b`  
		Last Modified: Thu, 23 Mar 2017 22:06:47 GMT  
		Size: 70.6 MB (70626367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b043a6d579aec70370e8b958a9a2b370a17107eea0eeca2f1f94d357e3857d`  
		Last Modified: Thu, 23 Mar 2017 22:06:22 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c88da01af79c5981771519e493f6f617c2f2e3107a9b97d1cc5c1019a1a6ac`  
		Last Modified: Fri, 24 Mar 2017 00:05:37 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5d42d15c4f356f735ae8d16b3775770a45ed77c2ecfffb604df309ef3c37c`  
		Last Modified: Fri, 24 Mar 2017 00:05:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.12-windowsservercore`

```console
$ docker pull mongo@sha256:fe8c68819c15e26f6f3a628a608eefd11d115fc471a08227011c9fd8db15a572
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.12-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5040300320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f7991a11ceb588523f050060a51011110ffb3a35d442a67d572c5460c4f0b1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:36:46 GMT
ENV MONGO_VERSION=3.2.12
# Wed, 01 Feb 2017 19:36:49 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.12-signed.msi
# Wed, 01 Feb 2017 19:36:53 GMT
ENV MONGO_DOWNLOAD_SHA256=9b8312e067c076808b6c8fd91e327b13caa0286ae21c1221cf29076ad110b116
# Wed, 01 Feb 2017 19:37:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:37:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:37:58 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:38:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac9ce96d25e022b03036646d272993aae859b5266a54ea827d454e840abc6c8`  
		Last Modified: Wed, 01 Feb 2017 19:40:15 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e8f9c8d4637660ff7ff31dad0927cf8c867f30ccb8d5117e39cae94a6a48b4`  
		Last Modified: Wed, 01 Feb 2017 19:40:15 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae4ea3da5ff34f3f3c85de1d8dae17827be663af7085b5562a31675f9f6e6cc`  
		Last Modified: Wed, 01 Feb 2017 19:40:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e4814c0513dc2bd42e3e3712d6c60518e38e6099e40049df536c602492c040`  
		Last Modified: Wed, 01 Feb 2017 19:40:19 GMT  
		Size: 57.2 MB (57160798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5738be2717156fa1a1d576a42a8ebfc1b1785cb7144b8ec1efe382dad0ad571c`  
		Last Modified: Wed, 01 Feb 2017 19:40:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa53397516cdd625e308057ebea682074269d43a7dad8d217d53a5e30119617`  
		Last Modified: Wed, 01 Feb 2017 19:40:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb2d266914b97af00046c4b9f0f93be2ef153f5802123e4a812887cec4020de`  
		Last Modified: Wed, 01 Feb 2017 19:40:06 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:fe8c68819c15e26f6f3a628a608eefd11d115fc471a08227011c9fd8db15a572
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 GB (5040300320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f7991a11ceb588523f050060a51011110ffb3a35d442a67d572c5460c4f0b1`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:36:46 GMT
ENV MONGO_VERSION=3.2.12
# Wed, 01 Feb 2017 19:36:49 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.12-signed.msi
# Wed, 01 Feb 2017 19:36:53 GMT
ENV MONGO_DOWNLOAD_SHA256=9b8312e067c076808b6c8fd91e327b13caa0286ae21c1221cf29076ad110b116
# Wed, 01 Feb 2017 19:37:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:37:53 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:37:58 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:38:02 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac9ce96d25e022b03036646d272993aae859b5266a54ea827d454e840abc6c8`  
		Last Modified: Wed, 01 Feb 2017 19:40:15 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e8f9c8d4637660ff7ff31dad0927cf8c867f30ccb8d5117e39cae94a6a48b4`  
		Last Modified: Wed, 01 Feb 2017 19:40:15 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae4ea3da5ff34f3f3c85de1d8dae17827be663af7085b5562a31675f9f6e6cc`  
		Last Modified: Wed, 01 Feb 2017 19:40:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e4814c0513dc2bd42e3e3712d6c60518e38e6099e40049df536c602492c040`  
		Last Modified: Wed, 01 Feb 2017 19:40:19 GMT  
		Size: 57.2 MB (57160798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5738be2717156fa1a1d576a42a8ebfc1b1785cb7144b8ec1efe382dad0ad571c`  
		Last Modified: Wed, 01 Feb 2017 19:40:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa53397516cdd625e308057ebea682074269d43a7dad8d217d53a5e30119617`  
		Last Modified: Wed, 01 Feb 2017 19:40:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb2d266914b97af00046c4b9f0f93be2ef153f5802123e4a812887cec4020de`  
		Last Modified: Wed, 01 Feb 2017 19:40:06 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.3`

**does not exist** (yet?)

## `mongo:3.4`

```console
$ docker pull mongo@sha256:8fa9ae74c30020bfb193e9abb327e92c3920af70e72a114da4373c4cd868fbd5
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128595919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc602c0b7fe7beee580533fe9ae610d1abefb0f463a45145b9283da5792a4f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 21:01:35 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:01:36 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:01:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:01:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:01:53 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:03:23 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:03:43 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:03:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5292787098db728afcaf7a1d506b32c7179b3802c435346b686d248faa78e`  
		Last Modified: Thu, 23 Mar 2017 22:07:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c9f4827f3db6858274542e2f6afd4147cc8c8706b0786b18b19a6bdd80166d`  
		Last Modified: Thu, 23 Mar 2017 22:08:01 GMT  
		Size: 97.5 MB (97491576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ce0b7433f191650aca300c4a745c33b96050642370c3b7596cfa4e24693b1a`  
		Last Modified: Thu, 23 Mar 2017 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a23c7b7039e73346de9612f2da6675547e8aca7056742b3ccbd590c25227a89`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7405cad42469280894b90ced020948a0d2b6b7461c28f35eb6991d7e09a0a256`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:8fa9ae74c30020bfb193e9abb327e92c3920af70e72a114da4373c4cd868fbd5
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128595919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc602c0b7fe7beee580533fe9ae610d1abefb0f463a45145b9283da5792a4f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 21:01:35 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:01:36 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:01:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:01:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:01:53 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:03:23 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:03:43 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:03:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5292787098db728afcaf7a1d506b32c7179b3802c435346b686d248faa78e`  
		Last Modified: Thu, 23 Mar 2017 22:07:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c9f4827f3db6858274542e2f6afd4147cc8c8706b0786b18b19a6bdd80166d`  
		Last Modified: Thu, 23 Mar 2017 22:08:01 GMT  
		Size: 97.5 MB (97491576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ce0b7433f191650aca300c4a745c33b96050642370c3b7596cfa4e24693b1a`  
		Last Modified: Thu, 23 Mar 2017 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a23c7b7039e73346de9612f2da6675547e8aca7056742b3ccbd590c25227a89`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7405cad42469280894b90ced020948a0d2b6b7461c28f35eb6991d7e09a0a256`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:8fa9ae74c30020bfb193e9abb327e92c3920af70e72a114da4373c4cd868fbd5
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128595919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc602c0b7fe7beee580533fe9ae610d1abefb0f463a45145b9283da5792a4f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 21 Mar 2017 18:29:27 GMT
ADD file:e4f7d6021f352eb149beb78089ba282fa724bf6dcee44f0c91365b05c77653ee in / 
# Tue, 21 Mar 2017 18:29:40 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 21:01:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 21:01:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:01:13 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 21:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 21:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 21:01:32 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 21:01:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 21:01:34 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 21:01:35 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 21:01:36 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 21:01:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 21:01:52 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 21:01:53 GMT
VOLUME [/data/db /data/configdb]
# Fri, 24 Mar 2017 00:03:23 GMT
COPY file:91ba68294f9498944a8b953f5d266250a3035f0ed1b365cc83bb4fe4a752455c in /usr/local/bin/ 
# Fri, 24 Mar 2017 00:03:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 24 Mar 2017 00:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 24 Mar 2017 00:03:43 GMT
EXPOSE 27017/tcp
# Fri, 24 Mar 2017 00:03:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:e45e882ed7983f26db4ec95ac92166ea507ab08e56a7204612868c5ec3b55d90`  
		Last Modified: Tue, 21 Mar 2017 18:40:44 GMT  
		Size: 29.6 MB (29600032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03f965932904a3f9223c97b5fc08d264b4379b3b6140e7341fd87c24b79a75c`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90df9ef9b571b699f6da9b42824f06bd0123a0f43d1f381247b0b1d1b45a9193`  
		Last Modified: Thu, 23 Mar 2017 22:06:26 GMT  
		Size: 208.8 KB (208764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a647e09745f6bb63a5c7e5d4b011e5acf9be6d34b46b4f54a172f9c0e5b5be39`  
		Last Modified: Thu, 23 Mar 2017 22:06:25 GMT  
		Size: 1.3 MB (1289311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b394c03fdf0bf796730ad1d5de55d57c65e25fda4b2a2b2b645120cc13f34b3a`  
		Last Modified: Thu, 23 Mar 2017 22:06:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d72a1938bc17db388dfd2eb2b462af2b360770f2966b005759a2f78fe58b6`  
		Last Modified: Thu, 23 Mar 2017 22:07:34 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5292787098db728afcaf7a1d506b32c7179b3802c435346b686d248faa78e`  
		Last Modified: Thu, 23 Mar 2017 22:07:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c9f4827f3db6858274542e2f6afd4147cc8c8706b0786b18b19a6bdd80166d`  
		Last Modified: Thu, 23 Mar 2017 22:08:01 GMT  
		Size: 97.5 MB (97491576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ce0b7433f191650aca300c4a745c33b96050642370c3b7596cfa4e24693b1a`  
		Last Modified: Thu, 23 Mar 2017 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a23c7b7039e73346de9612f2da6675547e8aca7056742b3ccbd590c25227a89`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7405cad42469280894b90ced020948a0d2b6b7461c28f35eb6991d7e09a0a256`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.3-windowsservercore`

**does not exist** (yet?)

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:90d80c5fdc534118c476edf158ce1d814325b2e6300a8573d7e1c2c2a8ad8b4a
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5050080913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce615778458a1fc587ba51e920671cbacf7368a70d6104d549d8988fb1790070`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:38:07 GMT
ENV MONGO_VERSION=3.4.1
# Wed, 01 Feb 2017 19:38:11 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Wed, 01 Feb 2017 19:38:14 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Wed, 01 Feb 2017 19:39:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:39:20 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:39:25 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:39:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb40b5653725df89a50de47b1181f20f363d95e5012e4f8ee7033fdcba94db`  
		Last Modified: Wed, 01 Feb 2017 19:40:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd302c5a9befab7bc71e4a6f5ea68e115f2f90b46a67120b83d88f32655ca2d8`  
		Last Modified: Wed, 01 Feb 2017 19:40:38 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7727ae324d45b653fe1327e9664eccae3f308ba105278c5e36f5af820eaae3c1`  
		Last Modified: Wed, 01 Feb 2017 19:40:32 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc790f6d18c6514292b9f5d1ff0dfc70a77273a4e5531ac89077f49748114b7`  
		Last Modified: Wed, 01 Feb 2017 19:40:45 GMT  
		Size: 66.9 MB (66941388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed22695a264e27b9ca99ea637a535f7593e8a18b59505e9e45450c2008e2fbc`  
		Last Modified: Wed, 01 Feb 2017 19:40:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e773c199fee9064b9481355c51d6304640a9d95f2da5e2ec7beef22c36c47`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadec33a31905ad4a88806b0c6cda7cb4eb6f749494b91281a8438c9aab48e87`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:90d80c5fdc534118c476edf158ce1d814325b2e6300a8573d7e1c2c2a8ad8b4a
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5050080913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce615778458a1fc587ba51e920671cbacf7368a70d6104d549d8988fb1790070`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:38:07 GMT
ENV MONGO_VERSION=3.4.1
# Wed, 01 Feb 2017 19:38:11 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Wed, 01 Feb 2017 19:38:14 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Wed, 01 Feb 2017 19:39:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:39:20 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:39:25 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:39:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb40b5653725df89a50de47b1181f20f363d95e5012e4f8ee7033fdcba94db`  
		Last Modified: Wed, 01 Feb 2017 19:40:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd302c5a9befab7bc71e4a6f5ea68e115f2f90b46a67120b83d88f32655ca2d8`  
		Last Modified: Wed, 01 Feb 2017 19:40:38 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7727ae324d45b653fe1327e9664eccae3f308ba105278c5e36f5af820eaae3c1`  
		Last Modified: Wed, 01 Feb 2017 19:40:32 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc790f6d18c6514292b9f5d1ff0dfc70a77273a4e5531ac89077f49748114b7`  
		Last Modified: Wed, 01 Feb 2017 19:40:45 GMT  
		Size: 66.9 MB (66941388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed22695a264e27b9ca99ea637a535f7593e8a18b59505e9e45450c2008e2fbc`  
		Last Modified: Wed, 01 Feb 2017 19:40:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e773c199fee9064b9481355c51d6304640a9d95f2da5e2ec7beef22c36c47`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadec33a31905ad4a88806b0c6cda7cb4eb6f749494b91281a8438c9aab48e87`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:90d80c5fdc534118c476edf158ce1d814325b2e6300a8573d7e1c2c2a8ad8b4a
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5050080913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce615778458a1fc587ba51e920671cbacf7368a70d6104d549d8988fb1790070`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 20 Jan 2017 21:35:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Feb 2017 19:38:07 GMT
ENV MONGO_VERSION=3.4.1
# Wed, 01 Feb 2017 19:38:11 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.1-signed.msi
# Wed, 01 Feb 2017 19:38:14 GMT
ENV MONGO_DOWNLOAD_SHA256=c530c16b35cbc455d85700991bf96978a3dd1bab89ba7a11ff360777334e006a
# Wed, 01 Feb 2017 19:39:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Feb 2017 19:39:20 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Feb 2017 19:39:25 GMT
EXPOSE 27017/tcp
# Wed, 01 Feb 2017 19:39:29 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e9d9d048a108290b40b03a1a415360fe78a4038bfb48be71f6a1e05e92092624`  
		Last Modified: Fri, 20 Jan 2017 22:10:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb40b5653725df89a50de47b1181f20f363d95e5012e4f8ee7033fdcba94db`  
		Last Modified: Wed, 01 Feb 2017 19:40:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd302c5a9befab7bc71e4a6f5ea68e115f2f90b46a67120b83d88f32655ca2d8`  
		Last Modified: Wed, 01 Feb 2017 19:40:38 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7727ae324d45b653fe1327e9664eccae3f308ba105278c5e36f5af820eaae3c1`  
		Last Modified: Wed, 01 Feb 2017 19:40:32 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc790f6d18c6514292b9f5d1ff0dfc70a77273a4e5531ac89077f49748114b7`  
		Last Modified: Wed, 01 Feb 2017 19:40:45 GMT  
		Size: 66.9 MB (66941388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed22695a264e27b9ca99ea637a535f7593e8a18b59505e9e45450c2008e2fbc`  
		Last Modified: Wed, 01 Feb 2017 19:40:33 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0e773c199fee9064b9481355c51d6304640a9d95f2da5e2ec7beef22c36c47`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadec33a31905ad4a88806b0c6cda7cb4eb6f749494b91281a8438c9aab48e87`  
		Last Modified: Wed, 01 Feb 2017 19:40:30 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
