## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:325ea254906effb00b64ab41247d43411878c2d4f6c82cc9dab7f88b297d1e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop27-alpine` - linux; amd64

```console
$ docker pull flink@sha256:b58f92f9f64f31042fa9f46f10d0fc23cffdef222bf2371c835c06e79645b3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279638881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192deb221b78cdbd98fb60dbb0bce196f2deda9e11607af7c305caee107526fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 06:52:13 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 10 Jan 2018 07:32:25 GMT
ENV FLINK_VERSION=1.4.0 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Wed, 10 Jan 2018 07:32:25 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 10 Jan 2018 07:32:25 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 07:32:26 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 10 Jan 2018 07:32:27 GMT
WORKDIR /opt/flink
# Wed, 10 Jan 2018 07:32:27 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.4.0/flink-1.4.0-bin-hadoop27-scala_2.11.tgz
# Wed, 10 Jan 2018 07:32:27 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.4.0/flink-1.4.0-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.4.0/flink-1.4.0-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 10 Jan 2018 07:32:27 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Wed, 10 Jan 2018 07:32:43 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 10 Jan 2018 07:34:55 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 10 Jan 2018 07:34:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 07:34:55 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 10 Jan 2018 07:34:56 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272184824bdf0cc3198fb396c04cf4d452228ee444f9e994d6942cc5485ba209`  
		Last Modified: Wed, 10 Jan 2018 07:43:12 GMT  
		Size: 1.3 MB (1308287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe3cb6acd571ecb3905472700eebd76db9d271d436f3771df551c10139cf79a`  
		Last Modified: Wed, 10 Jan 2018 07:59:01 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09dc6cb18416f496f5a7294762e9e3d2ecd33742ddcd03849565d019a0cc6706`  
		Last Modified: Wed, 10 Jan 2018 07:59:01 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6246557996c3f632439436fa221ecf3307df1b36de2cf85152d8045a30f614fc`  
		Last Modified: Wed, 10 Jan 2018 07:59:01 GMT  
		Size: 54.7 KB (54700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda11581fe1d40bc6d4f5c2730a1ed63f448385719bd9a6adeb6a3c9730f638e`  
		Last Modified: Wed, 10 Jan 2018 07:59:17 GMT  
		Size: 221.8 MB (221753734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2fccae641a2bb501c9f94e2c9da68035e7dcd02b943f1c5b2a0f20c533d740`  
		Last Modified: Wed, 10 Jan 2018 07:59:01 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
