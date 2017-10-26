## `jetty:alpine`

```console
$ docker pull jetty@sha256:e72047c27e22b3a52896965adfb4dea8c7c71779098b9a070ce7a9be99c8d15f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

```console
$ docker pull jetty@sha256:f134ece5c4f0187f9303fb126eace7a4600a8628c19744a66d9e20fb3dfdb16a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64412975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf43ced24e29e6afc9c4912df1e16dec7dc5c1ee2373b0d610fd53a2b08d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:29:20 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 26 Oct 2017 04:29:20 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 26 Oct 2017 04:29:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 04:29:21 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 26 Oct 2017 04:29:22 GMT
WORKDIR /usr/local/jetty
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Thu, 26 Oct 2017 04:29:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 26 Oct 2017 04:29:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 26 Oct 2017 04:29:52 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 26 Oct 2017 04:29:52 GMT
WORKDIR /var/lib/jetty
# Thu, 26 Oct 2017 04:29:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 26 Oct 2017 04:29:56 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 26 Oct 2017 04:29:57 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 26 Oct 2017 04:29:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 26 Oct 2017 04:29:57 GMT
USER [jetty]
# Thu, 26 Oct 2017 04:29:58 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 04:29:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 04:29:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068738306847b8559fcedbd26d239eb53f2b4aaade60334c98b9d6820f396690`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167ee3ef249305870ddb1d92f7504ecf3a0ef7c7a5fe0436af139de3bd588ee`  
		Last Modified: Thu, 26 Oct 2017 04:30:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0821b342cc4f769197df339ecaf4d8045c554579fca9ce68d7eaa319457d2`  
		Last Modified: Thu, 26 Oct 2017 04:30:49 GMT  
		Size: 8.1 MB (8130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797b85762e7ec21b4a81b952262fdf9e79fff04b6913093464394c21fe86df60`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02ba93c6fc189c0105d3f3d42b7d0e6a6cef734a6afc42ad8b1af7ce0b4f5f1`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7700dc81b5a5110e9efe0c4425dfe25a0b7e00bfb563ddfde4341bbe1b905fe`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebd0f9c2cadce627c497e267785e6817f31b457266d0a6b187f5981538b2a7`  
		Last Modified: Thu, 26 Oct 2017 04:30:48 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
