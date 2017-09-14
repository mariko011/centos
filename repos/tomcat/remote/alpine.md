## `tomcat:alpine`

```console
$ docker pull tomcat@sha256:49ed0bf6f5ee89eec642fc83b621d40917c57af75357286b156f36ab6eb2e41c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `tomcat:alpine` - linux; amd64

```console
$ docker pull tomcat@sha256:7b8da37c6968873b4dc33efdcaa43195d9f86f26bbf117476022444b60b4f41c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73462707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297877e50c6e5a0e5222c6aaeca70ad6a32713dd3e9c6ecd6974a052d18484b6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:48:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:48:53 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:48:53 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:48:54 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:48:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:48:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:49:01 GMT
RUN apk add --no-cache gnupg
# Thu, 14 Sep 2017 06:49:01 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:49:11 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:53:02 GMT
ENV TOMCAT_MAJOR=8
# Thu, 14 Sep 2017 06:54:28 GMT
ENV TOMCAT_VERSION=8.5.20
# Thu, 14 Sep 2017 06:54:28 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:54:28 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:28 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
# Thu, 14 Sep 2017 06:54:29 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz.asc
# Thu, 14 Sep 2017 06:54:47 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 14 Sep 2017 06:54:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 14 Sep 2017 06:54:53 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 06:54:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250eec3af01a5c6a64e708a50197088c56dc205705091cc3e7cf7d1920541007`  
		Last Modified: Thu, 14 Sep 2017 06:58:21 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b037b8e980403bf610cff09569b286775f9123272ee0b8d899d859d9d17230`  
		Last Modified: Thu, 14 Sep 2017 06:58:23 GMT  
		Size: 4.4 MB (4415582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851a6d1ffaf2283913b98e8659160702a72f7a35f51ca0d9b9592e2d71f34cc1`  
		Last Modified: Thu, 14 Sep 2017 06:58:21 GMT  
		Size: 112.6 KB (112553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0378bf09666d259ca1f513c0dbfc83bfd9a6001524c548f8b6340ad244ddd151`  
		Last Modified: Thu, 14 Sep 2017 07:00:59 GMT  
		Size: 12.7 MB (12660756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9d3b57042a9c90283e11bd99c808aa20e76000aee3dca3b4e812739812a4fe`  
		Last Modified: Thu, 14 Sep 2017 07:00:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
