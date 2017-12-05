## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:6971fb5af64757bf5afe595018486a55c57be72ebf7a14b1c06513b237fbb4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop27-alpine` - linux; amd64

```console
$ docker pull flink@sha256:129182ec8c9aa7fba3a1086acff24763eb7de8e18f224512fd4c29aa356a1478
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206030676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde0a0fa8eb208100435254878a4b8e97cd034edd82b209376eca009c0dcf54e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Tue, 05 Dec 2017 04:02:44 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 05 Dec 2017 04:21:51 GMT
ENV FLINK_VERSION=1.3.2 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Tue, 05 Dec 2017 04:21:51 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Dec 2017 04:21:51 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:21:52 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 05 Dec 2017 04:21:52 GMT
WORKDIR /opt/flink
# Tue, 05 Dec 2017 04:21:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz
# Tue, 05 Dec 2017 04:21:52 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.3.2/flink-1.3.2-bin-hadoop27-scala_2.11.tgz.asc
# Tue, 05 Dec 2017 04:21:53 GMT
COPY file:1b3d6b0de4c8f155f3f310dea96670e1f8dcff77569e00e42b8942faa95df302 in /KEYS 
# Tue, 05 Dec 2017 04:22:21 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 05 Dec 2017 04:22:22 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 05 Dec 2017 04:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:22:22 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 05 Dec 2017 04:22:22 GMT
CMD ["help"]
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
	-	`sha256:8c8bccba7b0223df1be9c1e3dc92762bc05a3d4817577ae7f3fd1786a89974f7`  
		Last Modified: Tue, 05 Dec 2017 04:23:18 GMT  
		Size: 1.3 MB (1308288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b11974fd1448032c12305b62176999d6f159cc5546161f8768cbe811c6e2cb2`  
		Last Modified: Tue, 05 Dec 2017 04:42:57 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790067bd3d5ffedcbe0d23edbb72bae0d169495cf847b2e92791d2adf8aa4087`  
		Last Modified: Tue, 05 Dec 2017 04:42:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ba4d9845aebede2f2043f8928d4d9748cf52a961df82e297263b5439b7bc92`  
		Last Modified: Tue, 05 Dec 2017 04:43:00 GMT  
		Size: 54.7 KB (54701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40422732d1a9aeb067f9b5b886e65a3f4373e325ad82027b39d4dc8617b709f7`  
		Last Modified: Tue, 05 Dec 2017 04:43:07 GMT  
		Size: 148.1 MB (148146217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38daba3dff28fb5228ae65f477ebbbf8997e06337c8476ebd269d58e7472bc6c`  
		Last Modified: Tue, 05 Dec 2017 04:42:57 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
