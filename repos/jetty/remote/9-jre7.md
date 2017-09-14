## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:a61f58b58bd44e8ee762d59e221de3f2abc98892b55a17423c0b98636f504edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:c0df7e511427d9baaf658c05bc6c14db429c6f5ce1b19e0d96887ebccba9b6b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199569489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529fa3e257c265e75b577f739486fc18f1c5406e0747b0d9680a426497b7dba8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Sep 2017 04:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:14:25 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:14:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:14:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:14:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 14 Sep 2017 04:14:28 GMT
ENV JAVA_VERSION=7u151
# Thu, 14 Sep 2017 04:14:28 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Thu, 14 Sep 2017 04:15:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 06:35:47 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 14 Sep 2017 06:35:47 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 14 Sep 2017 06:35:48 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:35:48 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 14 Sep 2017 06:35:48 GMT
WORKDIR /usr/local/jetty
# Thu, 14 Sep 2017 06:35:49 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Thu, 14 Sep 2017 06:35:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Thu, 14 Sep 2017 06:35:49 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 14 Sep 2017 06:35:55 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 14 Sep 2017 06:35:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 14 Sep 2017 06:35:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 14 Sep 2017 06:35:56 GMT
WORKDIR /var/lib/jetty
# Thu, 14 Sep 2017 06:36:00 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 14 Sep 2017 06:36:00 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 14 Sep 2017 06:36:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 14 Sep 2017 06:36:01 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Thu, 14 Sep 2017 06:36:01 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:36:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 06:36:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606c0b57feb051ea7df9ecb5091d7c5275047f4baa9b54700350c3f35e4a4f26`  
		Last Modified: Thu, 14 Sep 2017 04:51:25 GMT  
		Size: 795.6 KB (795601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584c35e01c21b7270342137194d0860c0a7a90f65441c6e8a1e0f7571bc84a30`  
		Last Modified: Thu, 14 Sep 2017 04:51:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b2c1657fd0e01b54bc8a64a8e8c5470058e23a343328e8ac2379e3d043e6ce`  
		Last Modified: Thu, 14 Sep 2017 04:51:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4dd65ad29cb149c9ecfc67a1032e7737acfd4c5f696afda2a27483ad9152ae`  
		Last Modified: Thu, 14 Sep 2017 04:51:54 GMT  
		Size: 116.9 MB (116883085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d5f3d967c7e81b392379db15b4742eae62300500b1bd02c50eacbba59ebc1e`  
		Last Modified: Thu, 14 Sep 2017 06:39:01 GMT  
		Size: 2.1 KB (2150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbecf75c7d8aabffdd475efb8cec80e0a14268c3615649ee48832faac5ba50b6`  
		Last Modified: Thu, 14 Sep 2017 06:39:01 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70dde788aa480895c7fa93a5fdefe2c27c983214f4c14f25a9412598fe89769`  
		Last Modified: Thu, 14 Sep 2017 06:38:59 GMT  
		Size: 10.0 MB (10026479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a028e1723319b5da0484f38b757a997b9ab66a755f59f635eb9442ed48fdeea9`  
		Last Modified: Thu, 14 Sep 2017 06:38:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622b32dda707f04a894d29a4ed363bd2831797ea028c207ee31553ad42cea503`  
		Last Modified: Thu, 14 Sep 2017 06:38:58 GMT  
		Size: 1.5 KB (1547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372acae37a0d858a50136d7ae4fff2b14a8394f60a586991d6e1d804afe09567`  
		Last Modified: Thu, 14 Sep 2017 06:38:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cba0fbd64b97f579a02c7d658a8ef5c8c9056439674b79c9d2fa42c90634ce`  
		Last Modified: Thu, 14 Sep 2017 06:38:58 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
