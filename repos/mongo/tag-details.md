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
-	[`mongo:3.4.2`](#mongo342)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3`](#mongo3)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:3.4.2-windowsservercore`](#mongo342-windowsservercore)
-	[`mongo:3.4-windowsservercore`](#mongo34-windowsservercore)
-	[`mongo:3-windowsservercore`](#mongo3-windowsservercore)
-	[`mongo:windowsservercore`](#mongowindowsservercore)

## `mongo:3.0.14`

```console
$ docker pull mongo@sha256:872a6d0d390d7a7f404a5b6e581def6de963b9073d97ba775d3bb47658f702b1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0.14` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82460759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2556d3d9e72734c07a78c98b9d0c61eea1f12c6bb57a6b7b3ffe3a2483be25f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:43 GMT
ADD file:614d6111fd5e31c7627ba70c15a12a35b0f17cb63a05a21901d0a992c82d5e2b in / 
# Mon, 27 Feb 2017 20:39:44 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:25:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:25:53 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 18:26:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:02 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:26:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:26:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:26:18 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 21 Mar 2017 18:26:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:26:20 GMT
ENV MONGO_MAJOR=3.0
# Tue, 21 Mar 2017 18:26:20 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 21 Mar 2017 18:26:20 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:26:21 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:26:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:26:34 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:26:34 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:26:35 GMT
COPY file:32733ce9a2af4f8984c68d40d44d10f08fcb16f62ac630c369cdde09171ae5cb in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:26:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:26:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:26:36 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:26:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:eb503d31683398f256c87174ee283e091982edfa7d8720048987617f4c6fb769`  
		Last Modified: Mon, 27 Feb 2017 20:51:15 GMT  
		Size: 18.9 MB (18888672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40db7ffcabc0b0b72e6c634cca2aca4972f88e11cbd4fb3674d90bb7b40ced21`  
		Last Modified: Tue, 21 Mar 2017 18:28:16 GMT  
		Size: 1.7 KB (1702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d5203c7a3fc7144bcddbfd9ac1fc83fd5577713c1939a3383a67bcd6f060c`  
		Last Modified: Tue, 21 Mar 2017 18:28:16 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dedfab3fe33f50889ca1f5638471dc025893ba2c3aa03864eb0932d3c0964a0`  
		Last Modified: Tue, 21 Mar 2017 18:28:15 GMT  
		Size: 227.5 KB (227528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60667ace33206c584ec918bc0f33c41a2763f4d427a494967bc3485d48b8d790`  
		Last Modified: Tue, 21 Mar 2017 18:28:14 GMT  
		Size: 1.2 MB (1246016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a231eeadccf4478b13854b6c45a5912284885de24ace96510a489826d62eae`  
		Last Modified: Tue, 21 Mar 2017 18:28:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd08242afdbb1c6ce572154191ce33d33c92a56e6f9d764af4be9d6f007c43a`  
		Last Modified: Tue, 21 Mar 2017 18:28:13 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6a8f302be5d232a060600d52f960321c9ec36d7c71774ba3cbc9455fa520a3`  
		Last Modified: Tue, 21 Mar 2017 18:28:11 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc07a46d5bf07c19c7b54e4794276c3d8e967017738232ee0be76a737a4b86d`  
		Last Modified: Tue, 21 Mar 2017 18:28:41 GMT  
		Size: 62.1 MB (62092314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7ce744f4fe5ee295e8ca205bef7f50c18646e403def30e4c25d64ff42f958`  
		Last Modified: Tue, 21 Mar 2017 18:28:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc91e69348fc43794b2f14d514d6d0eb24bf2500846b94f2dde2a04bb2f8210`  
		Last Modified: Tue, 21 Mar 2017 18:28:12 GMT  
		Size: 1.7 KB (1723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338034c915a1cafe5a71adc03909de35e58356c1ba3453c1aef67247aa45399a`  
		Last Modified: Tue, 21 Mar 2017 18:28:11 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:872a6d0d390d7a7f404a5b6e581def6de963b9073d97ba775d3bb47658f702b1
```

-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82460759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2556d3d9e72734c07a78c98b9d0c61eea1f12c6bb57a6b7b3ffe3a2483be25f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:43 GMT
ADD file:614d6111fd5e31c7627ba70c15a12a35b0f17cb63a05a21901d0a992c82d5e2b in / 
# Mon, 27 Feb 2017 20:39:44 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:25:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:25:53 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 18:26:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:02 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:26:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:26:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:26:18 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Tue, 21 Mar 2017 18:26:19 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:26:20 GMT
ENV MONGO_MAJOR=3.0
# Tue, 21 Mar 2017 18:26:20 GMT
ENV MONGO_VERSION=3.0.14
# Tue, 21 Mar 2017 18:26:20 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:26:21 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:26:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:26:34 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:26:34 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:26:35 GMT
COPY file:32733ce9a2af4f8984c68d40d44d10f08fcb16f62ac630c369cdde09171ae5cb in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:26:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:26:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:26:36 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:26:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:eb503d31683398f256c87174ee283e091982edfa7d8720048987617f4c6fb769`  
		Last Modified: Mon, 27 Feb 2017 20:51:15 GMT  
		Size: 18.9 MB (18888672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40db7ffcabc0b0b72e6c634cca2aca4972f88e11cbd4fb3674d90bb7b40ced21`  
		Last Modified: Tue, 21 Mar 2017 18:28:16 GMT  
		Size: 1.7 KB (1702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d5203c7a3fc7144bcddbfd9ac1fc83fd5577713c1939a3383a67bcd6f060c`  
		Last Modified: Tue, 21 Mar 2017 18:28:16 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dedfab3fe33f50889ca1f5638471dc025893ba2c3aa03864eb0932d3c0964a0`  
		Last Modified: Tue, 21 Mar 2017 18:28:15 GMT  
		Size: 227.5 KB (227528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60667ace33206c584ec918bc0f33c41a2763f4d427a494967bc3485d48b8d790`  
		Last Modified: Tue, 21 Mar 2017 18:28:14 GMT  
		Size: 1.2 MB (1246016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a231eeadccf4478b13854b6c45a5912284885de24ace96510a489826d62eae`  
		Last Modified: Tue, 21 Mar 2017 18:28:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd08242afdbb1c6ce572154191ce33d33c92a56e6f9d764af4be9d6f007c43a`  
		Last Modified: Tue, 21 Mar 2017 18:28:13 GMT  
		Size: 2.0 KB (1985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6a8f302be5d232a060600d52f960321c9ec36d7c71774ba3cbc9455fa520a3`  
		Last Modified: Tue, 21 Mar 2017 18:28:11 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc07a46d5bf07c19c7b54e4794276c3d8e967017738232ee0be76a737a4b86d`  
		Last Modified: Tue, 21 Mar 2017 18:28:41 GMT  
		Size: 62.1 MB (62092314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7ce744f4fe5ee295e8ca205bef7f50c18646e403def30e4c25d64ff42f958`  
		Last Modified: Tue, 21 Mar 2017 18:28:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc91e69348fc43794b2f14d514d6d0eb24bf2500846b94f2dde2a04bb2f8210`  
		Last Modified: Tue, 21 Mar 2017 18:28:12 GMT  
		Size: 1.7 KB (1723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338034c915a1cafe5a71adc03909de35e58356c1ba3453c1aef67247aa45399a`  
		Last Modified: Tue, 21 Mar 2017 18:28:11 GMT  
		Size: 120.0 B  
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
$ docker pull mongo@sha256:84bf514fdbd7a900ab9d0bc8555f8e448a2a082b9b8e793bd7ae887c20340f8e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2.12` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101513826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8531babc64687298941d3fd1db8bb5051fa82f454d0aed6968e3a9cf366f703d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:26:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:26:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:27:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:27:03 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 21 Mar 2017 18:27:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:27:05 GMT
ENV MONGO_MAJOR=3.2
# Tue, 21 Mar 2017 18:27:06 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 21 Mar 2017 18:27:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:27:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:27:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:27:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:27:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:27:23 GMT
COPY file:1960e7832cb107339a3c6e4c6541f753e1773570a1272e048ee5ba11bd8ab749 in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:27:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:27:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:27:24 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:27:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0912ebf7ee0cf66a0132b3741cef6524bc421736f2ce11681e08faf28ba12c4b`  
		Last Modified: Tue, 21 Mar 2017 18:29:48 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15680c434a455dca33c0b7aed8dfcafd9247ea9ff685e696fdaa8aae0978038`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 208.6 KB (208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3943b5c9f05733d1a5c069753dec3738f1968eb1da1f8feff347018ced08fd77`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 1.2 MB (1217197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63aa53dab658c5da9afd6f5c840ce2ea3a70418f75ed7ecaafc7bc489c34f14`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfa3bab41944c8f2ca1b09a06e6301304843238c8b656299dcd6af363176bfc`  
		Last Modified: Tue, 21 Mar 2017 18:29:45 GMT  
		Size: 3.1 KB (3070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bec1b21cc0e473b3a7adc51372014be1f61acbdb719b4925db572f58cb8ea46`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847a715ed49b545e5d46358260f9ebf04e62a95f92a6869a632ade86ad6ea41a`  
		Last Modified: Tue, 21 Mar 2017 18:30:12 GMT  
		Size: 70.6 MB (70555090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15b446a03cd8916491bdf68bedc9f9778486cdac6fabb8c04e48a6989a0cf96`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e721ab334780b7bb5a3cc61bd75956fff891a2590047b7547d1a0fd674bdc4d`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 1.8 KB (1847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0422e5b1fe3df0fb0e61bed5b4e3233cff86c971df1291925c51c6161c18eb1c`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:84bf514fdbd7a900ab9d0bc8555f8e448a2a082b9b8e793bd7ae887c20340f8e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101513826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8531babc64687298941d3fd1db8bb5051fa82f454d0aed6968e3a9cf366f703d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:26:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:26:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:27:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:27:03 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 21 Mar 2017 18:27:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:27:05 GMT
ENV MONGO_MAJOR=3.2
# Tue, 21 Mar 2017 18:27:06 GMT
ENV MONGO_VERSION=3.2.12
# Tue, 21 Mar 2017 18:27:06 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:27:07 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:27:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:27:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:27:22 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:27:23 GMT
COPY file:1960e7832cb107339a3c6e4c6541f753e1773570a1272e048ee5ba11bd8ab749 in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:27:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:27:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:27:24 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:27:25 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0912ebf7ee0cf66a0132b3741cef6524bc421736f2ce11681e08faf28ba12c4b`  
		Last Modified: Tue, 21 Mar 2017 18:29:48 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15680c434a455dca33c0b7aed8dfcafd9247ea9ff685e696fdaa8aae0978038`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 208.6 KB (208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3943b5c9f05733d1a5c069753dec3738f1968eb1da1f8feff347018ced08fd77`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 1.2 MB (1217197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63aa53dab658c5da9afd6f5c840ce2ea3a70418f75ed7ecaafc7bc489c34f14`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfa3bab41944c8f2ca1b09a06e6301304843238c8b656299dcd6af363176bfc`  
		Last Modified: Tue, 21 Mar 2017 18:29:45 GMT  
		Size: 3.1 KB (3070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bec1b21cc0e473b3a7adc51372014be1f61acbdb719b4925db572f58cb8ea46`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847a715ed49b545e5d46358260f9ebf04e62a95f92a6869a632ade86ad6ea41a`  
		Last Modified: Tue, 21 Mar 2017 18:30:12 GMT  
		Size: 70.6 MB (70555090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15b446a03cd8916491bdf68bedc9f9778486cdac6fabb8c04e48a6989a0cf96`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e721ab334780b7bb5a3cc61bd75956fff891a2590047b7547d1a0fd674bdc4d`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 1.8 KB (1847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0422e5b1fe3df0fb0e61bed5b4e3233cff86c971df1291925c51c6161c18eb1c`  
		Last Modified: Tue, 21 Mar 2017 18:29:43 GMT  
		Size: 119.0 B  
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

## `mongo:3.4.2`

```console
$ docker pull mongo@sha256:e5a4f6caf4fb6773e41292b56308ed427692add67ffd7c655fdf11a78a72df4e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128377152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffae984aa30cfde62ca06d127b65b5d37252b89ad407d0c2c632212d52ba58ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:26:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:26:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:27:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:27:25 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 18:27:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 18:27:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:27:29 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:27:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:27:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:27:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:27:46 GMT
COPY file:32733ce9a2af4f8984c68d40d44d10f08fcb16f62ac630c369cdde09171ae5cb in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:27:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:27:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:27:48 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:27:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0912ebf7ee0cf66a0132b3741cef6524bc421736f2ce11681e08faf28ba12c4b`  
		Last Modified: Tue, 21 Mar 2017 18:29:48 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15680c434a455dca33c0b7aed8dfcafd9247ea9ff685e696fdaa8aae0978038`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 208.6 KB (208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3943b5c9f05733d1a5c069753dec3738f1968eb1da1f8feff347018ced08fd77`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 1.2 MB (1217197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63aa53dab658c5da9afd6f5c840ce2ea3a70418f75ed7ecaafc7bc489c34f14`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732f8dff8ff4ce4ea24cc65959d1a30eccf82c836f2e8db2fdd96bb21ad9fb05`  
		Last Modified: Tue, 21 Mar 2017 18:31:10 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f462685b33bc89411651489e7db90103ea287d7601b5239532fee0179505b3b`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a08818819de1d43cc3c30a107a58bd8f6746c24cc6e557637ecae5c082171e`  
		Last Modified: Tue, 21 Mar 2017 18:31:43 GMT  
		Size: 97.4 MB (97420185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0c728bdfc1d9a5784b4bcf8036b4446efb4cbe23a90416c7c739d4163b6631`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3947cf7d912bd478b61f1714f509cdc41ee750a51d10aedb0fae7ff5750b3e`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e908b11ba7e00b55ed0ed2b8ba1185f7079b3205378d6aeaf495b13a192e0ef1`  
		Last Modified: Tue, 21 Mar 2017 18:31:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:e5a4f6caf4fb6773e41292b56308ed427692add67ffd7c655fdf11a78a72df4e
```

-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128377152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffae984aa30cfde62ca06d127b65b5d37252b89ad407d0c2c632212d52ba58ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:26:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:26:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:27:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:27:25 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 18:27:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 18:27:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:27:29 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:27:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:27:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:27:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:27:46 GMT
COPY file:32733ce9a2af4f8984c68d40d44d10f08fcb16f62ac630c369cdde09171ae5cb in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:27:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:27:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:27:48 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:27:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0912ebf7ee0cf66a0132b3741cef6524bc421736f2ce11681e08faf28ba12c4b`  
		Last Modified: Tue, 21 Mar 2017 18:29:48 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15680c434a455dca33c0b7aed8dfcafd9247ea9ff685e696fdaa8aae0978038`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 208.6 KB (208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3943b5c9f05733d1a5c069753dec3738f1968eb1da1f8feff347018ced08fd77`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 1.2 MB (1217197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63aa53dab658c5da9afd6f5c840ce2ea3a70418f75ed7ecaafc7bc489c34f14`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732f8dff8ff4ce4ea24cc65959d1a30eccf82c836f2e8db2fdd96bb21ad9fb05`  
		Last Modified: Tue, 21 Mar 2017 18:31:10 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f462685b33bc89411651489e7db90103ea287d7601b5239532fee0179505b3b`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a08818819de1d43cc3c30a107a58bd8f6746c24cc6e557637ecae5c082171e`  
		Last Modified: Tue, 21 Mar 2017 18:31:43 GMT  
		Size: 97.4 MB (97420185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0c728bdfc1d9a5784b4bcf8036b4446efb4cbe23a90416c7c739d4163b6631`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3947cf7d912bd478b61f1714f509cdc41ee750a51d10aedb0fae7ff5750b3e`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e908b11ba7e00b55ed0ed2b8ba1185f7079b3205378d6aeaf495b13a192e0ef1`  
		Last Modified: Tue, 21 Mar 2017 18:31:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3`

```console
$ docker pull mongo@sha256:e5a4f6caf4fb6773e41292b56308ed427692add67ffd7c655fdf11a78a72df4e
```

-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128377152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffae984aa30cfde62ca06d127b65b5d37252b89ad407d0c2c632212d52ba58ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:26:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:26:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:27:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:27:25 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 18:27:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 18:27:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:27:29 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:27:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:27:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:27:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:27:46 GMT
COPY file:32733ce9a2af4f8984c68d40d44d10f08fcb16f62ac630c369cdde09171ae5cb in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:27:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:27:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:27:48 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:27:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0912ebf7ee0cf66a0132b3741cef6524bc421736f2ce11681e08faf28ba12c4b`  
		Last Modified: Tue, 21 Mar 2017 18:29:48 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15680c434a455dca33c0b7aed8dfcafd9247ea9ff685e696fdaa8aae0978038`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 208.6 KB (208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3943b5c9f05733d1a5c069753dec3738f1968eb1da1f8feff347018ced08fd77`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 1.2 MB (1217197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63aa53dab658c5da9afd6f5c840ce2ea3a70418f75ed7ecaafc7bc489c34f14`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732f8dff8ff4ce4ea24cc65959d1a30eccf82c836f2e8db2fdd96bb21ad9fb05`  
		Last Modified: Tue, 21 Mar 2017 18:31:10 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f462685b33bc89411651489e7db90103ea287d7601b5239532fee0179505b3b`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a08818819de1d43cc3c30a107a58bd8f6746c24cc6e557637ecae5c082171e`  
		Last Modified: Tue, 21 Mar 2017 18:31:43 GMT  
		Size: 97.4 MB (97420185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0c728bdfc1d9a5784b4bcf8036b4446efb4cbe23a90416c7c739d4163b6631`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3947cf7d912bd478b61f1714f509cdc41ee750a51d10aedb0fae7ff5750b3e`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e908b11ba7e00b55ed0ed2b8ba1185f7079b3205378d6aeaf495b13a192e0ef1`  
		Last Modified: Tue, 21 Mar 2017 18:31:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:e5a4f6caf4fb6773e41292b56308ed427692add67ffd7c655fdf11a78a72df4e
```

-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128377152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffae984aa30cfde62ca06d127b65b5d37252b89ad407d0c2c632212d52ba58ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:56 GMT
ADD file:a8e568cac3297f08efca89dbac4ea579717ed203b1601807b67954cb6c466e73 in / 
# Mon, 27 Feb 2017 20:34:57 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:26:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 21 Mar 2017 18:26:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 18:26:47 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 18:27:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 18:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 18:27:25 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 21 Mar 2017 18:27:27 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_MAJOR=3.4
# Tue, 21 Mar 2017 18:27:27 GMT
ENV MONGO_VERSION=3.4.2
# Tue, 21 Mar 2017 18:27:28 GMT
ENV MONGO_PACKAGE=mongodb-org
# Tue, 21 Mar 2017 18:27:29 GMT
RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/$MONGO_MAJOR main" > /etc/apt/sources.list.d/mongodb-org.list
# Tue, 21 Mar 2017 18:27:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 21 Mar 2017 18:27:45 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 21 Mar 2017 18:27:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 21 Mar 2017 18:27:46 GMT
COPY file:32733ce9a2af4f8984c68d40d44d10f08fcb16f62ac630c369cdde09171ae5cb in /usr/local/bin/ 
# Tue, 21 Mar 2017 18:27:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 18:27:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 18:27:48 GMT
EXPOSE 27017/tcp
# Tue, 21 Mar 2017 18:27:48 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:99506a317b930653ea3da10d5c2f472c2078c32e908e87ae7d7e9ada6e3ac7da`  
		Last Modified: Mon, 27 Feb 2017 20:41:48 GMT  
		Size: 29.5 MB (29525338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0912ebf7ee0cf66a0132b3741cef6524bc421736f2ce11681e08faf28ba12c4b`  
		Last Modified: Tue, 21 Mar 2017 18:29:48 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15680c434a455dca33c0b7aed8dfcafd9247ea9ff685e696fdaa8aae0978038`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 208.6 KB (208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3943b5c9f05733d1a5c069753dec3738f1968eb1da1f8feff347018ced08fd77`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 1.2 MB (1217197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63aa53dab658c5da9afd6f5c840ce2ea3a70418f75ed7ecaafc7bc489c34f14`  
		Last Modified: Tue, 21 Mar 2017 18:29:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732f8dff8ff4ce4ea24cc65959d1a30eccf82c836f2e8db2fdd96bb21ad9fb05`  
		Last Modified: Tue, 21 Mar 2017 18:31:10 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f462685b33bc89411651489e7db90103ea287d7601b5239532fee0179505b3b`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a08818819de1d43cc3c30a107a58bd8f6746c24cc6e557637ecae5c082171e`  
		Last Modified: Tue, 21 Mar 2017 18:31:43 GMT  
		Size: 97.4 MB (97420185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0c728bdfc1d9a5784b4bcf8036b4446efb4cbe23a90416c7c739d4163b6631`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3947cf7d912bd478b61f1714f509cdc41ee750a51d10aedb0fae7ff5750b3e`  
		Last Modified: Tue, 21 Mar 2017 18:31:07 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e908b11ba7e00b55ed0ed2b8ba1185f7079b3205378d6aeaf495b13a192e0ef1`  
		Last Modified: Tue, 21 Mar 2017 18:31:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.2-windowsservercore`

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
