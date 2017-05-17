## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:99ae59474455134ab84a653414acd1f3858842d5496dfc39ceac497d3f0b0e50
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150155718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bac1ac17be4a832a1a04db3893474cb41cbd98a82b13847ae06d5b403b69ff9`
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
# Tue, 09 May 2017 17:20:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 09 May 2017 17:20:38 GMT
ENV JAVA_VERSION=6b38
# Tue, 09 May 2017 17:20:38 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 09 May 2017 17:20:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 16:49:19 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 16:49:21 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 10 May 2017 16:49:22 GMT
WORKDIR /usr/local/tomee
# Wed, 10 May 2017 16:49:23 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 10 May 2017 16:49:29 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 10 May 2017 16:50:27 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 10 May 2017 16:50:27 GMT
EXPOSE 8080/tcp
# Wed, 10 May 2017 16:50:28 GMT
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
	-	`sha256:47ca32d80acd3cdd7c1cd1ecd86f1f73417a2e55de0a2b403e01e80fc5318336`  
		Last Modified: Wed, 17 May 2017 19:43:53 GMT  
		Size: 53.1 MB (53140327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7550ce05e9590e071681a2c0d5eb0a998d618c568c0d5d72eb3dc4da512cbd`  
		Last Modified: Wed, 17 May 2017 19:43:46 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d3cd7cfeab540f77be430cbcc490f529c375b43a7bcbd19635091d5097219d`  
		Last Modified: Wed, 17 May 2017 19:43:45 GMT  
		Size: 29.8 KB (29814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead894b075bd3a379f8cccdb4f6e991b06c95793563bf47627223023bbfeb320`  
		Last Modified: Wed, 17 May 2017 19:44:27 GMT  
		Size: 51.5 MB (51549452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
