## `mongo:unstable`

```console
$ docker pull mongo@sha256:b896baa314f6c80132a397cd6f4ce312cb4a2e609db431ba9bbdaf9b88238c1d
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
$ docker pull mongo@sha256:fa6a06dc2d4217a583c761796cd3ae5294825856a06e29d9f104f3d236beb62d
```

-	Docker Version: 17.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5415904889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7cfec106e10fc3f455d35ee2755c49f2333882e87a53f29adab9c0dc59b073`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 09 Oct 2017 19:23:50 GMT
RUN Install update 10.0.14393.1770
# Wed, 11 Oct 2017 01:37:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 11 Oct 2017 01:42:07 GMT
ENV MONGO_VERSION=3.5.13
# Wed, 11 Oct 2017 01:42:12 GMT
ENV MONGO_DOWNLOAD_URL=http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.5.13-signed.msi
# Wed, 11 Oct 2017 01:42:15 GMT
ENV MONGO_DOWNLOAD_SHA256=7ee348277ea8c692e8552aaea4a758f4fb3838431e6627160ef4b060bbaf3b49
# Wed, 11 Oct 2017 01:43:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 11 Oct 2017 01:43:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Oct 2017 01:43:37 GMT
EXPOSE 27017/tcp
# Wed, 11 Oct 2017 01:43:40 GMT
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
	-	`sha256:8db45a9c1883baa808fc2bd5b53ea6c18ad7b55eba3d8ad132f5a38d689b3bdf`  
		Last Modified: Wed, 11 Oct 2017 01:43:58 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52e8cdf3d5024e4d39290fd3c8f5044ec56aac4c656f404666b3cd92caf80`  
		Last Modified: Wed, 11 Oct 2017 01:45:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a478c73d17f5f5643330e1b28a2f757c7038345a422e038ac0d2d89a69a8dc`  
		Last Modified: Wed, 11 Oct 2017 01:45:13 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb842abdbf53f48cd9e494dd0ef9a4e9d232fffd196c21ae33d0215081e48c6`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b033d7cb9d8712959e6564bf54a38ecd8aafbbba703c07c4fabf519cbed381`  
		Last Modified: Wed, 11 Oct 2017 01:45:16 GMT  
		Size: 65.4 MB (65389234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affdc4f69ef0dd6d7783ffbcac96b2e3abc613930decdbcfc43dc567fbd35e9b`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c439cccec1ac5e02e4ca246bd31e2e8a1f4cb9f9d937873e0e0e958453f61f`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eec4d94d553b8e3b76e62b87e01627a0eb78d515098b6ccd5fdbc2e09fbe35`  
		Last Modified: Wed, 11 Oct 2017 01:45:04 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
