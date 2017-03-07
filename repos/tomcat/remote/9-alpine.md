## `tomcat:9-alpine`

```console
$ docker pull tomcat@sha256:cefe48dffb0a73ac4847bb5bf81f0a42f9a5c42547c103bc9264a95a3535e099
```

-	Platforms:
	-	linux; amd64

### `tomcat:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71442978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760de03e8c2d291e8b389814182e1234a367576535834120d09e3a2c6c088714`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:40:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Mar 2017 20:40:47 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:40:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 07 Mar 2017 20:40:49 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Mar 2017 20:40:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Mar 2017 20:40:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Mar 2017 20:40:54 GMT
RUN apk add --no-cache gnupg
# Tue, 07 Mar 2017 20:42:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 07 Mar 2017 20:42:19 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 07 Mar 2017 20:42:20 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Mar 2017 20:42:21 GMT
ENV TOMCAT_VERSION=9.0.0.M17
# Tue, 07 Mar 2017 20:42:21 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.0.M17/bin/apache-tomcat-9.0.0.M17.tar.gz
# Tue, 07 Mar 2017 20:42:22 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-9/v9.0.0.M17/bin/apache-tomcat-9.0.0.M17.tar.gz.asc
# Tue, 07 Mar 2017 20:42:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(getconf _NPROCESSORS_ONLN) 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 07 Mar 2017 20:42:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 07 Mar 2017 20:42:35 GMT
EXPOSE 8080/tcp
# Tue, 07 Mar 2017 20:42:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ece213b45b7a5a867c5401a6dc057a1e6a560e1d00419da0202ddbbe4346d9`  
		Last Modified: Tue, 07 Mar 2017 20:50:20 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c3345d03e8d9d1fa20d565263b2b2d6f34f60f1717df3f75a7721278d6b99`  
		Last Modified: Tue, 07 Mar 2017 20:50:21 GMT  
		Size: 4.1 MB (4050181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e68d9001c3db1d5d96cd22be956d91814a3eddd6c5edfda9ede5bda0d6137d`  
		Last Modified: Tue, 07 Mar 2017 21:03:53 GMT  
		Size: 99.5 KB (99480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de15462019c5597aeea6e6fa1db7b9fdce0077328564c9ba5092ac90a809097`  
		Last Modified: Tue, 07 Mar 2017 21:03:55 GMT  
		Size: 11.6 MB (11576457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b0f42dd03c06bcfd49d05a4bff610b7924fb8ea718a1a0fed304b1f1ca078e`  
		Last Modified: Tue, 07 Mar 2017 21:03:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
