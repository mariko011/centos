<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `tomee`

-	[`tomee:6-jre-1.7.4-jaxrs`](#tomee6-jre-174-jaxrs)
-	[`tomee:6-jre-1.7.4-plume`](#tomee6-jre-174-plume)
-	[`tomee:6-jre-1.7.4-plus`](#tomee6-jre-174-plus)
-	[`tomee:6-jre-1.7.4-webprofile`](#tomee6-jre-174-webprofile)
-	[`tomee:7-jre-1.7.4-jaxrs`](#tomee7-jre-174-jaxrs)
-	[`tomee:7-jre-1.7.4-plume`](#tomee7-jre-174-plume)
-	[`tomee:7-jre-1.7.4-plus`](#tomee7-jre-174-plus)
-	[`tomee:7-jre-1.7.4-webprofile`](#tomee7-jre-174-webprofile)
-	[`tomee:8-jre-1.7.4-jaxrs`](#tomee8-jre-174-jaxrs)
-	[`tomee:8-jre-1.7.4-plume`](#tomee8-jre-174-plume)
-	[`tomee:8-jre-1.7.4-plus`](#tomee8-jre-174-plus)
-	[`tomee:8-jre-1.7.4-webprofile`](#tomee8-jre-174-webprofile)
-	[`tomee:8-jre-7.0.0-plume`](#tomee8-jre-700-plume)
-	[`tomee:8-jre-7.0.0-plus`](#tomee8-jre-700-plus)
-	[`tomee:8-jre-7.0.0-webprofile`](#tomee8-jre-700-webprofile)
-	[`tomee:8-jre-7.0.1-plume`](#tomee8-jre-701-plume)
-	[`tomee:8-jre-7.0.1-plus`](#tomee8-jre-701-plus)
-	[`tomee:8-jre-7.0.1-webprofile`](#tomee8-jre-701-webprofile)
-	[`tomee:8-jre-7.0.2-plume`](#tomee8-jre-702-plume)
-	[`tomee:8-jre-7.0.2-plus`](#tomee8-jre-702-plus)
-	[`tomee:8-jre-7.0.2-webprofile`](#tomee8-jre-702-webprofile)
-	[`tomee:8-jre-7.0.3-plume`](#tomee8-jre-703-plume)
-	[`tomee:8-jre-7.0.3-plus`](#tomee8-jre-703-plus)
-	[`tomee:8-jre-7.0.3-webprofile`](#tomee8-jre-703-webprofile)
-	[`tomee:latest`](#tomeelatest)

## `tomee:6-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:5425b6e51d8f3602d836bf061590acdc3561fc8f5497d76a1ebb15911829bdee
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-jaxrs` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133210492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8d958114cb985c720055ed3b590b843b8212fac0089fcae49069b3ce21f008`
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
# Tue, 25 Apr 2017 05:56:54 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 25 Apr 2017 05:56:54 GMT
EXPOSE 8080/tcp
# Tue, 25 Apr 2017 05:56:55 GMT
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
	-	`sha256:3cda948f8f9e99e8304bfdfe99bfd995d8c1384175ea5e0ceea2aa8a5d0ebeea`  
		Last Modified: Tue, 25 Apr 2017 22:22:58 GMT  
		Size: 34.6 MB (34602210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:c8bf62aea59301831e78b22509b5bd0b1b48194916688784d90d07a0974e359d
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150157746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08a450d4a83c9ced08c8793a3eb667a010232e8df8d08e838231845960b778a`
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
# Tue, 25 Apr 2017 05:57:26 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 25 Apr 2017 05:57:27 GMT
EXPOSE 8080/tcp
# Tue, 25 Apr 2017 05:57:28 GMT
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
	-	`sha256:010b96062dffb89f38dacaf84cd37d17cf62ce7645c99c172c2082939c152ed4`  
		Last Modified: Tue, 25 Apr 2017 22:23:27 GMT  
		Size: 51.5 MB (51549464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `tomee:6-jre-1.7.4-webprofile`

```console
$ docker pull tomee@sha256:0ca56e81170be456ec5875f3885a7a999bece596f95b0d36d9e26c085cbada68
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-webprofile` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129766162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa669a51774c64655c6158974ef47a69222f89252170cea3b353d5437dda7603`
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
# Tue, 25 Apr 2017 05:58:30 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 25 Apr 2017 05:58:30 GMT
EXPOSE 8080/tcp
# Tue, 25 Apr 2017 05:58:31 GMT
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
	-	`sha256:80f8e53c7043e1f4030e049d2b7df89daaf7db5ee54363da8e936eecc3677d4e`  
		Last Modified: Tue, 25 Apr 2017 22:24:37 GMT  
		Size: 31.2 MB (31157880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:7-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:016c9b7e656e87ef7822549e25c8da9c281194e80485bdb7fb198057733649b6
```

-	Platforms:
	-	linux; amd64

### `tomee:7-jre-1.7.4-jaxrs` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.8 MB (182839874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565ef8c63a2fc7824620774aa9d699ea66e0e227634e32a93807d51be6656ee8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 20:38:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:38:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 20:38:53 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 20:39:04 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 20:39:05 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 20:39:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f319c76cea740ac2631e9386477ed5801a3ef2e6aa7fa22efdc4cd7477a46`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eac5cad80eb152438efb8afa692baba67da7c4cf947949722e62827f71b4da`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 29.7 KB (29733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0054b36a804bad0ba65047b05dd69255d1eee6468107d440a4f5971067cf7`  
		Last Modified: Wed, 18 Jan 2017 07:57:31 GMT  
		Size: 34.6 MB (34585600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:7-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:a695d3b935dc42267f9171e919bb9ed78b10e3a09a73967ca075c5792cc82e4b
```

-	Platforms:
	-	linux; amd64

### `tomee:7-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199780472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654cb0c9943519a8b5ff65824fbb2e3995e19dafa4f80398168c031aca784c82`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 20:38:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:38:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 20:38:53 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 20:39:20 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 20:39:20 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 20:39:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f319c76cea740ac2631e9386477ed5801a3ef2e6aa7fa22efdc4cd7477a46`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eac5cad80eb152438efb8afa692baba67da7c4cf947949722e62827f71b4da`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 29.7 KB (29733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd1b10f5120fcbb74b9bc21bdbf437b0b8fafabeda5d33b09e9c3e5c3677e07`  
		Last Modified: Wed, 18 Jan 2017 07:57:57 GMT  
		Size: 51.5 MB (51526198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:7-jre-1.7.4-plus`

```console
$ docker pull tomee@sha256:5d0d251b557c907f0522f2f204e91a3f7ef218c49443600277c48fd28b24722f
```

-	Platforms:
	-	linux; amd64

### `tomee:7-jre-1.7.4-plus` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192125191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7734d2fda4f005d83d22a74ab334302a84c9a35dfd5c6d7957973cdac75f0fd9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 20:38:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:38:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 20:38:53 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 20:39:34 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 20:39:35 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 20:39:35 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f319c76cea740ac2631e9386477ed5801a3ef2e6aa7fa22efdc4cd7477a46`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eac5cad80eb152438efb8afa692baba67da7c4cf947949722e62827f71b4da`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 29.7 KB (29733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8681d3f9b564d938100a64b56f9bb8901ab5a8201dda713f6640310956dbb6f`  
		Last Modified: Wed, 18 Jan 2017 07:58:25 GMT  
		Size: 43.9 MB (43870917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:7-jre-1.7.4-webprofile`

```console
$ docker pull tomee@sha256:72fd968f667463303c6bb7f2e98bb42d4ce28c8deb6658f8dd15b2d343e675df
```

-	Platforms:
	-	linux; amd64

### `tomee:7-jre-1.7.4-webprofile` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179396101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d148c13b009221f984d3b81eb8ee598885a0486c2309f2db4f524564f4ea1843`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 20:38:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 20:38:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 20:38:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 20:38:53 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 20:39:46 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 20:39:46 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 20:39:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f319c76cea740ac2631e9386477ed5801a3ef2e6aa7fa22efdc4cd7477a46`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eac5cad80eb152438efb8afa692baba67da7c4cf947949722e62827f71b4da`  
		Last Modified: Wed, 18 Jan 2017 07:57:28 GMT  
		Size: 29.7 KB (29733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa5cc6dd605f34ea6b46bc61f90fc59e328a16618fea91b8ab4b4f3141853c6`  
		Last Modified: Wed, 18 Jan 2017 07:58:50 GMT  
		Size: 31.1 MB (31141827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:f3cda25c191b65bbcce071935985ec3eb1c71108b664546af280bbe684921bbf
```

-	Platforms:
	-	linux; amd64

### `tomee:8-jre-1.7.4-jaxrs` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158836882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a04612a0696bb2b001eab47d49ae7343328c8c351cc11025beb3a5c5ea4417`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:06:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:06:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 21:06:47 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 21:06:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 21:06:52 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 21:07:05 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 21:07:05 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 21:07:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9435f9a27413500323ad3d96a485a660fd8b5519d274518fd71bd0dc468438`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fa31ad5873b244bc18da2bd687332cb0f247974f6bb63e171fbf091b5bde5c`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 29.7 KB (29734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1025f45df3f664b05f619576bed54d7428d0a607818d4c7ac6a903e29ba9de`  
		Last Modified: Wed, 18 Jan 2017 07:59:14 GMT  
		Size: 34.6 MB (34585623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:9bb8a1f5104dc272100a86d40b6fd75afed3e1a35a454b0311fd46542cbfcc5c
```

-	Platforms:
	-	linux; amd64

### `tomee:8-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175777423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5f3ae1117480580e1a383efffcc73931d9400847369b02ea048bd35e0f2c37`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:06:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:06:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 21:06:47 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 21:06:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 21:06:52 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 21:07:20 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 21:07:20 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 21:07:21 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9435f9a27413500323ad3d96a485a660fd8b5519d274518fd71bd0dc468438`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fa31ad5873b244bc18da2bd687332cb0f247974f6bb63e171fbf091b5bde5c`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 29.7 KB (29734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a5f94df9ab81cb19485a9f4a4a816a41a6437e095d32e91ee8f4ceb1f65821`  
		Last Modified: Wed, 18 Jan 2017 07:59:41 GMT  
		Size: 51.5 MB (51526164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.4-plus`

```console
$ docker pull tomee@sha256:2d1a2a834863d0abca77450eb2c22936433acb8a828c099e7b73511ce5c54421
```

-	Platforms:
	-	linux; amd64

### `tomee:8-jre-1.7.4-plus` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168122200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547db05f74b76a8d624fcb01aae309caf4b46705d265ef00e6c2cf529ed2d14d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:06:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:06:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 21:06:47 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 21:06:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 21:06:52 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 21:07:34 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 21:07:34 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 21:07:35 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9435f9a27413500323ad3d96a485a660fd8b5519d274518fd71bd0dc468438`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fa31ad5873b244bc18da2bd687332cb0f247974f6bb63e171fbf091b5bde5c`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 29.7 KB (29734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0756f468a8c648934fd2479f6107437d78b00e6f9fbd4d46079553744e404f`  
		Last Modified: Wed, 18 Jan 2017 08:00:07 GMT  
		Size: 43.9 MB (43870941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.4-webprofile`

```console
$ docker pull tomee@sha256:7a63a751f0e9f85252ef4c1373366c557f692e69234e8df0b29674f0879e9a58
```

-	Platforms:
	-	linux; amd64

### `tomee:8-jre-1.7.4-webprofile` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155393081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2747ab19377f98152cf237e0ac7366c3abac86f1ffe42326e1e2f17e9fa75633`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 21:06:46 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 21:06:47 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 17 Jan 2017 21:06:47 GMT
WORKDIR /usr/local/tomee
# Tue, 17 Jan 2017 21:06:48 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 17 Jan 2017 21:06:52 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 17 Jan 2017 21:07:46 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 17 Jan 2017 21:07:47 GMT
EXPOSE 8080/tcp
# Tue, 17 Jan 2017 21:07:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9435f9a27413500323ad3d96a485a660fd8b5519d274518fd71bd0dc468438`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fa31ad5873b244bc18da2bd687332cb0f247974f6bb63e171fbf091b5bde5c`  
		Last Modified: Wed, 18 Jan 2017 07:59:11 GMT  
		Size: 29.7 KB (29734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5369ad39b20a7a26ff32d0e49e009d1d0b54bf466b7c8a639f871cc652aafda9`  
		Last Modified: Wed, 18 Jan 2017 08:00:32 GMT  
		Size: 31.1 MB (31141822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.0-plume`

**does not exist** (yet?)

## `tomee:8-jre-7.0.0-plus`

**does not exist** (yet?)

## `tomee:8-jre-7.0.0-webprofile`

**does not exist** (yet?)

## `tomee:8-jre-7.0.1-plume`

**does not exist** (yet?)

## `tomee:8-jre-7.0.1-plus`

**does not exist** (yet?)

## `tomee:8-jre-7.0.1-webprofile`

**does not exist** (yet?)

## `tomee:8-jre-7.0.2-plume`

**does not exist** (yet?)

## `tomee:8-jre-7.0.2-plus`

**does not exist** (yet?)

## `tomee:8-jre-7.0.2-webprofile`

**does not exist** (yet?)

## `tomee:8-jre-7.0.3-plume`

**does not exist** (yet?)

## `tomee:8-jre-7.0.3-plus`

**does not exist** (yet?)

## `tomee:8-jre-7.0.3-webprofile`

**does not exist** (yet?)

## `tomee:latest`

```console
$ docker pull tomee@sha256:d9a337399ddeb739f0941f640650de575e3d10f0bb4d21b7bf300835aea287f3
```

-	Platforms:
	-	linux; amd64

### `tomee:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278600050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b18b668152483581e1fd21c869beae8543219d94a4f57325f07fb74f9c634b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 23:34:14 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:34:15 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 08 Nov 2016 23:34:15 GMT
WORKDIR /usr/local/tomee
# Tue, 08 Nov 2016 23:34:16 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 08 Nov 2016 23:34:22 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 23:36:02 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 08 Nov 2016 23:36:02 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 23:36:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690dbea0e4ca2996b70b102af3c4639bbd2f1b8fcbb2bf602a0a82f74d54bf51`  
		Last Modified: Tue, 08 Nov 2016 18:59:32 GMT  
		Size: 593.3 KB (593322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6cf600a0ada742a714d11b3bc10a5034e1d0a0809ab849ad95093741861b73`  
		Last Modified: Tue, 08 Nov 2016 23:34:55 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7cdcb6cc6ad6a976d4a286fcca180884d5d1589a198156b26ecc8477ca079d`  
		Last Modified: Tue, 08 Nov 2016 23:34:55 GMT  
		Size: 29.7 KB (29733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd06609e74388b10a8dbbd1351e34803c85da91ad0a873ac4cb1ced40b277ca`  
		Last Modified: Tue, 08 Nov 2016 23:36:18 GMT  
		Size: 35.2 MB (35199627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
