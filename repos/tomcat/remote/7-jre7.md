## `tomcat:7-jre7`

```console
$ docker pull tomcat@sha256:5f9921bb05b1f124027af69969284b37200dcf0962159357276af343ad8fa73a
```

-	Platforms:
	-	linux; amd64

### `tomcat:7-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161376842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1138ceef39b8e2c6c73302d71c5a12ce8d05537af006bb9eeffe43c74aa3b06b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:14:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:14:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_VERSION=7u121
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 21 Mar 2017 22:15:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 22 Mar 2017 17:41:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 22 Mar 2017 17:41:12 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Mar 2017 17:41:13 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 22 Mar 2017 17:41:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 22 Mar 2017 17:41:14 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 22 Mar 2017 17:41:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 22 Mar 2017 17:41:15 GMT
ENV OPENSSL_VERSION=1.1.0e-1
# Wed, 22 Mar 2017 17:41:16 GMT
RUN { 		echo 'deb http://deb.debian.org/debian stretch main'; 	} > /etc/apt/sources.list.d/stretch.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release n=stretch'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: openssl libssl*'; 		echo "Pin: version $OPENSSL_VERSION"; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/stretch-openssl
# Wed, 22 Mar 2017 17:41:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 		openssl="$OPENSSL_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:44:05 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 22 Mar 2017 17:44:10 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 22 Mar 2017 17:44:24 GMT
ENV TOMCAT_MAJOR=7
# Mon, 03 Apr 2017 19:58:11 GMT
ENV TOMCAT_VERSION=7.0.77
# Mon, 03 Apr 2017 19:58:12 GMT
ENV TOMCAT_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz
# Mon, 03 Apr 2017 19:58:13 GMT
ENV TOMCAT_ASC_URL=https://www.apache.org/dist/tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz.asc
# Mon, 03 Apr 2017 19:58:49 GMT
RUN set -x 		&& wget -O tomcat.tar.gz "$TOMCAT_TGZ_URL" 	&& wget -O tomcat.tar.gz.asc "$TOMCAT_ASC_URL" 	&& gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz 	&& tar -xvf tomcat.tar.gz --strip-components=1 	&& rm bin/*.bat 	&& rm tomcat.tar.gz* 		&& nativeBuildDir="$(mktemp -d)" 	&& tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1 	&& nativeBuildDeps=" 		gcc 		libapr1-dev 		libssl-dev 		make 		openjdk-${JAVA_VERSION%%[-~bu]*}-jdk=$JAVA_DEBIAN_VERSION 	" 	&& apt-get update && apt-get install -y --no-install-recommends $nativeBuildDeps && rm -rf /var/lib/apt/lists/* 	&& ( 		export CATALINA_HOME="$PWD" 		&& cd "$nativeBuildDir/native" 		&& ./configure 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes 		&& make -j$(nproc) 		&& make install 	) 	&& apt-get purge -y --auto-remove $nativeBuildDeps 	&& rm -rf "$nativeBuildDir" 	&& rm bin/tomcat-native.tar.gz
# Mon, 03 Apr 2017 19:58:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 03 Apr 2017 19:58:54 GMT
EXPOSE 8080/tcp
# Mon, 03 Apr 2017 19:58:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab260573986a6f458fbd449b93a3f83d9cd20472c078533020e9a6d8cffb017`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c48cee0b2bcdda413b013c4222041500677be368ce932c606c8f3b94fe3f5f`  
		Last Modified: Thu, 23 Mar 2017 18:43:04 GMT  
		Size: 77.9 MB (77886489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1368ab15aa1cc52097c3432af2327c175926e0dfe7c9878da312312aa4b8f62b`  
		Last Modified: Fri, 24 Mar 2017 01:01:06 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b9c85c3e06887ddb50f17715655e678a7073ef9f1611f85ad35b39e403900c`  
		Last Modified: Fri, 24 Mar 2017 01:01:06 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3dc5d1e4c72002ad08e45520b84f4f017976ed53cae9d9f8c93a3fe610b132`  
		Last Modified: Fri, 24 Mar 2017 01:01:07 GMT  
		Size: 3.2 MB (3187159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e101174ccdbd7b36107362635ccee513c5020388f13da4b612e4941318ad079a`  
		Last Modified: Fri, 24 Mar 2017 01:04:19 GMT  
		Size: 113.2 KB (113190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4546afa6780c367aef0bca9b8496e074c95938e70baa5ae398a494b65c87177a`  
		Last Modified: Mon, 03 Apr 2017 20:06:56 GMT  
		Size: 9.6 MB (9577239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c13a267577057b2be3b3b2dd55cf36b72dc21869c50e2755b40db32475eedd`  
		Last Modified: Mon, 03 Apr 2017 20:06:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
