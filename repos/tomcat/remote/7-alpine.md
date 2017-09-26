## `tomcat:7-alpine`

```console
$ docker pull tomcat@sha256:f11cead42900b3004763e45b44d1ea14d318d72d9442db8a27f6a4064be1b77b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `tomcat:7-alpine` - linux; amd64

```console
$ docker pull tomcat@sha256:03c91876e9b7cbe3146393fdbaf689f2ca18d8a7d333e86427a72402a0fbb04d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79911564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716a1fee44a505745eb5b7ad14a87fed99aac90e2aa54ea586f3b895558d1e06`
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
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 14 Sep 2017 04:17:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:17:47 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:18:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:47:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 14 Sep 2017 06:47:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 06:47:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 14 Sep 2017 06:47:18 GMT
WORKDIR /usr/local/tomcat
# Thu, 14 Sep 2017 06:47:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:47:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 14 Sep 2017 06:47:22 GMT
RUN apk add --no-cache gnupg
# Thu, 14 Sep 2017 06:47:22 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 14 Sep 2017 06:47:33 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 14 Sep 2017 06:47:33 GMT
ENV TOMCAT_MAJOR=7
# Thu, 14 Sep 2017 06:47:33 GMT
ENV TOMCAT_VERSION=7.0.81
# Thu, 14 Sep 2017 06:47:33 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Thu, 14 Sep 2017 06:47:34 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Thu, 14 Sep 2017 06:47:34 GMT
ENV TOMCAT_TGZ_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz
# Thu, 14 Sep 2017 06:47:34 GMT
ENV TOMCAT_ASC_FALLBACK_URL=https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.81/bin/apache-tomcat-7.0.81.tar.gz.asc
# Tue, 26 Sep 2017 02:08:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& { 		wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 		|| wget -O tomcat.tar.gz "$TOMCAT_TGZ_FALLBACK_URL" 	; } 	&& { 		wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 		|| wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_FALLBACK_URL" 	; } 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz 	&& apk add --no-cache bash 	&& find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 26 Sep 2017 02:08:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 26 Sep 2017 02:08:56 GMT
EXPOSE 8080/tcp
# Tue, 26 Sep 2017 02:08:56 GMT
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
	-	`sha256:fd43573df90c82d7e60c22718682d64c6c6b89fc2c409dd3c426090b41f0b573`  
		Last Modified: Thu, 14 Sep 2017 04:53:05 GMT  
		Size: 61.1 MB (61132262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43933a05afb79879d42dad2beaf7620649a5a5163b8cc4f03f162a3cc7eedde3`  
		Last Modified: Thu, 14 Sep 2017 06:57:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5322d678041249fa33f257d74290db28c48d1bb6bc8037a93e3c71da46501f2a`  
		Last Modified: Thu, 14 Sep 2017 06:57:28 GMT  
		Size: 4.4 MB (4441339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafc4628383ed9cf0d7c773b2d3b81fffe71145e62de768cac01618b6f206f3d`  
		Last Modified: Thu, 14 Sep 2017 06:57:25 GMT  
		Size: 112.6 KB (112571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b34289223fe81750c539491969874c7958cecbd62c9336d9dbe65dd2748ea36`  
		Last Modified: Tue, 26 Sep 2017 02:15:13 GMT  
		Size: 12.2 MB (12234480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54333ae009b042fd8f9d061856f651b5b293c785a17edec5ae775ab4cb15f7f`  
		Last Modified: Tue, 26 Sep 2017 02:15:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
