## `mongo:unstable`

```console
$ docker pull mongo@sha256:c856552e70389554689b8503505bb9b00d4cf1429a9130e74b47288f59412393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.1715; amd64

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
