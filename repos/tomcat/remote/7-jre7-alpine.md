## `tomcat:7-jre7-alpine`

```console
$ docker pull tomcat@sha256:d9ceb5dcb09a23fd5e81279fc8911bc2854bc6fc84d689056dd1efeec5ab9223
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76674345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f9b944abc1e1feb3ed59e0d5fca122087ab6c767e6daee35b1a52b293df2a1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:46:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 May 2017 21:46:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:46:17 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:46:18 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:46:25 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 23:20:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 May 2017 23:20:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 23:20:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 May 2017 23:20:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 May 2017 23:20:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 23:20:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 10 May 2017 23:20:29 GMT
RUN apk add --no-cache gnupg
# Wed, 10 May 2017 23:20:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 10 May 2017 23:27:00 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 10 May 2017 23:27:00 GMT
ENV TOMCAT_MAJOR=7
# Wed, 10 May 2017 23:27:01 GMT
ENV TOMCAT_VERSION=7.0.77
# Wed, 10 May 2017 23:27:02 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz
# Wed, 10 May 2017 23:27:02 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz.asc
# Wed, 10 May 2017 23:27:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(getconf _NPROCESSORS_ONLN) 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Wed, 10 May 2017 23:27:21 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 10 May 2017 23:27:22 GMT
EXPOSE 8080/tcp
# Wed, 10 May 2017 23:27:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615b0764d7c272b82846ff149be57d6e35ab9d1f3d990e919111c8749d8ab474`  
		Last Modified: Fri, 12 May 2017 15:11:58 GMT  
		Size: 60.0 MB (59979179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c26c96d2d70f4bb9d20a0c08ca89f85080610759c0c5e106c0f3f2d7b8eba2`  
		Last Modified: Sat, 13 May 2017 19:15:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6153cd1e94815da45ea6512a5b2556082605d27e4d7b36647c8eee641c685f`  
		Last Modified: Sat, 13 May 2017 19:15:07 GMT  
		Size: 4.1 MB (4148829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b00dfac4d033d241e78755a82ce43f63a488a6c49a396ba9f890e559ac26e`  
		Last Modified: Sat, 13 May 2017 19:15:06 GMT  
		Size: 112.2 KB (112241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631907001a3ea906b853930da81eace68b3373f849c056ccd4a8265c8c253e77`  
		Last Modified: Sat, 13 May 2017 19:15:07 GMT  
		Size: 10.1 MB (10050568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5391a34d8610bae94f6dcb9934298cba37b00c1c90b272a830554ee06b0d5518`  
		Last Modified: Sat, 13 May 2017 19:15:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
