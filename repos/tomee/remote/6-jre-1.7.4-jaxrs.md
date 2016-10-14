## `tomee:6-jre-1.7.4-jaxrs`

```console
$ docker pull tomee@sha256:d4c319124efbfe139f09c2e9911141f93a6bdfabb0e3f3220369c7e9c44e1bcc
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-jaxrs` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131576694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6f83c1803adb86bf2e632cac58159d25495b760503f0ae98c127bfdc21e521`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:51:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:51:22 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 04:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 04:51:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 20 Sep 2016 04:51:23 GMT
ENV JAVA_VERSION=6b38
# Tue, 20 Sep 2016 04:51:23 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 20 Sep 2016 04:51:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 14 Oct 2016 16:49:35 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 16:49:36 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 14 Oct 2016 16:49:36 GMT
WORKDIR /usr/local/tomee
# Fri, 14 Oct 2016 16:49:37 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 14 Oct 2016 16:49:43 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 14 Oct 2016 16:49:56 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 14 Oct 2016 16:49:57 GMT
EXPOSE 8080/tcp
# Fri, 14 Oct 2016 16:49:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99d281faeeb2fa2099fbbcaa380e4a96a4e83bd7bb3583d410667debf7aaa`  
		Last Modified: Mon, 19 Sep 2016 18:03:18 GMT  
		Size: 6.7 MB (6731221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf7ca12c9c63d179d43c669347523664b791c9c37c102f7fcc8c71f13f35e54`  
		Last Modified: Wed, 21 Sep 2016 22:53:31 GMT  
		Size: 359.6 KB (359580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d64770d7ec19783898b19f96b233574583d7150b0d7082af45956f9c00872b`  
		Last Modified: Wed, 21 Sep 2016 22:53:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebd142916efdafb0fbcf185602f205df5511d4c08bed7ac0f4e370a95882c0c`  
		Last Modified: Wed, 21 Sep 2016 22:53:40 GMT  
		Size: 52.7 MB (52655669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86dd4bdd1e58103672a1ef0e3f98a9d19d16973543e8a182ac4da11326b9795`  
		Last Modified: Fri, 14 Oct 2016 16:53:49 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32830b1568a98a48371b578b556ae31479409558631f28a7340950c4096a1450`  
		Last Modified: Fri, 14 Oct 2016 16:53:47 GMT  
		Size: 29.7 KB (29736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7618cdc34cf2cac67a60ab64555fa29f734171a63768bb8a33ef4560573e1496`  
		Last Modified: Fri, 14 Oct 2016 16:53:52 GMT  
		Size: 34.6 MB (34585579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
