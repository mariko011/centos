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
$ docker pull mongo@sha256:2c55bcc870c269771aeade05fc3dd3657800540e0a48755876a1dc70db1e76d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:73822ded9d3a37f668642093f0820e8b9d15f4703ff15934b22345d3a007be37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:36381258e075dffb8b1307c8cd71b53c6c3e6fb1e44684ca4f3f0c2ca7ea1deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7312593938b8f6337554d1eae1ac2befcc5fc29243d1fd72584d41ee5cdad33e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:35 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Sat, 04 Nov 2017 05:27:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:34:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:34:33 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:34:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:45 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:34:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:34:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:34:59 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Sat, 04 Nov 2017 18:35:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_MAJOR=3.0
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_VERSION=3.0.15
# Sat, 04 Nov 2017 18:35:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:35:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:35:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:35:12 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:35:12 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:35:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:35:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:35:13 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:35:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a004d7355d43ca02427fd2ed84230812fd4f7bb85c466916371072aef4ae9`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa5a3afb2b88d4dae32fcc46e8401274156698637781f0ad3d53159d8e5512`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769e01fbd0e1cc025a1ab037dd33fee87980e6e38c3b96bf11f00d120802b733`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.7 MB (2660772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4bf642cb3de29596921664a96ac4858cb71bf10048848eb9f900e0e5097b6`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 1.1 MB (1103181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1b36f4df7fa92cb1b7ddcbc2a311aea866463401c962ed7e0de10290c1469c`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab03bef87d3a5be4d372883a0886aa85b069d4934224f0d2d7d8237dd21f0e4`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c75060a12abc345ad17407190a9517f620712434f8e29f3771b4e3d9325fac`  
		Last Modified: Sat, 04 Nov 2017 18:38:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2eb1e5f3eca1d1be97182f5938572db8e7c5261f3aa1036f3c18424a3bdfe`  
		Last Modified: Sat, 04 Nov 2017 18:38:24 GMT  
		Size: 61.9 MB (61886345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b47d5e60f5d08d731f2bf5a53a615830bb90438af3315d48cf1465b26e99df`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c448308fd10471083ec764e06813e6b2aa74fbee6102c300189984a1a27cc9`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c1628792a35269b56a0f82ae8ecc616579782896f4a7e652984e60d4556b7`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
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
$ docker pull mongo@sha256:73822ded9d3a37f668642093f0820e8b9d15f4703ff15934b22345d3a007be37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:36381258e075dffb8b1307c8cd71b53c6c3e6fb1e44684ca4f3f0c2ca7ea1deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7312593938b8f6337554d1eae1ac2befcc5fc29243d1fd72584d41ee5cdad33e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:35 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Sat, 04 Nov 2017 05:27:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:34:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:34:33 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:34:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:45 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:34:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:34:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:34:59 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Sat, 04 Nov 2017 18:35:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_MAJOR=3.0
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_VERSION=3.0.15
# Sat, 04 Nov 2017 18:35:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:35:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:35:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:35:12 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:35:12 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:35:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:35:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:35:13 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:35:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a004d7355d43ca02427fd2ed84230812fd4f7bb85c466916371072aef4ae9`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa5a3afb2b88d4dae32fcc46e8401274156698637781f0ad3d53159d8e5512`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769e01fbd0e1cc025a1ab037dd33fee87980e6e38c3b96bf11f00d120802b733`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.7 MB (2660772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4bf642cb3de29596921664a96ac4858cb71bf10048848eb9f900e0e5097b6`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 1.1 MB (1103181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1b36f4df7fa92cb1b7ddcbc2a311aea866463401c962ed7e0de10290c1469c`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab03bef87d3a5be4d372883a0886aa85b069d4934224f0d2d7d8237dd21f0e4`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c75060a12abc345ad17407190a9517f620712434f8e29f3771b4e3d9325fac`  
		Last Modified: Sat, 04 Nov 2017 18:38:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2eb1e5f3eca1d1be97182f5938572db8e7c5261f3aa1036f3c18424a3bdfe`  
		Last Modified: Sat, 04 Nov 2017 18:38:24 GMT  
		Size: 61.9 MB (61886345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b47d5e60f5d08d731f2bf5a53a615830bb90438af3315d48cf1465b26e99df`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c448308fd10471083ec764e06813e6b2aa74fbee6102c300189984a1a27cc9`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c1628792a35269b56a0f82ae8ecc616579782896f4a7e652984e60d4556b7`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
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
$ docker pull mongo@sha256:f0e8cd8e3dc16086dc552609623b9951f6cb500282f3c808d75a406a08b999a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:36381258e075dffb8b1307c8cd71b53c6c3e6fb1e44684ca4f3f0c2ca7ea1deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7312593938b8f6337554d1eae1ac2befcc5fc29243d1fd72584d41ee5cdad33e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:35 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Sat, 04 Nov 2017 05:27:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:34:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:34:33 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:34:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:45 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:34:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:34:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:34:59 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Sat, 04 Nov 2017 18:35:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_MAJOR=3.0
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_VERSION=3.0.15
# Sat, 04 Nov 2017 18:35:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:35:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:35:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:35:12 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:35:12 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:35:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:35:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:35:13 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:35:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a004d7355d43ca02427fd2ed84230812fd4f7bb85c466916371072aef4ae9`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa5a3afb2b88d4dae32fcc46e8401274156698637781f0ad3d53159d8e5512`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769e01fbd0e1cc025a1ab037dd33fee87980e6e38c3b96bf11f00d120802b733`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.7 MB (2660772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4bf642cb3de29596921664a96ac4858cb71bf10048848eb9f900e0e5097b6`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 1.1 MB (1103181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1b36f4df7fa92cb1b7ddcbc2a311aea866463401c962ed7e0de10290c1469c`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab03bef87d3a5be4d372883a0886aa85b069d4934224f0d2d7d8237dd21f0e4`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c75060a12abc345ad17407190a9517f620712434f8e29f3771b4e3d9325fac`  
		Last Modified: Sat, 04 Nov 2017 18:38:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2eb1e5f3eca1d1be97182f5938572db8e7c5261f3aa1036f3c18424a3bdfe`  
		Last Modified: Sat, 04 Nov 2017 18:38:24 GMT  
		Size: 61.9 MB (61886345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b47d5e60f5d08d731f2bf5a53a615830bb90438af3315d48cf1465b26e99df`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c448308fd10471083ec764e06813e6b2aa74fbee6102c300189984a1a27cc9`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c1628792a35269b56a0f82ae8ecc616579782896f4a7e652984e60d4556b7`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
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
$ docker pull mongo@sha256:f0e8cd8e3dc16086dc552609623b9951f6cb500282f3c808d75a406a08b999a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:36381258e075dffb8b1307c8cd71b53c6c3e6fb1e44684ca4f3f0c2ca7ea1deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84817132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7312593938b8f6337554d1eae1ac2befcc5fc29243d1fd72584d41ee5cdad33e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:35 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Sat, 04 Nov 2017 05:27:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:34:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:34:33 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Sat, 04 Nov 2017 18:34:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:45 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:34:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:34:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:34:59 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Sat, 04 Nov 2017 18:35:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:01 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_MAJOR=3.0
# Sat, 04 Nov 2017 18:35:01 GMT
ENV MONGO_VERSION=3.0.15
# Sat, 04 Nov 2017 18:35:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:35:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:35:12 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:35:12 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:35:12 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:35:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:35:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:35:13 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:35:13 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a004d7355d43ca02427fd2ed84230812fd4f7bb85c466916371072aef4ae9`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa5a3afb2b88d4dae32fcc46e8401274156698637781f0ad3d53159d8e5512`  
		Last Modified: Sat, 04 Nov 2017 18:38:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769e01fbd0e1cc025a1ab037dd33fee87980e6e38c3b96bf11f00d120802b733`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.7 MB (2660772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da4bf642cb3de29596921664a96ac4858cb71bf10048848eb9f900e0e5097b6`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 1.1 MB (1103181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1b36f4df7fa92cb1b7ddcbc2a311aea866463401c962ed7e0de10290c1469c`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab03bef87d3a5be4d372883a0886aa85b069d4934224f0d2d7d8237dd21f0e4`  
		Last Modified: Sat, 04 Nov 2017 18:38:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c75060a12abc345ad17407190a9517f620712434f8e29f3771b4e3d9325fac`  
		Last Modified: Sat, 04 Nov 2017 18:38:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2eb1e5f3eca1d1be97182f5938572db8e7c5261f3aa1036f3c18424a3bdfe`  
		Last Modified: Sat, 04 Nov 2017 18:38:24 GMT  
		Size: 61.9 MB (61886345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b47d5e60f5d08d731f2bf5a53a615830bb90438af3315d48cf1465b26e99df`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c448308fd10471083ec764e06813e6b2aa74fbee6102c300189984a1a27cc9`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
		Size: 3.1 KB (3113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c1628792a35269b56a0f82ae8ecc616579782896f4a7e652984e60d4556b7`  
		Last Modified: Sat, 04 Nov 2017 18:38:12 GMT  
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
$ docker pull mongo@sha256:251589564278b8db42f55336e9a97fd69b7331e7d41357eedb842e651a852d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:a1dbadc55321d70f04edfa4fb4761c6d789408a341ac3cf4aea89898ec0ca0af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48bfad4a0bac674194c6716b0600fa1c01f2df637915eb28482af13f51d320d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:35:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:35:35 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:35:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:35:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:35:52 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Sat, 04 Nov 2017 18:35:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_MAJOR=3.2
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_VERSION=3.2.17
# Sat, 04 Nov 2017 18:35:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:36:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:36:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:36:13 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:36:14 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:36:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:36:15 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:36:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b81693e2bee3cdcafbca1c92435ec597b95bfec7ae00c69d7f3cd49825065f2`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 2.4 MB (2397704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebdb5aa5c309e36c181b94f9202ac27b74aaafd22560ab4ffd7b32281de2aaa`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 1.1 MB (1108702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c4f147a91a919c880de0c4fa55b5bdae0339471b29c0721bca30f8ecc84d64`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d95e521cdcc15a87c9364ba02d4c77eeeb4513eb315c80d917411da8302e32`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8afc3abab3883611a307f15c651a0eac341d7fd5fdec3fe3403da210c9f33d3`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82f2fd1604174a0c223bfb1e91365573e1af23af3a30cd9cfc8f4aadcfcd1fc`  
		Last Modified: Sat, 04 Nov 2017 18:38:52 GMT  
		Size: 70.8 MB (70829906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfa7b6db60b581526764af06fb3ff34b7445dc2ccfb87b397a54f8e507c3b9`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea1a43b68c04a7a571837fa608771003a9d669481a6b6a1e9462950b33f1e97`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa479ba8262f9b4620e55cb251db8daee1bf71472fbe49229f8f2c27687e94c`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:251589564278b8db42f55336e9a97fd69b7331e7d41357eedb842e651a852d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.2.17` - linux; amd64

```console
$ docker pull mongo@sha256:a1dbadc55321d70f04edfa4fb4761c6d789408a341ac3cf4aea89898ec0ca0af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48bfad4a0bac674194c6716b0600fa1c01f2df637915eb28482af13f51d320d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:35:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:35:35 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:35:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:35:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:35:52 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Sat, 04 Nov 2017 18:35:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_MAJOR=3.2
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_VERSION=3.2.17
# Sat, 04 Nov 2017 18:35:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:36:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:36:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:36:13 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:36:14 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:36:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:36:15 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:36:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b81693e2bee3cdcafbca1c92435ec597b95bfec7ae00c69d7f3cd49825065f2`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 2.4 MB (2397704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebdb5aa5c309e36c181b94f9202ac27b74aaafd22560ab4ffd7b32281de2aaa`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 1.1 MB (1108702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c4f147a91a919c880de0c4fa55b5bdae0339471b29c0721bca30f8ecc84d64`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d95e521cdcc15a87c9364ba02d4c77eeeb4513eb315c80d917411da8302e32`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8afc3abab3883611a307f15c651a0eac341d7fd5fdec3fe3403da210c9f33d3`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82f2fd1604174a0c223bfb1e91365573e1af23af3a30cd9cfc8f4aadcfcd1fc`  
		Last Modified: Sat, 04 Nov 2017 18:38:52 GMT  
		Size: 70.8 MB (70829906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfa7b6db60b581526764af06fb3ff34b7445dc2ccfb87b397a54f8e507c3b9`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea1a43b68c04a7a571837fa608771003a9d669481a6b6a1e9462950b33f1e97`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa479ba8262f9b4620e55cb251db8daee1bf71472fbe49229f8f2c27687e94c`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:ffeccd74c46fdf89833a300dca51ba68625b21320888ed2a2c430b57ffe6589d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.17-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:a1dbadc55321d70f04edfa4fb4761c6d789408a341ac3cf4aea89898ec0ca0af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48bfad4a0bac674194c6716b0600fa1c01f2df637915eb28482af13f51d320d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:35:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:35:35 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:35:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:35:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:35:52 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Sat, 04 Nov 2017 18:35:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_MAJOR=3.2
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_VERSION=3.2.17
# Sat, 04 Nov 2017 18:35:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:36:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:36:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:36:13 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:36:14 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:36:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:36:15 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:36:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b81693e2bee3cdcafbca1c92435ec597b95bfec7ae00c69d7f3cd49825065f2`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 2.4 MB (2397704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebdb5aa5c309e36c181b94f9202ac27b74aaafd22560ab4ffd7b32281de2aaa`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 1.1 MB (1108702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c4f147a91a919c880de0c4fa55b5bdae0339471b29c0721bca30f8ecc84d64`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d95e521cdcc15a87c9364ba02d4c77eeeb4513eb315c80d917411da8302e32`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8afc3abab3883611a307f15c651a0eac341d7fd5fdec3fe3403da210c9f33d3`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82f2fd1604174a0c223bfb1e91365573e1af23af3a30cd9cfc8f4aadcfcd1fc`  
		Last Modified: Sat, 04 Nov 2017 18:38:52 GMT  
		Size: 70.8 MB (70829906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfa7b6db60b581526764af06fb3ff34b7445dc2ccfb87b397a54f8e507c3b9`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea1a43b68c04a7a571837fa608771003a9d669481a6b6a1e9462950b33f1e97`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa479ba8262f9b4620e55cb251db8daee1bf71472fbe49229f8f2c27687e94c`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:ffeccd74c46fdf89833a300dca51ba68625b21320888ed2a2c430b57ffe6589d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:a1dbadc55321d70f04edfa4fb4761c6d789408a341ac3cf4aea89898ec0ca0af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104459035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48bfad4a0bac674194c6716b0600fa1c01f2df637915eb28482af13f51d320d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:35:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates			jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:35:35 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:35:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:35:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:35:52 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Sat, 04 Nov 2017 18:35:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:35:55 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_MAJOR=3.2
# Sat, 04 Nov 2017 18:35:56 GMT
ENV MONGO_VERSION=3.2.17
# Sat, 04 Nov 2017 18:35:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:36:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:36:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:36:13 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:36:14 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:36:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:36:15 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:36:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b81693e2bee3cdcafbca1c92435ec597b95bfec7ae00c69d7f3cd49825065f2`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 2.4 MB (2397704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebdb5aa5c309e36c181b94f9202ac27b74aaafd22560ab4ffd7b32281de2aaa`  
		Last Modified: Sat, 04 Nov 2017 18:38:42 GMT  
		Size: 1.1 MB (1108702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c4f147a91a919c880de0c4fa55b5bdae0339471b29c0721bca30f8ecc84d64`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d95e521cdcc15a87c9364ba02d4c77eeeb4513eb315c80d917411da8302e32`  
		Last Modified: Sat, 04 Nov 2017 18:38:41 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8afc3abab3883611a307f15c651a0eac341d7fd5fdec3fe3403da210c9f33d3`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82f2fd1604174a0c223bfb1e91365573e1af23af3a30cd9cfc8f4aadcfcd1fc`  
		Last Modified: Sat, 04 Nov 2017 18:38:52 GMT  
		Size: 70.8 MB (70829906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfa7b6db60b581526764af06fb3ff34b7445dc2ccfb87b397a54f8e507c3b9`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea1a43b68c04a7a571837fa608771003a9d669481a6b6a1e9462950b33f1e97`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa479ba8262f9b4620e55cb251db8daee1bf71472fbe49229f8f2c27687e94c`  
		Last Modified: Sat, 04 Nov 2017 18:38:39 GMT  
		Size: 121.0 B  
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
$ docker pull mongo@sha256:2c55bcc870c269771aeade05fc3dd3657800540e0a48755876a1dc70db1e76d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:2c55bcc870c269771aeade05fc3dd3657800540e0a48755876a1dc70db1e76d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.4.10` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:914d5012653ed89aee41fa4a382ab9d8551d84eff8349ef9841b17f3fcb29b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.10-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:914d5012653ed89aee41fa4a382ab9d8551d84eff8349ef9841b17f3fcb29b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:403d2ba9c49720234be3fd44926972ddabb0435657b6324f41992e512e8c9493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5` - linux; amd64

```console
$ docker pull mongo@sha256:01170dfa25f6d11636dbc5f9795ac81bb16736c37bbf68c4493a397afddebb7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ab5e364821e699efaee21ce9b5d21d1a7c231e7e393ac03493c38ec6e638d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:37:37 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 04 Nov 2017 18:37:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_MAJOR=3.5
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_VERSION=3.5.13
# Sat, 04 Nov 2017 18:37:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:59 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:59 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:38:00 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:38:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce988bf6804cb8fa8826cd6e6994fdcaaf83abc63506fc5681ed4be903a6b7`  
		Last Modified: Sat, 04 Nov 2017 18:39:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ae40a4e351eed8d7768003bf6ef4d3825fabb51b299593c3f0e6095d4893b`  
		Last Modified: Sat, 04 Nov 2017 18:40:02 GMT  
		Size: 99.2 MB (99185478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbdb4a868249d635ae26dbd5d675db1030914321efc997b978e33e26c97badf`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4624d0639deaa3aeeba96503c86a70423144e9a14e15244f112cd25859a2f81`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 3.2 KB (3174 bytes)  
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
$ docker pull mongo@sha256:403d2ba9c49720234be3fd44926972ddabb0435657b6324f41992e512e8c9493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:3.5.13` - linux; amd64

```console
$ docker pull mongo@sha256:01170dfa25f6d11636dbc5f9795ac81bb16736c37bbf68c4493a397afddebb7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ab5e364821e699efaee21ce9b5d21d1a7c231e7e393ac03493c38ec6e638d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:37:37 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 04 Nov 2017 18:37:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_MAJOR=3.5
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_VERSION=3.5.13
# Sat, 04 Nov 2017 18:37:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:59 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:59 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:38:00 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:38:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce988bf6804cb8fa8826cd6e6994fdcaaf83abc63506fc5681ed4be903a6b7`  
		Last Modified: Sat, 04 Nov 2017 18:39:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ae40a4e351eed8d7768003bf6ef4d3825fabb51b299593c3f0e6095d4893b`  
		Last Modified: Sat, 04 Nov 2017 18:40:02 GMT  
		Size: 99.2 MB (99185478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbdb4a868249d635ae26dbd5d675db1030914321efc997b978e33e26c97badf`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4624d0639deaa3aeeba96503c86a70423144e9a14e15244f112cd25859a2f81`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 3.2 KB (3174 bytes)  
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
$ docker pull mongo@sha256:4ac378390683f2a042173f3d825179120ebdd142d021a9b35e3b513d215c983e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5.13-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:01170dfa25f6d11636dbc5f9795ac81bb16736c37bbf68c4493a397afddebb7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ab5e364821e699efaee21ce9b5d21d1a7c231e7e393ac03493c38ec6e638d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:37:37 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 04 Nov 2017 18:37:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_MAJOR=3.5
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_VERSION=3.5.13
# Sat, 04 Nov 2017 18:37:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:59 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:59 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:38:00 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:38:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce988bf6804cb8fa8826cd6e6994fdcaaf83abc63506fc5681ed4be903a6b7`  
		Last Modified: Sat, 04 Nov 2017 18:39:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ae40a4e351eed8d7768003bf6ef4d3825fabb51b299593c3f0e6095d4893b`  
		Last Modified: Sat, 04 Nov 2017 18:40:02 GMT  
		Size: 99.2 MB (99185478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbdb4a868249d635ae26dbd5d675db1030914321efc997b978e33e26c97badf`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4624d0639deaa3aeeba96503c86a70423144e9a14e15244f112cd25859a2f81`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 3.2 KB (3174 bytes)  
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
$ docker pull mongo@sha256:4ac378390683f2a042173f3d825179120ebdd142d021a9b35e3b513d215c983e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.5-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:01170dfa25f6d11636dbc5f9795ac81bb16736c37bbf68c4493a397afddebb7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ab5e364821e699efaee21ce9b5d21d1a7c231e7e393ac03493c38ec6e638d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:37:37 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 04 Nov 2017 18:37:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_MAJOR=3.5
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_VERSION=3.5.13
# Sat, 04 Nov 2017 18:37:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:59 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:59 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:38:00 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:38:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce988bf6804cb8fa8826cd6e6994fdcaaf83abc63506fc5681ed4be903a6b7`  
		Last Modified: Sat, 04 Nov 2017 18:39:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ae40a4e351eed8d7768003bf6ef4d3825fabb51b299593c3f0e6095d4893b`  
		Last Modified: Sat, 04 Nov 2017 18:40:02 GMT  
		Size: 99.2 MB (99185478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbdb4a868249d635ae26dbd5d675db1030914321efc997b978e33e26c97badf`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4624d0639deaa3aeeba96503c86a70423144e9a14e15244f112cd25859a2f81`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 3.2 KB (3174 bytes)  
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
$ docker pull mongo@sha256:914d5012653ed89aee41fa4a382ab9d8551d84eff8349ef9841b17f3fcb29b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:914d5012653ed89aee41fa4a382ab9d8551d84eff8349ef9841b17f3fcb29b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:2c55bcc870c269771aeade05fc3dd3657800540e0a48755876a1dc70db1e76d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:51bdcc462e479c9da4968a67535cd161bc8dd3850cae760efb56e18fb4caae3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132145063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22888af0ce0c9a48169a082a31e7ff346a03cdcf4c8fb7cf8765759bb25af3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:36:54 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Sat, 04 Nov 2017 18:36:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_PACKAGE=mongodb-org
# Sat, 04 Nov 2017 18:36:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:57 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_MAJOR=3.4
# Sat, 04 Nov 2017 18:36:58 GMT
ENV MONGO_VERSION=3.4.10
# Sat, 04 Nov 2017 18:36:58 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:18 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:18 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:19 GMT
COPY file:dbebaf4376a8d615e05b80e0bc26a2dfc5f8f8687b16ab47e64928fb5a00498d in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Nov 2017 18:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:37:19 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:37:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb98a53e667695e6520e91f89aacdb4a94dc8fc74c40f8281d46d78a688e8788`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0485050cd8ab6f89a00061d82c708bddb70b0ebc0444ce837c85afc58da1bd6`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac36cdc414b3061c5bc1063f3a235accfa99b83e2ed932c052398178e81a6a51`  
		Last Modified: Sat, 04 Nov 2017 18:39:22 GMT  
		Size: 98.5 MB (98517957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61814e3c487b26bd9525ffb4e214ed8a53f732992f6d5d9be51fcd1fe821f705`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a9f1da6b9582bcf020d4058ccd9d72137a76172bf1ef29e3a8edb312a7b34`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
		Size: 3.1 KB (3114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4beaef77a21773fb0bc7316e7d030112d884ff0214cd39addec0791d754048`  
		Last Modified: Sat, 04 Nov 2017 18:39:07 GMT  
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
$ docker pull mongo@sha256:403d2ba9c49720234be3fd44926972ddabb0435657b6324f41992e512e8c9493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1770; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:01170dfa25f6d11636dbc5f9795ac81bb16736c37bbf68c4493a397afddebb7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ab5e364821e699efaee21ce9b5d21d1a7c231e7e393ac03493c38ec6e638d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:37:37 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 04 Nov 2017 18:37:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_MAJOR=3.5
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_VERSION=3.5.13
# Sat, 04 Nov 2017 18:37:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:59 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:59 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:38:00 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:38:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce988bf6804cb8fa8826cd6e6994fdcaaf83abc63506fc5681ed4be903a6b7`  
		Last Modified: Sat, 04 Nov 2017 18:39:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ae40a4e351eed8d7768003bf6ef4d3825fabb51b299593c3f0e6095d4893b`  
		Last Modified: Sat, 04 Nov 2017 18:40:02 GMT  
		Size: 99.2 MB (99185478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbdb4a868249d635ae26dbd5d675db1030914321efc997b978e33e26c97badf`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4624d0639deaa3aeeba96503c86a70423144e9a14e15244f112cd25859a2f81`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 3.2 KB (3174 bytes)  
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
$ docker pull mongo@sha256:4ac378390683f2a042173f3d825179120ebdd142d021a9b35e3b513d215c983e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:01170dfa25f6d11636dbc5f9795ac81bb16736c37bbf68c4493a397afddebb7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132812525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ab5e364821e699efaee21ce9b5d21d1a7c231e7e393ac03493c38ec6e638d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod","--bind_ip_all"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 18:35:22 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Sat, 04 Nov 2017 18:36:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:36:33 GMT
ENV GOSU_VERSION=1.7
# Sat, 04 Nov 2017 18:36:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 18:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 18:37:34 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Sat, 04 Nov 2017 18:37:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 04 Nov 2017 18:37:37 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Sat, 04 Nov 2017 18:37:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_MAJOR=3.5
# Sat, 04 Nov 2017 18:37:38 GMT
ENV MONGO_VERSION=3.5.13
# Sat, 04 Nov 2017 18:37:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 04 Nov 2017 18:37:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 04 Nov 2017 18:37:59 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 04 Nov 2017 18:37:59 GMT
VOLUME [/data/db /data/configdb]
# Sat, 04 Nov 2017 18:37:59 GMT
COPY file:2693b7d26a4d17558bb637a0ad2c43c3be68788377b0e9eb105cd67726d4b645 in /usr/local/bin/ 
# Sat, 04 Nov 2017 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 18:38:00 GMT
EXPOSE 27017/tcp
# Sat, 04 Nov 2017 18:38:00 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8e2652ce92f00db69e54c684bb094a6e08037bb82e9d0c70ec2dd6553e4231`  
		Last Modified: Sat, 04 Nov 2017 18:38:43 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc856886986b19939654b22c57122f318b7b22c2e830f0549bdbacad2f95c98`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 2.4 MB (2397816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319e9ec4517b53dc79bf149ac253e8f0934fd3fc78c1e177e8fa4f6c59270f3`  
		Last Modified: Sat, 04 Nov 2017 18:39:10 GMT  
		Size: 1.1 MB (1108725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cbf8808f94f360772a43e079e45edcbb575895cb0ff3548af679c32e8b601b`  
		Last Modified: Sat, 04 Nov 2017 18:39:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42648c7b4523786aaf1e5ebb135e0ca0557f164bdbd7d7bf8bbaa793e582615`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce988bf6804cb8fa8826cd6e6994fdcaaf83abc63506fc5681ed4be903a6b7`  
		Last Modified: Sat, 04 Nov 2017 18:39:46 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ae40a4e351eed8d7768003bf6ef4d3825fabb51b299593c3f0e6095d4893b`  
		Last Modified: Sat, 04 Nov 2017 18:40:02 GMT  
		Size: 99.2 MB (99185478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbdb4a868249d635ae26dbd5d675db1030914321efc997b978e33e26c97badf`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4624d0639deaa3aeeba96503c86a70423144e9a14e15244f112cd25859a2f81`  
		Last Modified: Sat, 04 Nov 2017 18:39:45 GMT  
		Size: 3.2 KB (3174 bytes)  
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
