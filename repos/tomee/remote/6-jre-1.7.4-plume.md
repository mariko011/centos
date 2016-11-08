## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:eab8a2b4e0a43e16867c011f8566e77902db67378780d5059dada1c4cffdc218
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149055497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071f61fe75e70f39f046355af086ad3c34ce84e94cb79796d0d6c8dc22d7dfa6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:32:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:33 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:50:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:50:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 08 Nov 2016 18:50:34 GMT
ENV JAVA_VERSION=6b38
# Tue, 08 Nov 2016 18:50:35 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 08 Nov 2016 18:50:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 23:27:54 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:27:56 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 08 Nov 2016 23:27:57 GMT
WORKDIR /usr/local/tomee
# Tue, 08 Nov 2016 23:27:57 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 08 Nov 2016 23:28:04 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 23:29:06 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 08 Nov 2016 23:29:07 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 23:29:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df674db1f5c55ee81a339f27b2104d63dee9bb1c6c6ab199c8b8a365b11dad1c`  
		Last Modified: Mon, 07 Nov 2016 23:05:45 GMT  
		Size: 6.7 MB (6749846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575e21780826ec55d18d4d10b5138169f8d087a62ef37ffa7a7ca195e3e737`  
		Last Modified: Tue, 08 Nov 2016 18:58:21 GMT  
		Size: 360.0 KB (360037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d17adb59f61603837a927ed328e3aaa2cac53e629eeb8d253b282ca780b476`  
		Last Modified: Tue, 08 Nov 2016 18:58:20 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39c8695ad1f5e305a0387d6fcee6d99270863a9645dcf941cdeaccb8ad52940`  
		Last Modified: Tue, 08 Nov 2016 18:58:31 GMT  
		Size: 53.2 MB (53180741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c477d9cb5998c86d39d57ae98a99bc649b2083073d750e5bfd7d838a44d645`  
		Last Modified: Tue, 08 Nov 2016 23:28:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23d44687649aefc13bb268f98423b179e0af1e7b8e73a4daf11063d374910ed`  
		Last Modified: Tue, 08 Nov 2016 23:28:36 GMT  
		Size: 29.7 KB (29738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1410d3d625fd51eed699a174fe7e65931655289368a4f76bc0690cebf9f923bc`  
		Last Modified: Tue, 08 Nov 2016 23:29:28 GMT  
		Size: 51.5 MB (51526166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
