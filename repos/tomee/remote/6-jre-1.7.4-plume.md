## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:6777a7124f52d56c48734d4c406ee8e2b8ef151a0ba89be16b05af26808d5525
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148829412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7dac040f03c842dec6d3a487c77e93a591a9af600d692ccd41b8b1deeebbc9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:54:31 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 20:54:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 20:54:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 21 Mar 2017 20:54:33 GMT
ENV JAVA_VERSION=6b38
# Tue, 21 Mar 2017 20:54:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 21 Mar 2017 20:54:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 22 Mar 2017 17:50:22 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:50:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 22 Mar 2017 17:50:24 GMT
WORKDIR /usr/local/tomee
# Wed, 22 Mar 2017 17:50:24 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 22 Mar 2017 17:50:31 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 22 Mar 2017 17:51:04 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 22 Mar 2017 17:51:04 GMT
EXPOSE 8080/tcp
# Wed, 22 Mar 2017 17:51:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9241e0092a82f6168fd1192a875316101ec0fa55d9fd64909eee02128c5c`  
		Last Modified: Tue, 21 Mar 2017 20:09:48 GMT  
		Size: 6.8 MB (6824369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184513fd2c1a93bfadc46abe342b768f67a5a2830160b8a4b314391b0b4d56ee`  
		Last Modified: Thu, 23 Mar 2017 23:31:40 GMT  
		Size: 360.4 KB (360375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc9efce45b4bf285dae5dd5d44bd9bf352c77b5b03638b5c500d462d8d61381`  
		Last Modified: Thu, 23 Mar 2017 23:31:40 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b52db32b8e1addce9f14f8c1eaf45793e9637d017fdb17221a9451ddff7e587`  
		Last Modified: Thu, 23 Mar 2017 23:31:52 GMT  
		Size: 52.8 MB (52816522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a27709e5a69297bae995685c736f74a4de92cb1fdc651c4356bda82edf37ee4`  
		Last Modified: Fri, 24 Mar 2017 01:15:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8edc9d6a0f6ba957ef6ffb37002ebd5cbb3999bae3b71d32194133699a57af1`  
		Last Modified: Fri, 24 Mar 2017 01:15:51 GMT  
		Size: 29.7 KB (29735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cc4df706fd410ff322e526166f30b895bbeb3c0f2f614783719c3832509eeb`  
		Last Modified: Fri, 24 Mar 2017 01:16:27 GMT  
		Size: 51.5 MB (51526187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
