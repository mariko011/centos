## `tomee:6-jre-1.7.4-plume`

```console
$ docker pull tomee@sha256:bef02bb977358f07265ce008a2790c96b57504d2e661b73b7432b10da2db270e
```

-	Platforms:
	-	linux; amd64

### `tomee:6-jre-1.7.4-plume` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148534734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd96638f9f98f2cf378576933cb823ae6913ab4b4a187f2666ea0e08ca0a2f9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:06:06 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:06:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:06:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:06:08 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:06:08 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:06:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 22 Oct 2016 02:06:13 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 02:06:14 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 22 Oct 2016 02:06:14 GMT
WORKDIR /usr/local/tomee
# Sat, 22 Oct 2016 02:06:15 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 22 Oct 2016 02:06:24 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 22 Oct 2016 02:07:16 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.4/apache-tomee-1.7.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 22 Oct 2016 02:07:17 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 02:07:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf465f11c913d374f52e90a7fef85ab85d5ddb29a7e33af4193c0280ea99b0fe`  
		Last Modified: Fri, 21 Oct 2016 20:06:32 GMT  
		Size: 359.5 KB (359534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd4b3fb5c208300c01dc693a61fa45a1e312c3b016232ba5b9dc12a7878959`  
		Last Modified: Fri, 21 Oct 2016 20:06:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caef9452dd3d7ea1df56837810cca2813d8104da5dab77ed922458dfb0f23dfa`  
		Last Modified: Fri, 21 Oct 2016 20:06:40 GMT  
		Size: 52.7 MB (52655271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed13881e585531726242ac3be59f32cee7830605a5d181e850f334c4ecd6728`  
		Last Modified: Sat, 22 Oct 2016 02:06:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1e3e0cdf3108cf87d6c715f7f2cf3a79b9ce1c4c372a65aa0820e45c944e39`  
		Last Modified: Sat, 22 Oct 2016 02:06:47 GMT  
		Size: 29.7 KB (29735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72705667aa124228ab19fab0a34b76db2a02848632a8b0ba588d7878ed643fb`  
		Last Modified: Sat, 22 Oct 2016 02:07:34 GMT  
		Size: 51.5 MB (51526146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
