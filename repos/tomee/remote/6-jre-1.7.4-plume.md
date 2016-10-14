## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:c438772f1ea498e344554326946960e531d923ee6589ebceaf65eedb59b5dcb9
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148511545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dbd39534e782a713a8faa68668277a3c3bbc57586a541348809a76fb1a60058`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 28 Jul 2016 17:49:29 GMT
ADD file:0d2a68d1c5a4a52b0bddd8921fe9f3d603a5d69911d4bba61c5e2460e6500d76 in /
# Thu, 28 Jul 2016 17:49:29 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:27:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:01:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:01:39 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:01:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:01:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Fri, 05 Aug 2016 22:01:43 GMT
ENV JAVA_VERSION=6b38
# Fri, 05 Aug 2016 22:01:44 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 05 Aug 2016 22:02:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 Aug 2016 20:57:31 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:57:33 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 11 Aug 2016 20:57:34 GMT
WORKDIR /usr/local/tomee
# Thu, 11 Aug 2016 20:57:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 11 Aug 2016 20:58:43 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 11 Aug 2016 21:02:32 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 11 Aug 2016 21:02:33 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 21:02:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c68a10e9f3f9e2757d1f2b0a51ad5ac41f5395a190bbbe3907a6b6fffa9bcea`  
		Last Modified: Thu, 28 Jul 2016 17:54:32 GMT  
		Size: 37.2 MB (37209635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c81f9b5104e75c51d678d80525193ab71008b9c25c1a1e4694996b0744c6cbe`  
		Last Modified: Thu, 28 Jul 2016 21:53:17 GMT  
		Size: 6.7 MB (6730996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39a83448dd963dcae12140fcda4d992c02da8a9e0c83ebada07bc6c7b857833`  
		Last Modified: Fri, 05 Aug 2016 22:11:42 GMT  
		Size: 359.4 KB (359361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e9307bf3fa9f5c8a30465999373df963bd269f6207af865c052ecc2668259a`  
		Last Modified: Fri, 05 Aug 2016 22:11:41 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db4ef64c3678d58819b3b67ce40a8ed0e95ea1ebb8fac0a6887c1dea74416d`  
		Last Modified: Fri, 05 Aug 2016 22:11:51 GMT  
		Size: 52.7 MB (52655254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c42b102ee97c759c4e2dce802665e92dd8566e0f02c850eaf4958a893e22`  
		Last Modified: Thu, 11 Aug 2016 20:59:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20537decaadf40a14622cee30074e7bd736fdb42687a6832dcfc1449cbb86478`  
		Last Modified: Thu, 11 Aug 2016 20:59:54 GMT  
		Size: 29.7 KB (29739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f9a96e3bd05e39c3e124db29a706faeab1a5200e420cf81e0bdacffcc7964b`  
		Last Modified: Thu, 11 Aug 2016 21:02:52 GMT  
		Size: 51.5 MB (51526173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
