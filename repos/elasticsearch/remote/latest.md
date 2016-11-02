## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:4793bd531e816478703810c7414b97d60df710f3a5c76d3e7d0be1ad9ae6b7b8
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158483697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a62a28797b389eff55e92cbfb883029fb8893a52fc99b4f7edf4c4e27621f73`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 20:20:53 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 20:20:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 20:21:00 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 01 Nov 2016 20:28:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 01 Nov 2016 20:28:41 GMT
ENV ELASTICSEARCH_VERSION=5.0.0
# Tue, 01 Nov 2016 20:28:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 20:28:52 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 20:28:52 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 01 Nov 2016 20:28:53 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 01 Nov 2016 20:28:54 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 01 Nov 2016 20:28:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 01 Nov 2016 20:28:55 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 01 Nov 2016 20:28:55 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 01 Nov 2016 20:28:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 20:28:56 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadc6056da8217e858139fc68f44f81dfc7e75dea114b53d0b2ef5e036327508`  
		Last Modified: Tue, 01 Nov 2016 20:21:34 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadefad3924e58cdff651e0e487ddd3fab137537124e2c7473858db77f6235f7`  
		Last Modified: Tue, 01 Nov 2016 20:21:34 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc190fce53b81b6510a8254a20330d080eb8479fd7a9e72b850dfb5c92e7c5d6`  
		Last Modified: Tue, 01 Nov 2016 20:29:08 GMT  
		Size: 535.4 KB (535427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640fa8a31bc878eea6974778033b033c3d28fbc1282c89c2e2adb2a166627701`  
		Last Modified: Tue, 01 Nov 2016 20:29:11 GMT  
		Size: 33.0 MB (32965574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d7ccc98bd3ea77371d5ca7f686f94ae1a38d539309009b6a4bd6d71fefc820`  
		Last Modified: Tue, 01 Nov 2016 20:29:07 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0346acaed89af0522b4a6bdb8e768a1631d151278be7dbcd36d86ef86f7b3d39`  
		Last Modified: Tue, 01 Nov 2016 20:29:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1e24eb6480011c17169454c49254ce6bc35906e85dd8289c31b0bd178dfb2a`  
		Last Modified: Tue, 01 Nov 2016 20:29:07 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
