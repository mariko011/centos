## `tomee:6-jre-1.7.4-webprofile`

```console
$ docker pull tomee@sha256:f14a6b7787d5917840a8083a2d83bb0c28535816132e8b22b00485b0e65f558d
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-webprofile` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128458006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d41d4f5507cb52f0a85397e64e838be25d18d99e7e7b506115697202c0ac89f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:27 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 28 Feb 2017 03:41:28 GMT
ENV JAVA_VERSION=6b38
# Tue, 28 Feb 2017 03:41:29 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 28 Feb 2017 03:41:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 01:28:45 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:29:01 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 01 Mar 2017 01:29:02 GMT
WORKDIR /usr/local/tomee
# Wed, 01 Mar 2017 01:29:17 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 01 Mar 2017 01:29:21 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 01 Mar 2017 01:30:24 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 01 Mar 2017 01:30:30 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 01:30:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9804d437698c011aa6c032d3b06c68ea7231ce91edc115e04e041972287fa`  
		Last Modified: Thu, 02 Mar 2017 02:40:06 GMT  
		Size: 360.4 KB (360381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b064c2d486c4c6361a734751468a29fbbce66a9e36be75b14493ef75f28e634f`  
		Last Modified: Thu, 02 Mar 2017 02:40:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5863506809853bbbec1780c346eb63b5380f31bb47e05f5e689b1a70e3dfd68`  
		Last Modified: Thu, 02 Mar 2017 02:40:17 GMT  
		Size: 52.8 MB (52816937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec0b099e43bcaf192ede8a0aec193bf163524932ed38eeae3a990a71339992a`  
		Last Modified: Thu, 02 Mar 2017 04:43:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1a8057d3b404cc352e84b4c4a4dece490b91489170301943d9977f793028f3`  
		Last Modified: Thu, 02 Mar 2017 04:43:11 GMT  
		Size: 29.7 KB (29738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3f22d0fbbf073708ad11c87fce4f73270316dc6954e89234d47a4467c7fd85`  
		Last Modified: Thu, 02 Mar 2017 04:44:51 GMT  
		Size: 31.1 MB (31141829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
