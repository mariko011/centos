## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:45a09096b4cb7645933284491576e210ad2d2a6a50275d0949324cb8282e010d
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150129163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3312a81fbdb5ad32e34cdc5a91be75c7eed8732f305eea5e2a8570214db71272`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 23:05:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:51:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:51:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 01:51:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 01:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 01:51:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 23 Jun 2017 01:51:27 GMT
ENV JAVA_VERSION=6b38
# Fri, 23 Jun 2017 01:51:28 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 23 Jun 2017 01:51:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 12:44:43 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 12:44:45 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 23 Jun 2017 12:44:46 GMT
WORKDIR /usr/local/tomee
# Fri, 23 Jun 2017 12:44:47 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 23 Jun 2017 12:44:53 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 23 Jun 2017 12:46:36 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 23 Jun 2017 12:46:37 GMT
EXPOSE 8080/tcp
# Fri, 23 Jun 2017 12:46:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0be653e0fcc6c891b4087051f57520a0842eb3dc1851303e3033a19b826c96`  
		Last Modified: Wed, 21 Jun 2017 01:04:25 GMT  
		Size: 6.9 MB (6948769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fef330bab08d338006694718dbe2d64ff6d05af1077c94133de4fd99f45e21`  
		Last Modified: Sat, 24 Jun 2017 16:53:39 GMT  
		Size: 360.7 KB (360676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1feeacbe26f6b3dcd5f301782afd6f0b5b3e95c1d7d81afa7ff110ad52724ef`  
		Last Modified: Sat, 24 Jun 2017 16:53:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ab9d16af5b9f0c09b22288b659042db7230d52f719f1d38d5bc78ab22b5f39`  
		Last Modified: Sat, 24 Jun 2017 16:53:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10102a47542ace223ca6528027a7d6fcdadb7820205941a54d7547b3d0f63153`  
		Last Modified: Sat, 24 Jun 2017 16:53:46 GMT  
		Size: 53.1 MB (53136293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6a0568224cc5678fac5da95e96eaed2660e08b40879bc8b8406010a9a662b1`  
		Last Modified: Sun, 25 Jun 2017 03:52:13 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203e4faa9126d72070ee78fa6e9bd7cf0fe2e45ad29e27b6dd303421c37062da`  
		Last Modified: Sun, 25 Jun 2017 03:52:14 GMT  
		Size: 29.8 KB (29809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944b316963aea18b75ed0efd3e94003c37453e2713a71f6e52c18fb5758b227a`  
		Last Modified: Sun, 25 Jun 2017 03:52:58 GMT  
		Size: 51.5 MB (51549461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
