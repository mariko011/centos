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
$ docker pull mongo@sha256:83cbceb6e715af5158eefd2035fc5501dd04d2de791a2c7fc76a9faf9c0b5f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:bfcc9ee8d7d2e1ce08f4348d37e0d4362159ca4e4e759c3eeed95f755a8d1f89
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
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:bfcc9ee8d7d2e1ce08f4348d37e0d4362159ca4e4e759c3eeed95f755a8d1f89
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
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
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
$ docker pull mongo@sha256:990306d679a2e41726a7b88168438ce4d8677b9977c9245ac57f012ba4324c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0.15-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
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
$ docker pull mongo@sha256:990306d679a2e41726a7b88168438ce4d8677b9977c9245ac57f012ba4324c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8c01fab629776668d1c2a35e760989be385b493cab50dce6729fff527165aa6c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5397493958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055c6bbdaa3d6bf1c54dafec7c2c184ae1b0e6c2a7dc7c0eeb02608dd385eef6`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:20:35 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 01 Nov 2017 19:20:36 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.15-signed.msi
# Wed, 01 Nov 2017 19:20:37 GMT
ENV MONGO_DOWNLOAD_SHA256=0a10cb87da164df7a1d31180d2ea1f3b096dda6e3d7b9f95c184ef953a1677bb
# Wed, 01 Nov 2017 19:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:22:23 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:22:26 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:22:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368bd85837f9e73dfd9e334264daeb711344e3316a0515b4988e3c653f4c3ba4`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50a00079c2f61028f6db2ff7704c0a5cb3fdc1cba147172cb7ddfaeeb919b8d`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a52f2064bc831bb2fdaa0be920d036a590829f739ff03c464eee5a56833e118`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7541e092ce537d486d59bbba596805bc54914a37d908d1810a533f9dac8b67`  
		Last Modified: Wed, 01 Nov 2017 19:29:57 GMT  
		Size: 47.0 MB (46978475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67ee0b8737f400163b42374dba32637b84651720fac6ca8165e1a1c8ee4129c`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf83a4c5cdf8fffd0e9b8a36deacb5386634aaf6474bb535abee56ab49f06b72`  
		Last Modified: Wed, 01 Nov 2017 19:29:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a7f2b4c02885b62eb44aed7dc0eec9fa16c430df14d79354f481a02116e331`  
		Last Modified: Wed, 01 Nov 2017 19:29:46 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:b1f2cead38daa7b9d24a54e4b609bf0eda8d5cb8ecee6b4423c6a864ce7eb302
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
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.17`

```console
$ docker pull mongo@sha256:b1f2cead38daa7b9d24a54e4b609bf0eda8d5cb8ecee6b4423c6a864ce7eb302
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
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
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
$ docker pull mongo@sha256:cb993b53943b619fa102268ed5e1a3b9c303b9e1f81881c1d473980063fdddc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2.17-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
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
$ docker pull mongo@sha256:cb993b53943b619fa102268ed5e1a3b9c303b9e1f81881c1d473980063fdddc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:8af64cb5fbdb448a92507acd7859a4ff9d05469121ae2f0f7d78788924b12bbe
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5403498807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9464b2c59d0b2da183e2fa94399cbe1b7842738c9e99b4e85e45a7409fe74d19`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_VERSION=3.2.17
# Wed, 01 Nov 2017 19:22:31 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.2.17-signed.msi
# Wed, 01 Nov 2017 19:22:32 GMT
ENV MONGO_DOWNLOAD_SHA256=b58dea82593acf637d76f3401bd8ba535093f3b37a32ff1d159bc06e088988fc
# Wed, 01 Nov 2017 19:24:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:24:26 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:24:27 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:24:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da4a5734642f52c1e59b8e2044efc904c05d7d410c872b6aa46a69a3745ee8`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92ad93664c369575232b9a0f11654cda60f8cd374c20deb5397bdd8197ece4`  
		Last Modified: Wed, 01 Nov 2017 19:30:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c247e6665d56b988e3b69978eb6eb0df2f61bbd74a8c40025e536fedd75fe20`  
		Last Modified: Wed, 01 Nov 2017 19:30:12 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff3c3d127e66f79a3bdc4ea946446a19219ec7eff07f8d5b73bbb488f7464f5`  
		Last Modified: Wed, 01 Nov 2017 19:30:22 GMT  
		Size: 53.0 MB (52983335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e8508638a3c394dbc107960c98eda132b8869aa78a3a803c4b10026a9ee7e6`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5af13a88b1dc49d991cd7197c3daa64bd1a8e97a14e0b29f9883a9595eb24`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ca6b7b7c7b3bb5d7790b731d55718fe4248bef2c27fc1e550ec90b92800f85`  
		Last Modified: Wed, 01 Nov 2017 19:30:11 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:83cbceb6e715af5158eefd2035fc5501dd04d2de791a2c7fc76a9faf9c0b5f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10`

```console
$ docker pull mongo@sha256:83cbceb6e715af5158eefd2035fc5501dd04d2de791a2c7fc76a9faf9c0b5f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4.10` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.4.10` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-jessie`

```console
$ docker pull mongo@sha256:39a5ddbed305b7a0d90e1c8c777f43680bafeb982135f775c22fb0f901b67f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.10-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.10-windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4.10-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:39a5ddbed305b7a0d90e1c8c777f43680bafeb982135f775c22fb0f901b67f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5`

```console
$ docker pull mongo@sha256:03004927e08d009521ba289c3a7ca284cdca3ddd2ef164b751e74c0e48b3139a
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
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.5.13`

```console
$ docker pull mongo@sha256:03004927e08d009521ba289c3a7ca284cdca3ddd2ef164b751e74c0e48b3139a
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
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
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
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5.13-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
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
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:39a5ddbed305b7a0d90e1c8c777f43680bafeb982135f775c22fb0f901b67f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:39a5ddbed305b7a0d90e1c8c777f43680bafeb982135f775c22fb0f901b67f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:83cbceb6e715af5158eefd2035fc5501dd04d2de791a2c7fc76a9faf9c0b5f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:7855c1006fbc99791d2f9de4c6e83a3a991c02b8dfff7151c7bd1f4aac91a131
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28fdc58a538b88b3b6ec20616e1efbc0672926396f317b1cc13db8d38b97b84`
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
# Thu, 26 Oct 2017 05:24:56 GMT
ENV MONGO_VERSION=3.4.10
# Thu, 26 Oct 2017 05:24:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 26 Oct 2017 05:25:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 26 Oct 2017 05:30:09 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 26 Oct 2017 05:30:09 GMT
VOLUME [/data/db /data/configdb]
# Thu, 26 Oct 2017 05:30:09 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Thu, 26 Oct 2017 05:30:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 26 Oct 2017 05:30:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 05:30:10 GMT
EXPOSE 27017/tcp
# Thu, 26 Oct 2017 05:30:11 GMT
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
	-	`sha256:f48c8684b7bfea895ea6b228d496cbe5464863e2fe275d074c990bc074f40dfa`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54068e03b88b124823da0856d1edd6906157de299129c77031021ebe74df9b4`  
		Last Modified: Thu, 26 Oct 2017 05:31:38 GMT  
		Size: 98.5 MB (98518002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9dbfbb1d2456b020da0590e79cdc02e74e139b3ba74e2f231bc3edac3d66a`  
		Last Modified: Thu, 26 Oct 2017 05:31:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d92888087e8d025028918fed3836924ffa3a8e2852b9a21ce5a6c66866de9a`  
		Last Modified: Thu, 26 Oct 2017 05:31:21 GMT  
		Size: 3.1 KB (3116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f14bea2cd4e7acab220ed63b27d37205400c55d240a3f99b684d842b6f88a93`  
		Last Modified: Thu, 26 Oct 2017 05:31:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:03004927e08d009521ba289c3a7ca284cdca3ddd2ef164b751e74c0e48b3139a
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
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
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
$ docker pull mongo@sha256:53a71f1933f45dd6b5328740f4779cafbce61a5da2fbec3c2a25edebcc5c2431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:dbeed2ad8a0afe4d04c6353b0a1495886d465060753254f80801d1780c1baac8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5420401051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664ef40fc967093624952f70a2826aaa45a5a604b0ae00a3070e38a2ea88e1ae`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:27:08 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 01 Nov 2017 19:27:09 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 01 Nov 2017 19:27:10 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 01 Nov 2017 19:29:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:29:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:29:29 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:29:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea18481da9fac5552e61693119be64f6e0993c1d33c002e6c3e9f1ea02fcf05a`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664f320eaef0f796fc97ded82d563b07e517ae56eb90f310211502d521e2592`  
		Last Modified: Wed, 01 Nov 2017 19:31:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf2fbe31dca31909cbea81d5e61014971995a39ae743b8183e3ce4832aa275f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b06f09b501171f7a1582cc354f13707b388659b815b8507a1201a888494a37`  
		Last Modified: Wed, 01 Nov 2017 19:31:22 GMT  
		Size: 69.9 MB (69885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25665f2ababcc446c20f0c78a99fccde9c924d62b773732605d9364a9d02479d`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c8ac7c4236e77daa25ad9df2004a5c7664462b0d022521ac55f3b9b664ad56`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c8e71a6ba4b669396b0384878c2fcded4c504ba6a802f8dd06c88a51ecb4f`  
		Last Modified: Wed, 01 Nov 2017 19:31:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:windowsservercore`

```console
$ docker pull mongo@sha256:d0d98e2aee71a6f664ff4958c96fdd34f05612e59b746688baa3f7f5f2d3738c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1770; amd64

### `mongo:windowsservercore` - windows version 10.0.14393.1770; amd64

```console
$ docker pull mongo@sha256:baf9bce3f58037620770649acd0374b75c1d76b1475e0ed32d3ae260f7e6500d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5418167869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5dcd99a135074c17bdf58195f24bc4672f0b15ff9dd3eb312dc06440512ff6f`
-	Default Command: `["mongod"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 01 Nov 2017 19:20:35 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 01 Nov 2017 19:24:42 GMT
ENV MONGO_VERSION=3.4.10
# Wed, 01 Nov 2017 19:24:43 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.4.10-signed.msi
# Wed, 01 Nov 2017 19:24:44 GMT
ENV MONGO_DOWNLOAD_SHA256=6b650bdf62792fb44445edfee2100b9a8d861710348c8bbd3b93f56d11d5e7ea
# Wed, 01 Nov 2017 19:26:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 01 Nov 2017 19:26:49 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 01 Nov 2017 19:26:51 GMT
EXPOSE 27017/tcp
# Wed, 01 Nov 2017 19:26:52 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8df8e568af76c1c311a1251f6f7402e2a09d14629840c97091beb9ba55419464`  
		Last Modified: Mon, 09 Oct 2017 19:23:50 GMT  
		Size: 1.3 GB (1280521235 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:03af5e0171692e103f0f1b8728103785b3d23688e1f218ea752b8378adbbdd10`  
		Last Modified: Wed, 01 Nov 2017 19:29:48 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f17252562ac31e40bbc84593366d05428681ce122425a2919ab3ebc2bbc472`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffea044469fb916e971cf59f5571588805b9bb75a132ab0f774edc5299c008d`  
		Last Modified: Wed, 01 Nov 2017 19:30:37 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d873b0c32613444aef9d98de4086aa87901467572219373af26efa909e7fc4f`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6108da4089c7ccd35e533330af7cd99b8aadfaf30a6acc8619aebd14b6187edb`  
		Last Modified: Wed, 01 Nov 2017 19:30:50 GMT  
		Size: 67.7 MB (67652420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86879c5c17312006623b49eab535af7d155a76ccf3e4d9035847c747c35299a8`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c31ab7bfe97ed14f2ee640813172dea87ebfcd71df5bf61a29b4a2dd892ae`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf663ea3bd5aa94f7f51a6f7bd985f314683cd1795be323c62978e2e549e40`  
		Last Modified: Wed, 01 Nov 2017 19:30:34 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
