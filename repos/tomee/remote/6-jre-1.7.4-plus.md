## `tomee:6-jre-1.7.4-plus`

```console
$ docker pull tomee@sha256:e8ae3355da142e09c360879cb5134f9456876b8ac37704bb942602ca57315fc4
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plus` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142499089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6b533891d5ae6249cda4ece07478dd5b33aa7d4b2101ba13dc909637874d64`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 24 Apr 2017 19:30:04 GMT
ADD file:cda477892272e4acea1f147bb76a3de26ec0d0abfd0c8c4171bfb10053c98985 in / 
# Mon, 24 Apr 2017 19:30:04 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:39:34 GMT
ENV LANG=C.UTF-8
# Mon, 24 Apr 2017 23:39:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Apr 2017 23:39:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Mon, 24 Apr 2017 23:39:37 GMT
ENV JAVA_VERSION=6b38
# Mon, 24 Apr 2017 23:39:37 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 24 Apr 2017 23:39:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 05:56:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 05:56:35 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 25 Apr 2017 05:56:36 GMT
WORKDIR /usr/local/tomee
# Tue, 25 Apr 2017 05:56:36 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 25 Apr 2017 05:56:41 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 25 Apr 2017 05:57:59 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 25 Apr 2017 05:58:00 GMT
EXPOSE 8080/tcp
# Tue, 25 Apr 2017 05:58:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1d46ed2a74b7da1620376a8b57cf77856ed64160d01186fc015979796e664085`  
		Last Modified: Mon, 24 Apr 2017 19:41:46 GMT  
		Size: 38.1 MB (38117052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9304274c9ac261b14cf3ee7685f9120bed42c9a833a7337975a9975750eed1`  
		Last Modified: Mon, 24 Apr 2017 22:28:57 GMT  
		Size: 7.0 MB (6953934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1469c39010f9f4f63411f7eff7d9ef02b32c4b589bcb36ff8927f78476f42c6f`  
		Last Modified: Tue, 25 Apr 2017 00:47:08 GMT  
		Size: 365.9 KB (365871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926c333b33a7b8ec590d2eabe8b2dbbf26f1c45ea4ca30f8bf51069f4a6c7352`  
		Last Modified: Tue, 25 Apr 2017 00:47:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3f2e249b7e4ddb232a0446e32ba6e17b1f2db9a1f32f89cd10f5e0721db712`  
		Last Modified: Tue, 25 Apr 2017 00:47:14 GMT  
		Size: 53.1 MB (53141227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a1b6481c091b4ffdc0d6463edfdc6ade4b0649d04b5bdb84b16b66573820e6`  
		Last Modified: Tue, 25 Apr 2017 22:22:56 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657db5581af63ee49d4185f954cf5e85bc1f3417f953207ca44c0ed53bf72412`  
		Last Modified: Tue, 25 Apr 2017 22:22:55 GMT  
		Size: 29.8 KB (29814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98c87e840d0cfc159c6a29595e32c20e06a470f2c383da081aef4350dc9d663`  
		Last Modified: Tue, 25 Apr 2017 22:24:10 GMT  
		Size: 43.9 MB (43890807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
