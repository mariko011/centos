## `jetty:alpine`

```console
$ docker pull jetty@sha256:98ec3768f2698696deb9f672014ea113cca8a53497ef1aacde90ad71a5478a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

```console
$ docker pull jetty@sha256:8d32e1ee09126fa29f11a6c24aa52f704da0c1e74678ca25123d1c7d3d198f56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64654466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1db85e713fdbd5cda371bb06b21582574d711ab7ff2ca0c5c8993a169fa5df8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:47:37 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 05 Dec 2017 04:47:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Dec 2017 04:47:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:47:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Dec 2017 04:47:38 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Dec 2017 04:47:38 GMT
ENV JETTY_VERSION=9.4.7.v20170914
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.7.v20170914/jetty-home-9.4.7.v20170914.tar.gz
# Tue, 05 Dec 2017 04:47:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Dec 2017 04:48:19 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Dec 2017 04:48:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Dec 2017 04:48:25 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Dec 2017 04:48:26 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Dec 2017 04:48:26 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Dec 2017 04:48:27 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Dec 2017 04:48:32 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 05 Dec 2017 04:48:32 GMT
USER [jetty]
# Tue, 05 Dec 2017 04:48:32 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 04:48:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:48:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ebe435725cf25f7421c13b02ba46b2d4c965150b4fed6db3439f46e1896ab8`  
		Last Modified: Tue, 05 Dec 2017 04:49:50 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380ec0b15ee6ece69cfbcd7907561affde53af42ea6becdd1c3650b6b430fb5c`  
		Last Modified: Tue, 05 Dec 2017 04:49:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9073860efe4d90e97e765093ab45c743f29f8fe01012683d161b046a57da8`  
		Last Modified: Tue, 05 Dec 2017 04:49:48 GMT  
		Size: 8.1 MB (8130471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78baf84db582c1f9230a56f3422494a12fc079b157d8183d7a953200c61de12`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150a95f117d0faeba85c74c798296f22777703ad916c1a6d544ea1127e14eb0`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6a5866ac3879c8f236cac330dac8882fe4abfc721821b91deada9eb1fe8683`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7981820de64122067149875fb1ceb977cb0f6fdeff5ec346010608142bf77f61`  
		Last Modified: Tue, 05 Dec 2017 04:49:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
