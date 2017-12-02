## `flink:hadoop24-alpine`

```console
$ docker pull flink@sha256:efd456cee845a7b38871b74ca11e0e30473265da405052e03c1f205555668bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop24-alpine` - linux; amd64

```console
$ docker pull flink@sha256:34480c67f3e4efb21e3e25d29f40186c96a625cf0340ea180e094f855ea11930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195574876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7178ae9371400317b99eb6d17c798471f298ba0e9c2f85e28edf0ac55ae8d50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:42:06 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 01 Dec 2017 23:53:32 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=24 SCALA_VERSION=2.11
# Fri, 01 Dec 2017 23:53:32 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 01 Dec 2017 23:53:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 23:53:33 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 01 Dec 2017 23:53:33 GMT
WORKDIR /opt/flink
# Fri, 01 Dec 2017 23:53:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz
# Fri, 01 Dec 2017 23:53:34 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop24-scala_2.11.tgz.asc
# Fri, 01 Dec 2017 23:53:34 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Fri, 01 Dec 2017 23:54:06 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 01 Dec 2017 23:54:06 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 01 Dec 2017 23:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:54:11 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 01 Dec 2017 23:54:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36101df303a2cca09ff98609b7aea8528a3655b5e0a03e860589240d95a08e94`  
		Last Modified: Sat, 02 Dec 2017 00:06:38 GMT  
		Size: 1.2 MB (1158873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca22f01fe93658c02f3fdc5ba9c6f92e92b6918147246012e33b7b43f4e8001`  
		Last Modified: Sat, 02 Dec 2017 00:17:39 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6081b5362c46382c401df2a3eb299c567cdb2ab84033744daec43067fd04fb32`  
		Last Modified: Sat, 02 Dec 2017 00:17:39 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388f5a1d65535db89790b4f24f488a2ac1ab97f787a2eea1616764fce1a2199a`  
		Last Modified: Sat, 02 Dec 2017 00:17:39 GMT  
		Size: 54.7 KB (54699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d70bb436067ab8dccdff62db40ee3d330ce4c7f43881436848ffea82f87ac2`  
		Last Modified: Sat, 02 Dec 2017 00:17:51 GMT  
		Size: 138.1 MB (138080719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c569614f1ae93740610d22b2ddf304da5e50966719942e0f98a64123db740385`  
		Last Modified: Sat, 02 Dec 2017 00:17:40 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
