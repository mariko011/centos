## `tomcat:7-alpine`

```console
$ docker pull tomcat@sha256:0eaeb0a90e01baaf77eec01fd135e8f4304114cc8f0a2b80b7f741c89f1bc0a7
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (79029582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddd6c426e5add8302f1c8932ab6c50baf658e1a490e3e87d62b515a65593c78b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:33:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Mon, 19 Jun 2017 22:33:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:33:49 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:33:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:34:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 03:29:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Jun 2017 03:29:34 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 20 Jun 2017 03:29:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Jun 2017 03:30:01 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Jun 2017 03:30:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Jun 2017 03:30:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Jun 2017 03:30:09 GMT
RUN apk add --no-cache gnupg
# Tue, 20 Jun 2017 03:30:28 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Jun 2017 03:30:38 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 20 Jun 2017 03:30:54 GMT
ENV TOMCAT_MAJOR=7
# Tue, 20 Jun 2017 03:30:55 GMT
ENV TOMCAT_VERSION=7.0.78
# Tue, 20 Jun 2017 03:30:56 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz
# Tue, 20 Jun 2017 03:30:57 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz.asc
# Tue, 20 Jun 2017 03:31:44 GMT
RUN set -x 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		tar 		openssl 	&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& ./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j "$(nproc)" 		&& make install 	) 	&& runDeps="$( 		scanelf --needed --nobanner --recursive "$TOMCAT_NATIVE_LIBDIR" 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .tomcat-native-rundeps $runDeps 	&& apk del .fetch-deps .native-build-deps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Tue, 20 Jun 2017 03:31:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Jun 2017 03:32:18 GMT
EXPOSE 8080/tcp
# Tue, 20 Jun 2017 03:32:19 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f47a67697276d89884397784cfb1845ff4bd1bb20a75f965110a46fb14ddaa`  
		Last Modified: Tue, 20 Jun 2017 20:57:53 GMT  
		Size: 61.1 MB (61130312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfccb72eb405699b398e4a73a3431aa4ed43430f2e1b9ed5b55675e507e80d0`  
		Last Modified: Sun, 25 Jun 2017 02:53:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fb1db4d82b88ce1938ab7d0ed2d48aa25a0d24d7962abbc10d7208032d2087`  
		Last Modified: Sun, 25 Jun 2017 02:53:09 GMT  
		Size: 4.4 MB (4441138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a429ca141aa49f886848e6ecf5abe5563aff2ee28cbf648eb3361fa899139dc`  
		Last Modified: Sun, 25 Jun 2017 02:53:07 GMT  
		Size: 112.6 KB (112554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a42a5f1fb557e3e790a16a94879b6f589eba1188d35b3a317eb1a167cf4c31`  
		Last Modified: Sun, 25 Jun 2017 02:53:10 GMT  
		Size: 11.4 MB (11354922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fffd1b770006ddf955d39d3dabad44564683c12d3076922aafbb2d0711117a2`  
		Last Modified: Sun, 25 Jun 2017 02:53:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
