## `tomcat:8-jre8-alpine`

```console
$ docker pull tomcat@sha256:255f1e68f17b4e86029938d4f7cab051c79c7462c64e08d563bb0ce7f35e46c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `tomcat:8-jre8-alpine` - linux; amd64

```console
$ docker pull tomcat@sha256:f4ffcfc967b9c0206ed2889d930e7be56dd3dd4fab1c0a81211dab982e95e26a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73194299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411c5f90ea5333a599a6482f4b3b865381f002f44b121a3fc3d78a95ad620c18`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:04:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 26 Oct 2017 05:04:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:04:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 26 Oct 2017 05:04:38 GMT
WORKDIR /usr/local/tomcat
# Thu, 26 Oct 2017 05:04:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 05:04:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 26 Oct 2017 05:04:44 GMT
RUN apk add --no-cache gnupg
# Thu, 26 Oct 2017 05:04:47 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 26 Oct 2017 05:05:05 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 26 Oct 2017 05:06:31 GMT
ENV TOMCAT_MAJOR=8
# Thu, 26 Oct 2017 05:07:05 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 26 Oct 2017 05:07:05 GMT
ENV TOMCAT_SHA1=1ba27c1bb86ab9c8404e98068800f90bd662523c
# Thu, 26 Oct 2017 05:07:05 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz
# Thu, 26 Oct 2017 05:07:06 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz.asc
# Thu, 26 Oct 2017 05:07:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 26 Oct 2017 05:07:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 26 Oct 2017 05:07:24 GMT
EXPOSE 8080/tcp
# Thu, 26 Oct 2017 05:07:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae96df806900470fac2a438ea2626f1bfc9f4dfa1474db835d4608302c62c306`  
		Last Modified: Thu, 26 Oct 2017 05:09:31 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f8eab72c3aecaa9c6861a8a6022f6f5d69e9da1a6dd5700a9736e18a635b5`  
		Last Modified: Thu, 26 Oct 2017 05:09:32 GMT  
		Size: 4.4 MB (4436301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72249393937087c0e0dcdb6c6ec008f8c52c57fda58f01a09c792e59b7f7012b`  
		Last Modified: Thu, 26 Oct 2017 05:09:31 GMT  
		Size: 114.8 KB (114752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19bda47f8699f57227c0cbe65974b30226a79e9fff634686a5d99926405d688`  
		Last Modified: Thu, 26 Oct 2017 05:11:14 GMT  
		Size: 12.4 MB (12365123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca498b960a7ea8e319fb4ea5710c62860fd6cbe02130f93ccac3c8bbd13e02a`  
		Last Modified: Thu, 26 Oct 2017 05:11:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
