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
-	[`mongo:3.5.5`](#mongo355)
-	[`mongo:3.5`](#mongo35)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:3.5.5-windowsservercore`](#mongo355-windowsservercore)
-	[`mongo:3.5-windowsservercore`](#mongo35-windowsservercore)
-	[`mongo:unstable-windowsservercore`](#mongounstable-windowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:589e51f440b113570f1ec2259495efd9848f19e0f27c3882cb0ec7a178915c50
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82784605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d15be6ac5356e179530e838e56e3d9227ef207d058f3ff085adaa017e97b8f1`
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
# Fri, 07 Apr 2017 19:33:36 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:39 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:39 GMT
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
	-	`sha256:9d7ec4f1a3ac9f0d3eae7bb4aa217b871a364ba8bf0ffa432b26442a3c9e14ac`  
		Last Modified: Fri, 07 Apr 2017 19:34:15 GMT  
		Size: 2.7 KB (2696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cfb6be7a2c43c8bd8d3c939096dd8e499a3f76c129ae541c2b96df584bd952`  
		Last Modified: Fri, 07 Apr 2017 19:34:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:589e51f440b113570f1ec2259495efd9848f19e0f27c3882cb0ec7a178915c50
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82784605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d15be6ac5356e179530e838e56e3d9227ef207d058f3ff085adaa017e97b8f1`
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
# Fri, 07 Apr 2017 19:33:36 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:39 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:39 GMT
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
	-	`sha256:9d7ec4f1a3ac9f0d3eae7bb4aa217b871a364ba8bf0ffa432b26442a3c9e14ac`  
		Last Modified: Fri, 07 Apr 2017 19:34:15 GMT  
		Size: 2.7 KB (2696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cfb6be7a2c43c8bd8d3c939096dd8e499a3f76c129ae541c2b96df584bd952`  
		Last Modified: Fri, 07 Apr 2017 19:34:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.14-windowsservercore`

```console
$ docker pull mongo@sha256:ce92ac6ce7aacccd3b192638c4e7422849354aaf0a2c6d912800c7abc281aaf0
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0.14-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5264278172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9d3ff2a502faebd9c41e8aa6def56ad128f3071c2093f3e827145dc7bece85`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:03:37 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 31 Mar 2017 17:03:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Fri, 31 Mar 2017 17:03:44 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Fri, 31 Mar 2017 17:04:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:04:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:04:44 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:04:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bef5734138eeec47686d1e2c42a8e3706c3589335c1358b405d945a6b9d9e96`  
		Last Modified: Fri, 31 Mar 2017 17:07:49 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b46818a4c313accdc3b59c31ce9a256601df1ffd22af783417786f9fde23add`  
		Last Modified: Fri, 31 Mar 2017 17:07:48 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15f8f0af0ffc1ce2b93c7d84dddbf5bb42f57564a6b7346adc16ddf0f978636`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411fe7a6603e7d1cef232ed012a574e575f72f78bb1d1ca812acfc9887d7a18`  
		Last Modified: Fri, 31 Mar 2017 17:07:50 GMT  
		Size: 47.0 MB (47015886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45259bec8dc3ce8e6defa8cfdc33d2b2f5253cf57e7c667be7b05698aeb33bf4`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0030f3e6266ea3de6e208b2a051cfe8245389f83a01ca41d0ca2f41b4ae237be`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b4a480f0b2173f9a2a89982e5b750041d16bd800adfabf2dbc79a383542303`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-windowsservercore`

```console
$ docker pull mongo@sha256:ce92ac6ce7aacccd3b192638c4e7422849354aaf0a2c6d912800c7abc281aaf0
```

-	Platforms:
	-	windows; amd64

### `mongo:3.0-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5264278172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9d3ff2a502faebd9c41e8aa6def56ad128f3071c2093f3e827145dc7bece85`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:03:37 GMT
ENV MONGO_VERSION=3.0.14
# Fri, 31 Mar 2017 17:03:40 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.14-signed.msi
# Fri, 31 Mar 2017 17:03:44 GMT
ENV MONGO_DOWNLOAD_SHA256=5a081722c42c79f23d9201c97500be6ddc8741b66ce707d88dad058bf84165f1
# Fri, 31 Mar 2017 17:04:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:04:41 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:04:44 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:04:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bef5734138eeec47686d1e2c42a8e3706c3589335c1358b405d945a6b9d9e96`  
		Last Modified: Fri, 31 Mar 2017 17:07:49 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b46818a4c313accdc3b59c31ce9a256601df1ffd22af783417786f9fde23add`  
		Last Modified: Fri, 31 Mar 2017 17:07:48 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15f8f0af0ffc1ce2b93c7d84dddbf5bb42f57564a6b7346adc16ddf0f978636`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411fe7a6603e7d1cef232ed012a574e575f72f78bb1d1ca812acfc9887d7a18`  
		Last Modified: Fri, 31 Mar 2017 17:07:50 GMT  
		Size: 47.0 MB (47015886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45259bec8dc3ce8e6defa8cfdc33d2b2f5253cf57e7c667be7b05698aeb33bf4`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0030f3e6266ea3de6e208b2a051cfe8245389f83a01ca41d0ca2f41b4ae237be`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b4a480f0b2173f9a2a89982e5b750041d16bd800adfabf2dbc79a383542303`  
		Last Modified: Fri, 31 Mar 2017 17:07:40 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.12`

```console
$ docker pull mongo@sha256:847d2ac8eebc500522d288019900ca361b1dda8c0d720de421c60165b8001a6c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.12` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101732880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb39b055e7ab5534a244054c381479cd201e4b49edc75992507d8fd09a81579a`
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
# Fri, 07 Apr 2017 19:33:41 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:43 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:44 GMT
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
	-	`sha256:5cdb305a9f1f9aee4c83da9f0b4970cd34fa34d0a0693d7481d55c3e2b72a275`  
		Last Modified: Fri, 07 Apr 2017 19:35:00 GMT  
		Size: 2.7 KB (2697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d998c02b86725693ec74e875b55b5baed7ebae5c016741e32ad2799b2b9fb51`  
		Last Modified: Fri, 07 Apr 2017 19:35:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:847d2ac8eebc500522d288019900ca361b1dda8c0d720de421c60165b8001a6c
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101732880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb39b055e7ab5534a244054c381479cd201e4b49edc75992507d8fd09a81579a`
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
# Fri, 07 Apr 2017 19:33:41 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:43 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:44 GMT
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
	-	`sha256:5cdb305a9f1f9aee4c83da9f0b4970cd34fa34d0a0693d7481d55c3e2b72a275`  
		Last Modified: Fri, 07 Apr 2017 19:35:00 GMT  
		Size: 2.7 KB (2697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d998c02b86725693ec74e875b55b5baed7ebae5c016741e32ad2799b2b9fb51`  
		Last Modified: Fri, 07 Apr 2017 19:35:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.12-windowsservercore`

```console
$ docker pull mongo@sha256:037065f72b0011dbc8f20c60d96cbaf982f72b5f0f3b433f61de70c48b91c158
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2.12-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5270131355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d74f14c87ef441f93a92920c335d5ac357873e3789e3060630f60bca3e90037`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:04:51 GMT
ENV MONGO_VERSION=3.2.12
# Fri, 31 Mar 2017 17:04:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.12-signed.msi
# Fri, 31 Mar 2017 17:04:57 GMT
ENV MONGO_DOWNLOAD_SHA256=9b8312e067c076808b6c8fd91e327b13caa0286ae21c1221cf29076ad110b116
# Fri, 31 Mar 2017 17:05:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:05:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:06:02 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:06:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934a6818e8bccccbea151f80774053e19fba9eda96f54ad3afbea19e5de6072e`  
		Last Modified: Fri, 31 Mar 2017 17:08:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ccd531b79217653e2eb77273a971680e3f4e4977455615ec9240d00c530cc`  
		Last Modified: Fri, 31 Mar 2017 17:08:10 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679ea5ef281482eeb31886035deb434243b0b8257b07bf393f08458b653bee74`  
		Last Modified: Fri, 31 Mar 2017 17:08:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b862cabef045502b5b1d4912d7833394a98cae85e531f60ad08c0df70ccd6be`  
		Last Modified: Fri, 31 Mar 2017 17:08:12 GMT  
		Size: 52.9 MB (52869092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c871410dbc1f81ab94cf71bd42e30d266069982b52d72e0e0c7f7725da215c`  
		Last Modified: Fri, 31 Mar 2017 17:08:02 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e965a41c17f9bd6d7876e0245dc9d2895421acd48f444ac10102e1afdec8ae`  
		Last Modified: Fri, 31 Mar 2017 17:08:01 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9b553ba6bad5868603b3ec21f93994bb3b9b0950f44a26819fa66b9dbc12e`  
		Last Modified: Fri, 31 Mar 2017 17:08:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-windowsservercore`

```console
$ docker pull mongo@sha256:037065f72b0011dbc8f20c60d96cbaf982f72b5f0f3b433f61de70c48b91c158
```

-	Platforms:
	-	windows; amd64

### `mongo:3.2-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5270131355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d74f14c87ef441f93a92920c335d5ac357873e3789e3060630f60bca3e90037`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:04:51 GMT
ENV MONGO_VERSION=3.2.12
# Fri, 31 Mar 2017 17:04:54 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.12-signed.msi
# Fri, 31 Mar 2017 17:04:57 GMT
ENV MONGO_DOWNLOAD_SHA256=9b8312e067c076808b6c8fd91e327b13caa0286ae21c1221cf29076ad110b116
# Fri, 31 Mar 2017 17:05:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:05:57 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:06:02 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:06:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934a6818e8bccccbea151f80774053e19fba9eda96f54ad3afbea19e5de6072e`  
		Last Modified: Fri, 31 Mar 2017 17:08:11 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9ccd531b79217653e2eb77273a971680e3f4e4977455615ec9240d00c530cc`  
		Last Modified: Fri, 31 Mar 2017 17:08:10 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679ea5ef281482eeb31886035deb434243b0b8257b07bf393f08458b653bee74`  
		Last Modified: Fri, 31 Mar 2017 17:08:01 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b862cabef045502b5b1d4912d7833394a98cae85e531f60ad08c0df70ccd6be`  
		Last Modified: Fri, 31 Mar 2017 17:08:12 GMT  
		Size: 52.9 MB (52869092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c871410dbc1f81ab94cf71bd42e30d266069982b52d72e0e0c7f7725da215c`  
		Last Modified: Fri, 31 Mar 2017 17:08:02 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e965a41c17f9bd6d7876e0245dc9d2895421acd48f444ac10102e1afdec8ae`  
		Last Modified: Fri, 31 Mar 2017 17:08:01 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9b553ba6bad5868603b3ec21f93994bb3b9b0950f44a26819fa66b9dbc12e`  
		Last Modified: Fri, 31 Mar 2017 17:08:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.3`

```console
$ docker pull mongo@sha256:0de69fc2c8928c4e13fa161435f377b9dc0281adfbc8bf49c19bee8a7fafa075
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128556840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e26382080ac1f68971a5f941a90d91832424ebcae1306918621e0386cebf5f`
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
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:45 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:48 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:48 GMT
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
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef2a2e7808c8b43bd8883e4a3759a95afca55ab38c09c019ac4e474175522`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 2.7 KB (2696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6410c0870f807a5c759b46d1b26eaa578dbe52c24b102fda9452c3a366f07d`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:0de69fc2c8928c4e13fa161435f377b9dc0281adfbc8bf49c19bee8a7fafa075
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128556840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e26382080ac1f68971a5f941a90d91832424ebcae1306918621e0386cebf5f`
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
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:45 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:48 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:48 GMT
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
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef2a2e7808c8b43bd8883e4a3759a95afca55ab38c09c019ac4e474175522`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 2.7 KB (2696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6410c0870f807a5c759b46d1b26eaa578dbe52c24b102fda9452c3a366f07d`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:0de69fc2c8928c4e13fa161435f377b9dc0281adfbc8bf49c19bee8a7fafa075
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128556840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e26382080ac1f68971a5f941a90d91832424ebcae1306918621e0386cebf5f`
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
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:45 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:48 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:48 GMT
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
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef2a2e7808c8b43bd8883e4a3759a95afca55ab38c09c019ac4e474175522`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 2.7 KB (2696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6410c0870f807a5c759b46d1b26eaa578dbe52c24b102fda9452c3a366f07d`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:0de69fc2c8928c4e13fa161435f377b9dc0281adfbc8bf49c19bee8a7fafa075
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128556840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e26382080ac1f68971a5f941a90d91832424ebcae1306918621e0386cebf5f`
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
# Thu, 30 Mar 2017 21:40:30 GMT
ENV MONGO_VERSION=3.4.3
# Thu, 30 Mar 2017 21:40:31 GMT
ENV MONGO_PACKAGE=mongodb-org
# Thu, 30 Mar 2017 21:40:32 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Thu, 30 Mar 2017 21:40:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 30 Mar 2017 21:40:53 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 30 Mar 2017 21:40:54 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:45 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:48 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:48 GMT
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
	-	`sha256:7584b1f09d77676fcae56ddf6a924cda44bf8766324c3b887e12d083ca254967`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9504d8d990d315302795403384a36971c96e747c7af696a19e787dd2f21b24d0`  
		Last Modified: Thu, 30 Mar 2017 21:43:09 GMT  
		Size: 97.5 MB (97451972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c764578ccc8b9c37ce279f6b8acdfb4bb10b223d39c2e91aaf305ecd24771`  
		Last Modified: Thu, 30 Mar 2017 21:42:39 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bef2a2e7808c8b43bd8883e4a3759a95afca55ab38c09c019ac4e474175522`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 2.7 KB (2696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6410c0870f807a5c759b46d1b26eaa578dbe52c24b102fda9452c3a366f07d`  
		Last Modified: Fri, 07 Apr 2017 19:35:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.3-windowsservercore`

```console
$ docker pull mongo@sha256:9db58334de038e978b2e3096a199b5e06243171dc25005a86c2a855530aa651a
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4.3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280206949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45b4ba92e3738c3d51b63bf86456ddedbc64ee3a8f919a91ab85b9ecf80e71`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:06:10 GMT
ENV MONGO_VERSION=3.4.3
# Fri, 31 Mar 2017 17:06:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Fri, 31 Mar 2017 17:06:19 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Fri, 31 Mar 2017 17:07:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:07:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:07:30 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:07:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68109c20333f0c249c8cc639f5cd5d28c143e5a5b057d8a525c918b2026e21e7`  
		Last Modified: Fri, 31 Mar 2017 17:08:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599310cb2bbeaec4a154ddb63d5730fe6a3066eb20438dcd3cf27d93cc55393e`  
		Last Modified: Fri, 31 Mar 2017 17:08:32 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb333e62d771426009b1330eb883f8ac828511799fb7f61fcce2f3d478fdbca`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6171d18f1c61d22d5c639057f37380eb47cbe00ce14c742c896ea36a1f6791d`  
		Last Modified: Fri, 31 Mar 2017 17:08:37 GMT  
		Size: 62.9 MB (62944684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a802e1ebc888dc953575097c9b082b3f6a58291957c099e79a01b033f760b33`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dfaf930a39a6eb995f97d55af92174a772d621df2f813d8fd45dbd04fbbf76`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2356b161c0d923fbff9990e8072bc04462e5968123b814bb201efc118d73863`  
		Last Modified: Fri, 31 Mar 2017 17:08:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:9db58334de038e978b2e3096a199b5e06243171dc25005a86c2a855530aa651a
```

-	Platforms:
	-	windows; amd64

### `mongo:3.4-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280206949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45b4ba92e3738c3d51b63bf86456ddedbc64ee3a8f919a91ab85b9ecf80e71`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:06:10 GMT
ENV MONGO_VERSION=3.4.3
# Fri, 31 Mar 2017 17:06:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Fri, 31 Mar 2017 17:06:19 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Fri, 31 Mar 2017 17:07:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:07:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:07:30 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:07:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68109c20333f0c249c8cc639f5cd5d28c143e5a5b057d8a525c918b2026e21e7`  
		Last Modified: Fri, 31 Mar 2017 17:08:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599310cb2bbeaec4a154ddb63d5730fe6a3066eb20438dcd3cf27d93cc55393e`  
		Last Modified: Fri, 31 Mar 2017 17:08:32 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb333e62d771426009b1330eb883f8ac828511799fb7f61fcce2f3d478fdbca`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6171d18f1c61d22d5c639057f37380eb47cbe00ce14c742c896ea36a1f6791d`  
		Last Modified: Fri, 31 Mar 2017 17:08:37 GMT  
		Size: 62.9 MB (62944684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a802e1ebc888dc953575097c9b082b3f6a58291957c099e79a01b033f760b33`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dfaf930a39a6eb995f97d55af92174a772d621df2f813d8fd45dbd04fbbf76`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2356b161c0d923fbff9990e8072bc04462e5968123b814bb201efc118d73863`  
		Last Modified: Fri, 31 Mar 2017 17:08:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:9db58334de038e978b2e3096a199b5e06243171dc25005a86c2a855530aa651a
```

-	Platforms:
	-	windows; amd64

### `mongo:3-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280206949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45b4ba92e3738c3d51b63bf86456ddedbc64ee3a8f919a91ab85b9ecf80e71`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:06:10 GMT
ENV MONGO_VERSION=3.4.3
# Fri, 31 Mar 2017 17:06:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Fri, 31 Mar 2017 17:06:19 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Fri, 31 Mar 2017 17:07:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:07:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:07:30 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:07:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68109c20333f0c249c8cc639f5cd5d28c143e5a5b057d8a525c918b2026e21e7`  
		Last Modified: Fri, 31 Mar 2017 17:08:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599310cb2bbeaec4a154ddb63d5730fe6a3066eb20438dcd3cf27d93cc55393e`  
		Last Modified: Fri, 31 Mar 2017 17:08:32 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb333e62d771426009b1330eb883f8ac828511799fb7f61fcce2f3d478fdbca`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6171d18f1c61d22d5c639057f37380eb47cbe00ce14c742c896ea36a1f6791d`  
		Last Modified: Fri, 31 Mar 2017 17:08:37 GMT  
		Size: 62.9 MB (62944684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a802e1ebc888dc953575097c9b082b3f6a58291957c099e79a01b033f760b33`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dfaf930a39a6eb995f97d55af92174a772d621df2f813d8fd45dbd04fbbf76`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2356b161c0d923fbff9990e8072bc04462e5968123b814bb201efc118d73863`  
		Last Modified: Fri, 31 Mar 2017 17:08:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:9db58334de038e978b2e3096a199b5e06243171dc25005a86c2a855530aa651a
```

-	Platforms:
	-	windows; amd64

### `mongo:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280206949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee45b4ba92e3738c3d51b63bf86456ddedbc64ee3a8f919a91ab85b9ecf80e71`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 31 Mar 2017 17:06:10 GMT
ENV MONGO_VERSION=3.4.3
# Fri, 31 Mar 2017 17:06:14 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.3-signed.msi
# Fri, 31 Mar 2017 17:06:19 GMT
ENV MONGO_DOWNLOAD_SHA256=b7c181e12b8261c1df341458efcda905ed95c962165fdd2ebd0eb32f0baa1328
# Fri, 31 Mar 2017 17:07:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 31 Mar 2017 17:07:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 31 Mar 2017 17:07:30 GMT
EXPOSE 27017/tcp
# Fri, 31 Mar 2017 17:07:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68109c20333f0c249c8cc639f5cd5d28c143e5a5b057d8a525c918b2026e21e7`  
		Last Modified: Fri, 31 Mar 2017 17:08:33 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599310cb2bbeaec4a154ddb63d5730fe6a3066eb20438dcd3cf27d93cc55393e`  
		Last Modified: Fri, 31 Mar 2017 17:08:32 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb333e62d771426009b1330eb883f8ac828511799fb7f61fcce2f3d478fdbca`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6171d18f1c61d22d5c639057f37380eb47cbe00ce14c742c896ea36a1f6791d`  
		Last Modified: Fri, 31 Mar 2017 17:08:37 GMT  
		Size: 62.9 MB (62944684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a802e1ebc888dc953575097c9b082b3f6a58291957c099e79a01b033f760b33`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dfaf930a39a6eb995f97d55af92174a772d621df2f813d8fd45dbd04fbbf76`  
		Last Modified: Fri, 31 Mar 2017 17:08:23 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2356b161c0d923fbff9990e8072bc04462e5968123b814bb201efc118d73863`  
		Last Modified: Fri, 31 Mar 2017 17:08:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.5`

```console
$ docker pull mongo@sha256:907de372a6de5f17d68514de1115f4b4af3f8373be33f7ee51a3a8edb8653494
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129670935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a930854236c9ba5131807c5c781b5b43400fe07ec14e6809993ed85a460b4d`
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
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Mon, 03 Apr 2017 19:16:55 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 19:16:55 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 03 Apr 2017 19:16:57 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 03 Apr 2017 19:17:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 03 Apr 2017 19:17:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 03 Apr 2017 19:17:18 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:50 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:52 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:53 GMT
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
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1c21049490dc6dab6a57c729ee3b9ff944cef67d8e500de03bd897cce49aef`  
		Last Modified: Mon, 03 Apr 2017 19:20:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9794239cc8e37964814a38b1977cdd7933829e425f9fa24e96c0e735f79cd0b0`  
		Last Modified: Mon, 03 Apr 2017 19:20:55 GMT  
		Size: 98.6 MB (98566068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316ea466d0b5497fa9b61ed2517d3c456efb6608b80a0b9da60475a6d089e998`  
		Last Modified: Mon, 03 Apr 2017 19:20:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eec2b31e2b2f749ccdccfba55cca15195399709ff7a6b037b26e9de6c119a02`  
		Last Modified: Fri, 07 Apr 2017 19:37:07 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4e104ebe4bb017fd6a4ef2d7bb8a7c66c69efca10245d88528ac77abd5d07`  
		Last Modified: Fri, 07 Apr 2017 19:37:07 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:907de372a6de5f17d68514de1115f4b4af3f8373be33f7ee51a3a8edb8653494
```

-	Platforms:
	-	linux; amd64

### `mongo:3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129670935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a930854236c9ba5131807c5c781b5b43400fe07ec14e6809993ed85a460b4d`
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
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Mon, 03 Apr 2017 19:16:55 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 19:16:55 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 03 Apr 2017 19:16:57 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 03 Apr 2017 19:17:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 03 Apr 2017 19:17:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 03 Apr 2017 19:17:18 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:50 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:52 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:53 GMT
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
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1c21049490dc6dab6a57c729ee3b9ff944cef67d8e500de03bd897cce49aef`  
		Last Modified: Mon, 03 Apr 2017 19:20:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9794239cc8e37964814a38b1977cdd7933829e425f9fa24e96c0e735f79cd0b0`  
		Last Modified: Mon, 03 Apr 2017 19:20:55 GMT  
		Size: 98.6 MB (98566068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316ea466d0b5497fa9b61ed2517d3c456efb6608b80a0b9da60475a6d089e998`  
		Last Modified: Mon, 03 Apr 2017 19:20:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eec2b31e2b2f749ccdccfba55cca15195399709ff7a6b037b26e9de6c119a02`  
		Last Modified: Fri, 07 Apr 2017 19:37:07 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4e104ebe4bb017fd6a4ef2d7bb8a7c66c69efca10245d88528ac77abd5d07`  
		Last Modified: Fri, 07 Apr 2017 19:37:07 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:907de372a6de5f17d68514de1115f4b4af3f8373be33f7ee51a3a8edb8653494
```

-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129670935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a930854236c9ba5131807c5c781b5b43400fe07ec14e6809993ed85a460b4d`
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
# Mon, 03 Apr 2017 19:16:51 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 03 Apr 2017 19:16:54 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 03 Apr 2017 19:16:54 GMT
ENV MONGO_MAJOR=3.5
# Mon, 03 Apr 2017 19:16:55 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 19:16:55 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable
# Mon, 03 Apr 2017 19:16:57 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Mon, 03 Apr 2017 19:17:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 03 Apr 2017 19:17:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 03 Apr 2017 19:17:18 GMT
VOLUME [/data/db /data/configdb]
# Fri, 07 Apr 2017 19:33:50 GMT
COPY file:bebc2bb74a47750ef4a9560ce1357f3d4d9ebc276c087aeae45f51e2ab063757 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:33:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 07 Apr 2017 19:33:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:33:52 GMT
EXPOSE 27017/tcp
# Fri, 07 Apr 2017 19:33:53 GMT
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
	-	`sha256:0917df5a99610e2e49ed7b6896b3f4feba57be939c32714bce7b76c0b3b4b48e`  
		Last Modified: Mon, 03 Apr 2017 19:20:28 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1c21049490dc6dab6a57c729ee3b9ff944cef67d8e500de03bd897cce49aef`  
		Last Modified: Mon, 03 Apr 2017 19:20:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9794239cc8e37964814a38b1977cdd7933829e425f9fa24e96c0e735f79cd0b0`  
		Last Modified: Mon, 03 Apr 2017 19:20:55 GMT  
		Size: 98.6 MB (98566068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316ea466d0b5497fa9b61ed2517d3c456efb6608b80a0b9da60475a6d089e998`  
		Last Modified: Mon, 03 Apr 2017 19:20:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eec2b31e2b2f749ccdccfba55cca15195399709ff7a6b037b26e9de6c119a02`  
		Last Modified: Fri, 07 Apr 2017 19:37:07 GMT  
		Size: 2.7 KB (2693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd4e104ebe4bb017fd6a4ef2d7bb8a7c66c69efca10245d88528ac77abd5d07`  
		Last Modified: Fri, 07 Apr 2017 19:37:07 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.5-windowsservercore`

```console
$ docker pull mongo@sha256:67bb83012874594efa031a935a6e6f0e2c9051ad7eb13eccc866e9144b9226a9
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280355611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2bd609bc989ff99bb3d6b69f045c676c30bb4276410b956ff30c5afe69f0ce`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 03 Apr 2017 21:31:18 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 21:31:21 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.5-signed.msi
# Mon, 03 Apr 2017 21:31:23 GMT
ENV MONGO_DOWNLOAD_SHA256=d246a825f689ed1f690159262e731add47bb5a72993124bc6d2ec20c94d70e4d
# Mon, 03 Apr 2017 21:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 03 Apr 2017 21:32:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 03 Apr 2017 21:32:32 GMT
EXPOSE 27017/tcp
# Mon, 03 Apr 2017 21:32:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535946ef8cc844b8aea17f426d69c66ecb386d19c2c1fd71f4f78d81b1ed385`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3827928430cec9e30dfaf89876f3c06373e410bf96e608e6408d1ef0cfb3f075`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d78ae5780ee1c63e35f3015e0722069745d49200c1a9554cc348f359ca10b1`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a849bc9a80918095d9d943b280b29948ac53a22e8b2e8c98eb4165be63dc64`  
		Last Modified: Mon, 03 Apr 2017 21:33:19 GMT  
		Size: 63.1 MB (63093345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb69973582e43e31d15c47d27a321355d07686654c0ed49be9aa68ee77972a`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469cd1a3cb96e6a1171ee1f086e9921734a0d11bdefed9f1e9b91b8cf6160c8`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744981ed53e88ffd307164dc4c060f7133b4705474a619d210b780baa41495a7`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5-windowsservercore`

```console
$ docker pull mongo@sha256:67bb83012874594efa031a935a6e6f0e2c9051ad7eb13eccc866e9144b9226a9
```

-	Platforms:
	-	windows; amd64

### `mongo:3.5-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280355611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2bd609bc989ff99bb3d6b69f045c676c30bb4276410b956ff30c5afe69f0ce`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 03 Apr 2017 21:31:18 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 21:31:21 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.5-signed.msi
# Mon, 03 Apr 2017 21:31:23 GMT
ENV MONGO_DOWNLOAD_SHA256=d246a825f689ed1f690159262e731add47bb5a72993124bc6d2ec20c94d70e4d
# Mon, 03 Apr 2017 21:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 03 Apr 2017 21:32:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 03 Apr 2017 21:32:32 GMT
EXPOSE 27017/tcp
# Mon, 03 Apr 2017 21:32:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535946ef8cc844b8aea17f426d69c66ecb386d19c2c1fd71f4f78d81b1ed385`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3827928430cec9e30dfaf89876f3c06373e410bf96e608e6408d1ef0cfb3f075`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d78ae5780ee1c63e35f3015e0722069745d49200c1a9554cc348f359ca10b1`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a849bc9a80918095d9d943b280b29948ac53a22e8b2e8c98eb4165be63dc64`  
		Last Modified: Mon, 03 Apr 2017 21:33:19 GMT  
		Size: 63.1 MB (63093345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb69973582e43e31d15c47d27a321355d07686654c0ed49be9aa68ee77972a`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469cd1a3cb96e6a1171ee1f086e9921734a0d11bdefed9f1e9b91b8cf6160c8`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744981ed53e88ffd307164dc4c060f7133b4705474a619d210b780baa41495a7`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:67bb83012874594efa031a935a6e6f0e2c9051ad7eb13eccc866e9144b9226a9
```

-	Platforms:
	-	windows; amd64

### `mongo:unstable-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5280355611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2bd609bc989ff99bb3d6b69f045c676c30bb4276410b956ff30c5afe69f0ce`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Wed, 22 Mar 2017 23:09:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 03 Apr 2017 21:31:18 GMT
ENV MONGO_VERSION=3.5.5
# Mon, 03 Apr 2017 21:31:21 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.5-signed.msi
# Mon, 03 Apr 2017 21:31:23 GMT
ENV MONGO_DOWNLOAD_SHA256=d246a825f689ed1f690159262e731add47bb5a72993124bc6d2ec20c94d70e4d
# Mon, 03 Apr 2017 21:32:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Mon, 03 Apr 2017 21:32:28 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 03 Apr 2017 21:32:32 GMT
EXPOSE 27017/tcp
# Mon, 03 Apr 2017 21:32:34 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c1d35cf002465f32ac8314f19855d1cc344866fb48071214307794c7e9e006b7`  
		Last Modified: Thu, 23 Mar 2017 17:00:47 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2535946ef8cc844b8aea17f426d69c66ecb386d19c2c1fd71f4f78d81b1ed385`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3827928430cec9e30dfaf89876f3c06373e410bf96e608e6408d1ef0cfb3f075`  
		Last Modified: Mon, 03 Apr 2017 21:33:18 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d78ae5780ee1c63e35f3015e0722069745d49200c1a9554cc348f359ca10b1`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a849bc9a80918095d9d943b280b29948ac53a22e8b2e8c98eb4165be63dc64`  
		Last Modified: Mon, 03 Apr 2017 21:33:19 GMT  
		Size: 63.1 MB (63093345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb69973582e43e31d15c47d27a321355d07686654c0ed49be9aa68ee77972a`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469cd1a3cb96e6a1171ee1f086e9921734a0d11bdefed9f1e9b91b8cf6160c8`  
		Last Modified: Mon, 03 Apr 2017 21:33:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744981ed53e88ffd307164dc4c060f7133b4705474a619d210b780baa41495a7`  
		Last Modified: Mon, 03 Apr 2017 21:33:07 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
