## `jetty:jre7`

```console
$ docker pull jetty@sha256:96002639bed62ad68c5cf6c0a7513aaecd3f3dd32003c4511b3d3918b3413c12
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158300296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d14edd288546624eb7df4d03bd67f9c4316139da881cf715525ccfbdcae4e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 22:55:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Feb 2017 22:55:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 Feb 2017 22:55:53 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:21:13 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:24 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:28 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:30 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:31 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43dcf834c20b6902b8a546d554f47014558b1bf72773773a72f7889a46cbd85`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb5e53b241119b81f225fc02c9d40c1ffe3e261058f4b3bfa1dfcb762443702`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5d1cde37bcfdce7b5c0a98f4a7d7987f6bfb3efc4b74c2d0664cdd0ca0c332`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 10.0 MB (10018946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3cbccefcae0efe18956cfee018ce46cfec798b0227a28888bea70a90962c56`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc38d1bf7e1b5ddab5efb47772945b90af3249873b5e7c3bd703f63b16021b9`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca792744e59fa21b001109b423544b7216b782bec37e82a17ca858a82d9561ac`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a1140db8a7ec10231e999fc8c6b31636c7091acd8b43152466824ec3e46c75`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
