## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:c431638bc7ab2f6035a7d25c13ad7e80d38a71f5bd30cc532ed4bc9c324ab39b
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150155829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751068372ff5b05b59cce2f5907be0e95c83937eea59a97efce177088b8f7f39`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:20:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:20:35 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:20:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:55:42 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:55:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 13:55:43 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:55:44 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 09 Jun 2017 20:54:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Jun 2017 20:54:26 GMT
RUN mkdir -p /usr/local/tomee
# Fri, 09 Jun 2017 20:54:48 GMT
WORKDIR /usr/local/tomee
# Fri, 09 Jun 2017 20:55:10 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Fri, 09 Jun 2017 20:55:38 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 09 Jun 2017 21:01:26 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Fri, 09 Jun 2017 21:01:36 GMT
EXPOSE 8080/tcp
# Fri, 09 Jun 2017 21:01:37 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cd12066b2685d5fbe8f2efe453694a78ed79c300fbd15faffacef18ef00bc3`  
		Last Modified: Sat, 13 May 2017 09:08:33 GMT  
		Size: 365.6 KB (365619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b264c718eca2d5c3a7bfa76cda1fe3fb4f7a3a13304a3bab776d722ef17048`  
		Last Modified: Sat, 13 May 2017 09:08:32 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d550b45afc7478bfe29f44fc57a2ca42a5d4ecd548fca1d1866736c1dd43f`  
		Last Modified: Sat, 13 May 2017 09:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfc0acf7df4380733700545e65dc7719b646a01f41cfdfa8bc7fead8a75295`  
		Last Modified: Sat, 13 May 2017 09:08:42 GMT  
		Size: 53.1 MB (53140284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732beaf7bafa57f4d45d61c7914524ab27565b3694f7b01330141b5e2e5aece0`  
		Last Modified: Fri, 09 Jun 2017 21:32:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67317210746be81fd3650aac2e57555081626b5e47a238d243a203cce712ba5e`  
		Last Modified: Fri, 09 Jun 2017 21:32:24 GMT  
		Size: 29.8 KB (29817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbd1aafc1dde8aad63d2741c819ddf17adfc0cc4c6d9363d25952930f7d17e2`  
		Last Modified: Fri, 09 Jun 2017 21:33:09 GMT  
		Size: 51.5 MB (51549472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
