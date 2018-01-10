## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:b70d9a501b1aad55cb781fb11eef9c4868d36256793c11cb3cf3722f4f49c58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop28-alpine` - linux; amd64

```console
$ docker pull flink@sha256:5a9b4495ca35cc938bc93f3b4c1984b59774a9d8e587e4eb0e427c0ef718c006
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.5 MB (281502112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39350f18b0110618c002f7691d57d1a83a6c6f2a849ba3e321fd4f32e068a560`
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
# Wed, 10 Jan 2018 07:35:15 GMT
ENV FLINK_VERSION=1.4.0 HADOOP_VERSION=28 SCALA_VERSION=2.11
# Wed, 10 Jan 2018 07:35:16 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 10 Jan 2018 07:35:16 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 07:35:17 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 10 Jan 2018 07:35:17 GMT
WORKDIR /opt/flink
# Wed, 10 Jan 2018 07:35:17 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.4.0/flink-1.4.0-bin-hadoop28-scala_2.11.tgz
# Wed, 10 Jan 2018 07:35:17 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.4.0/flink-1.4.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.4.0/flink-1.4.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 10 Jan 2018 07:35:18 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Wed, 10 Jan 2018 07:35:59 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 10 Jan 2018 07:35:59 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 10 Jan 2018 07:36:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 07:36:00 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 10 Jan 2018 07:36:00 GMT
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
	-	`sha256:20c25492fc45b3321adac4a49a58c47f667cefd6393dce8ec5177186921ed248`  
		Last Modified: Wed, 10 Jan 2018 08:00:45 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ab185d669cba310bd6da1da4b3cf1c6c4c704dbc40d3393d0300c494508a78`  
		Last Modified: Wed, 10 Jan 2018 08:00:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b563814b906a5ccb0eba4ec5d2549bd71d46fde713e518abae0f9d29554a46`  
		Last Modified: Wed, 10 Jan 2018 08:00:47 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e401b12a5fe6bdef835c847867c02a940cee3a6a228bf6aaad6966e5a9cd03`  
		Last Modified: Wed, 10 Jan 2018 08:01:02 GMT  
		Size: 223.6 MB (223616963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8e082a7443ef7cb16bec003f0de686389efa9cf05dcbc77b067b9475e5b7f3`  
		Last Modified: Wed, 10 Jan 2018 08:00:45 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
