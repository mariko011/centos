## `tomee:7-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:9b93a2c9a80274ce36ed71a25d0233820d7a1c9d75864e360723cca64c0df33f
```

-	Platforms:
	-	linux; amd64

### `tomee:7-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199679746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8b70a8fef933e5bcd53014dc0ddaeda05596630160fdb30ab20712e024fef9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:08:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:08:24 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:08:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:08:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Thu, 09 Jun 2016 22:08:26 GMT
ENV JAVA_VERSION=7u101
# Thu, 09 Jun 2016 22:08:26 GMT
ENV JAVA_DEBIAN_VERSION=7u101-2.6.6-2~deb8u1
# Thu, 09 Jun 2016 22:10:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:10:53 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jun 2016 22:10:54 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 09 Jun 2016 22:10:54 GMT
WORKDIR /usr/local/tomee
# Thu, 09 Jun 2016 22:10:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 09 Jun 2016 22:11:01 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 10 Jun 2016 23:42:00 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 10 Jun 2016 23:42:00 GMT
EXPOSE 8080/tcp
# Fri, 10 Jun 2016 23:42:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be275827e8b7f9057582be291be9d0b1ea48379640585e97987ac337c495c0cd`  
		Last Modified: Thu, 09 Jun 2016 22:19:23 GMT  
		Size: 587.3 KB (587338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa4ff75c34e19aedf7992e935a2ed2d898cd678ffae12ed678af88247060edd`  
		Last Modified: Thu, 09 Jun 2016 22:19:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30607f3daa1b49a9713af787c3ff3229be4f0ecdb0624bc4a9b4aa20bb1257b`  
		Last Modified: Thu, 09 Jun 2016 22:19:41 GMT  
		Size: 77.6 MB (77636340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c592d1c6c26c9c20a31125a50687f7147cb2ff7ddef7f64ae0acc67442726e`  
		Last Modified: Tue, 21 Jun 2016 15:18:26 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3769ffb3fe8bd8154dca5f7180e6dc17b05e862f45e857d31f060de715a912b4`  
		Last Modified: Tue, 21 Jun 2016 15:18:26 GMT  
		Size: 29.7 KB (29740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97dcba0f95c4aa3fe098a2d87cc82c298b9389c908874cd3633cc88e256a31b`  
		Last Modified: Tue, 21 Jun 2016 15:18:48 GMT  
		Size: 51.5 MB (51526188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
