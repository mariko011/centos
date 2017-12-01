## `tomcat:9-alpine`

```console
$ docker pull tomcat@sha256:29ba6e52ec3fdebc5cb21a2ae77909d049b2dc914b2f615e8f21b46c21a4167b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:9-alpine` - linux; amd64

```console
$ docker pull tomcat@sha256:eb9f08bce2d55ac83c6a9a7e13e2c5d2359e049016690af2ca3826de7c17a6c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73144776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94259ced6eee554d64f9806b267835fb4617f5d85726647a1b5305e0d2725da`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 12:14:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 04 Nov 2017 12:14:49 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 12:14:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 04 Nov 2017 12:14:50 GMT
WORKDIR /usr/local/tomcat
# Sat, 04 Nov 2017 12:14:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 04 Nov 2017 12:14:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 04 Nov 2017 12:14:57 GMT
RUN apk add --no-cache gnupg
# Sat, 04 Nov 2017 12:22:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 04 Nov 2017 12:23:02 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 04 Nov 2017 12:23:03 GMT
ENV TOMCAT_MAJOR=9
# Fri, 01 Dec 2017 01:43:47 GMT
ENV TOMCAT_VERSION=9.0.2
# Fri, 01 Dec 2017 01:43:47 GMT
ENV TOMCAT_SHA1=b59e1d658a4edbca7a81d12fd6f20203a4da9743
# Fri, 01 Dec 2017 01:43:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz
# Fri, 01 Dec 2017 01:43:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc
# Fri, 01 Dec 2017 01:44:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 01 Dec 2017 01:44:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 01 Dec 2017 01:44:17 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 01:44:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6d1448f86a346892810beb11875c9cc05f73d5dc020eed082d9fd63a92c94b`  
		Last Modified: Sat, 04 Nov 2017 12:26:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a1fb5d2287838700bb838db843db8e3006a55d3bb0451ad5f4bc745c15825f`  
		Last Modified: Sat, 04 Nov 2017 12:26:27 GMT  
		Size: 4.4 MB (4436289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33514010f8f1015f2244dd2882e9417563973f22d1b00ed77f68caac765a33d2`  
		Last Modified: Sat, 04 Nov 2017 12:27:35 GMT  
		Size: 102.0 KB (102004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f1660a2958b0d3b859ed9a958cfa3661332f005fb15657be99c2d15f191dd4`  
		Last Modified: Fri, 01 Dec 2017 01:48:39 GMT  
		Size: 12.3 MB (12328153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90ecdb7bc997fd9c0dcca2059d092c74e43fca453c8cbf9af45aed1af0c1fef`  
		Last Modified: Fri, 01 Dec 2017 01:48:37 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-alpine` - linux; arm variant v6

```console
$ docker pull tomcat@sha256:7f5c4de221c0d3b2c9e0890a6fcd332920e38fa261d53cf9baa1f6c620a5d732
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70426106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de51ad972ad3c55f4c3823996420ebb9480ad68760a1572813f54760e8fcc85b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:30:25 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 05:30:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 05:31:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 05:31:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:31:26 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 05:31:26 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 05:31:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 23:22:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 26 Oct 2017 23:22:13 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 23:22:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 26 Oct 2017 23:22:14 GMT
WORKDIR /usr/local/tomcat
# Thu, 26 Oct 2017 23:22:14 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 23:22:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 23:22:19 GMT
RUN apk add --no-cache gnupg
# Thu, 26 Oct 2017 23:24:22 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 26 Oct 2017 23:31:32 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 26 Oct 2017 23:31:32 GMT
ENV TOMCAT_MAJOR=9
# Fri, 01 Dec 2017 15:25:10 GMT
ENV TOMCAT_VERSION=9.0.2
# Fri, 01 Dec 2017 15:25:11 GMT
ENV TOMCAT_SHA1=b59e1d658a4edbca7a81d12fd6f20203a4da9743
# Fri, 01 Dec 2017 15:25:11 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz
# Fri, 01 Dec 2017 15:25:11 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc
# Fri, 01 Dec 2017 15:25:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 01 Dec 2017 15:25:34 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 01 Dec 2017 15:25:34 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 15:25:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40582f0dca4419edfce4da23d0e09feee9846320b70797bd9268a2e515e04853`  
		Last Modified: Thu, 26 Oct 2017 05:31:40 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae518063fe753d3716080b625ab457b0771a79ba95989618376a7e709940d5`  
		Last Modified: Thu, 26 Oct 2017 05:32:58 GMT  
		Size: 51.9 MB (51889415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d936cddd894f2e9b960c64304437f414455c294a0ca73fffd3decf6e7e7bf719`  
		Last Modified: Thu, 26 Oct 2017 23:24:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc0920109af546d10016f48597dc0ee044b901865fd97f0b05e41581024a3b7`  
		Last Modified: Thu, 26 Oct 2017 23:24:55 GMT  
		Size: 4.2 MB (4214551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e52b9da04c4645fdc505910b3160c59cf128388e486d00f17b92c087b1949e6`  
		Last Modified: Thu, 26 Oct 2017 23:32:08 GMT  
		Size: 102.0 KB (102000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9754fd94338f49f49d278f61e3cc97a0c57020e4e4d17fe14ef8e329f0321469`  
		Last Modified: Fri, 01 Dec 2017 15:26:07 GMT  
		Size: 12.3 MB (12253406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262f48a72577293db64e2d94a1ea4d88b0b51d2e5df8ab6aee561fa94ec4f7aa`  
		Last Modified: Fri, 01 Dec 2017 15:26:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-alpine` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:142837de6cab5fe8cfd6a6fd08c703b22b3e3c2d0415f65f2f879949a4e202a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71465495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9650b95860a7af0d947f02c0e7e3302cea8838472e95c886f0ff86cf2d21b88b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:01:33 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 10:01:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 10:03:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 10:03:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 10:03:50 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 10:03:50 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 10:04:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 19:04:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 26 Oct 2017 19:04:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 19:04:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 26 Oct 2017 19:04:03 GMT
WORKDIR /usr/local/tomcat
# Thu, 26 Oct 2017 19:04:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 19:04:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 19:04:11 GMT
RUN apk add --no-cache gnupg
# Thu, 26 Oct 2017 19:10:26 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 26 Oct 2017 19:10:35 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 26 Oct 2017 19:10:36 GMT
ENV TOMCAT_MAJOR=9
# Fri, 01 Dec 2017 01:42:53 GMT
ENV TOMCAT_VERSION=9.0.2
# Fri, 01 Dec 2017 01:42:53 GMT
ENV TOMCAT_SHA1=b59e1d658a4edbca7a81d12fd6f20203a4da9743
# Fri, 01 Dec 2017 01:42:54 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz
# Fri, 01 Dec 2017 01:42:55 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc
# Fri, 01 Dec 2017 01:43:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 01 Dec 2017 01:43:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 01 Dec 2017 01:43:24 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 01:43:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0cecd57b48d9b31c0a30711e97897c59667bf85356783b80cab06edc90dba8`  
		Last Modified: Thu, 26 Oct 2017 10:04:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8896e0e47d6c73baf3f79e6a8240cfe8ffa837c430e01ff007fdc54bbddb5f2c`  
		Last Modified: Thu, 26 Oct 2017 10:11:01 GMT  
		Size: 53.0 MB (53007449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adba5a646bc787af8856caeef4502513ee4a9bc14850ccd9dd0aa2bb142a85b`  
		Last Modified: Thu, 26 Oct 2017 19:11:42 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336ad67abdb45c5bdcae27bc3c23395a527fb8498d73c4dfd101923a626e45e1`  
		Last Modified: Thu, 26 Oct 2017 19:11:45 GMT  
		Size: 4.1 MB (4096598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d6fa28b60d1f15cb7af455b5bc624cf9572acf1f06bd4d2f2b5bf6c5217073`  
		Last Modified: Thu, 26 Oct 2017 19:16:16 GMT  
		Size: 102.0 KB (102011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22cc87a1f86b4113393763a981d6e161d85cae04aab00b4173cf0d15f090f78`  
		Last Modified: Fri, 01 Dec 2017 01:50:30 GMT  
		Size: 12.3 MB (12344003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe507c36eb78c3177dd723427317a239d919759fce33872c8b186ba47672881`  
		Last Modified: Fri, 01 Dec 2017 01:50:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-alpine` - linux; 386

```console
$ docker pull tomcat@sha256:cad7522f5b84e1818b82eda0da25bc9c93fbba2c87682fce9e4e28503d7c2373
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74320147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae282c88377d7188954ba8910d5cb55ee525cb78c0a28c6b51cf295917f9586`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 09:54:11 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 09:54:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 09:55:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 09:55:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 09:55:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 09:55:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 09:56:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 27 Oct 2017 10:44:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 27 Oct 2017 10:44:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 27 Oct 2017 10:44:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 27 Oct 2017 10:44:38 GMT
WORKDIR /usr/local/tomcat
# Fri, 27 Oct 2017 10:44:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 27 Oct 2017 10:44:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 27 Oct 2017 10:44:43 GMT
RUN apk add --no-cache gnupg
# Fri, 27 Oct 2017 10:47:26 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 27 Oct 2017 10:47:35 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 27 Oct 2017 10:47:35 GMT
ENV TOMCAT_MAJOR=9
# Fri, 01 Dec 2017 11:57:56 GMT
ENV TOMCAT_VERSION=9.0.2
# Fri, 01 Dec 2017 11:57:57 GMT
ENV TOMCAT_SHA1=b59e1d658a4edbca7a81d12fd6f20203a4da9743
# Fri, 01 Dec 2017 11:57:57 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz
# Fri, 01 Dec 2017 11:57:57 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc
# Fri, 01 Dec 2017 11:58:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 01 Dec 2017 11:58:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 01 Dec 2017 11:58:41 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 11:58:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79582b2efa7c03e06d03b856e3a563a60f80b8299ace0abe38cd367a7b85d85`  
		Last Modified: Thu, 26 Oct 2017 10:00:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b157e5bb045604845fea01d8e60c8ff9a3de14f406cd7be2b6b4e4f68a48598a`  
		Last Modified: Thu, 26 Oct 2017 10:07:43 GMT  
		Size: 54.9 MB (54922489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f79ec924b1cce07d1d16e04ce7fc4660d8f758d9c73c46c5b2ca6ca5a16cec9`  
		Last Modified: Fri, 27 Oct 2017 10:49:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78654ba097e25b81cea6caffc1fd2dbef391c16a8d95d49733c34fc09b98f9c6`  
		Last Modified: Fri, 27 Oct 2017 10:49:03 GMT  
		Size: 4.8 MB (4761463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57877a93e9503089f62a7892fb537f8b52627346e010be8e0cfd360514d1ae19`  
		Last Modified: Fri, 27 Oct 2017 10:51:20 GMT  
		Size: 102.0 KB (102014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f0568ba4776410f7256da955c6fa301102c70db84e3a47b65edc48dbbf73c6`  
		Last Modified: Fri, 01 Dec 2017 12:12:55 GMT  
		Size: 12.5 MB (12487902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a062405d4842781ff45e00ee9a6b375d7c5189319a93d37adea336ba60ef0f`  
		Last Modified: Fri, 01 Dec 2017 12:12:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-alpine` - linux; ppc64le

```console
$ docker pull tomcat@sha256:47c0359801c6655565f392849d301858f3085259eacbc774b1a72358bd4d0b0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72420456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976c954fb744b71e01ee93122d8c32709afe8dbf3f6ad338ffc91f703c23ba94`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:48:04 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 10:48:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 10:51:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 10:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 10:51:18 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 10:51:19 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 10:51:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 19:18:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 26 Oct 2017 19:18:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 19:18:33 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 26 Oct 2017 19:18:35 GMT
WORKDIR /usr/local/tomcat
# Thu, 26 Oct 2017 19:18:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 19:18:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 19:18:48 GMT
RUN apk add --no-cache gnupg
# Thu, 26 Oct 2017 19:22:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 26 Oct 2017 19:22:21 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 26 Oct 2017 19:22:23 GMT
ENV TOMCAT_MAJOR=9
# Fri, 01 Dec 2017 20:24:15 GMT
ENV TOMCAT_VERSION=9.0.2
# Fri, 01 Dec 2017 20:24:15 GMT
ENV TOMCAT_SHA1=b59e1d658a4edbca7a81d12fd6f20203a4da9743
# Fri, 01 Dec 2017 20:24:16 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz
# Fri, 01 Dec 2017 20:24:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc
# Fri, 01 Dec 2017 20:24:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 01 Dec 2017 20:24:45 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 01 Dec 2017 20:24:45 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 20:24:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fc48b3cd38c8d1f053eaca17b2b0ef79aaeb2586d71eff1cac74f33a8ab1c`  
		Last Modified: Thu, 26 Oct 2017 10:52:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb215b7b47969339ffefe3eff54b39e1c63f89da7cd28f8fccc140f26922a2a7`  
		Last Modified: Thu, 26 Oct 2017 10:54:01 GMT  
		Size: 53.6 MB (53568484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce19fe260f4df10c6f77c99caee2773266fee8729d6592d38d3d4ba2caa9273`  
		Last Modified: Thu, 26 Oct 2017 19:24:58 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c9875b86f4fd4629a92f0b1a6d6c7bd8dd912166a61f83a961cc789382ee32`  
		Last Modified: Thu, 26 Oct 2017 19:25:00 GMT  
		Size: 4.3 MB (4290288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a929ce512f6e188b4286fb9ef4b285e9e2df8fa5d4621a44817a1ef4533c8532`  
		Last Modified: Thu, 26 Oct 2017 19:26:15 GMT  
		Size: 102.0 KB (102036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4f157f53045489ad031895b0a1d0ec0e7d5a497b8840831f67080a7fe56434`  
		Last Modified: Fri, 01 Dec 2017 20:27:33 GMT  
		Size: 12.5 MB (12450317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312f3a6ca7405948d1b051849f40e2e4ec9925841b5b6c757caaa7ebab750ba3`  
		Last Modified: Fri, 01 Dec 2017 20:27:31 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-alpine` - linux; s390x

```console
$ docker pull tomcat@sha256:b53b3ec2f23408a29853ad01faa23d8d027d322eb58130599942bcf131451097
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72637178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c556fea2bfc1bbe5e041d6abe8e3e41f30b58840bd71fd1e4e03b705e4c10696`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 16:54:06 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 16:54:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 16:55:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 16:55:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 16:55:48 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 16:55:48 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 16:55:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 27 Oct 2017 12:23:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 27 Oct 2017 12:23:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 27 Oct 2017 12:23:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 27 Oct 2017 12:23:21 GMT
WORKDIR /usr/local/tomcat
# Fri, 27 Oct 2017 12:23:21 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 27 Oct 2017 12:23:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 27 Oct 2017 12:23:25 GMT
RUN apk add --no-cache gnupg
# Fri, 27 Oct 2017 12:26:01 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 27 Oct 2017 12:26:17 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 27 Oct 2017 12:26:17 GMT
ENV TOMCAT_MAJOR=9
# Fri, 01 Dec 2017 13:25:26 GMT
ENV TOMCAT_VERSION=9.0.2
# Fri, 01 Dec 2017 13:25:27 GMT
ENV TOMCAT_SHA1=b59e1d658a4edbca7a81d12fd6f20203a4da9743
# Fri, 01 Dec 2017 13:25:27 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz
# Fri, 01 Dec 2017 13:25:27 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.2/bin/apache-tomcat-9.0.2.tar.gz.asc
# Fri, 01 Dec 2017 13:25:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 01 Dec 2017 13:25:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 01 Dec 2017 13:25:47 GMT
EXPOSE 8080/tcp
# Fri, 01 Dec 2017 13:25:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b16db6a3dbf8986a149c7450969f18d66990974e5826930cb148d70dfdf01a1`  
		Last Modified: Thu, 26 Oct 2017 16:56:22 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b038a50126a2efb0007fb8c02ff444a6449bb3c507ade4730d70bddd905131e`  
		Last Modified: Thu, 26 Oct 2017 16:57:47 GMT  
		Size: 53.1 MB (53141446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6f925fb84c42a335eb49da09f974cc457000983558054cb61b233be020785b`  
		Last Modified: Fri, 27 Oct 2017 12:27:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a4ae5e2fde94fe9d5beb884244d038e517b188b37e9335dd53510a9390a08b`  
		Last Modified: Fri, 27 Oct 2017 12:27:15 GMT  
		Size: 4.6 MB (4581374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb79043d52479c6512ded09fec713a68101d4ff3e4f6a52a6f56a5dfeadd67`  
		Last Modified: Fri, 27 Oct 2017 12:28:31 GMT  
		Size: 102.0 KB (102027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0229f7bb547afaff1f615d2c87c7a951358487ca64554e49b12f7e0881946b07`  
		Last Modified: Fri, 01 Dec 2017 13:28:07 GMT  
		Size: 12.7 MB (12746187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe466087e40d3dcf9375a86a44afb2af9173a81b31af14b8c40b65f132ad04`  
		Last Modified: Fri, 01 Dec 2017 13:28:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
