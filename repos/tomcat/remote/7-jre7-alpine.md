## `tomcat:7-jre7-alpine`

```console
$ docker pull tomcat@sha256:4012f27f4d85abf36340621876deed18ec77f9080840f4f8336a35fe1ef1036e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:7-jre7-alpine` - linux; amd64

```console
$ docker pull tomcat@sha256:6bd9153ccdd6ff792c280620891f3815c8e2593a6dfa1808e725b3792faa0f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75814771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150a708ce0bbd12619ab489f81061e1eb3061f96195a37fc955a064f44d17b83`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:49:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Jan 2018 04:49:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Jan 2018 04:49:03 GMT
ENV JAVA_VERSION=7u151
# Wed, 10 Jan 2018 04:49:03 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Wed, 10 Jan 2018 04:49:40 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:27:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Jan 2018 09:27:42 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Jan 2018 09:27:43 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Jan 2018 09:27:43 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Jan 2018 09:27:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Jan 2018 09:27:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:17:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:17:11 GMT
ENV TOMCAT_MAJOR=7
# Wed, 24 Jan 2018 23:12:16 GMT
ENV TOMCAT_VERSION=7.0.84
# Wed, 24 Jan 2018 23:12:16 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Wed, 24 Jan 2018 23:12:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Wed, 24 Jan 2018 23:12:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Wed, 24 Jan 2018 23:12:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 24 Jan 2018 23:12:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 24 Jan 2018 23:12:59 GMT
EXPOSE 8080/tcp
# Wed, 24 Jan 2018 23:12:59 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:169633f9ae408688c8eb060b4f0f6ec6d74eaec72b3a6d9936dc17b48ebe94ba`  
		Last Modified: Wed, 10 Jan 2018 04:55:46 GMT  
		Size: 61.1 MB (61097080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d5b2a2f912a5901cc313a712a990fc2875cb6e55e3dcc9946cab69f9bad7a5`  
		Last Modified: Wed, 10 Jan 2018 09:34:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be392415c1d1990c9994a2fe817dc2ef19beb53bad43af77870be5f6906efe1`  
		Last Modified: Thu, 25 Jan 2018 00:01:36 GMT  
		Size: 12.7 MB (12651647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741bfe4ba7a69806fa2257292cd80139727724cf6f353d3be8de8b2b152a95cb`  
		Last Modified: Thu, 25 Jan 2018 00:01:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7-alpine` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:69a596d71f22e5d9fa8ff5c4b5ca6138495baecbf107a817fcc1dc53d3f8d455
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73371140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01538dcc39504284f7dc34058a7adf3a886b6bc361dfcb65fc42bf13e8b9ccb5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:09:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 05 Dec 2017 11:09:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:09:37 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:09:38 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:09:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:43:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 11:43:30 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:43:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 11:43:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 11:43:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 11:43:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 01:50:35 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 01:50:36 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 01:49:17 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 01:49:18 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 01:49:18 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 01:49:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 01:51:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 01:51:22 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 01:51:23 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 01:51:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb182013f60c7cf11f8624f7c10d225f067b3560d3ae8edac207ea7ac5086c30`  
		Last Modified: Tue, 05 Dec 2017 11:13:47 GMT  
		Size: 59.1 MB (59141376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cd2aa0cd04ed165b722c1142d3a7033863bba39c048af7f9080f88af2fe358`  
		Last Modified: Tue, 05 Dec 2017 11:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519d3ce5516d4cf94ef2a6c3aae44959def7d313e615f6ec79c34f7713b73fd8`  
		Last Modified: Thu, 25 Jan 2018 02:35:45 GMT  
		Size: 12.2 MB (12240225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283278d7dd178ebc52edd3a34ed0a374b4e2c168dd5bf0f08cfd05d9672cae6d`  
		Last Modified: Thu, 25 Jan 2018 02:35:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7-alpine` - linux; 386

```console
$ docker pull tomcat@sha256:823cfd33845c40ea92ea3052ca5d532ba80a6a1a17a18e8fc443ea2a0a98233e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78745886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6564dd864d387f34736bcf4179b6f342694dbcc8af35d2d4bdee4d6c253b13b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:45:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 05 Dec 2017 11:45:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:45:45 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:45:45 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:45:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:17:22 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:17:22 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 12:17:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:17:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:17:23 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:17:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 20:12:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 20:12:48 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 14:45:50 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 14:45:51 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 14:45:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 14:45:51 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 14:46:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 14:46:51 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 14:46:51 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 14:46:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f0aca843dde75002b90918ea64eb09b2f5e51ada34bf76c667090e50ffe51`  
		Last Modified: Tue, 05 Dec 2017 11:51:34 GMT  
		Size: 64.2 MB (64170755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84a81917f4ffb03bb42680a627cd5b3766c3d6c49e0bf91bbbe13988d8f7e29`  
		Last Modified: Tue, 05 Dec 2017 13:38:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680c03ff7f860efe5ea40c18f21deb1c3c7065871eaaddaeef288f3cd281131`  
		Last Modified: Thu, 25 Jan 2018 19:17:54 GMT  
		Size: 12.4 MB (12448231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d9d1a276659f4e3ec47cc77b8636c3cf1601b98bdfc7574602016ed04abe60`  
		Last Modified: Thu, 25 Jan 2018 19:17:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7-alpine` - linux; ppc64le

```console
$ docker pull tomcat@sha256:a3a47010a3195161edc06ad3e19e830712aa7309d33d94517df912e6f7148f02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67794557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27af623648ad14ff69b3aeb585c2cb6bfe52989c1f916aa2fae2c2e75ab25347`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:49:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 05 Dec 2017 11:49:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:49:12 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:49:13 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:49:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:15:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:15:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 12:15:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:15:43 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:15:45 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:15:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 20:32:40 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 20:32:43 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 20:32:24 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 20:32:25 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 20:32:26 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 20:32:27 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 20:33:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 20:33:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 20:33:37 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 20:33:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4e6e790796714359566716c16f34426a754787d12c851526e8e17fd25a6e33`  
		Last Modified: Tue, 05 Dec 2017 11:52:40 GMT  
		Size: 53.3 MB (53307603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d637ee989cf7208c9aebcf6ae8f05167c9536ee8ccb3cd3fd324c2f29ead72e`  
		Last Modified: Tue, 05 Dec 2017 12:26:16 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e7caa9f18d86481f534d29dd7db3f8a6b714ac5de09b8a8d17a73bb45bbc4`  
		Last Modified: Thu, 25 Jan 2018 21:14:14 GMT  
		Size: 12.4 MB (12404735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f29462ada23ccdbf172606531f5aeb8cedc458aa43937a171d55e20847405`  
		Last Modified: Thu, 25 Jan 2018 21:14:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7-alpine` - linux; s390x

```console
$ docker pull tomcat@sha256:503d3c8428bf601c8677c9e8210f7b0eeb0e953752876e3d41b5842efd3cfbfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68291591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e91b6c5bdb1d88b57f603b054580d0bc4cc6e0311115bfbc433691187c32417`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 17:54:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 17:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 17:55:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 05 Dec 2017 17:55:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 17:55:58 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 17:55:59 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 17:56:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 18:20:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 18:20:24 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 18:20:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 18:20:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 18:20:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 18:20:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 13:25:24 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 13:25:25 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 13:24:57 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 13:24:57 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 13:24:57 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 13:24:58 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 13:26:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 13:26:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 13:26:23 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 13:26:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320238e3e22d841c8337cb6f2d8b95f9c1ab000f2845efcd5bd977690210f427`  
		Last Modified: Tue, 05 Dec 2017 17:58:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4442bd435445efe7adc25c1e0c1b5c08defb0780c766e951c8425f91b801d8a`  
		Last Modified: Tue, 05 Dec 2017 17:58:58 GMT  
		Size: 53.4 MB (53426108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26397b1d794de7395a2726069c59ec3cbccbf2084262074957b30e44574f78c1`  
		Last Modified: Tue, 05 Dec 2017 18:24:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143623e45ea54c0d68f6abe517a47e43230ac055d1a75eb603faae335ca0f64f`  
		Last Modified: Thu, 25 Jan 2018 13:37:39 GMT  
		Size: 12.7 MB (12679570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74214429ddca6d6722ff41400338e0a58c3de306ea81cbe70de36d07720c9e57`  
		Last Modified: Thu, 25 Jan 2018 13:37:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
